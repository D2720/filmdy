import React from 'react';
import Row from './Row';
import requests from '../packs/requests';
import axios from '../packs/axios'

function Index() {
	return (
		<div className="App">
			<Row title="Trending Now" fetchUrl={requests.fetchTrending} firstList={true} />
			<Row title="Top Rated" fetchUrl={requests.fetchTopRated} />
			<Row title="Action Movies" fetchUrl={requests.fetchActionMovies} />
			<Row title="Comedy Movies" fetchUrl={requests.fetchComedyMovies} />
			<Row title="Horror Movies" fetchUrl={requests.fetchHorrorMovies} />
			<Row title="Romance Movies" fetchUrl={requests.fetchRomanceMovies} />
			<Row title="Documentaries" fetchUrl={requests.fetchDocumentaries} />
		</div>
	);
}

export default Index;