<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="theme-color" content="#0b0f1a" />
  <title>EchoStory Directory</title>
  <meta name="description" content="Explore EchoStory examples. Discover new vibes or commission your own EchoStory." />
  <style>
    :root{
      --bg:#0b0f1a;
      --panel:rgba(255,255,255,.06);
      --panel2:rgba(255,255,255,.08);
      --text:rgba(255,255,255,.92);
      --muted:rgba(255,255,255,.64);
      --muted2:rgba(255,255,255,.5);
      --line:rgba(255,255,255,.12);
      --accent:#7c5cff;
      --accent2:#31d0aa;
      --warn:#ffb020;
      --good:#41d17a;
      --shadow: 0 18px 60px rgba(0,0,0,.45);
      --radius:18px;
      --radius2:26px;
      --max:1180px;
      --mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
      --sans: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, "Apple Color Emoji", "Segoe UI Emoji";
    }
    *{ box-sizing:border-box; }
    body{
      margin:0;
      font-family:var(--sans);
      background:
        radial-gradient(1200px 700px at 15% -10%, rgba(124,92,255,.35), transparent 55%),
        radial-gradient(900px 600px at 85% 0%, rgba(49,208,170,.20), transparent 60%),
        radial-gradient(700px 700px at 60% 120%, rgba(255,176,32,.14), transparent 55%),
        var(--bg);
      color:var(--text);
      overflow-x:hidden;
    }
    a{ color:inherit; text-decoration:none; }
    .wrap{ max-width:var(--max); margin:0 auto; padding:24px; }
    .topbar{
      position:sticky; top:0; z-index:30;
      backdrop-filter: blur(14px);
      background: linear-gradient(to bottom, rgba(11,15,26,.78), rgba(11,15,26,.40));
      border-bottom:1px solid var(--line);
    }
    .topbar .wrap{ padding:16px 24px; }
    .brand{
      display:flex; align-items:center; justify-content:space-between; gap:16px;
    }
    .logo{
      display:flex; align-items:center; gap:12px;
      min-width: 220px;
    }
    .mark{
      width:38px; height:38px;
      border-radius:14px;
      background:
        radial-gradient(12px 12px at 30% 30%, rgba(255,255,255,.55), transparent 60%),
        linear-gradient(135deg, rgba(124,92,255,1), rgba(49,208,170,1));
      box-shadow: 0 12px 28px rgba(124,92,255,.22);
      position:relative;
    }
    .mark:after{
      content:"";
      position:absolute; inset:10px;
      border-radius:10px;
      border:1px solid rgba(255,255,255,.25);
    }
    .titleblock{ display:flex; flex-direction:column; line-height:1.05; }
    .titleblock b{ font-size:16px; letter-spacing:.2px; }
    .titleblock span{ font-size:12px; color:var(--muted); margin-top:3px; }
    .nav{
      display:flex; gap:10px; flex-wrap:wrap; justify-content:flex-end;
    }
    .chip{
      padding:10px 12px;
      border:1px solid var(--line);
      background: rgba(255,255,255,.04);
      border-radius:999px;
      font-size:13px;
      color:var(--muted);
      transition:.15s ease;
      display:inline-flex; align-items:center; gap:8px;
      cursor:pointer;
      user-select:none;
    }
    .chip:hover{ background:rgba(255,255,255,.07); color:var(--text); }
    .chip.primary{
      border-color: rgba(124,92,255,.55);
      background: rgba(124,92,255,.14);
      color: rgba(255,255,255,.92);
    }
    .hero{
      padding:28px 0 10px;
    }
    .heroGrid{
      display:grid; grid-template-columns: 1.2fr .8fr; gap:18px;
    }
    @media (max-width: 980px){ .heroGrid{ grid-template-columns:1fr; } }
    .card{
      background: linear-gradient(180deg, rgba(255,255,255,.07), rgba(255,255,255,.04));
      border:1px solid var(--line);
      border-radius: var(--radius2);
      box-shadow: var(--shadow);
    }
    .heroCard{ padding:22px; overflow:hidden; position:relative; }
    .heroCard:before{
      content:"";
      position:absolute; inset:-120px -120px auto auto;
      width:340px; height:340px;
      background: radial-gradient(circle at 30% 30%, rgba(124,92,255,.35), transparent 60%);
      transform: rotate(15deg);
      pointer-events:none;
    }
    h1{
      margin:0;
      font-size:34px;
      letter-spacing:-.6px;
    }
    .sub{
      margin:10px 0 0;
      color:var(--muted);
      max-width: 62ch;
      font-size:14px;
      line-height:1.5;
    }
    .stats{
      margin-top:16px;
      display:flex; flex-wrap:wrap; gap:10px;
    }
    .pill{
      padding:9px 12px;
      border:1px solid var(--line);
      border-radius:999px;
      background: rgba(255,255,255,.03);
      color:var(--muted);
      font-size:12px;
      display:inline-flex; gap:8px; align-items:center;
    }
    .pill i{
      display:inline-block; width:8px; height:8px; border-radius:99px;
      background: linear-gradient(135deg, var(--accent), var(--accent2));
    }
    .ctaCard{ padding:18px; }
    .ctaHeader{
      display:flex; align-items:flex-start; justify-content:space-between; gap:12px;
    }
    .ctaHeader b{ font-size:14px; }
    .ctaHeader small{ color:var(--muted); display:block; margin-top:4px; line-height:1.45; }
    .btnRow{ display:flex; flex-wrap:wrap; gap:10px; margin-top:14px; }
    .btn{
      border:none;
      padding:11px 14px;
      border-radius: 12px;
      cursor:pointer;
      font-weight:700;
      font-size:13px;
      letter-spacing:.2px;
      transition:.15s ease;
      display:inline-flex; align-items:center; gap:10px;
    }
    .btn:active{ transform: translateY(1px); }
    .btn.primary{
      background: linear-gradient(135deg, rgba(124,92,255,1), rgba(49,208,170,1));
      color:#0b0f1a;
      box-shadow: 0 16px 30px rgba(124,92,255,.22);
    }
    .btn.ghost{
      background: rgba(255,255,255,.05);
      border:1px solid var(--line);
      color: var(--text);
    }
    .btn.ghost:hover{ background: rgba(255,255,255,.08); }
    .filters{
      margin:18px 0 0;
      padding:16px;
      display:grid;
      grid-template-columns: 1.3fr .7fr .8fr;
      gap:12px;
      align-items:end;
    }
    @media (max-width: 980px){
      .filters{ grid-template-columns:1fr; }
    }
    label{
      font-size:12px;
      color:var(--muted);
      display:block;
      margin:0 0 6px;
    }
    input[type="text"], select{
      width:100%;
      padding:12px 12px;
      border-radius: 12px;
      border:1px solid var(--line);
      background: rgba(0,0,0,.22);
      color: var(--text);
      outline:none;
    }
    input[type="text"]::placeholder{ color: rgba(255,255,255,.35); }
    .tagRow{
      display:flex; flex-wrap:wrap; gap:10px;
      padding: 14px 16px 18px;
      border-top:1px solid var(--line);
    }
    .tag{
      padding:8px 10px;
      border-radius:999px;
      font-size:12px;
      border:1px solid var(--line);
      background: rgba(255,255,255,.03);
      color: var(--muted);
      cursor:pointer;
      user-select:none;
      transition:.15s ease;
    }
    .tag:hover{ background: rgba(255,255,255,.07); color: var(--text); }
    .tag.on{
      background: rgba(124,92,255,.18);
      border-color: rgba(124,92,255,.55);
      color: rgba(255,255,255,.92);
    }

    .grid{
      margin-top:18px;
      display:grid;
      grid-template-columns: repeat(12, 1fr);
      gap:14px;
    }
    .story{
      grid-column: span 4;
      overflow:hidden;
      position:relative;
    }
    @media (max-width: 1120px){ .story{ grid-column: span 6; } }
    @media (max-width: 680px){ .story{ grid-column: span 12; } }

    .storyInner{
      padding:14px;
      display:flex;
      flex-direction:column;
      gap:12px;
    }
    .cover{
      height:168px;
      border-radius: 16px;
      border:1px solid var(--line);
      background:
        radial-gradient(120px 90px at 25% 25%, rgba(124,92,255,.35), transparent 70%),
        radial-gradient(140px 120px at 75% 35%, rgba(49,208,170,.22), transparent 70%),
        linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.02));
      position:relative;
      overflow:hidden;
    }
    .cover .badge{
      position:absolute; top:12px; left:12px;
      padding:7px 10px;
      border-radius: 999px;
      font-size:12px;
      border:1px solid var(--line);
      background: rgba(0,0,0,.30);
      color: rgba(255,255,255,.86);
      display:inline-flex; gap:8px; align-items:center;
    }
    .badge i{
      width:8px; height:8px; border-radius:999px;
      background: var(--accent2);
      display:inline-block;
    }
    .cover img{
      width:100%; height:100%; object-fit:cover;
      display:block;
      filter: saturate(1.05) contrast(1.04);
    }

    .meta{
      display:flex; align-items:flex-start; justify-content:space-between; gap:12px;
    }
    .meta h3{
      margin:0;
      font-size:16px;
      letter-spacing:-.2px;
      line-height:1.2;
    }
    .meta small{
      display:block;
      margin-top:5px;
      color:var(--muted);
      font-size:12px;
      line-height:1.35;
    }
    .len{
      font-family: var(--mono);
      font-size:12px;
      color: rgba(255,255,255,.75);
      border:1px solid var(--line);
      background: rgba(255,255,255,.04);
      padding:8px 10px;
      border-radius: 12px;
      white-space:nowrap;
      height: fit-content;
    }
    .desc{
      margin:0;
      color: var(--muted);
      font-size:13px;
      line-height:1.45;
      min-height: 40px;
    }
    .tagMini{
      display:flex; flex-wrap:wrap; gap:8px;
    }
    .tagMini span{
      font-size:11px;
      padding:6px 8px;
      border-radius:999px;
      border:1px solid var(--line);
      background: rgba(255,255,255,.03);
      color: rgba(255,255,255,.72);
    }
    .storyActions{
      display:flex; gap:10px; flex-wrap:wrap;
      margin-top:2px;
    }
    .storyActions .btn{
      padding:10px 12px;
      border-radius: 12px;
      font-weight:800;
      font-size:12px;
    }
    .btn.open{ background: rgba(49,208,170,.16); border:1px solid rgba(49,208,170,.35); color: rgba(255,255,255,.92); }
    .btn.open:hover{ background: rgba(49,208,170,.22); }
    .btn.repo{ background: rgba(124,92,255,.14); border:1px solid rgba(124,92,255,.35); color: rgba(255,255,255,.92); }
    .btn.repo:hover{ background: rgba(124,92,255,.20); }
    .btn.share{ background: rgba(255,255,255,.05); border:1px solid var(--line); color: rgba(255,255,255,.86); }
    .btn.share:hover{ background: rgba(255,255,255,.08); }

    .footer{
      margin:26px 0 80px;
      padding:18px;
      border-top:1px solid var(--line);
      color: var(--muted2);
      font-size:12px;
      line-height:1.55;
    }
    .footer .cols{
      display:grid; grid-template-columns: 1.2fr .8fr; gap:14px;
    }
    @media (max-width: 980px){ .footer .cols{ grid-template-columns:1fr; } }

    /* Subtle sticky "ad" */
    .stickyAd{
      position: fixed;
      left: 16px; right:16px;
      bottom: 14px;
      z-index: 60;
      display:flex; justify-content:center;
      pointer-events:none;
    }
    .stickyAdInner{
      pointer-events:auto;
      width:min(var(--max), 100%);
      display:flex;
      align-items:center;
      justify-content:space-between;
      gap:10px;
      padding:12px 14px;
      border-radius: 18px;
      border:1px solid rgba(49,208,170,.32);
      background: rgba(8,10,18,.70);
      backdrop-filter: blur(14px);
      box-shadow: 0 20px 60px rgba(0,0,0,.55);
    }
    .stickyAdInner b{ font-size:12px; }
    .stickyAdInner span{ font-size:12px; color: var(--muted); }
    .stickyAdInner .btn{ padding:10px 12px; border-radius: 14px; }
    .stickyAdInner .btn.primary{ box-shadow:none; }
    .stickyAdInner .btn.ghost{ padding:10px 10px; }
  </style>
