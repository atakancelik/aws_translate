﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Amazon;
using Amazon.Translate;
using Amazon.Translate.Model;

namespace Translate_AWS
{
    public partial class AWS : System.Web.UI.Page
    {
        List<string> LanguageCodes = new List<string>
        {
            "ar",
            "zh",
            "cs",
            "fr",
            "de",
            "it",
            "ja",
            "pt",
            "ru",
            "es",
            "tr",
            "en"
        };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Translate_Click(object sender, EventArgs e)
        {
            if (LanguageCodes.Any(x => x == txt_SourceLanguageCode.Text || x == txt_TargetLanguageCode.Text))
            {
                if (!string.IsNullOrEmpty(txt_ToTranslate.Text))
                {
                    txt_Translated.Text = Translate(txt_SourceLanguageCode.Text, txt_TargetLanguageCode.Text, txt_ToTranslate.Text);
                }
            }
        }

        protected void btn_Swap_Click(object sender, EventArgs e)
        {
            string text = txt_SourceLanguageCode.Text;
            txt_SourceLanguageCode.Text = txt_TargetLanguageCode.Text;
            txt_TargetLanguageCode.Text = text;
        }

        public string Translate(string SourceLanguageCode, string TargetLanguageCode, string Text)
        {
            AmazonTranslateRequest translateRequest = new AmazonTranslateRequest();
            TranslateTextRequest request = new TranslateTextRequest();
            IAmazonTranslate amazonTranslate = (IAmazonTranslate)new AmazonTranslateClient("", "", RegionEndpoint.USEast1);
            request.SourceLanguageCode = SourceLanguageCode;
            request.TargetLanguageCode = TargetLanguageCode;
            request.Text = Text;
            try
            {
                return amazonTranslate.TranslateText(request).TranslatedText;
            }
            catch (Exception ex)
            {
                return "Error " + ex.ToString();
            }
        }
    }
}