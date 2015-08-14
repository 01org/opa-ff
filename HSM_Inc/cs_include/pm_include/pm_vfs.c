/* BEGIN_ICS_COPYRIGHT7 ****************************************

Copyright (c) 2015, Intel Corporation

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Intel Corporation nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

** END_ICS_COPYRIGHT7   ****************************************/

/* [ICS VERSION STRING: unknown] */

#include "pm_topology.h"

// These functions are all oriented toward PortImage.  We could alternatively
// supply a PmPort_t and a imageIndex.  Right now the implementation of
// these routines does not need imageIndex (a couple ASSERTs could benefit
// from it).

// adds a port to a vf.
void PmAddPortToVFIndex(PmPortImage_t * portImage, uint32 vfIndex,
			   					PmVF_t *vfp)
{
	portImage->VFs[vfIndex] = vfp;
}

// removes a port from a vf.
void PmRemovePortFromVFIndex(PmPortImage_t *portImage, uint32 vfIndex,
			   						PmVF_t *vfp)
{
	for (; vfIndex < MAX_VFABRICS-1; vfIndex++) {
		portImage->VFs[vfIndex] = portImage->VFs[vfIndex+1];
	}
}

static boolean PmIsPortImageInVF(PmPortImage_t *portImage, PmVF_t *vfp)
{
	int i;

	for (i=0; i<MAX_VFABRICS; i++) {
		if (portImage->VFs[i] == vfp)
			return TRUE;
	}
	return FALSE;
}

boolean PmIsPortInVF(Pm_t *pm, PmPort_t *pmportp,
						PmPortImage_t *portImage, PmVF_t *vfp)
{
	// for non-Switch ports and switch port 0, active will be true
	// but for other switch ports could be not active
	// ports without a PMA are not tabulated
	if (pmportp->u.s.PmaAvoid || ! portImage->u.s.active)
		return FALSE;
	return (PmIsPortImageInVF(portImage, vfp));
}
