# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

SRC_URI="https://github.com/openSUSE/libsolv/archive/refs/tags/${PV}.tar.gz -> libsolv-${PV}.tar.gz"
KEYWORDS="~amd64"
DESCRIPTION="Library for solving packages and reading repositories"
HOMEPAGE="https://doc.opensuse.org/projects/libzypp/HEAD/"
LICENSE="GPL-2"
SLOT="0"
IUSE=""
RDEPEND=""
DEPEND=""
BDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${PV}"

src_configure(){
	mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX="/usr"
	)
	cmake_src_configure
}