</head>

<body>
  <header class="topbar">
    <div class="wrap">
      <div class="brand">
        <div class="logo">
          <div class="mark" aria-hidden="true"></div>
          <div class="titleblock">
            <b>EchoStory Directory</b>
            <span>Explore public examples • open, listen, enjoy</span>
          </div>
        </div>
        <nav class="nav">
          <a class="chip" href="#browse">Browse</a>
          <a class="chip" href="#about">About</a>
          <a class="chip primary" href="#commission">Commission an EchoStory</a>
        </nav>
      </div>
    </div>
  </header>

  <main class="wrap">
    <section class="hero" id="browse">
      <div class="heroGrid">
        <div class="card heroCard">
          <h1>Pick a vibe. Open a story.</h1>
          <p class="sub">
            A public directory of EchoStory examples hosted on GitHub Pages.
            Browse for inspiration, find something new, or just click and enjoy.
          </p>
          <div class="stats">
            <span class="pill"><i></i><span id="statCount">0</span> stories</span>
            <span class="pill"><i></i><span id="statTags">0</span> tags</span>
            <span class="pill"><i></i>lightweight • mobile-first</span>
          </div>
        </div>

        <div class="card ctaCard" id="commission">
          <div class="ctaHeader">
            <div>
              <b>Want one made for you?</b>
              <small>
                EchoStory commissions turn your idea into an audio/story page you can share forever.
                Choose a vibe, drop a few details, and we’ll craft something personal.
              </small>
            </div>
            <span class="pill" title="Subtle ad, loud quality"><i></i>EchoStory</span>
          </div>
          <div class="btnRow">
            <button class="btn primary" id="btnCommission">Start a commission</button>
            <button class="btn ghost" id="btnBrief">Copy brief template</button>
          </div>
          <div class="pill" style="margin-top:12px;">
            <i></i>3–7 bullet points is enough to begin.
          </div>
        </div>
      </div>

      <div class="card filters" style="margin-top:16px;">
        <div>
          <label for="q">Search</label>
          <input id="q" type="text" placeholder="Search title, vibe, tags… (ex: 'nature', 'brand', 'hype')" autocomplete="off"/>
        </div>
        <div>
          <label for="sort">Sort</label>
          <select id="sort">
            <option value="featured">Featured first</option>
            <option value="title">Title A → Z</option>
          </select>
        </div>
        <div>
          <label for="tagMode">Tag mode</label>
          <select id="tagMode">
            <option value="any">Match any selected tag</option>
            <option value="all">Match all selected tags</option>
          </select>
        </div>
        <div style="grid-column: 1 / -1; padding-top:6px;">
          <label>Popular tags</label>
          <div class="tagRow" id="tagRow"></div>
        </div>
      </div>
    </section>

    <section class="grid" id="grid"></section>

    <section class="footer" id="about">
      <div class="cols">
        <div>
          <b style="color:rgba(255,255,255,.9);">About EchoStory</b>
          <p style="margin:10px 0 0;">
            EchoStory is a storytelling format designed to feel like a memory you can press play on —
            sometimes a song, sometimes a narrative, sometimes a hybrid. This directory is public so people
            can explore examples and find a vibe that fits.
          </p>
        </div>
        <div>
          <b style="color:rgba(255,255,255,.9);">Commissioning</b>
          <p style="margin:10px 0 0;">
            Click “Start a commission” to open an email template. You’ll be asked for:
            who it’s for, the vibe, key moments, and any must-include lines.
          </p>
          <p style="margin:10px 0 0; color:rgba(255,255,255,.72);">
            © <span id="year"></span> EchoStory — crafted under AeroVista LLC.
          </p>
        </div>
      </div>
    </section>
  </main>

  <!-- Sticky subtle advertising -->
  <div class="stickyAd" id="stickyAd">
    <div class="stickyAdInner">
      <div style="display:flex; flex-direction:column; gap:2px;">
        <b>EchoStory commissions</b>
        <span>Turn a moment into something you can replay forever.</span>
      </div>
      <div style="display:flex; gap:10px; align-items:center;">
        <button class="btn primary" id="stickyCommission">Start</button>
        <button class="btn ghost" id="stickyHide" aria-label="Hide">Hide</button>
      </div>
    </div>
  </div>

  <script>
    // ====== EDIT HERE ======
    // Optional: set your commission contact email
    const COMMISSION_EMAIL = "hello@yourdomain.com"; // <-- change this
    const BRAND_NAME = "EchoStory";

    // GitHub Pages deploy links + repo links (as you specified)
    const STORIES = [
      {
        id: "newyears26",
        title: "New Years 26",
        vibe: "Seasonal / celebration",
        desc: "Public EchoStory page example.",
        featured: true,
        type: "Page",
        tags: ["featured","seasonal"],
        liveUrl: "https://aerovista-us.github.io/newyears26/",
        repoUrl: "https://github.com/aerovista-us/newyears26"
      },
      {
        id: "aerovista-onboarding-",
        title: "AeroVista Onboarding",
        vibe: "Onboarding / introduction",
        desc: "Public onboarding-style EchoStory page example.",
        featured: true,
        type: "Page",
        tags: ["onboarding","guide","featured"],
        liveUrl: "https://aerovista-us.github.io/aerovista-onboarding-/",
        repoUrl: "https://github.com/aerovista-us/aerovista-onboarding-"
      },
      {
        id: "pines",
        title: "Pines",
        vibe: "Nature / calm",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["nature","calm"],
        liveUrl: "https://aerovista-us.github.io/pines/",
        repoUrl: "https://github.com/aerovista-us/pines"
      },
      {
        id: "bland",
        title: "Bland",
        vibe: "Minimal / experimental",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["minimal","experimental"],
        liveUrl: "https://aerovista-us.github.io/bland/",
        repoUrl: "https://github.com/aerovista-us/bland"
      },
      {
        id: "revolution",
        title: "Revolution",
        vibe: "Hype / momentum",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["hype","anthem"],
        liveUrl: "https://aerovista-us.github.io/revolution/",
        repoUrl: "https://github.com/aerovista-us/revolution"
      },
      {
        id: "lookin4sheet",
        title: "Lookin4Sheet",
        vibe: "Fun / quirky",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["fun","quirky"],
        liveUrl: "https://aerovista-us.github.io/lookin4sheet/",
        repoUrl: "https://github.com/aerovista-us/lookin4sheet"
      },
      {
        id: "cornerpocket",
        title: "CornerPocket",
        vibe: "Pool / nightlife",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["pool","nightlife"],
        liveUrl: "https://aerovista-us.github.io/cornerpocket/",
        repoUrl: "https://github.com/aerovista-us/cornerpocket"
      },
      {
        id: "bonsaid",
        title: "Bonsaid",
        vibe: "Zen / craft",
        desc: "A public EchoStory page.",
        featured: false,
        type: "Page",
        tags: ["zen","craft"],
        liveUrl: "https://aerovista-us.github.io/bonsaid/",
        repoUrl: "https://github.com/aerovista-us/bonsaid"
      },
      {
        id: "AV_About",
        title: "AV About",
        vibe: "About / brand",
        desc: "A public about page example.",
        featured: true,
        type: "Page",
        tags: ["about","brand","featured"],
        liveUrl: "https://aerovista-us.github.io/AV_About/",
        repoUrl: "https://github.com/aerovista-us/AV_About"
      }
    ];
    // ====== END EDIT ======

    const $ = (s)=>document.querySelector(s);
    const $$ = (s)=>Array.from(document.querySelectorAll(s));
    const grid = $("#grid");
    const q = $("#q");
    const sort = $("#sort");
    const tagRow = $("#tagRow");
    const tagMode = $("#tagMode");
    const selectedTags = new Set();

    function escapeHtml(str){
      return String(str).replace(/[&<>"']/g, m => ({
        "&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#039;"
      }[m]));
    }

    function allTags(){
      const t = new Map();
      STORIES.forEach(st => (st.tags||[]).forEach(tag => t.set(tag, (t.get(tag)||0)+1)));
      return Array.from(t.entries()).sort((a,b)=> (b[1]-a[1]) || a[0].localeCompare(b[0]));
    }

    function buildTags(){
      const tags = allTags();
      $("#statTags").textContent = tags.length;
      tagRow.innerHTML = tags.slice(0, 18).map(([tag, count])=>{
        return `<span class="tag" data-tag="${escapeHtml(tag)}" title="${count} stories">${escapeHtml(tag)}</span>`;
      }).join("");
      tagRow.addEventListener("click", (e)=>{
        const el = e.target.closest(".tag");
        if(!el) return;
        const t = el.getAttribute("data-tag");
        if(selectedTags.has(t)){ selectedTags.delete(t); el.classList.remove("on"); }
        else { selectedTags.add(t); el.classList.add("on"); }
        render();
      });
    }

    function matchesQuery(st, needle){
      if(!needle) return true;
      const hay = [
        st.title, st.vibe, st.desc, st.type,
        (st.tags||[]).join(" ")
      ].join(" ").toLowerCase();
      return hay.includes(needle);
    }

    function matchesTags(st){
      if(selectedTags.size === 0) return true;
      const tags = new Set(st.tags || []);
      if(tagMode.value === "all"){
        for(const t of selectedTags) if(!tags.has(t)) return false;
        return true;
      } else {
        for(const t of selectedTags) if(tags.has(t)) return true;
        return false;
      }
    }

    function sortStories(list){
      const mode = sort.value;
      const copy = [...list];
      if(mode === "featured"){
        copy.sort((a,b)=>{
          if(!!b.featured !== !!a.featured) return (b.featured?1:0)-(a.featured?1:0);
          return (a.title||"").localeCompare(b.title||"");
        });
      } else {
        copy.sort((a,b)=> (a.title||"").localeCompare(b.title||""));
      }
      return copy;
    }

    function storyCard(st){
      const miniTags = (st.tags||[]).slice(0,5).map(t=>`<span>${escapeHtml(t)}</span>`).join("");
      const safeId = encodeURIComponent(st.id);
      return `
        <article class="card story" data-id="${escapeHtml(st.id)}">
          <div class="storyInner">
            <div class="cover">
              <div class="badge"><i></i>${escapeHtml(st.type || "Page")}</div>
            </div>
            <div class="meta">
              <div>
                <h3>${escapeHtml(st.title)}</h3>
                <small>${escapeHtml(st.vibe || "")}</small>
              </div>
              <div class="len">${st.featured ? "★ Featured" : "↗ Live"}</div>
            </div>
            <p class="desc">${escapeHtml(st.desc || "")}</p>
            <div class="tagMini">${miniTags}</div>
            <div class="storyActions">
              <button class="btn open" data-action="open" data-id="${safeId}">↗ Open</button>
              <button class="btn repo" data-action="repo" data-id="${safeId}">Repo</button>
              <button class="btn share" data-action="share" data-id="${safeId}">Share</button>
            </div>
          </div>
        </article>
      `;
    }

    function commissionMailto(){
      const to = COMMISSION_EMAIL && COMMISSION_EMAIL.includes("@") ? COMMISSION_EMAIL : "";
      const subject = `${BRAND_NAME} Commission Request`;
      const bodyLines = [
        "Hi EchoStory team,",
        "",
        "I want to commission an EchoStory.",
        "",
        "1) Who is this for? (person/pet/group):",
        "2) Occasion / reason:",
        "3) Desired vibe (hype, tender, funny, reflective, etc.):",
        "4) 3–7 key moments / details:",
        "5) Any must-include lines, names, or inside jokes:",
        "6) Length preference (60–90s, 2–3m, 4–5m):",
        "7) Where it will be shared (private, social, event, etc.):",
        "",
        `— Sent from the ${BRAND_NAME} Directory`
      ];
      const mailto = `mailto:${encodeURIComponent(to)}?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(bodyLines.join("\n"))}`;
      window.location.href = mailto;
    }

    function render(){
      const needle = (q.value || "").trim().toLowerCase();
      const filtered = STORIES
        .filter(st => matchesQuery(st, needle))
        .filter(st => matchesTags(st));

      const sorted = sortStories(filtered);
      $("#statCount").textContent = sorted.length;

      grid.innerHTML = sorted.length
        ? sorted.map(storyCard).join("")
        : `<div class="card" style="grid-column: 1 / -1; padding:18px; border-radius:22px;">
             <b>No matches.</b>
             <div style="margin-top:6px; color:rgba(255,255,255,.62); font-size:13px;">
               Try a different search, clear tags, or switch tag mode.
             </div>
             <div class="btnRow" style="margin-top:12px;">
               <button class="btn ghost" id="clearFilters">Clear filters</button>
               <button class="btn primary" id="promptCommission">Commission an EchoStory</button>
             </div>
           </div>`;

      const clearBtn = $("#clearFilters");
      if(clearBtn){
        clearBtn.addEventListener("click", ()=>{
          q.value = "";
          selectedTags.clear();
          $$(".tag.on").forEach(t=>t.classList.remove("on"));
          sort.value = "featured";
          tagMode.value = "any";
          render();
        });
      }
      const promptBtn = $("#promptCommission");
      if(promptBtn){
        promptBtn.addEventListener("click", ()=> commissionMailto());
      }
    }

    // Card button actions
    grid.addEventListener("click", (e)=>{
      const btn = e.target.closest("button[data-action]");
      if(!btn) return;
      const id = decodeURIComponent(btn.getAttribute("data-id"));
      const st = STORIES.find(s => s.id === id);
      if(!st) return;

      const action = btn.getAttribute("data-action");
      if(action === "open"){
        window.open(st.liveUrl, "_blank", "noopener,noreferrer");
      } else if(action === "repo"){
        window.open(st.repoUrl, "_blank", "noopener,noreferrer");
      } else if(action === "share"){
        const url = st.liveUrl;
        navigator.clipboard?.writeText(url).then(()=>{
          btn.textContent = "Copied ✓";
          setTimeout(()=>btn.textContent="Share", 900);
        }).catch(()=>{
          prompt("Copy this link:", url);
        });
      }
    });

    // Commission buttons
    $("#btnCommission").addEventListener("click", ()=> commissionMailto());
    $("#stickyCommission").addEventListener("click", ()=> commissionMailto());
    $("#btnBrief").addEventListener("click", ()=>{
      const brief = [
        "EchoStory Commission Brief Template",
        "",
        "• Who is it for?",
        "• Occasion / why now?",
        "• Vibe (pick 1–2): hype / tender / funny / reflective / spooky / victorious / healing",
        "• 3–7 moments (bullets):",
        "• Names + must-include phrases:",
        "• Length preference:",
        "• Any boundaries:",
        ""
      ].join("\n");
      navigator.clipboard?.writeText(brief).then(()=>{
        alert("Brief template copied to clipboard.");
      }).catch(()=>{
        prompt("Copy this template:", brief);
      });
    });

    $("#stickyHide").addEventListener("click", ()=>{
      $("#stickyAd").style.display = "none";
    });

    // Initialize
    $("#year").textContent = new Date().getFullYear();
    buildTags();
    render();
  </script>
</body>
</html>
