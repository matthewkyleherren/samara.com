window.dataLayer = window.dataLayer || [];

if (window.Statsig !== undefined) {
	window.statsig = new Statsig.StatsigClient(
		"client-14AEhOOdI4GdEaxfBFTovoEoiOnJ68ev5k62cphseBg",
		{},
		{
			environment: { tier: "production" }
		}
	);

	Statsig.runStatsigSessionReplay(window.statsig);
	Statsig.runStatsigAutoCapture(window.statsig);
}

function utm() {
	const params = new URLSearchParams(location.search);
	const result = {};

	params.forEach((value, key) => {
		if (key.startsWith("utm_")) {
			result[key] = value;
		}
	});

	return result;
}

function gtag() {
	window.dataLayer.push(arguments);

	const [command, param, data] = arguments;

	if (window.statsig !== undefined && command === "event") {
		statsig.logEvent({ eventName: param, metadata: { ...data, ...utm() } });
	}
}

gtag("js", new Date());
gtag("config", "G-Y1SW8E75MN");
gtag("config", "AW-11027142108", { allow_enhanced_conversions: true });

(function (w, d, s, l, i) {
	w[l] = w[l] || [];
	w[l].push({ "gtm.start": new Date().getTime(), "event": "gtm.js" });
	var f = d.getElementsByTagName(s)[0],
		j = d.createElement(s),
		dl = l != "dataLayer" ? "&l=" + l : "";
	j.async = true;
	j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
	f.parentNode.insertBefore(j, f);
})(window, document, "script", "dataLayer", "GTM-WS4K34S");
