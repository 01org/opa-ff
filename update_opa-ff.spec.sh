#!/bin/bash
# BEGIN_ICS_COPYRIGHT8 ****************************************
# 
# Copyright (c) 2016, Intel Corporation
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
#     * Redistributions of source code must retain the above copyright notice,
#       this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Intel Corporation nor the names of its contributors
#       may be used to endorse or promote products derived from this software
#       without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# END_ICS_COPYRIGHT8   ****************************************

#[ICS VERSION STRING: unknown]

basic_tools_sbin="opacapture opafabricinfo opagetvf opagetvf_env
	opahfirev opapacketcapture opaportinfo oparesolvehfiport
	opasaquery opasmaquery opainfo opatmmtool"

basic_tools_sbin_sym="opapmaquery opaportconfig"

basic_tools_opt="setup_self_ssh usemem opaipcalc"

basic_mans="opacapture.1 opaconfig.1 opafabricinfo.1 opagetvf.1
	opagetvf_env.1 opahfirev.1 opainfo.1 opapacketcapture.1
	opapmaquery.1 opaportconfig.1 opaportinfo.1 oparesolvehfiport.1
	opasaquery.1 opasmaquery.1 opatmmtool.1"

ff_tools_opt="opaswquery opaswconfigure opaswfwconfigure
	opaswfwupdate opaswfwverify opaswping opaswreset"

ff_tools_exp="basic.exp chassis.exp chassis_configure.exp
	chassis_fmconfig.exp chassis_fmcontrol.exp chassis_fmgetconfig.exp
	chassis_getconfig.exp chassis_reboot.exp
	chassis_fmgetsecurityfiles.exp chassis_fmsecurityfiles.exp
	chassis_upgrade.exp common_funcs.exp configipoib.exp extmng.exp
	ff_function.exp ib.exp opa_to_xml.exp ibtools.exp install.exp
	ipoibping.exp load.exp mpi.exp mpiperf.exp mpiperfdeviation.exp
	network.exp proc_mgr.exp reboot.exp sacache.exp sm_control.exp
	switch_capture.exp switch_configure.exp switch_dump.exp
	switch_fwverify.exp switch_getconfig.exp switch_hwvpd.exp
	switch_info.exp switch_ping.exp switch_reboot.exp
	switch_upgrade.exp target.exp tools.exp upgrade.exp tclIndex
	tcl_proc comm12 front"

ff_tools_sbin="opacabletest opacheckload opaextracterror
	opaextractlink opaextractperf opaextractstat opaextractstat2
	opafindgood opafirmware opagenchassis opagenesmchassis
	opagenswitches opalinkanalysis opareport opareports
	opasorthosts opatop opaxlattopology opaxlattopology_cust
	opaxmlextract opaxmlfilter opaxmlgenerate opaxmlindent
	opaallanalysis opacaptureall opachassisanalysis opacmdall
	opadownloadall opaesmanalysis opafabricanalysis opafastfabric
	opahostsmanalysis opadisablehosts opadisableports opaenableports
	opaledports opaexpandfile opaextractbadlinks opaextractlids
	opaextractsellinks opaextractmissinglinks opaswenableall
	opaswdisableall opaverifyhosts opahostadmin opachassisadmin
	opaswitchadmin opapingall opascpall opasetupssh opashowallports
	opauploadall opapaquery opashowmc opafequery"

ff_tools_misc="ff_funcs opachassisip opagenswitcheshelper
	chassis_setup switch_setup opagetipaddrtype
	opafastfabric.conf.def show_counts"

ff_tools_fm="config_generate config_diff config_check config_convert"

ff_libs_misc="libqlgc_fork.so"

ff_mans="opaallanalysis.8 opacabletest.8 opacaptureall.8
	opachassisadmin.8 opachassisanalysis.8 opacheckload.8 opacmdall.8
	opadisablehosts.8 opadisableports.8 opadownloadall.8
	opaenableports.8 opaledports.8 opaesmanalysis.8 opaexpandfile.8
	opaextractbadlinks.8 opaextracterror.8 opaextractlids.8
	opaextractlink.8 opaextractperf.8 opaextractsellinks.8
	opaextractstat.8 opaextractstat2.8 opafabricanalysis.8
	opafastfabric.8 opafequery.8 opafindgood.8 opafmconfigcheck.8
	opafmconfigdiff.8 opagenchassis.8 opagenesmchassis.8
	opagenswitches.8 opagentopology.8 opahostadmin.8 opahostsmanalysis.8
	opalinkanalysis.8 opapaquery.8 opapingall.8 opareport.8
	opareports.8 opascpall.8 opasetupssh.8 opashowallports.8
	opasorthosts.8 opaswitchadmin.8 opatop.8 opauploadall.8
	opaverifyhosts.8 opaxlattopology.8 opaxlattopology_cust.8
	opashowmc.8 opaxmlextract.8 opaxmlfilter.8 opaxmlgenerate.8
	opaxmlindent.8 opaswdisableall.8 opaswenableall.8 opafirmware.8
	opaextractmissinglinks.8"

ff_iba_samples="hostverify.sh opatopology_FIs.txt opatopology_links.txt
	opatopology_SMs.txt opatopology_SWs.txt linksum_swd06.csv
	linksum_swd24.csv README.topology README.xlat_topology
	topology_cust.xlsx topology.xlsx allhosts-sample chassis-sample
	hosts-sample switches-sample ports-sample opaff.xml-sample
	mac_to_dhcp filterFile.txt triggerFile.txt opamon.conf-sample
	opamon.si.conf-sample opafastfabric.conf-sample
	opa_ca_openssl.cnf-sample opa_comp_openssl.cnf-sample
	opagentopology esm_chassis-sample"

