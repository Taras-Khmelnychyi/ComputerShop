from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import VideoCard
from ..forms import VideoCardForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def video_card_list(request):
    video_cards = VideoCard.objects.all()
    context = {'video_cards': video_cards}

    return render(request, 'computers/video_card/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = VideoCardForm()

    if request.method == 'POST':
        form = VideoCardForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('video_card_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    video_card = VideoCard.objects.get(id=pk)
    form = VideoCardForm(instance=video_card)

    if request.method == 'POST':
        form = VideoCardForm(request.POST, instance=video_card)
        if form.is_valid():
            form.save()
            return redirect('video_card_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    video_card = VideoCard.objects.get(id=pk)

    if request.method == 'POST':
        video_card.delete()
        return redirect('video_card_list')

    context = {'item': video_card}
    return render(request, 'computers/video_card/delete.html', context)