import { Link } from "wouter";

export default function Attribution() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-orange-50 via-white to-amber-50">
      <div className="max-w-4xl mx-auto px-4 py-12">
        <Link href="/">
          <button className="mb-8 flex items-center gap-2 text-orange-600 hover:text-orange-700">
            <span>←</span>
            <span>Back to Home</span>
          </button>
        </Link>

        <div className="bg-white rounded-2xl shadow-lg p-8 md:p-12">
          <h1 className="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
            Attribution and Acknowledgements
          </h1>

          <div className="prose prose-orange max-w-none">
            <section className="mb-8">
              <h2 className="text-2xl font-semibold text-gray-800 mb-4">
                Thirukkural Dataset
              </h2>
              <p className="text-gray-700 leading-relaxed mb-4">
                The complete Thirukkural text (all 1,330 couplets) used in this application is sourced from Project Madurai, an open and voluntary initiative to collect and publish free electronic editions of ancient Tamil literary classics.
              </p>
              
              <div className="bg-orange-50 border-l-4 border-orange-500 p-4 my-6">
                <p className="font-semibold text-orange-900 mb-2">Project Madurai</p>
                <p className="text-orange-800 text-sm">
                  Website: <a href="https://www.projectmadurai.org/" target="_blank" rel="noopener noreferrer" className="underline hover:text-orange-600">www.projectmadurai.org</a>
                </p>
                <p className="text-orange-800 text-sm mt-2">
                  Project Madurai is an open, voluntary, worldwide initiative devoted to preparation of electronic texts of Tamil literary works and to distribute them free on the Internet.
                </p>
              </div>

              <p className="text-gray-700 leading-relaxed mb-4">
                The Thirukkural text is in the public domain, as it was authored by Thiruvalluvar over 2,000 years ago. The English translations and commentaries have been compiled from various public domain sources available through Project Madurai.
              </p>
            </section>

            <section className="mb-8">
              <h2 className="text-2xl font-semibold text-gray-800 mb-4">
                GitHub Repositories
              </h2>
              <p className="text-gray-700 leading-relaxed mb-4">
                The structured dataset was processed from the following open-source GitHub repositories that compiled data from Project Madurai:
              </p>
              <ul className="list-disc list-inside text-gray-700 space-y-2 ml-4">
                <li>
                  <a href="https://github.com/tk120404/thirukkural" target="_blank" rel="noopener noreferrer" className="text-orange-600 hover:text-orange-700 underline">
                    tk120404/thirukkural
                  </a> - Complete Thirukkural dataset with translations and transliterations
                </li>
                <li>
                  <a href="https://github.com/b1zantine/thirukkural-dataset" target="_blank" rel="noopener noreferrer" className="text-orange-600 hover:text-orange-700 underline">
                    b1zantine/thirukkural-dataset
                  </a> - Tamil Unicode text from Project Madurai
                </li>
                <li>
                  <a href="https://github.com/jjasim/Thirukkural-English-Translation-Dataset" target="_blank" rel="noopener noreferrer" className="text-orange-600 hover:text-orange-700 underline">
                    jjasim/Thirukkural-English-Translation-Dataset
                  </a> - English translations
                </li>
              </ul>
            </section>

            <section className="mb-8">
              <h2 className="text-2xl font-semibold text-gray-800 mb-4">
                Copyright and Licensing
              </h2>
              <p className="text-gray-700 leading-relaxed mb-4">
                According to Project Madurai's distribution policy:
              </p>
              <blockquote className="border-l-4 border-gray-300 pl-4 italic text-gray-600 my-4">
                "Distribution of the etext collections of Project Madurai by third parties is permitted, provided the header page containing the Project Logo and credit acknowledgements are kept intact."
              </blockquote>
              <p className="text-gray-700 leading-relaxed">
                This application complies with Project Madurai's distribution policy by providing this attribution page and acknowledging the source of the Thirukkural text.
              </p>
            </section>

            <section className="mb-8">
              <h2 className="text-2xl font-semibold text-gray-800 mb-4">
                About Thiruvalluvar
              </h2>
              <p className="text-gray-700 leading-relaxed">
                Thirukkural was authored by the great Tamil poet and philosopher Thiruvalluvar, who is believed to have lived between the 3rd century BCE and 1st century CE. The work consists of 1,330 couplets (kurals) organized into 133 chapters, covering three main themes: virtue (aram), wealth (porul), and love (inbam).
              </p>
            </section>

            <section>
              <h2 className="text-2xl font-semibold text-gray-800 mb-4">
                Contact
              </h2>
              <p className="text-gray-700 leading-relaxed">
                For questions about the source data, please contact Project Madurai at: <a href="mailto:pmadurai@gmail.com" className="text-orange-600 hover:text-orange-700 underline">pmadurai@gmail.com</a>
              </p>
            </section>
          </div>
        </div>
      </div>
    </div>
  );
}