help_doc="opatop_group_bw.hlp opatop_group_config.hlp
	opatop_group_err.hlp opatop_group_focus.hlp opatop_group_info_sel.hlp
	opatop_img_config.hlp opatop_pm_config.hlp opatop_port_stats.hlp
	opatop_summary.hlp opatop_vf_bw.hlp opatop_vf_info_sel.hlp
	opatop_vf_config.hlp"

mpi_apps_files="Makefile mpi_hosts.sample README prepare_run
	select_mpi run_bw get_selected_mpi.sh get_mpi_cc.sh
	*.params gen_group_hosts gen_mpi_hosts mpi_cleanup
	stop_daemons hpl_dat_gen config_hpl2 run_hpl2 run_lat run_pmb run_imb
	run_lat2 run_bw2 run_bibw2 run_bcast2 run_app runmyapp mpicheck
	run_mpicheck run_deviation run_multibw run_mpi_stress run_osu
	run_cabletest run_allhfilatency run_nxnlatbw run_alltoall3 run_bcast3
	run_bibw3 run_bw3 run_lat3 run_mbw_mr3 run_multi_lat3 run_batch_script
	run_batch_cabletest hpl-count.diff groupstress deviation
	hpl-config/HPL.dat-* hpl-config/README"

shmem_apps_files="Makefile mpi_hosts.sample prepare_run README select_mpi
	run_barrier run_get_bibw run_get_bw run_get_latency run_put_bibw
	run_put_bw run_put_latency run_reduce run_hello run_alltoall
	run_rand shmem-hello.c"

if [ ! -f /etc/os-release ]
then
	echo No such file /etc/os-release
	echo Pleae contact Intel support
	exit 1
fi

id=$(grep ^ID= /etc/os-release | cut -f2 -d\")
versionid=$(grep ^VERSION_ID= /etc/os-release | cut -f2 -d\")

from=$1
to=$2

if [ "$from" = "" -o "$to" = "" ]
then
	echo "Usage: update_opa-ff_spec.sh spec-in-file spec-file"
	exit 1
fi

if [ "$from" != "$to" ]
then
	cp $from $to
fi

if [ "$id" = "rhel" ]
then
	sed -i "s/__RPM_REQ/expect%{?_isa}, tcl%{?_isa}/g" $to
	sed -i "s/__RPM_BLDREQ/expat-devel, gcc-c++, perl, openssl-devel, ncurses-devel, tcl-devel, libibumad-devel, libibverbs-devel, libibmad-devel, ibacm-devel/g" $to
	sed -i "/__RPM_DEBUG/,+1d" $to
fi

if [ "$id" = "sles" ]
then
	st=$(echo "$versionid >= 11.1" | bc)
	if [ $st = 1 ]
	then
		sed -i "s/__RPM_DEBUG/%debug_package/g" $to
	else
		sed -i "/__RPM_DEBUG/,+1d" $to
	fi
	sed -i "s/__RPM_REQ/libexpat1, libibmad5, libibumad3, libibverbs1/g" $to
	sed -i "s/__RPM_BLDREQ/libexpat-devel, gcc-c++, perl, libopenssl-devel, ncurses-devel, tcl-devel, libibumad-devel, libibverbs-devel, libibmad-devel, ibacm-devel/g" $to
fi

> .tmpspec
while read line
do
	if [ "$line" = "__RPM_BASIC_FILES" ]
	then
		for i in $basic_tools_sbin $basic_tools_sbin_sym
		do
			echo "%{_sbindir}/$i" >> .tmpspec
		done
		for i in $basic_tools_opt
		do
			echo "%{_libdir}/opa/tools/$i" >> .tmpspec
		done
		for i in $basic_mans
		do
			echo "%{_mandir}/man1/${i}.gz" >> .tmpspec
		done
	else
		echo "$line" >> .tmpspec
	fi
done < $to
mv .tmpspec $to

> .tmpspec
while read line
do
	if [ "$line" = "__RPM_FF_FILES" ]
	then
		for i in $ff_tools_opt $ff_tools_misc $ff_tools_exp $ff_libs_misc
		do
			echo "%{_libdir}/opa/tools/$i" >> .tmpspec
		done
		for i in $ff_tools_sbin
		do
			echo "%{_sbindir}/$i" >> .tmpspec
		done
		for i in $help_doc
		do
			echo "%{_libdir}/opa/help/$i" >> .tmpspec
		done
		for i in $ff_tools_fm
		do
			echo "%{_libdir}/opa/fm_tools/$i" >> .tmpspec
		done
		for i in $ff_iba_samples
		do
			echo "%{_libdir}/opa/samples/$i" >> .tmpspec
		done
		for i in $ff_mans
		do
			echo "%{_mandir}/man8/${i}.gz" >> .tmpspec
		done
		for i in $mpi_apps_files
		do
			echo "%{_libdir}/opa/src/mpi_apps/$i" >> .tmpspec
		done
		for i in $shmem_apps_files
		do
			echo "%{_libdir}/opa/src/shmem_apps/$i" >> .tmpspec
		done
	else
		echo "$line" >> .tmpspec
	fi
done < $to
mv .tmpspec $to

exit 0