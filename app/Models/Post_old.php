<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul 1",
            "slug" => "judul-1",
            "author" => "seto",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa odit iste dolorem dignissimos! Est delectus et obcaecati quaerat molestias at magni, iure vel enim, animi inventore eaque nulla ab ipsam!"
        ],
        [
            "title" => "Judul dua",
            "slug" => "judul-2",
            "author" => "aryo",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate nemo vitae nostrum beatae pariatur quod placeat enim atque iure, reprehenderit nesciunt facere perferendis provident. Excepturi id cupiditate nemo sapiente quaerat hic minima doloremque obcaecati rerum corrupti expedita saepe facere, quia quo exercitationem enim natus perspiciatis cum aliquam quos velit amet. Corporis laborum sapiente quia sint iusto maiores tempora pariatur omnis quo in dolore blanditiis, illum nihil aperiam doloribus accusantium perspiciatis ratione et nostrum distinctio voluptas. Earum aliquam voluptatibus, amet optio quo libero nulla soluta recusandae, doloremque vel maxime dicta accusantium in quis aspernatur facilis blanditiis beatae assumenda dolor ex ab."
        ]
    ];

    public static function all() {
        return collect(self::$blog_posts);
    }

    public static function find($slug) {
        $posts = static::all();

        return $posts->firstWhere('slug',$slug);
    }

}

