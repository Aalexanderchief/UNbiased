# your_app/management/commands/import_articles.py
import json
from django.core.management.base import BaseCommand
from api.models import Article

class Command(BaseCommand):
    help = 'Imports articles from a JSON file'

    def add_arguments(self, parser):
        parser.add_argument('json_file', type=str, help='Path to the JSON file.')

    def handle(self, *args, **options):
        json_file_path = options['json_file']
        with open(json_file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)

        for entry in data:
            Article.objects.create(
                title=entry.get('title', ''),
                text=entry.get('text', ''),
                link=entry.get('link', ''),
                summary=entry.get('summary', ''),
                verification=entry.get('verification', 0)
            )

        self.stdout.write(self.style.SUCCESS(f'Successfully imported {len(data)} articles.'))
