portfolio = angular.module 'portfolio', []

portfolio.controller 'PortfolioController', ->
    @projects = [
        {
            shortname: 'sldfj sldj klsj'
            name: 'dskfjs kl skdfk s dklsj'
            year: '2013'
            type: 'school'
            description: 'skdlfjs k lojelij wilj liw ljdljf \ndklsjf  ksld jslj lksjldsj\n dklsjf ljd\n\nlskf jlksj d\n lkdjfs l\nsdfs d  ds ds '
            stack: ['node.js', 'angular.js', 'mongodb', 'heroku']
            images: ['cat.jpg']
        }
        {
            shortname: 'skdjfklsj'
        }
    ]
    @selectedProject = undefined
    @selectProject = (index) ->
        @selectedProject = index
    return