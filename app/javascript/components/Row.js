import React, { useState, useEffect } from 'react';
import axios from '../packs/axios';

const base_poster_image_url = "https://image.tmdb.org/t/p/original/";

function Row({ title, fetchUrl, firstList=false }) {
	const [movies, setMovies] = useState([]);

	useEffect(() => {
		// If [], run once when the rows loads, and dont run again.
		async function fetchData() {
			const request = await axios.get(fetchUrl);
			setMovies(request.data.results);
			return request;
		}
		fetchData();
	}, [fetchUrl]);

	return (
		<div className={`row ${firstList && "first-list"}`}>
			<h2 className="list-title">{title}</h2>
			<div className="row_posters">

				{movies.map(movie => (
					<img
						key={movie.id}
						className="row_poster"
						src={`${base_poster_image_url}${movie.backdrop_path}`}
						alt={movie.name}
					/>
				))}

			</div>
		</div>
	);
}

export default Row;
