<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>moviesreview.com</title>
        <style>
            :root {
                color-scheme: dark;
                --bg: #07080b;
                --surface: #101217;
                --surface2: #171a21;
                --text: #f5f6f8;
                --muted: #969ba8;
                --line: #252a34;
                --accent: #e50914;
                --gold: #f5c518
            }

            * {
                box-sizing: border-box
            }

            html {
                scroll-behavior: smooth
            }

            body {
                margin: 0;
                font-family: Inter,ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
                background: var(--bg);
                color: var(--text)
            }

            #app {
                min-height: 100vh;
                background: var(--bg)
            }

            .container {
                width: min(1220px,92%);
                margin: auto
            }

            .nav {
                height: 78px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                border-bottom: 1px solid var(--line)
            }

            .brand {
                font-weight: 950;
                font-size: 24px;
                letter-spacing: -1px
            }

            .brand span {
                color: var(--accent)
            }

            .brand small {
                font-size: 11px;
                color: var(--muted);
                font-weight: 700
            }

            .navlinks {
                display: flex;
                gap: 30px;
                color: #b8bcc6;
                font-size: 14px;
                font-weight: 700
            }

            .navlinks a {
                color: inherit;
                text-decoration: none
            }

            .navlinks a:hover {
                color: white
            }

            .search {
                display: flex;
                align-items: center;
                gap: 9px;
                background: #11141a;
                border: 1px solid #2b303b;
                border-radius: 8px;
                padding: 10px 13px;
                width: 245px
            }

            .search input {
                background: transparent;
                border: 0;
                outline: 0;
                color: var(--text);
                width: 100%
            }

            .hero {
                margin-top: 24px;
                min-height: 500px;
                border-radius: 12px;
                overflow: hidden;
                position: relative;
                background: linear-gradient(90deg,#101116 0%,#151822 48%,#241019 100%);
                border: 1px solid #282d37
            }

            .hero:before {
                content: "";
                position: absolute;
                inset: 0;
                background: radial-gradient(circle at 78% 38%,rgba(229,9,20,.48),transparent 28%),linear-gradient(90deg,rgba(7,8,11,.98) 0%,rgba(7,8,11,.88) 40%,rgba(7,8,11,.18) 100%)
            }

            .hero:after {
                content: "MOVIES";
                position: absolute;
                right: 4%;
                bottom: -32px;
                font-size: 150px;
                font-weight: 950;
                color: rgba(255,255,255,.035);
                letter-spacing: -10px
            }

            .hero-content {
                position: relative;
                z-index: 1;
                padding: 82px 64px;
                max-width: 690px
            }

            .eyebrow {
                color: #ff5a62;
                text-transform: uppercase;
                letter-spacing: 2px;
                font-size: 11px;
                font-weight: 900
            }

            .hero h1 {
                font-size: clamp(46px,6vw,78px);
                line-height: .92;
                margin: 14px 0 20px;
                letter-spacing: -4px
            }

            .hero p {
                color: #c1c5ce;
                line-height: 1.65;
                max-width: 550px
            }

            .rating {
                display: inline-flex;
                align-items: center;
                gap: 7px;
                font-weight: 800
            }

            .star {
                color: var(--gold)
            }

            .btn {
                border: 0;
                border-radius: 6px;
                padding: 13px 19px;
                font-weight: 800;
                cursor: pointer
            }

            .btn-primary {
                background: var(--accent);
                color: white
            }

            .btn-ghost {
                background: #20242d;
                color: white;
                border: 1px solid #363b46
            }

            .actions {
                display: flex;
                gap: 10px;
                margin-top: 26px
            }

            .section {
                padding: 46px 0
            }

            .section-head {
                display: flex;
                align-items: end;
                justify-content: space-between;
                margin-bottom: 18px
            }

            .section h2 {
                margin: 0;
                font-size: 30px;
                letter-spacing: -1.2px
            }

            .muted {
                color: var(--muted);
                font-size: 14px
            }

            .chips {
                display: flex;
                gap: 8px;
                flex-wrap: wrap;
                margin: 18px 0 25px
            }

            .chip {
                border: 1px solid #2a2f39;
                background: transparent;
                color: #aeb3bf;
                padding: 8px 14px;
                border-radius: 6px;
                cursor: pointer;
                font-weight: 700
            }

            .chip.active,.chip:hover {
                background: var(--accent);
                border-color: var(--accent);
                color: white
            }

            .grid {
                display: grid;
                grid-template-columns: repeat(4,1fr);
                gap: 20px
            }

            .card {
                background: var(--surface);
                border: 1px solid #252a34;
                border-radius: 9px;
                overflow: hidden;
                transition: .25s;
                cursor: pointer
            }

            .card:hover {
                transform: translateY(-5px);
                border-color: #454b58;
                box-shadow: 0 18px 38px rgba(0,0,0,.35)
            }

            .poster {
                height: 290px;
                display: grid;
                place-items: center;
                font-size: 58px;
                font-weight: 950;
                letter-spacing: -4px;
                color: rgba(255,255,255,.86);
                position: relative
            }

            .poster:after {
                content: "";
                position: absolute;
                inset: 0;
                background: linear-gradient(180deg,transparent 40%,rgba(0,0,0,.78))
            }

            .p1 {
                background: linear-gradient(145deg,#111d36,#c41535)
            }

            .p2 {
                background: linear-gradient(145deg,#12383c,#c17822)
            }

            .p3 {
                background: linear-gradient(145deg,#351547,#e04c78)
            }

            .p4 {
                background: linear-gradient(145deg,#172415,#a76525)
            }

            .p5 {
                background: linear-gradient(145deg,#111827,#566477)
            }

            .p6 {
                background: linear-gradient(145deg,#421313,#d06b45)
            }

            .poster b {
                position: relative;
                z-index: 1
            }

            .card-body {
                padding: 15px
            }

            .title {
                font-weight: 850;
                font-size: 17px
            }

            .meta {
                display: flex;
                justify-content: space-between;
                margin-top: 9px;
                font-size: 13px
            }

            .tag {
                color: var(--muted)
            }

            .feature {
                display: grid;
                grid-template-columns: 1.2fr .8fr;
                gap: 20px
            }

            .review-box {
                background: var(--surface);
                border: 1px solid var(--line);
                border-radius: 10px;
                padding: 30px
            }

            .review-box h3 {
                font-size: 27px;
                margin: 8px 0
            }

            .quote {
                font-size: 18px;
                line-height: 1.6;
                color: var(--muted)
            }

            .score {
                font-size: 54px;
                font-weight: 950
            }

            .bar {
                height: 7px;
                background: var(--surface2);
                border-radius: 2px;
                overflow: hidden;
                margin: 7px 0 15px
            }

            .bar i {
                display: block;
                height: 100%;
                background: var(--accent);
                border-radius: inherit
            }

            footer {
                border-top: 1px solid var(--line);
                padding: 30px 0;
                color: var(--muted);
                font-size: 13px
            }

            .modal {
                position: fixed;
                inset: 0;
                background: rgba(0,0,0,.7);
                display: none;
                align-items: center;
                justify-content: center;
                padding: 20px;
                z-index: 10
            }

            .modal.open {
                display: flex
            }

            .modal-card {
                width: min(650px,100%);
                background: var(--surface);
                border: 1px solid var(--line);
                border-radius: 22px;
                padding: 26px;
                position: relative
            }

            .close {
                position: absolute;
                right: 18px;
                top: 16px;
                border: 0;
                background: var(--surface2);
                color: var(--text);
                border-radius: 50%;
                width: 34px;
                height: 34px;
                cursor: pointer
            }

            .modal-card h2 {
                margin: 0 40px 8px
            }

            .modal-card p {
                line-height: 1.65;
                color: var(--muted)
            }

            @media(max-width: 900px) {
                .grid {
                    grid-template-columns:repeat(2,1fr)
                }

                .feature {
                    grid-template-columns: 1fr
                }

                .navlinks {
                    display: none
                }

                .search {
                    width: 170px
                }

                .hero-content {
                    padding: 52px 32px
                }
            }

            @media(max-width: 560px) {
                .grid {
                    grid-template-columns:1fr
                }

                .hero {
                    min-height: 390px
                }

                .hero h1 {
                    font-size: 48px
                }

                .search {
                    width: 150px
                }

                .container {
                    width: 94%
                }
            }
        </style>
    </head>
    <body>
        <div id="app">
            <header class="container nav">
                <div class="brand">
                    movies<span>review</span>
                    <small>.com</small>
                </div>
                <nav class="navlinks">
                    <a href="#latest">Latest</a>
                    <a href="#genres">Genres</a>
                    <a href="#reviews">Reviews</a>
                </nav>
                <label class="search">
                    ⌕ <input id="search" placeholder="Search movies…">
                </label>
            </header>
            <main class="container">
                <section class="hero">
                    <div class="hero-content">
                        <div class="eyebrow">Telugu Cinema · 2026</div>
                        <h1>
                            Telugu stories<br>worth watching.
                        </h1>
                        <p>Telugu movie reviews, honest ratings, release dates, genres, and reviews. Discover the latest films from Telugu cinema in one place.</p>
                        <div class="rating">
                            <span class="star">★★★★★</span>
                            9.6/10 · Critics' choice
                        </div>
                        <div class="actions">
                            <button class="btn btn-primary" onclick="openMovie(0)">Read featured review</button>
                            <button class="btn btn-ghost" onclick="document.querySelector('#latest').scrollIntoView()">Browse Telugu movies</button>
                        </div>
                    </div>
                </section>
                <section class="section" id="latest">
                    <div class="section-head">
                        <div>
                            <h2>Latest Telugu reviews</h2>
                            <div class="muted">Fresh reviews from Telugu cinema.</div>
                        </div>
                        <div class="muted" id="count"></div>
                    </div>
                    <div class="chips" id="genres"></div>
                    <div class="grid" id="grid"></div>
                </section>
                <section class="section" id="reviews">
                    <div class="section-head">
                        <div>
                            <h2>Why our ratings?</h2>
                            <div class="muted">More than a number.</div>
                        </div>
                    </div>
                    <div class="feature">
                        <div class="review-box">
                            <div class="eyebrow">Reviewer's note</div>
                            <h3>We rate the whole experience.</h3>
                            <p class="quote">“A great movie doesn't need to be perfect. It needs to make you feel something, surprise you, or stay with you after the credits.”</p>
                        </div>
                        <div class="review-box">
                            <div class="muted">Average score</div>
                            <div class="score">
                                8.4<span style="font-size:20px;color:var(--muted)"> / 10</span>
                            </div>
                            <div class="muted">Story</div>
                            <div class="bar">
                                <i style="width:88%"></i>
                            </div>
                            <div class="muted">Acting</div>
                            <div class="bar">
                                <i style="width:91%"></i>
                            </div>
                            <div class="muted">Direction</div>
                            <div class="bar">
                                <i style="width:84%"></i>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
            <footer>
                <div class="container">© 2026 Movies Review · Honest opinions. Better movie nights.</div>
            </footer>
        </div>
        <div class="modal" id="modal">
            <div class="modal-card">
                <button class="close" onclick="closeMovie()">×</button>
                <div class="eyebrow">Movie review</div>
                <h2 id="mTitle"></h2>
                <div class="meta" style="justify-content:flex-start;gap:18px;margin:12px 0 18px">
                    <span>
                        <strong>Release:</strong>
                        <span id="mDate"></span>
                    </span>
                    <span>
                        <strong>Type:</strong>
                        <span id="mType"></span>
                    </span>
                    <span class="rating">
                        <span class="star">★</span>
                        <span id="mRating"></span>
                    </span>
                </div>
                <p id="mText"></p>
                <button class="btn btn-primary" onclick="closeMovie()">Close review</button>
            </div>
        </div>
        <script>
            const movies = [{
                name: 'Kuberaa',
                releaseDate: '20 June 2025',
                genre: 'Crime Drama',
                year: '20 June 2025',
                type: 'Crime Drama',
                rating: 8.7,
                mark: 'K',
                cls: 'p1',
                text: 'A gripping Telugu crime drama driven by strong performances, an ambitious story, and a serious emotional core.'
            }, {
                name: 'HIT: The Third Case',
                releaseDate: '1 May 2025',
                genre: 'Crime Thriller',
                year: '1 May 2025',
                type: 'Crime Thriller',
                rating: 8.8,
                mark: 'H3',
                cls: 'p2',
                text: 'A tense Telugu investigative thriller with a darker tone, sharp action, and a committed lead performance.'
            }, {
                name: 'Court: State vs A Nobody',
                releaseDate: '14 March 2025',
                genre: 'Legal Drama',
                year: '14 March 2025',
                type: 'Legal Drama',
                rating: 9.1,
                mark: 'C',
                cls: 'p3',
                text: 'A powerful Telugu courtroom drama that balances emotion, social commentary, and compelling performances.'
            }, {
                name: 'Dragon',
                releaseDate: '21 February 2025',
                genre: 'Drama',
                year: '21 February 2025',
                type: 'Drama',
                rating: 8.1,
                mark: 'D',
                cls: 'p4',
                text: 'An engaging Telugu coming-of-age drama with humor, emotional turns, and an energetic central performance.'
            }, {
                name: 'Dasara',
                releaseDate: '30 March 2023',
                genre: 'Action Drama',
                year: '30 March 2023',
                type: 'Action Drama',
                rating: 8.6,
                mark: 'DA',
                cls: 'p5',
                text: 'A raw and visually striking Telugu action drama with memorable performances and a powerful rural setting.'
            }, {
                name: 'Kalki 2898 AD',
                releaseDate: '27 June 2024',
                genre: 'Sci-Fi',
                year: '27 June 2024',
                type: 'Sci-Fi',
                rating: 9.0,
                mark: 'K',
                cls: 'p6',
                text: 'A landmark Telugu science-fiction spectacle combining mythology, futuristic world-building, ambitious visuals, and a large-scale story.'
            }];
            const genres = ['All', ...new Set(movies.map(m => m.type))];
            let active = 'All';
            function render() {
                const q = document.getElementById('search').value.toLowerCase();
                const shown = movies.filter(m => (active === 'All' || m.genre === active) && m.name.toLowerCase().includes(q));
                document.getElementById('count').textContent = shown.length + ' films';
                document.getElementById('grid').innerHTML = shown.map( (m, i) => `<article class="card" onclick="openMovie(${movies.indexOf(m)})"><div class="poster ${m.cls}"><b>${m.mark}</b></div><div class="card-body"><div class="title">${m.name}</div><div class="meta"><span class="tag">${m.genre} · ${m.year}</span><span class="rating"><span class="star">★</span> ${m.rating}</span></div></div></article>`).join('');
                document.getElementById('genres').innerHTML = genres.map(g => `<button class="chip ${g === active ? 'active' : ''}" onclick="active='${g}';render()">${g}</button>`).join('')
            }
            function openMovie(i) {
                const m = movies[i];
                document.getElementById('mTitle').textContent = m.name;
                document.getElementById('mDate').textContent = m.releaseDate;
                document.getElementById('mType').textContent = m.genre;
                document.getElementById('mRating').textContent = m.rating + ' / 10';
                document.getElementById('mText').textContent = m.text;
                document.getElementById('modal').classList.add('open')
            }
            function closeMovie() {
                document.getElementById('modal').classList.remove('open')
            }
            document.getElementById('search').addEventListener('input', render);
            document.getElementById('modal').addEventListener('click', e => {
                if (e.target.id === 'modal')
                    closeMovie()
            }
            );
            render();
        </script>
    </body>
</html>

