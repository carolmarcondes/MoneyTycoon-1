<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homemaster2.aspx.cs" Inherits="Homemaster2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Home</title>

    <meta name="description" content="Dashboard do diretor">
    <meta name="author" content="Money Tycoon">

    <link rel="shortcut icon" href="images/favicon.png">

    <link href="css/material-azul-laranja.min.css" rel="stylesheet" />
    <script src="css/material.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="css/css.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/scripts.js"></script>

</head>
<body>

    <div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
        <header class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
            <div class="mdl-layout__header-row">
                <span class="mdl-layout-title">Home</span>
                <div class="mdl-layout-spacer"></div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                    <label class="mdl-button mdl-js-button mdl-button--icon" for="search">
                        <i class="material-icons">search</i>
                    </label>
                    <div class="mdl-textfield__expandable-holder">
                        <input class="mdl-textfield__input" type="text" id="search">
                        <label class="mdl-textfield__label" for="search">Digite aqui...</label>
                    </div>
                </div>
                <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="hdrbtn">
                    <i class="material-icons">more_vert</i>
                </button>
                <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="hdrbtn">
                    <li class="mdl-menu__item">Sobre o Money Tycoon</li>
                    <li class="mdl-menu__item">Sobre a Quânttico</li>
                    <li class="mdl-menu__item">Informações legais</li>
                </ul>
            </div>
        </header>
        <div class="demo-drawer mdl-layout__drawer mdl-color--blue-900">
            <header style="padding-top: 50px; padding-bottom: 10px; padding-left: 5px;">
                <img src="Imagens/user.jpg" style="width: 40px; height: 40px; border-radius: 20px;">
                <span style="color: white;">Ola, Professor</span>
            </header>
            <nav class="demo-navigation mdl-navigation mdl-color--blue-800 mdl-color-text--blue-50">
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Homeprof2.aspx"><i class="material-icons" role="presentation">home</i>  Home</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="#"><i class="material-icons" role="presentation">credit_card</i>  Caixa</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Addcredito.aspx"><i class="material-icons" role="presentation">monetization_on</i>  Adicionar créditos</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Cadastroalun.aspx"><i class="material-icons" role="presentation">face</i>  Alunos</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Ranking.aspx"><i class="material-icons" role="presentation">star</i>  Ranking</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Perfilprof.aspx"><i class="material-icons" role="presentation">account_box</i>  Meu perfil</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Feedback.aspx"><i class="material-icons" role="presentation">forum</i>  Contato</a>
                <div class="mdl-layout-spacer"></div>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Documentação.aspx"><i class="material-icons" role="presentation">help_outline</i>  Ajuda</a>
                <a class="mdl-navigation__link" style="color: #E3F2FD" href="Login.aspx"><i class="material-icons" role="presentation">exit_to_app</i>  Sair</a>
            </nav>
        </div>
        <main class="mdl-layout__content mdl-color--grey-100">
            <div class="mdl-grid demo-content">
                <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">

                    <a id="cadat" class="demo-card-image mdl-card mdl-shadow--2dp" style="width: 44.5%; height: 120px; background: url('Imagens/caixa.jpg') center / cover;">
                        <div class="mdl-card__actions"><span class="demo-card-image__filename">Caixa</span></div>
                        <div class="mdl-card__title mdl-card--expand"></div>
                    </a>
                    <div class="mdl-tooltip mdl-tooltip--large" for="cadat">
                        Clique aqui para abrir o caixa para os alunos
                    </div>

                    <div class="mdl-layout-spacer"></div>

                    <a id="sala" class="demo-card-image mdl-card mdl-shadow--2dp" style="width: 34.5%; height: 120px; background: url('Imagens/credito.jpg') center / cover;">
                        <div class="mdl-card__actions"><span class="demo-card-image__filename">Adicionar créditos</span></div>
                        <div class="mdl-card__title mdl-card--expand"></div>
                    </a>
                    <div class="mdl-tooltip mdl-tooltip--large" for="sala">
                        Clique aqui para adicionar créditos aos alunos
                    </div>

                    <div class="mdl-layout-spacer"></div>

                    <a id="aluno" class="demo-card-image mdl-card mdl-shadow--2dp" style="width: 19.5%; height: 120px; background: url('Imagens/professor.jpg') center / cover;">
                        <div class="mdl-card__actions"><span class="demo-card-image__filename">Alunos</span></div>
                        <div class="mdl-card__title mdl-card--expand"></div>
                    </a>
                    <div class="mdl-tooltip mdl-tooltip--large" for="aluno">
                        Clique aqui para consultar ou cadastrar alunos
                    </div>

                </div>
            </div>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--8-col">
                    <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                        <div class="mdl-tabs__tab-bar">
                            <a href="#vendas" class="mdl-tabs__tab is-active" style="font-size: small;">Vendas</a>
                            <a href="#tempo" class="mdl-tabs__tab" style="font-size: small; padding-left: 5px; padding-right: 5px;">Tempo de atividade</a>
                            <a href="#creditos" class="mdl-tabs__tab" style="font-size: small;">Créditos</a>
                            <a href="#vendas" class="mdl-tabs__tab" style="font-size: small;">Produtos</a>
                            <a href="#tempo" class="mdl-tabs__tab" style="font-size: small;">Alunos</a>
                            <a href="#tempo" class="mdl-tabs__tab" style="font-size: small;">Suporte</a>
                            <a href="#creditos" class="mdl-tabs__tab" style="font-size: small; padding-left: 5px; padding-right: 5px;">Erros (logs)</a>
                        </div>

                        <div class="mdl-tabs__panel is-active" id="vendas">
                            <div class="demo-graphs mdl-shadow--2dp mdl-color--white">
                                <svg fill="currentColor" viewBox="0 0 500 250" class="demo-graph">
                                    <use xlink:href="#chart" />
                                </svg>
                            </div>
                        </div>
                        <div class="mdl-tabs__panel" id="tempo">
                            <div class="demo-graphs mdl-shadow--2dp mdl-color--white">
                                <svg fill="currentColor" viewBox="0 0 500 250" class="demo-graph">
                                    <use xlink:href="#chart" />
                                </svg>
                            </div>
                        </div>
                        <div class="mdl-tabs__panel" id="creditos">
                            <div class="demo-graphs mdl-shadow--2dp mdl-color--white">
                                <svg fill="currentColor" viewBox="0 0 500 250" class="demo-graph">
                                    <use xlink:href="#chart" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet">

                    <div class="mdl-card mdl-color--blue-800 mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-cell--3-col-tablet" style="margin-top: 90px;">
                        <div class="mdl-card__supporting-text mdl-color-text--blue-grey-50 demo-list-action mdl-list" style="width: 100%;">
                            <h4 style="text-align: center; margin-top: 20px;">Ranking</h4>

                            <div class="mdl-list__item">
                                <span class="mdl-list__item-primary-content mdl-color-text--blue-grey-50">
                                    <i class="material-icons mdl-list__item-avatar">person</i>
                                    <span>Bryan Cranston</span>
                                </span>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                            </div>
                            <div class="mdl-list__item">
                                <span class="mdl-list__item-primary-content mdl-color-text--blue-grey-50">
                                    <i class="material-icons mdl-list__item-avatar">person</i>
                                    <span>Aaron Paul</span>
                                </span>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                            </div>
                            <div class="mdl-list__item">
                                <span class="mdl-list__item-primary-content mdl-color-text--blue-grey-50">
                                    <i class="material-icons mdl-list__item-avatar">person</i>
                                    <span>Bob Odenkirk</span>
                                </span>
                                <span>
                                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" style="position: fixed; left: -1000px; height: -1000px;">
        <defs>
            <mask id="piemask" maskContentUnits="objectBoundingBox">
                <circle cx="0.5" cy="0.5" r="0.49" fill="white" />
                <circle cx="0.5" cy="0.5" r="0.40" fill="black" />
            </mask>
            <g id="piechart">
                <circle cx="0.5" cy="0.5" r="0.5" />
                <path d="M 0.5 0.5 0.5 0 A 0.5 0.5 0 0 1 0.95 0.28 z" stroke="none" fill="rgba(255, 255, 255, 0.75)" />
            </g>
        </defs>
    </svg>
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 250" style="position: fixed; left: -1000px; height: -1000px;">
        <defs>
            <g id="chart">
                <g id="Gridlines">
                    <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="27.3" x2="468.3" y2="27.3" />
                    <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="66.7" x2="468.3" y2="66.7" />
                    <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="105.3" x2="468.3" y2="105.3" />
                    <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="144.7" x2="468.3" y2="144.7" />
                    <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="184.3" x2="468.3" y2="184.3" />
                </g>
                <g id="Numbers">
                    <text transform="matrix(1 0 0 1 485 29.3333)" fill="#888888" font-family="'Roboto'" font-size="9">500</text>
                    <text transform="matrix(1 0 0 1 485 69)" fill="#888888" font-family="'Roboto'" font-size="9">400</text>
                    <text transform="matrix(1 0 0 1 485 109.3333)" fill="#888888" font-family="'Roboto'" font-size="9">300</text>
                    <text transform="matrix(1 0 0 1 485 149)" fill="#888888" font-family="'Roboto'" font-size="9">200</text>
                    <text transform="matrix(1 0 0 1 485 188.3333)" fill="#888888" font-family="'Roboto'" font-size="9">100</text>
                    <text transform="matrix(1 0 0 1 0 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">1</text>
                    <text transform="matrix(1 0 0 1 78 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">2</text>
                    <text transform="matrix(1 0 0 1 154.6667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">3</text>
                    <text transform="matrix(1 0 0 1 232.1667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">4</text>
                    <text transform="matrix(1 0 0 1 309 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">5</text>
                    <text transform="matrix(1 0 0 1 386.6667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">6</text>
                    <text transform="matrix(1 0 0 1 464.3333 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">7</text>
                </g>
                <g id="Layer_5">
                    <polygon opacity="0.36" stroke-miterlimit="10" points="0,223.3 48,138.5 154.7,169 211,88.5
              294.5,80.5 380,165.2 437,75.5 469.5,223.3 	" />
                </g>
                <g id="Layer_4">
                    <polygon stroke-miterlimit="10" points="469.3,222.7 1,222.7 48.7,166.7 155.7,188.3 212,132.7
              296.7,128 380.7,184.3 436.7,125 	" />
                </g>
            </g>
        </defs>
    </svg>
    <a href="https://github.com/google/material-design-lite/blob/mdl-1.x/templates/dashboard/" target="_blank" id="view-source" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored mdl-color-text--white">View Source</a>
</body>
</html>
