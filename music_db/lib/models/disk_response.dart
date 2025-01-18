import 'dart:convert';

class DiskResponse {
    dynamic idAlbum;
    dynamic idArtist;
    dynamic idLabel;
    dynamic strAlbum;
    dynamic strAlbumStripped;
    dynamic strArtist;
    dynamic strArtistStripped;
    dynamic intYearReleased;
    dynamic strStyle;
    dynamic strGenre;
    dynamic strLabel;
    dynamic strReleaseFormat;
    dynamic intSales;
    dynamic strAlbumThumb;
    dynamic strAlbumThumbHq;
    dynamic strAlbumBack;
    dynamic strAlbumCDart;
    dynamic strAlbumSpine;
    dynamic strAlbum3DCase;
    dynamic strAlbum3DFlat;
    dynamic strAlbum3DFace;
    dynamic strAlbum3DThumb;
    dynamic strDescriptionEn;
    dynamic strDescriptionDe;
    dynamic strDescriptionFr;
    dynamic strDescriptionCn;
    dynamic strDescriptionIt;
    dynamic strDescriptionJp;
    dynamic strDescriptionRu;
    dynamic strDescriptionEs;
    dynamic strDescriptionPt;
    dynamic strDescriptionSe;
    dynamic strDescriptionNl;
    dynamic strDescriptionHu;
    dynamic strDescriptionNo;
    dynamic strDescriptionIl;
    dynamic strDescriptionPl;
    dynamic intLoved;
    dynamic intScore;
    dynamic intScoreVotes;
    dynamic strReview;
    dynamic strMood;
    dynamic strTheme;
    dynamic strSpeed;
    dynamic strLocation;
    dynamic strMusicBrainzId;
    dynamic strMusicBrainzArtistId;
    dynamic strAllMusicId;
    dynamic strBbcReviewId;
    dynamic strRateYourMusicID;
    dynamic strDiscogsID;
    dynamic strRateYourMstrWikidataIDusicID;
    dynamic strWikipediaID;
    dynamic strGeniusID;
    dynamic strLyricWikiID;
    dynamic strMusicMozID;
    dynamic strItunesID;
    dynamic strAmazonID;
    dynamic strLocked;
    
    DiskResponse({
        this.idAlbum,
        this.idArtist,
        this.idLabel,
        this.strAlbum,
        this.strAlbumStripped,
        this.strArtist,
        this.strArtistStripped,
        this.intYearReleased,
        this.strStyle,
        this.strGenre,
        this.strLabel,
        this.strReleaseFormat,
        this.intSales,
        this.strAlbumThumb,
        this.strAlbumThumbHq,
        this.strAlbumBack,
        this.strAlbumCDart,
        this.strAlbumSpine,
        this.strAlbum3DCase,
        this.strAlbum3DFlat,
        this.strAlbum3DFace,
        this.strAlbum3DThumb,
        this.strDescriptionEn,
        this.strDescriptionDe,
        this.strDescriptionFr,
        this.strDescriptionCn,
        this.strDescriptionIt,
        this.strDescriptionJp,
        this.strDescriptionRu,
        this.strDescriptionEs,
        this.strDescriptionPt,
        this.strDescriptionSe,
        this.strDescriptionNl,
        this.strDescriptionHu,
        this.strDescriptionNo,
        this.strDescriptionIl,
        this.strDescriptionPl,
        this.intLoved,
        this.intScore,
        this.intScoreVotes,
        this.strReview,
        this.strMood,
        this.strTheme,
        this.strSpeed,
        this.strLocation,
        this.strMusicBrainzId,
        this.strMusicBrainzArtistId,
        this.strAllMusicId,
        this.strBbcReviewId,
        this.strRateYourMusicID,
        this.strDiscogsID,
        this.strRateYourMstrWikidataIDusicID,
        this.strWikipediaID,
        this.strGeniusID,
        this.strLyricWikiID,
        this.strMusicMozID,
        this.strItunesID,
        this.strAmazonID,
        this.strLocked
    });

