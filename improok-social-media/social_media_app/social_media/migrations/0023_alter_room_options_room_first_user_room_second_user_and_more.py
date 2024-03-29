# Generated by Django 4.2.7 on 2024-01-18 11:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('social_media', '0022_remove_message_receiver_remove_message_sender_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='room',
            options={},
        ),
        migrations.AddField(
            model_name='room',
            name='first_user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='first_user_room', to='social_media.account'),
        ),
        migrations.AddField(
            model_name='room',
            name='second_user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='second_user_room', to='social_media.account'),
        ),
        migrations.AlterField(
            model_name='message',
            name='who_sent',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterUniqueTogether(
            name='room',
            unique_together={('first_user', 'second_user')},
        ),
        migrations.RemoveField(
            model_name='room',
            name='receiver',
        ),
        migrations.RemoveField(
            model_name='room',
            name='sender',
        ),
    ]
