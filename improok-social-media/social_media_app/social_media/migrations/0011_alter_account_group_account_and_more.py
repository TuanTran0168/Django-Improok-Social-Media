# Generated by Django 4.2.7 on 2023-12-03 13:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('social_media', '0010_alter_account_group_account_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='group_account',
            field=models.ManyToManyField(to='social_media.invitationgroup'),
        ),
        migrations.AlterField(
            model_name='account',
            name='invitation_account',
            field=models.ManyToManyField(to='social_media.postinvitation'),
        ),
    ]
