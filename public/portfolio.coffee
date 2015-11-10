portfolio = angular.module 'portfolio', []

portfolio.controller 'PortfolioController', ->
    @projects = [
        {
            name: 'Volunteer platform redesign'
            year: '2015'
            type: 'school / work'
            title: 'UX evaluation and redesign for stemfire.com'
            commentary: ''
            technologies: ['ruby on rails', 'bootstrap', 'heroku', 'postgresql', 'elasticsearch']
            images: ['s_events_qoetlo.jpg', 'sf_sketch_oabn0i', 'w_dashboard_l9me1t', 'w_event_oyymtb', 's_event_jlregq']
            livelink: 'http://www.stemfire.com'
        }
        {
            name: 'Elevator visualization'
            year: '2012'
            type: 'school'
            title: 'Simulation and visualization of elevator movement'
            commentary: ''
            technologies: ['java', 'swing']
            images: ['elevator3_jfhjsg', 'elevator4_btvqol', 'elevator2_st2cox', 'elevator1_bukyyn', 'elevator5_y5qm8t', 'elevator6_tty38t']
            github: 'http://www.github.com/caseyross/elevator-sim'
        }
        {
            name: 'Personal website'
            year: '2015'
            type: 'personal'
            title: 'This page'
            commentary: 'Primary goal: create a museum-like space to display projects.'
            technologies: ['node.js', 'express', 'angular.js', 'coffeescript', 'jade', 'heroku', 'adobe illustrator']
            images: ['ps_k0pccb', 'ps2_cu56fh', 'ps3_xvuptj', 'ps4_touof9', 'portfolio_unddhw.png']
            github: 'http://www.github.com/caseyross/portfolio'
        }
        {
            name: 'T-shirt design'
            year: '2013'
            type: 'personal'
            title: 'T-shirt design for my university\'s honors program'
            commentary: 'The somewhat inscrutable motif here is meant to be a stylized top-down view of four people in a group. Since the name of the honors program is inspired by the classical idea of the \'fifth element\', I wanted to communicate how four objects can come together to create a fifth (here, the central star shape).
            \n
            \nWhile the figure was probably overly abstract, I think the colors turned out well.'
            technologies: ['adobe illustrator']
            images: ['CV_TShirt_Contest_Design_dik2oq.png']
        }
        {
            name: 'Theorem prover'
            year: '2013'
            type: 'school'
            title: 'Resolution theorem prover for propositional logic'
            commentary: 'Propositional logic consists of statements that are either true or false, such as:
                \n
                \n\"The sky is blue\"
                \n\"The previous proposition was false\"
                \n
                \nWe can connect propositions with \"and\", \"or\", and other logical operators to make more interesting statements:
                \n
                \n\"Either it\'s raining or my cat is purple\"
                \n
                \nIf we have a few statements like this, we can try to prove a conclusion using the given statements.
                \nFor example, the conclusion that:
                \n
                \n\"My cat is purple\"
                \n
                \nResolution is a clever technique to automatically construct these proofs.'
            technologies: ['java']
            images: ['proofdemo_mqx3w6']
            github: 'http://www.github.com/caseyross/prover'
        }
        #{
            #name: 'Imageboard'
            #year: '2015'
            #type: 'personal'
            #title: ''
            #technologies: ['meteor', 'coffeescript', 'jade', 'mongodb']
            #images: ['s_events_qoetlo.jpg', 'sf_sketch_oabn0i', 'w_dashboard_l9me1t', 'w_event_oyymtb', 's_event_jlregq']
            #livelink: 'http://text-board.meteor.com'
            #github: 'http://www.github.com/caseyross/text-board'
        #}
        {
            name: 'Olympics logo'
            year: '2015'
            type: 'personal'
            title: 'Logo for the 2020 Olympics'
            commentary: 'I tried to evoke three ideas with the shapes and arrangement of this logo:
            \n
            \n1. The easily recognizable icons of the Olympic rings and the Rising Sun
            \n2. The silhouette of Mt. Fuji, an internationally renowned Japanese landmark (this is why the design is asymmetric)
            \n3. The sun above the curve of the earth, representing both a bright, optimistic future and a unified, equal gathering of humanity'
            technologies: ['adobe illustrator']
            images: ['tokyo-2020_wkpcc1.png']
        }
    ]
    
    @selectedProject = -1
    @selectProject = (index) ->
        @selectedProject = index
    @selectedImage = -1
    @selectImage = (index) ->
        @selectedImage = index
    @deselectImage = ->
        @selectedImage = -1
    @isImageSelected = ->
        @selectedImage > -1
    return