module ApplicationHelper
    def button(text, path)
        link_to text, path, class: "bg-slate-400 hover:bg-slate-500 text-white rounded-lg transition duration-300 ease-in-out px-4 py-2"
    end
end