    factory DiskResponse.fromRawJson(String str) => DiskResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DiskResponse.fromJson(Map<String, dynamic> json) => DiskResponse(
        idAlbum: json["idAlbum"],
        idArtist: json["idArtist"],
        idLabel: json["idLabel"],
        strAlbum: json["strAlbum"],
        strAlbumStripped: json["strAlbumStripped"],
        strArtist: json["strArtist"],
        strArtistStripped: json["strArtistStripped"],
        intYearReleased: json["intYearReleased"],
        strStyle: json["strStyle"],
        strGenre: json["strGenre"],
        strLabel: json["strLabel"],
        strReleaseFormat: json["strReleaseFormat"],
        intSales: json["intSales"],
        strAlbumThumb: json["strAlbumThumb"],
        strAlbumThumbHq: json["strAlbumThumbHQ"],
        strAlbumBack: json["strAlbumBack"],
        strAlbumCDart: json["strAlbumCDart"],
        strAlbumSpine: json["strAlbumSpine"],
        strAlbum3DCase: json["strAlbum3DCase"],
        strAlbum3DFlat: json["strAlbum3DFlat"],
        strAlbum3DFace: json["strAlbum3DFace"],
        strAlbum3DThumb: json["strAlbum3DThumb"],
        strDescriptionEn: json["strDescriptionEN"],
        strDescriptionDe: json["strDescriptionDE"],
        strDescriptionFr: json["strDescriptionFR"],
        strDescriptionCn: json["strDescriptionCN"],
        strDescriptionIt: json["strDescriptionIT"],
        strDescriptionJp: json["strDescriptionJP"],
        strDescriptionRu: json["strDescriptionRU"],
        strDescriptionEs: json["strDescriptionES"],
        strDescriptionPt: json["strDescriptionPT"],
        strDescriptionSe: json["strDescriptionSE"],
        strDescriptionNl: json["strDescriptionNL"],
        strDescriptionHu: json["strDescriptionHU"],
        strDescriptionNo: json["strDescriptionNO"],
        strDescriptionIl: json["strDescriptionIL"],
        strDescriptionPl: json["strDescriptionPL"],
        intLoved: json["intLoved"],
        intScore: json["intScore"],
        intScoreVotes: json["intScoreVotes"],
        strReview: json["strReview"],
        strMood: json["strMood"],
        strTheme: json["strTheme"],
        strSpeed: json["strSpeed"],
        strLocation: json["strLocation"],
        strMusicBrainzId: json["strMusicBrainzID"],
        strMusicBrainzArtistId: json["strMusicBrainzArtistID"],
        strAllMusicId: json["strAllMusicID"],
        strBbcReviewId: json["strBBCReviewID"],
        strRateYourMusicID: json["strRateYourMusicID"],
        strDiscogsID: json["strDiscogsID"],
        strRateYourMstrWikidataIDusicID: json["strRateYourMstrWikidataIDusicID"],
        strWikipediaID: json["strWikipediaID"],
        strGeniusID: json["strGeniusID"],
        strLyricWikiID: json["strLyricWikiID"],
        strMusicMozID: json["strMusicMozID"],
        strItunesID: json["strItunesID"],
        strAmazonID: json["strAmazonID"],
        strLocked: json["strLocked"]
    );

    Map<String, dynamic> toJson() => {
        "idAlbum": idAlbum,
        "idArtist": idArtist,
        "idLabel": idLabel,
        "strAlbum": strAlbum,
        "strAlbumStripped": strAlbumStripped,
        "strArtist": strArtist,
        "strArtistStripped": strArtistStripped,
        "intYearReleased": intYearReleased,
        "strStyle": strStyle,
        "strGenre": strGenre,
        "strLabel": strLabel,
        "strReleaseFormat": strReleaseFormat,
        "intSales": intSales,
        "strAlbumThumb": strAlbumThumb,
        "strAlbumThumbHQ": strAlbumThumbHq,
        "strAlbumBack": strAlbumBack,
        "strAlbumCDart": strAlbumCDart,
        "strAlbumSpine": strAlbumSpine,
        "strAlbum3DCase": strAlbum3DCase,
        "strAlbum3DFlat": strAlbum3DFlat,
        "strAlbum3DFace": strAlbum3DFace,
        "strAlbum3DThumb": strAlbum3DThumb,
        "strDescriptionEN": strDescriptionEn,
        "strDescriptionDE": strDescriptionDe,
        "strDescriptionFR": strDescriptionFr,
        "strDescriptionCN": strDescriptionCn,
        "strDescriptionIT": strDescriptionIt,
        "strDescriptionJP": strDescriptionJp,
        "strDescriptionRU": strDescriptionRu,
        "strDescriptionES": strDescriptionEs,
        "strDescriptionPT": strDescriptionPt,
        "strDescriptionSE": strDescriptionSe,
        "strDescriptionNL": strDescriptionNl,
        "strDescriptionHU": strDescriptionHu,
        "strDescriptionNO": strDescriptionNo,
        "strDescriptionIL": strDescriptionIl,
        "strDescriptionPL": strDescriptionPl,
        "intLoved": intLoved,
        "intScore": intScore,
        "intScoreVotes": intScoreVotes,
        "strReview": strReview,
        "strMood": strMood,
        "strTheme": strTheme,
        "strSpeed": strSpeed,
        "strLocation": strLocation,
        "strMusicBrainzID": strMusicBrainzId,
        "strMusicBrainzArtistID": strMusicBrainzArtistId,
        "strAllMusicID": strAllMusicId,
        "strBBCReviewID": strBbcReviewId,
        "strRateYourMusicID": strRateYourMusicID,
        "strDiscogsID": strDiscogsID,
        "strRateYourMstrWikidataIDusicID": strRateYourMstrWikidataIDusicID,
        "strWikipediaID": strWikipediaID,
        "strGeniusID": strGeniusID,
        "strLyricWikiID": strLyricWikiID,
        "strMusicMozID": strMusicMozID,
        "strItunesID": strItunesID,
        "strAmazonID": strAmazonID,
        "strLocked": strLocked
    };
}