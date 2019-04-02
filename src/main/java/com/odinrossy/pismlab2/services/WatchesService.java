package com.odinrossy.pismlab2.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class WatchesService {

    private static boolean isChild(HttpSession session) {
        return session.getAttribute("type").equals("child");
    }

    private static boolean isMan(HttpSession session) {
        return session.getAttribute("type").equals("man");
    }

    public static String generateAnswer(HttpSession session, HttpServletRequest request) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Бренд: ").append(getParameter(session, "brand"));
            stringBuilder.append("<br>");
            stringBuilder.append("Тип механизма: ").append(getParameter(session, "mechanism"));
            stringBuilder.append("<br>");
            stringBuilder.append("Тип часов: ").append(getParameter(session, "type").equals("man") ? "мужские" : getParameter(session, "type").equals("woman") ? "женские" : "детские");
            stringBuilder.append("<br>");
            stringBuilder.append("Защита от воды: ").append(getParameter(session, "isWaterproof") == null ? "отсутствует" : "есть");
            stringBuilder.append("<br>");
            stringBuilder.append("Ударопрочность: ").append(getParameter(session, "isGlassProtected") == null ? "отсутствует" : "есть");
            stringBuilder.append("<br>");
            if (getParameter(request, "comment") != null) {
                stringBuilder.append("Пожелание: ").append(getParameter(request, "comment"));
            }
            return String.valueOf(stringBuilder);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getImageSourceByBrand(HttpSession session, String brand) {
        try {
            return brand + "-" + (isChild(session) ? "child" : (isMan(session) ? "man" : "woman")) + ".png";
        } catch (NullPointerException e) {
            return null;
        }
    }

    public static void checkParameters(HttpServletRequest request, HttpServletResponse response, String name) throws IOException {
        if (request.getParameter(name) == null)
            response.sendError(400);
    }

    public static void checkParameters(HttpServletRequest request, HttpServletResponse response, String[] names) throws IOException {
        for (String name : names) {
            if (request.getParameter(name) == null) {
                response.sendError(400);
                break;
            }
        }
    }

    public static void checkParameters(HttpSession session, HttpServletResponse response, String[] names) throws IOException {
        for (String name : names) {
            if (session.getAttribute(name) == null) {
                response.sendError(400);
                break;
            }
        }
    }

    public static void writeInSession(HttpSession session, HttpServletRequest request, String name) {
        session.setAttribute(name, request.getParameter(name));
    }

    public static void writeInSession(HttpSession session, HttpServletRequest request, String[] names) {
        for (String name : names) {
            session.setAttribute(name, request.getParameter(name));
        }
    }

    public static String getParameter(HttpServletRequest request, String name) {
        return request.getParameter(name);
    }

    public static String getParameter(HttpSession session, String name) {
        return (String) session.getAttribute(name);
    }
}
