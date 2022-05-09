; ModuleID = '/llk/IR_all_yes/kernel/dma/mapping.c_pt.bc'
source_filename = "../kernel/dma/mapping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dmam_free_coherent\22, \22a\22\09"
module asm "\09.weak\09__crc_dmam_free_coherent\09\09\09\09"
module asm "\09.long\09__crc_dmam_free_coherent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_free_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dmam_alloc_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dmam_alloc_attrs\09\09\09\09"
module asm "\09.long\09__crc_dmam_alloc_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_alloc_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_map_page_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_map_page_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_map_page_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_page_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_unmap_page_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_unmap_page_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_unmap_page_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_page_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_map_sg_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_map_sg_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_map_sg_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_sg_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_map_sgtable\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_map_sgtable\09\09\09\09"
module asm "\09.long\09__crc_dma_map_sgtable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_sgtable:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_sgtable\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_sgtable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_unmap_sg_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_unmap_sg_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_unmap_sg_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_sg_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_map_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_map_resource\09\09\09\09"
module asm "\09.long\09__crc_dma_map_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_resource\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_unmap_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_unmap_resource\09\09\09\09"
module asm "\09.long\09__crc_dma_unmap_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_resource\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_sync_single_for_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_sync_single_for_cpu\09\09\09\09"
module asm "\09.long\09__crc_dma_sync_single_for_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_single_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_single_for_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_single_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_sync_single_for_device\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_sync_single_for_device\09\09\09\09"
module asm "\09.long\09__crc_dma_sync_single_for_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_single_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_single_for_device\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_single_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_sync_sg_for_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_sync_sg_for_cpu\09\09\09\09"
module asm "\09.long\09__crc_dma_sync_sg_for_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_sg_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_sg_for_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_sg_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_sync_sg_for_device\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_sync_sg_for_device\09\09\09\09"
module asm "\09.long\09__crc_dma_sync_sg_for_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_sg_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_sg_for_device\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_sg_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_get_sgtable_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_get_sgtable_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_get_sgtable_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_sgtable_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_sgtable_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_sgtable_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_can_mmap\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_can_mmap\09\09\09\09"
module asm "\09.long\09__crc_dma_can_mmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_can_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_can_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_dma_can_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_mmap_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_mmap_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_mmap_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_get_required_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_get_required_mask\09\09\09\09"
module asm "\09.long\09__crc_dma_get_required_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_required_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_required_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_required_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_alloc_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_alloc_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_alloc_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_free_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_free_attrs\09\09\09\09"
module asm "\09.long\09__crc_dma_free_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_alloc_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_alloc_pages\09\09\09\09"
module asm "\09.long\09__crc_dma_alloc_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_free_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_free_pages\09\09\09\09"
module asm "\09.long\09__crc_dma_free_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_mmap_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_mmap_pages\09\09\09\09"
module asm "\09.long\09__crc_dma_mmap_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_alloc_noncontiguous\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_alloc_noncontiguous\09\09\09\09"
module asm "\09.long\09__crc_dma_alloc_noncontiguous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_free_noncontiguous\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_free_noncontiguous\09\09\09\09"
module asm "\09.long\09__crc_dma_free_noncontiguous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_vmap_noncontiguous\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_vmap_noncontiguous\09\09\09\09"
module asm "\09.long\09__crc_dma_vmap_noncontiguous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_vmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_vmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_vmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_vunmap_noncontiguous\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_vunmap_noncontiguous\09\09\09\09"
module asm "\09.long\09__crc_dma_vunmap_noncontiguous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_vunmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_vunmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_vunmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_mmap_noncontiguous\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_mmap_noncontiguous\09\09\09\09"
module asm "\09.long\09__crc_dma_mmap_noncontiguous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_supported\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_supported\09\09\09\09"
module asm "\09.long\09__crc_dma_supported\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_supported\22\09\09\09\09\09"
module asm "__kstrtabns_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_set_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_set_mask\09\09\09\09"
module asm "\09.long\09__crc_dma_set_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_set_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_set_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_set_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_set_coherent_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_set_coherent_mask\09\09\09\09"
module asm "\09.long\09__crc_dma_set_coherent_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_set_coherent_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_set_coherent_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_set_coherent_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_max_mapping_size\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_max_mapping_size\09\09\09\09"
module asm "\09.long\09__crc_dma_max_mapping_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_max_mapping_size:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_max_mapping_size\22\09\09\09\09\09"
module asm "__kstrtabns_dma_max_mapping_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_need_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_need_sync\09\09\09\09"
module asm "\09.long\09__crc_dma_need_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_need_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_need_sync\22\09\09\09\09\09"
module asm "__kstrtabns_dma_need_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dma_get_merge_boundary\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_get_merge_boundary\09\09\09\09"
module asm "\09.long\09__crc_dma_get_merge_boundary\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_merge_boundary:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_merge_boundary\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_merge_boundary:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_devres = type { i32, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_sgt_handle = type { %struct.sg_table, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/dma/mapping.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_dmam_free_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_free_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_free_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_free_coherent to i32), ptr @__kstrtab_dmam_free_coherent, ptr @__kstrtabns_dmam_free_coherent }, section "___ksymtab+dmam_free_coherent", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmam_release\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_dmam_alloc_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_alloc_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_alloc_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_alloc_attrs to i32), ptr @__kstrtab_dmam_alloc_attrs, ptr @__kstrtabns_dmam_alloc_attrs }, section "___ksymtab+dmam_alloc_attrs", align 4
@dma_map_page_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_map_page_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_page_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_page_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_page_attrs to i32), ptr @__kstrtab_dma_map_page_attrs, ptr @__kstrtabns_dma_map_page_attrs }, section "___ksymtab+dma_map_page_attrs", align 4
@__kstrtab_dma_unmap_page_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_page_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_page_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_page_attrs to i32), ptr @__kstrtab_dma_unmap_page_attrs, ptr @__kstrtabns_dma_unmap_page_attrs }, section "___ksymtab+dma_unmap_page_attrs", align 4
@__kstrtab_dma_map_sg_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_sg_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_sg_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_sg_attrs to i32), ptr @__kstrtab_dma_map_sg_attrs, ptr @__kstrtabns_dma_map_sg_attrs }, section "___ksymtab+dma_map_sg_attrs", align 4
@__kstrtab_dma_map_sgtable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_sgtable = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_sgtable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_sgtable to i32), ptr @__kstrtab_dma_map_sgtable, ptr @__kstrtabns_dma_map_sgtable }, section "___ksymtab_gpl+dma_map_sgtable", align 4
@__kstrtab_dma_unmap_sg_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_sg_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_sg_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_sg_attrs to i32), ptr @__kstrtab_dma_unmap_sg_attrs, ptr @__kstrtabns_dma_unmap_sg_attrs }, section "___ksymtab+dma_unmap_sg_attrs", align 4
@dma_map_resource.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_map_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_resource to i32), ptr @__kstrtab_dma_map_resource, ptr @__kstrtabns_dma_map_resource }, section "___ksymtab+dma_map_resource", align 4
@__kstrtab_dma_unmap_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_resource to i32), ptr @__kstrtab_dma_unmap_resource, ptr @__kstrtabns_dma_unmap_resource }, section "___ksymtab+dma_unmap_resource", align 4
@__kstrtab_dma_sync_single_for_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_single_for_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_single_for_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_single_for_cpu to i32), ptr @__kstrtab_dma_sync_single_for_cpu, ptr @__kstrtabns_dma_sync_single_for_cpu }, section "___ksymtab+dma_sync_single_for_cpu", align 4
@__kstrtab_dma_sync_single_for_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_single_for_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_single_for_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_single_for_device to i32), ptr @__kstrtab_dma_sync_single_for_device, ptr @__kstrtabns_dma_sync_single_for_device }, section "___ksymtab+dma_sync_single_for_device", align 4
@__kstrtab_dma_sync_sg_for_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_sg_for_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_sg_for_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_sg_for_cpu to i32), ptr @__kstrtab_dma_sync_sg_for_cpu, ptr @__kstrtabns_dma_sync_sg_for_cpu }, section "___ksymtab+dma_sync_sg_for_cpu", align 4
@__kstrtab_dma_sync_sg_for_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_sg_for_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_sg_for_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_sg_for_device to i32), ptr @__kstrtab_dma_sync_sg_for_device, ptr @__kstrtabns_dma_sync_sg_for_device }, section "___ksymtab+dma_sync_sg_for_device", align 4
@__kstrtab_dma_get_sgtable_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_sgtable_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_sgtable_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_sgtable_attrs to i32), ptr @__kstrtab_dma_get_sgtable_attrs, ptr @__kstrtabns_dma_get_sgtable_attrs }, section "___ksymtab+dma_get_sgtable_attrs", align 4
@__kstrtab_dma_can_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_can_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_can_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_can_mmap to i32), ptr @__kstrtab_dma_can_mmap, ptr @__kstrtabns_dma_can_mmap }, section "___ksymtab_gpl+dma_can_mmap", align 4
@__kstrtab_dma_mmap_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_attrs to i32), ptr @__kstrtab_dma_mmap_attrs, ptr @__kstrtabns_dma_mmap_attrs }, section "___ksymtab+dma_mmap_attrs", align 4
@__kstrtab_dma_get_required_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_required_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_required_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_required_mask to i32), ptr @__kstrtab_dma_get_required_mask, ptr @__kstrtabns_dma_get_required_mask }, section "___ksymtab_gpl+dma_get_required_mask", align 4
@dma_alloc_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_alloc_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_attrs to i32), ptr @__kstrtab_dma_alloc_attrs, ptr @__kstrtabns_dma_alloc_attrs }, section "___ksymtab+dma_alloc_attrs", align 4
@__kstrtab_dma_free_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_attrs to i32), ptr @__kstrtab_dma_free_attrs, ptr @__kstrtabns_dma_free_attrs }, section "___ksymtab+dma_free_attrs", align 4
@__kstrtab_dma_alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_pages to i32), ptr @__kstrtab_dma_alloc_pages, ptr @__kstrtabns_dma_alloc_pages }, section "___ksymtab_gpl+dma_alloc_pages", align 4
@__kstrtab_dma_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_pages to i32), ptr @__kstrtab_dma_free_pages, ptr @__kstrtabns_dma_free_pages }, section "___ksymtab_gpl+dma_free_pages", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_dma_mmap_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_pages to i32), ptr @__kstrtab_dma_mmap_pages, ptr @__kstrtabns_dma_mmap_pages }, section "___ksymtab_gpl+dma_mmap_pages", align 4
@dma_alloc_noncontiguous.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_alloc_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_noncontiguous to i32), ptr @__kstrtab_dma_alloc_noncontiguous, ptr @__kstrtabns_dma_alloc_noncontiguous }, section "___ksymtab_gpl+dma_alloc_noncontiguous", align 4
@__kstrtab_dma_free_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_noncontiguous to i32), ptr @__kstrtab_dma_free_noncontiguous, ptr @__kstrtabns_dma_free_noncontiguous }, section "___ksymtab_gpl+dma_free_noncontiguous", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_dma_vmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_vmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_vmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_vmap_noncontiguous to i32), ptr @__kstrtab_dma_vmap_noncontiguous, ptr @__kstrtabns_dma_vmap_noncontiguous }, section "___ksymtab_gpl+dma_vmap_noncontiguous", align 4
@__kstrtab_dma_vunmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_vunmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_vunmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_vunmap_noncontiguous to i32), ptr @__kstrtab_dma_vunmap_noncontiguous, ptr @__kstrtabns_dma_vunmap_noncontiguous }, section "___ksymtab_gpl+dma_vunmap_noncontiguous", align 4
@__kstrtab_dma_mmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_noncontiguous to i32), ptr @__kstrtab_dma_mmap_noncontiguous, ptr @__kstrtabns_dma_mmap_noncontiguous }, section "___ksymtab_gpl+dma_mmap_noncontiguous", align 4
@__kstrtab_dma_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_supported to i32), ptr @__kstrtab_dma_supported, ptr @__kstrtabns_dma_supported }, section "___ksymtab+dma_supported", align 4
@__kstrtab_dma_set_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_set_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_set_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_set_mask to i32), ptr @__kstrtab_dma_set_mask, ptr @__kstrtabns_dma_set_mask }, section "___ksymtab+dma_set_mask", align 4
@__kstrtab_dma_set_coherent_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_set_coherent_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_set_coherent_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_set_coherent_mask to i32), ptr @__kstrtab_dma_set_coherent_mask, ptr @__kstrtabns_dma_set_coherent_mask }, section "___ksymtab+dma_set_coherent_mask", align 4
@__kstrtab_dma_max_mapping_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_max_mapping_size = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_max_mapping_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_max_mapping_size to i32), ptr @__kstrtab_dma_max_mapping_size, ptr @__kstrtabns_dma_max_mapping_size }, section "___ksymtab_gpl+dma_max_mapping_size", align 4
@__kstrtab_dma_need_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_need_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_need_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_need_sync to i32), ptr @__kstrtab_dma_need_sync, ptr @__kstrtabns_dma_need_sync }, section "___ksymtab_gpl+dma_need_sync", align 4
@__kstrtab_dma_get_merge_boundary = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_merge_boundary = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_merge_boundary = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_merge_boundary to i32), ptr @__kstrtab_dma_get_merge_boundary, ptr @__kstrtabns_dma_get_merge_boundary }, section "___ksymtab_gpl+dma_get_merge_boundary", align 4
@dma_default_coherent = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@arm_dma_ops = external dso_local local_unnamed_addr constant %struct.dma_map_ops, align 4
@__dma_map_sg_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_map_sg_attrs.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_alloc_pages.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967274, i64 4294967284, i64 4294967291]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 66, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 90, i32 7 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"dma_default_coherent\00", align 1
@___asan_gen_.13 = private constant [24 x i8] c"../kernel/dma/mapping.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 19, i32 6 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_dma_alloc_attrs, ptr @__ksymtab_dma_alloc_noncontiguous, ptr @__ksymtab_dma_alloc_pages, ptr @__ksymtab_dma_can_mmap, ptr @__ksymtab_dma_free_attrs, ptr @__ksymtab_dma_free_noncontiguous, ptr @__ksymtab_dma_free_pages, ptr @__ksymtab_dma_get_merge_boundary, ptr @__ksymtab_dma_get_required_mask, ptr @__ksymtab_dma_get_sgtable_attrs, ptr @__ksymtab_dma_map_page_attrs, ptr @__ksymtab_dma_map_resource, ptr @__ksymtab_dma_map_sg_attrs, ptr @__ksymtab_dma_map_sgtable, ptr @__ksymtab_dma_max_mapping_size, ptr @__ksymtab_dma_mmap_attrs, ptr @__ksymtab_dma_mmap_noncontiguous, ptr @__ksymtab_dma_mmap_pages, ptr @__ksymtab_dma_need_sync, ptr @__ksymtab_dma_set_coherent_mask, ptr @__ksymtab_dma_set_mask, ptr @__ksymtab_dma_supported, ptr @__ksymtab_dma_sync_sg_for_cpu, ptr @__ksymtab_dma_sync_sg_for_device, ptr @__ksymtab_dma_sync_single_for_cpu, ptr @__ksymtab_dma_sync_single_for_device, ptr @__ksymtab_dma_unmap_page_attrs, ptr @__ksymtab_dma_unmap_resource, ptr @__ksymtab_dma_unmap_sg_attrs, ptr @__ksymtab_dma_vmap_noncontiguous, ptr @__ksymtab_dma_vunmap_noncontiguous, ptr @__ksymtab_dmam_alloc_attrs, ptr @__ksymtab_dmam_free_coherent, ptr @.str, ptr @.str.1, ptr @dma_default_coherent], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_default_coherent to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmam_free_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma_handle) #0 align 64 {
entry:
  %match_data = alloca %struct.dma_devres, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match_data) #6
  %0 = getelementptr inbounds %struct.dma_devres, ptr %match_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dma_devres, ptr %match_data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dma_devres, ptr %match_data, i32 0, i32 3
  %3 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %match_data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vaddr, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dma_handle, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %dma_ops.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %dma_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_ops.i.i.i, align 4
  %tobool.not.i66.i.i = icmp eq ptr %8, null
  %spec.select.i.i.i = select i1 %tobool.not.i66.i.i, ptr @arm_dma_ops, ptr %8
  %dec.i.i.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp ult i32 %dec.i.i.i, 4096
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  %9 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #6, !range !101
  %sub.i.i.i.i = sub nuw nsw i32 32, %9
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %call2.i.i = tail call i32 @dma_release_from_dev_coherent(ptr noundef %dev, i32 noundef %cond.i.i.i.i, ptr noundef %vaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.dma_free_coherent.exit_crit_edge

entry.dma_free_coherent.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_coherent.exit

if.end.i.i:                                       ; preds = %entry
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !102
  %and.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end.i.i.if.end30.i.i_crit_edge, label %do.end24.i.i, !prof !103

if.end.i.i.if.end30.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %do.end24.i.i, %if.end.i.i.if.end30.i.i_crit_edge
  %tobool38.not.i.i = icmp eq ptr %vaddr, null
  br i1 %tobool38.not.i.i, label %if.end30.i.i.dma_free_coherent.exit_crit_edge, label %if.else.i.i

if.end30.i.i.dma_free_coherent.exit_crit_edge:    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_coherent.exit

if.else.i.i:                                      ; preds = %if.end30.i.i
  tail call void @debug_dma_free_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef nonnull %vaddr, i32 noundef %dma_handle) #6
  %free.i.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free.i.i, align 4
  %tobool43.not.i.i = icmp eq ptr %12, null
  br i1 %tobool43.not.i.i, label %if.else.i.i.dma_free_coherent.exit_crit_edge, label %if.then44.i.i

if.else.i.i.dma_free_coherent.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_coherent.exit

if.then44.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %dev, i32 noundef %size, ptr noundef nonnull %vaddr, i32 noundef %dma_handle, i32 noundef 0) #6
  br label %dma_free_coherent.exit

dma_free_coherent.exit:                           ; preds = %if.then44.i.i, %if.else.i.i.dma_free_coherent.exit_crit_edge, %if.end30.i.i.dma_free_coherent.exit_crit_edge, %entry.dma_free_coherent.exit_crit_edge
  %call = call i32 @devres_destroy(ptr noundef %dev, ptr noundef nonnull @dmam_release, ptr noundef nonnull @dmam_match, ptr noundef nonnull %match_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %dma_free_coherent.exit.if.end_crit_edge, label %do.end, !prof !103

dma_free_coherent.exit.if.end_crit_edge:          ; preds = %dma_free_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %dma_free_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %dma_free_coherent.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match_data) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmam_release(ptr noundef %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %vaddr = getelementptr inbounds %struct.dma_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %dma_handle = getelementptr inbounds %struct.dma_devres, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_handle, align 4
  %attrs = getelementptr inbounds %struct.dma_devres, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attrs, align 4
  %dma_ops.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %dma_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_ops.i.i, align 4
  %tobool.not.i66.i = icmp eq ptr %9, null
  %spec.select.i.i = select i1 %tobool.not.i66.i, ptr @arm_dma_ops, ptr %9
  %dec.i.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %10 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #6, !range !101
  %sub.i.i.i = sub nuw nsw i32 32, %10
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call2.i = tail call i32 @dma_release_from_dev_coherent(ptr noundef %dev, i32 noundef %cond.i.i.i, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dma_free_attrs.exit_crit_edge

entry.dma_free_attrs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_attrs.exit

if.end.i:                                         ; preds = %entry
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !102
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end30.i_crit_edge, label %do.end24.i, !prof !103

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end24.i, %if.end.i.if.end30.i_crit_edge
  %tobool38.not.i = icmp eq ptr %3, null
  br i1 %tobool38.not.i, label %if.end30.i.dma_free_attrs.exit_crit_edge, label %if.else.i

if.end30.i.dma_free_attrs.exit_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_attrs.exit

if.else.i:                                        ; preds = %if.end30.i
  tail call void @debug_dma_free_coherent(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %5) #6
  %free.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free.i, align 4
  %tobool43.not.i = icmp eq ptr %13, null
  br i1 %tobool43.not.i, label %if.else.i.dma_free_attrs.exit_crit_edge, label %if.then44.i

if.else.i.dma_free_attrs.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_free_attrs.exit

if.then44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %5, i32 noundef %7) #6
  br label %dma_free_attrs.exit

dma_free_attrs.exit:                              ; preds = %if.then44.i, %if.else.i.dma_free_attrs.exit_crit_edge, %if.end30.i.dma_free_attrs.exit_crit_edge, %entry.dma_free_attrs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmam_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %match_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.dma_devres, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %vaddr1 = getelementptr inbounds %struct.dma_devres, ptr %match_data, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr1, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  %6 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %match_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %lor.rhs, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %if.then
  %dma_handle = getelementptr inbounds %struct.dma_devres, ptr %res, i32 0, i32 2
  %8 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_handle, align 4
  %dma_handle4 = getelementptr inbounds %struct.dma_devres, ptr %match_data, i32 0, i32 2
  %10 = ptrtoint ptr %dma_handle4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_handle4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.not = icmp eq i32 %9, %11
  br i1 %cmp5.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !103

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %lor.rhs.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dmam_release, i32 noundef 16, i32 noundef %gfp, i32 noundef -1, ptr noundef nonnull @.str.1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %gfp, i32 noundef %attrs)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vaddr5 = getelementptr inbounds %struct.dma_devres, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vaddr5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %vaddr5, align 4
  %1 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_handle, align 4
  %dma_handle6 = getelementptr inbounds %struct.dma_devres, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %dma_handle6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %dma_handle6, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %call, align 4
  %attrs8 = getelementptr inbounds %struct.dma_devres, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %attrs8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %attrs, ptr %attrs8, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %flag, i32 noundef %attrs) #0 align 64 {
entry:
  %cpu_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_addr) #6
  %2 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cpu_addr, align 4, !annotation !104
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %coherent_dma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b72 = load i1, ptr @dma_alloc_attrs.__already_done, align 1
  br i1 %.b72, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !103

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dma_alloc_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = call i32 @dma_alloc_from_dev_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, ptr noundef nonnull %cpu_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_addr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end29
  %7 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec.select.i, align 4
  %tobool44.not = icmp eq ptr %8, null
  br i1 %tobool44.not, label %if.else.cleanup_crit_edge, label %if.end50

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %flag, -8
  %call47 = call ptr %8(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %and, i32 noundef %attrs) #6
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call47, ptr %cpu_addr, align 4
  %10 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_handle, align 4
  call void @debug_dma_alloc_coherent(ptr noundef %dev, i32 noundef %size, i32 noundef %11, ptr noundef %call47, i32 noundef %attrs) #6
  %12 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.else.cleanup_crit_edge, %if.then39
  %retval.0 = phi ptr [ %6, %if.then39 ], [ %13, %if.end50 ], [ null, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_addr) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %2 = icmp ugt i32 %dir, 2
  br i1 %2, label %do.body5, label %do.end10, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #6, !srcloc !106
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %do.end10
  %.b90 = load i1, ptr @dma_map_page_attrs.__already_done, align 1
  br i1 %.b90, label %land.rhs.cleanup_crit_edge, label %if.then28, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dma_map_page_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %map_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 8
  %5 = ptrtoint ptr %map_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_page, align 4
  %call67 = tail call i32 %6(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #6
  tail call void @debug_dma_map_page(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %call67, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then28, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.else ], [ -1, %if.then28 ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #6, !srcloc !107
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %unmap_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 9
  %3 = ptrtoint ptr %unmap_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unmap_page, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  tail call void @debug_dma_unmap_page(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_unmap_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs)
  %0 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %2 = icmp ugt i32 %dir, 2
  br i1 %2, label %do.body5, label %do.end10, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %land.rhs, label %if.end68

land.rhs:                                         ; preds = %do.end10
  %.b160 = load i1, ptr @__dma_map_sg_attrs.__already_done, align 1
  br i1 %.b160, label %land.rhs.cleanup_crit_edge, label %if.then28, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__dma_map_sg_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end68:                                         ; preds = %do.end10
  %map_sg = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 10
  %5 = ptrtoint ptr %map_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_sg, align 4
  %call67 = tail call i32 %6(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp = icmp sgt i32 %call67, 0
  br i1 %cmp, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %call67, i32 noundef %dir, i32 noundef %attrs) #6
  br label %cleanup

if.else70:                                        ; preds = %if.end68
  %7 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call67, label %land.rhs74 [
    i32 -22, label %if.else70.cleanup_crit_edge
    i32 -12, label %if.else70.cleanup_crit_edge163
    i32 -5, label %if.else70.cleanup_crit_edge164
  ]

if.else70.cleanup_crit_edge164:                   ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else70.cleanup_crit_edge163:                   ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs74:                                       ; preds = %if.else70
  %.b158159 = load i1, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  br i1 %.b158159, label %land.rhs74.cleanup_crit_edge, label %if.then94, !prof !103

land.rhs74.cleanup_crit_edge:                     ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94:                                        ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %land.rhs74.cleanup_crit_edge, %if.else70.cleanup_crit_edge, %if.else70.cleanup_crit_edge163, %if.else70.cleanup_crit_edge164, %if.then69, %if.then28, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then28 ], [ -5, %if.then94 ], [ %call67, %if.then69 ], [ 0, %land.rhs.cleanup_crit_edge ], [ -5, %land.rhs74.cleanup_crit_edge ], [ %call67, %if.else70.cleanup_crit_edge ], [ %call67, %if.else70.cleanup_crit_edge163 ], [ %call67, %if.else70.cleanup_crit_edge164 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_map_sgtable(ptr noundef %dev, ptr nocapture noundef %sgt, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %2 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orig_nents, align 4
  %call = tail call fastcc i32 @__dma_map_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %3, i32 noundef %dir, i32 noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nents1 = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %4 = ptrtoint ptr %nents1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %nents1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  tail call void @debug_dma_unmap_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir) #6
  %unmap_sg = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 11
  %3 = ptrtoint ptr %unmap_sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unmap_sg, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_unmap_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_map_resource(ptr noundef %dev, i32 noundef %phys_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %2 = icmp ugt i32 %dir, 2
  br i1 %2, label %do.body5, label %do.end10, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %do.end10
  %.b93 = load i1, ptr @dma_map_resource.__already_done, align 1
  br i1 %.b93, label %land.rhs.cleanup_crit_edge, label %if.then28, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dma_map_resource.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.else:                                          ; preds = %do.end10
  %map_resource = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 12
  %5 = ptrtoint ptr %map_resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_resource, align 4
  %tobool67.not = icmp eq ptr %6, null
  br i1 %tobool67.not, label %if.else.if.end72_crit_edge, label %if.then68

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 %6(ptr noundef %dev, i32 noundef %phys_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.else.if.end72_crit_edge
  %addr.0 = phi i32 [ %call70, %if.then68 ], [ -1, %if.else.if.end72_crit_edge ]
  tail call void @debug_dma_map_resource(ptr noundef %dev, i32 noundef %phys_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %addr.0, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then28, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %addr.0, %if.end72 ], [ -1, %if.then28 ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_unmap_resource(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %land.lhs.true, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 314, 0\0A.popsection", ""() #6, !srcloc !111
  unreachable

land.lhs.true:                                    ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %unmap_resource = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 13
  %3 = ptrtoint ptr %unmap_resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unmap_resource, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge
  tail call void @debug_dma_unmap_resource(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #6, !srcloc !112
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %sync_single_for_cpu = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 14
  %3 = ptrtoint ptr %sync_single_for_cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_single_for_cpu, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  tail call void @debug_dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #6, !srcloc !113
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %sync_single_for_device = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 15
  %3 = ptrtoint ptr %sync_single_for_device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_single_for_device, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  tail call void @debug_dma_sync_single_for_device(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_sync_sg_for_cpu(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 354, 0\0A.popsection", ""() #6, !srcloc !114
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %sync_sg_for_cpu = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 16
  %3 = ptrtoint ptr %sync_sg_for_cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_sg_for_cpu, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  tail call void @debug_dma_sync_sg_for_cpu(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_sync_sg_for_device(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %0 = icmp ugt i32 %dir, 2
  br i1 %0, label %do.body5, label %if.else, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #6, !srcloc !115
  unreachable

if.else:                                          ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %2
  %sync_sg_for_device = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 17
  %3 = ptrtoint ptr %sync_sg_for_device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_sg_for_device, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge
  tail call void @debug_dma_sync_sg_for_device(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %dir) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_get_sgtable_attrs(ptr noundef %dev, ptr noundef %sgt, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %get_sgtable = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 7
  %2 = ptrtoint ptr %get_sgtable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_sgtable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 %3(ptr noundef %dev, ptr noundef %sgt, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_pgprot(ptr nocapture noundef readnone %dev, i32 noundef returned %prot, i32 noundef %attrs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %prot
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_can_mmap(ptr noundef %dev) #0 align 64 {
cleanup:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %mmap = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 6
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %cmp = icmp ne ptr %3, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_attrs(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %mmap = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 6
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 %3(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dma_get_required_mask(ptr noundef %dev) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %get_required_mask = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 20
  %2 = ptrtoint ptr %get_required_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_required_mask, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i64 %3(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge
  %retval.0 = phi i64 [ %call5, %if.then3 ], [ 4294967295, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_alloc_from_dev_coherent(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_free_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %dma_handle, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i66 = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i66, ptr @arm_dma_ops, ptr %1
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %2 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #6, !range !101
  %sub.i.i = sub nuw nsw i32 32, %2
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call2 = tail call i32 @dma_release_from_dev_coherent(ptr noundef %dev, i32 noundef %cond.i.i, ptr noundef %cpu_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !102
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.end.if.end30_crit_edge, label %do.end24, !prof !103

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.end.if.end30_crit_edge
  %tobool38.not = icmp eq ptr %cpu_addr, null
  br i1 %tobool38.not, label %if.end30.cleanup_crit_edge, label %if.else

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end30
  tail call void @debug_dma_free_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef nonnull %cpu_addr, i32 noundef %dma_handle) #6
  %free = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free, align 4
  %tobool43.not = icmp eq ptr %5, null
  br i1 %tobool43.not, label %if.else.cleanup_crit_edge, label %if.then44

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %dev, i32 noundef %size, ptr noundef nonnull %cpu_addr, i32 noundef %dma_handle, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.else.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_release_from_dev_coherent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_pages(ptr noundef %dev, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @arm_dma_ops, ptr %1
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %coherent_dma_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b125.i = load i1, ptr @__dma_alloc_pages.__already_done, align 1
  br i1 %.b125.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !103

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__dma_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end39.i:                                       ; preds = %entry
  %and.i = and i32 %gfp, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool41.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool41.not.i, label %if.end101.i, label %land.rhs48.i

land.rhs48.i:                                     ; preds = %if.end39.i
  %.b123124.i = load i1, ptr @__dma_alloc_pages.__already_done.5, align 1
  br i1 %.b123124.i, label %land.rhs48.i.if.end_crit_edge, label %if.then59.i, !prof !103

land.rhs48.i.if.end_crit_edge:                    ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then59.i:                                      ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__dma_alloc_pages.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 548, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end101.i:                                      ; preds = %if.end39.i
  %alloc_pages.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %alloc_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alloc_pages.i, align 4
  %tobool102.not.i = icmp eq ptr %5, null
  br i1 %tobool102.not.i, label %if.end101.i.if.end_crit_edge, label %__dma_alloc_pages.exit

if.end101.i.if.end_crit_edge:                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

__dma_alloc_pages.exit:                           ; preds = %if.end101.i
  %add.i = add i32 %size, 4095
  %and97.i = and i32 %add.i, -4096
  %call106.i = tail call ptr %5(ptr noundef %dev, i32 noundef %and97.i, ptr noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) #6
  %tobool.not = icmp eq ptr %call106.i, null
  br i1 %tobool.not, label %__dma_alloc_pages.exit.if.end_crit_edge, label %if.then

__dma_alloc_pages.exit.if.end_crit_edge:          ; preds = %__dma_alloc_pages.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %__dma_alloc_pages.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle, align 4
  tail call void @debug_dma_map_page(ptr noundef %dev, ptr noundef nonnull %call106.i, i32 noundef 0, i32 noundef %size, i32 noundef %dir, i32 noundef %7, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %__dma_alloc_pages.exit.if.end_crit_edge, %if.end101.i.if.end_crit_edge, %if.then59.i, %land.rhs48.i.if.end_crit_edge, %if.then.i, %land.rhs.i.if.end_crit_edge
  %retval.0.i9 = phi ptr [ %call106.i, %if.then ], [ null, %__dma_alloc_pages.exit.if.end_crit_edge ], [ null, %if.then.i ], [ null, %if.then59.i ], [ null, %if.end101.i.if.end_crit_edge ], [ null, %land.rhs.i.if.end_crit_edge ], [ null, %land.rhs48.i.if.end_crit_edge ]
  ret ptr %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_free_pages(ptr noundef %dev, i32 noundef %size, ptr noundef %page, i32 noundef %dma_handle, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_dma_unmap_page(ptr noundef %dev, i32 noundef %dma_handle, i32 noundef %size, i32 noundef %dir) #6
  %dma_ops.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @arm_dma_ops, ptr %1
  %free_pages.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %free_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_pages.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.__dma_free_pages.exit_crit_edge, label %if.then2.i

entry.__dma_free_pages.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dma_free_pages.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %size, 4095
  %and.i = and i32 %add.i, -4096
  tail call void %3(ptr noundef %dev, i32 noundef %and.i, ptr noundef %page, i32 noundef %dma_handle, i32 noundef %dir) #6
  br label %__dma_free_pages.exit

__dma_free_pages.exit:                            ; preds = %if.then2.i, %entry.__dma_free_pages.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_pages(ptr nocapture readnone %dev, ptr noundef %vma, i32 noundef %size, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %1)
  %cmp.not = icmp ugt i32 %shr, %1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end.i, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %3, %5
  %shr.i = lshr i32 %sub.i, 12
  %sub = sub i32 %shr, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp2 = icmp ugt i32 %shr.i, %sub
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add3 = add i32 %7, %1
  %add5 = add i32 %add3, %sub.ptr.div
  %shl = and i32 %sub.i, -4096
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %8 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_page_prot, align 4
  %call7 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %5, i32 noundef %add5, i32 noundef %shl, i32 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_noncontiguous(ptr noundef %dev, i32 noundef %size, i32 noundef %dir, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %and = and i32 %attrs, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @dma_alloc_noncontiguous.__already_done, align 1
  br i1 %.b67, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dma_alloc_noncontiguous.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %alloc_noncontiguous = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_noncontiguous to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_noncontiguous, align 4
  %tobool40.not = icmp eq ptr %3, null
  br i1 %tobool40.not, label %if.else, label %if.end45

if.else:                                          ; preds = %land.lhs.true
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.kmalloc.exit.i_crit_edge, label %if.end.i.i.i, !prof !103

if.else.kmalloc.exit.i_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i

if.end.i.i.i:                                     ; preds = %if.else
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kmalloc.exit.i_crit_edge

if.end.i.i.i.kmalloc.exit.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kmalloc.exit.i

kmalloc.exit.i:                                   ; preds = %if.end5.i.i.i, %if.end.i.i.i.kmalloc.exit.i_crit_edge, %if.else.kmalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.else.kmalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.kmalloc.exit.i_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %gfp, i32 noundef 12) #9
  %tobool.not.i69 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i69, label %kmalloc.exit.i.cleanup_crit_edge, label %if.end.i

kmalloc.exit.i.cleanup_crit_edge:                 ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %kmalloc.exit.i
  %call1.i = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef %gfp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out_free_sgt.i_crit_edge

if.end.i.out_free_sgt.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_sgt.i

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr @arm_dma_ops, ptr %9
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %coherent_dma_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %coherent_dma_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end4.i
  %.b125.i.i = load i1, ptr @__dma_alloc_pages.__already_done, align 1
  br i1 %.b125.i.i, label %land.rhs.i.i.out_free_table.i_crit_edge, label %land.rhs.i.i.out_free_table.sink.split.i_crit_edge, !prof !103

land.rhs.i.i.out_free_table.sink.split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.sink.split.i

land.rhs.i.i.out_free_table.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.i

if.end39.i.i:                                     ; preds = %if.end4.i
  %and.i.i = and i32 %gfp, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool41.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end101.i.i, label %land.rhs48.i.i

land.rhs48.i.i:                                   ; preds = %if.end39.i.i
  %.b123124.i.i = load i1, ptr @__dma_alloc_pages.__already_done.5, align 1
  br i1 %.b123124.i.i, label %land.rhs48.i.i.out_free_table.i_crit_edge, label %land.rhs48.i.i.out_free_table.sink.split.i_crit_edge, !prof !103

land.rhs48.i.i.out_free_table.sink.split.i_crit_edge: ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.sink.split.i

land.rhs48.i.i.out_free_table.i_crit_edge:        ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.i

if.end101.i.i:                                    ; preds = %if.end39.i.i
  %alloc_pages.i.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %alloc_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alloc_pages.i.i, align 4
  %tobool102.not.i.i = icmp eq ptr %13, null
  br i1 %tobool102.not.i.i, label %if.end101.i.i.out_free_table.i_crit_edge, label %__dma_alloc_pages.exit.i

if.end101.i.i.out_free_table.i_crit_edge:         ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.i

__dma_alloc_pages.exit.i:                         ; preds = %if.end101.i.i
  %add.i.i = add i32 %size, 4095
  %and97.i.i = and i32 %add.i.i, -4096
  %call106.i.i = tail call ptr %13(ptr noundef %dev, i32 noundef %and97.i.i, ptr noundef %dma_address.i, i32 noundef %dir, i32 noundef %gfp) #6
  %tobool6.not.i = icmp eq ptr %call106.i.i, null
  br i1 %tobool6.not.i, label %__dma_alloc_pages.exit.i.out_free_table.i_crit_edge, label %if.end8.i

__dma_alloc_pages.exit.i.out_free_table.i_crit_edge: ; preds = %__dma_alloc_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_table.i

if.end8.i:                                        ; preds = %__dma_alloc_pages.exit.i
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %call106.i.i to i32
  %and2.i.i25.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i25.i)
  %tobool.not.i.i26.i = icmp eq i32 %and2.i.i25.i, 0
  br i1 %tobool.not.i.i26.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !103

do.body5.i.i.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !116
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end8.i
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end45.thread72, label %do.body19.i.i.i, !prof !103

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !117
  unreachable

if.end45.thread72:                                ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i27.i = and i32 %17, 3
  %or.i.i.i = or i32 %and.i.i27.i, %18
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i, ptr %15, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and97.i.i, ptr %length.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dma_length.i, align 4
  br label %if.then47

out_free_table.sink.split.i:                      ; preds = %land.rhs48.i.i.out_free_table.sink.split.i_crit_edge, %land.rhs.i.i.out_free_table.sink.split.i_crit_edge
  %__dma_alloc_pages.__already_done.5.sink.i = phi ptr [ @__dma_alloc_pages.__already_done, %land.rhs.i.i.out_free_table.sink.split.i_crit_edge ], [ @__dma_alloc_pages.__already_done.5, %land.rhs48.i.i.out_free_table.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 546, %land.rhs.i.i.out_free_table.sink.split.i_crit_edge ], [ 548, %land.rhs48.i.i.out_free_table.sink.split.i_crit_edge ]
  %27 = ptrtoint ptr %__dma_alloc_pages.__already_done.5.sink.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i1 true, ptr %__dma_alloc_pages.__already_done.5.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #6
  br label %out_free_table.i

out_free_table.i:                                 ; preds = %out_free_table.sink.split.i, %__dma_alloc_pages.exit.i.out_free_table.i_crit_edge, %if.end101.i.i.out_free_table.i_crit_edge, %land.rhs48.i.i.out_free_table.i_crit_edge, %land.rhs.i.i.out_free_table.i_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #6
  br label %out_free_sgt.i

out_free_sgt.i:                                   ; preds = %out_free_table.i, %if.end.i.out_free_sgt.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true
  %call43 = tail call ptr %3(ptr noundef %dev, i32 noundef %size, i32 noundef %dir, i32 noundef %gfp, i32 noundef %attrs) #6
  %tobool46.not = icmp eq ptr %call43, null
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.end45.thread72
  %sgt.075 = phi ptr [ %call7.i.i, %if.end45.thread72 ], [ %call43, %if.end45.if.then47_crit_edge ]
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt.075, i32 0, i32 1
  %28 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %nents, align 4
  %29 = ptrtoint ptr %sgt.075 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt.075, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt.075, i32 0, i32 2
  %31 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %orig_nents, align 4
  tail call void @debug_dma_map_sg(ptr noundef %dev, ptr noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef %dir, i32 noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %out_free_sgt.i, %kmalloc.exit.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %sgt.075, %if.then47 ], [ null, %if.end45.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %out_free_sgt.i ], [ null, %kmalloc.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_free_noncontiguous(ptr noundef %dev, i32 noundef %size, ptr noundef %sgt, i32 noundef %dir) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents, align 4
  tail call void @debug_dma_unmap_sg(ptr noundef %dev, ptr noundef %3, i32 noundef %5, i32 noundef %dir) #6
  %free_noncontiguous = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 5
  %6 = ptrtoint ptr %free_noncontiguous to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_noncontiguous, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %dev, i32 noundef %size, ptr noundef %sgt, i32 noundef %dir) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !103

do.body2.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !118
  unreachable

sg_page.exit.i:                                   ; preds = %if.else
  %12 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr @arm_dma_ops, ptr %13
  %free_pages.i.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %free_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_pages.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %sg_page.exit.i.free_single_sgt.exit_crit_edge, label %if.then2.i.i

sg_page.exit.i.free_single_sgt.exit_crit_edge:    ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_single_sgt.exit

if.then2.i.i:                                     ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address.i, align 4
  %and.i.i = and i32 %11, -4
  %18 = inttoptr i32 %and.i.i to ptr
  %add.i.i = add i32 %size, 4095
  %and.i5.i = and i32 %add.i.i, -4096
  tail call void %15(ptr noundef %dev, i32 noundef %and.i5.i, ptr noundef %18, i32 noundef %17, i32 noundef %dir) #6
  br label %free_single_sgt.exit

free_single_sgt.exit:                             ; preds = %if.then2.i.i, %sg_page.exit.i.free_single_sgt.exit_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #6
  tail call void @kfree(ptr noundef %sgt) #6
  br label %if.end

if.end:                                           ; preds = %free_single_sgt.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_vmap_noncontiguous(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr nocapture noundef readonly %sgt) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %alloc_noncontiguous = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_noncontiguous to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_noncontiguous, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %pages = getelementptr inbounds %struct.dma_sgt_handle, ptr %sgt, i32 0, i32 1
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %6, 512
  %call2 = tail call ptr @vmap(ptr noundef %5, i32 noundef %shr, i32 noundef 4, i32 noundef %or) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %7 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !103

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !118
  unreachable

sg_page.exit:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i to ptr
  %call4 = tail call ptr @page_address(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %sg_page.exit, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ %call4, %sg_page.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_vunmap_noncontiguous(ptr nocapture noundef readonly %dev, ptr noundef %vaddr) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %alloc_noncontiguous = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_noncontiguous to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_noncontiguous, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vunmap(ptr noundef %vaddr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_noncontiguous(ptr nocapture noundef readonly %dev, ptr noundef %vma, i32 noundef %size, ptr nocapture noundef readonly %sgt) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %alloc_noncontiguous = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_noncontiguous to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_noncontiguous, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp.not = icmp ugt i32 %shr, %5
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

lor.lhs.false:                                    ; preds = %if.then
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %7, %9
  %shr.i = lshr i32 %sub.i, 12
  %sub = sub i32 %shr, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp4 = icmp ugt i32 %shr.i, %sub
  br i1 %cmp4, label %lor.lhs.false.cleanup10_crit_edge, label %if.end

lor.lhs.false.cleanup10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %pages = getelementptr inbounds %struct.dma_sgt_handle, ptr %sgt, i32 0, i32 1
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %call6 = tail call i32 @vm_map_pages(ptr noundef %vma, ptr noundef %11, i32 noundef %shr) #6
  br label %cleanup10

if.end7:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !103

do.body2.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !118
  unreachable

sg_page.exit:                                     ; preds = %if.end7
  %and.i = and i32 %15, -4
  %add.i = add i32 %size, 4095
  %shr.i21 = lshr i32 %add.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %16 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i21, i32 %17)
  %cmp.not.i = icmp ugt i32 %shr.i21, %17
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sg_page.exit.cleanup10_crit_edge

sg_page.exit.cleanup10_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

lor.lhs.false.i:                                  ; preds = %sg_page.exit
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end.i.i, align 4
  %20 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %19, %21
  %shr.i.i = lshr i32 %sub.i.i, 12
  %sub.i22 = sub i32 %shr.i21, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %sub.i22)
  %cmp2.i = icmp ugt i32 %shr.i.i, %sub.i22
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup10_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup10_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add3.i = add i32 %23, %17
  %add5.i = add i32 %add3.i, %sub.ptr.div.i
  %shl.i = and i32 %sub.i.i, -4096
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %24 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_page_prot.i, align 4
  %call7.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %21, i32 noundef %add5.i, i32 noundef %shl.i, i32 noundef %25) #6
  br label %cleanup10

cleanup10:                                        ; preds = %if.end.i, %lor.lhs.false.i.cleanup10_crit_edge, %sg_page.exit.cleanup10_crit_edge, %if.end, %lor.lhs.false.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end ], [ -6, %lor.lhs.false.cleanup10_crit_edge ], [ -6, %if.then.cleanup10_crit_edge ], [ %call7.i, %if.end.i ], [ -6, %lor.lhs.false.i.cleanup10_crit_edge ], [ -6, %sg_page.exit.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_supported(ptr noundef %dev, i64 noundef %mask) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %dma_supported = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 19
  %2 = ptrtoint ptr %dma_supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_supported, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 %3(ptr noundef %dev, i64 noundef %mask) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = and i64 %mask, 4294967295
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mask, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %dma_ops.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %dma_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @arm_dma_ops, ptr %3
  %dma_supported.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %dma_supported.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_supported.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.do.end_crit_edge, label %dma_supported.exit

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

dma_supported.exit:                               ; preds = %lor.lhs.false
  %call6.i = tail call i32 %5(ptr noundef %dev, i64 noundef %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool2.not = icmp eq i32 %call6.i, 0
  br i1 %tobool2.not, label %dma_supported.exit.return_crit_edge, label %dma_supported.exit.do.end_crit_edge

dma_supported.exit.do.end_crit_edge:              ; preds = %dma_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

dma_supported.exit.return_crit_edge:              ; preds = %dma_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %dma_supported.exit.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge
  %6 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_mask, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv1, ptr %7, align 8
  br label %return

return:                                           ; preds = %do.end, %dma_supported.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -5, %dma_supported.exit.return_crit_edge ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = and i64 %mask, 4294967295
  %dma_ops.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @arm_dma_ops, ptr %1
  %dma_supported.i = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %dma_supported.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_supported.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %entry.if.end_crit_edge, label %dma_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dma_supported.exit:                               ; preds = %entry
  %call6.i = tail call i32 %3(ptr noundef %dev, i64 noundef %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %dma_supported.exit.return_crit_edge, label %dma_supported.exit.if.end_crit_edge

dma_supported.exit.if.end_crit_edge:              ; preds = %dma_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dma_supported.exit.return_crit_edge:              ; preds = %dma_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %dma_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv1, ptr %coherent_dma_mask, align 8
  br label %return

return:                                           ; preds = %if.end, %dma_supported.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %dma_supported.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_max_mapping_size(ptr noundef %dev) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %max_mapping_size = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 21
  %2 = ptrtoint ptr %max_mapping_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max_mapping_size, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 %3(ptr noundef %dev) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge
  %size.0 = phi i32 [ %call6, %if.then4 ], [ -1, %land.lhs.true.if.end7_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_need_sync(ptr noundef %dev, i32 noundef %dma_addr) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %sync_single_for_cpu = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 14
  %2 = ptrtoint ptr %sync_single_for_cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_single_for_cpu, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sync_single_for_device = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 15
  %4 = ptrtoint ptr %sync_single_for_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_single_for_device, align 4
  %tobool3 = icmp ne ptr %5, null
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ %tobool3, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_get_merge_boundary(ptr noundef %dev) #0 align 64 {
lor.lhs.false:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %get_merge_boundary = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 22
  %2 = ptrtoint ptr %get_merge_boundary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_merge_boundary, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 %3(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/dma/mapping.c", i32 66, i32 2}
!2 = !{ptr @__ksymtab_dmam_free_coherent, !3, !"__ksymtab_dmam_free_coherent", i1 false, i1 false}
!3 = !{!"../kernel/dma/mapping.c", i32 68, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/dma/mapping.c", i32 90, i32 7}
!6 = !{ptr @__ksymtab_dmam_alloc_attrs, !7, !"__ksymtab_dmam_alloc_attrs", i1 false, i1 false}
!7 = !{!"../kernel/dma/mapping.c", i32 109, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/dma/mapping.c", i32 151, i32 6}
!10 = !{ptr @__ksymtab_dma_map_page_attrs, !11, !"__ksymtab_dma_map_page_attrs", i1 false, i1 false}
!11 = !{!"../kernel/dma/mapping.c", i32 163, i32 1}
!12 = !{ptr @__ksymtab_dma_unmap_page_attrs, !13, !"__ksymtab_dma_unmap_page_attrs", i1 false, i1 false}
!13 = !{!"../kernel/dma/mapping.c", i32 178, i32 1}
!14 = !{ptr @__ksymtab_dma_map_sg_attrs, !15, !"__ksymtab_dma_map_sg_attrs", i1 false, i1 false}
!15 = !{!"../kernel/dma/mapping.c", i32 233, i32 1}
!16 = !{ptr @__ksymtab_dma_map_sgtable, !17, !"__ksymtab_dma_map_sgtable", i1 false, i1 false}
!17 = !{!"../kernel/dma/mapping.c", i32 270, i32 1}
!18 = !{ptr @__ksymtab_dma_unmap_sg_attrs, !19, !"__ksymtab_dma_unmap_sg_attrs", i1 false, i1 false}
!19 = !{!"../kernel/dma/mapping.c", i32 286, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/dma/mapping.c", i32 296, i32 6}
!22 = !{ptr @__ksymtab_dma_map_resource, !23, !"__ksymtab_dma_map_resource", i1 false, i1 false}
!23 = !{!"../kernel/dma/mapping.c", i32 307, i32 1}
!24 = !{ptr @__ksymtab_dma_unmap_resource, !25, !"__ksymtab_dma_unmap_resource", i1 false, i1 false}
!25 = !{!"../kernel/dma/mapping.c", i32 319, i32 1}
!26 = !{ptr @__ksymtab_dma_sync_single_for_cpu, !27, !"__ksymtab_dma_sync_single_for_cpu", i1 false, i1 false}
!27 = !{!"../kernel/dma/mapping.c", i32 333, i32 1}
!28 = !{ptr @__ksymtab_dma_sync_single_for_device, !29, !"__ksymtab_dma_sync_single_for_device", i1 false, i1 false}
!29 = !{!"../kernel/dma/mapping.c", i32 347, i32 1}
!30 = !{ptr @__ksymtab_dma_sync_sg_for_cpu, !31, !"__ksymtab_dma_sync_sg_for_cpu", i1 false, i1 false}
!31 = !{!"../kernel/dma/mapping.c", i32 361, i32 1}
!32 = !{ptr @__ksymtab_dma_sync_sg_for_device, !33, !"__ksymtab_dma_sync_sg_for_device", i1 false, i1 false}
!33 = !{!"../kernel/dma/mapping.c", i32 375, i32 1}
!34 = !{ptr @__ksymtab_dma_get_sgtable_attrs, !35, !"__ksymtab_dma_get_sgtable_attrs", i1 false, i1 false}
!35 = !{!"../kernel/dma/mapping.c", i32 401, i32 1}
!36 = !{ptr @__ksymtab_dma_can_mmap, !37, !"__ksymtab_dma_can_mmap", i1 false, i1 false}
!37 = !{!"../kernel/dma/mapping.c", i32 437, i32 1}
!38 = !{ptr @__ksymtab_dma_mmap_attrs, !39, !"__ksymtab_dma_mmap_attrs", i1 false, i1 false}
!39 = !{!"../kernel/dma/mapping.c", i32 465, i32 1}
!40 = !{ptr @__ksymtab_dma_get_required_mask, !41, !"__ksymtab_dma_get_required_mask", i1 false, i1 false}
!41 = !{!"../kernel/dma/mapping.c", i32 486, i32 1}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../kernel/dma/mapping.c", i32 494, i32 2}
!44 = !{ptr @__ksymtab_dma_alloc_attrs, !45, !"__ksymtab_dma_alloc_attrs", i1 false, i1 false}
!45 = !{!"../kernel/dma/mapping.c", i32 512, i32 1}
!46 = !{ptr @__ksymtab_dma_free_attrs, !47, !"__ksymtab_dma_free_attrs", i1 false, i1 false}
!47 = !{!"../kernel/dma/mapping.c", i32 539, i32 1}
!48 = !{ptr @__ksymtab_dma_alloc_pages, !49, !"__ksymtab_dma_alloc_pages", i1 false, i1 false}
!49 = !{!"../kernel/dma/mapping.c", i32 568, i32 1}
!50 = !{ptr @__ksymtab_dma_free_pages, !51, !"__ksymtab_dma_free_pages", i1 false, i1 false}
!51 = !{!"../kernel/dma/mapping.c", i32 588, i32 1}
!52 = !{ptr @__ksymtab_dma_mmap_pages, !53, !"__ksymtab_dma_mmap_pages", i1 false, i1 false}
!53 = !{!"../kernel/dma/mapping.c", i32 601, i32 1}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/dma/mapping.c", i32 633, i32 6}
!56 = !{ptr @__ksymtab_dma_alloc_noncontiguous, !57, !"__ksymtab_dma_alloc_noncontiguous", i1 false, i1 false}
!57 = !{!"../kernel/dma/mapping.c", i32 647, i32 1}
!58 = !{ptr @__ksymtab_dma_free_noncontiguous, !59, !"__ksymtab_dma_free_noncontiguous", i1 false, i1 false}
!59 = !{!"../kernel/dma/mapping.c", i32 669, i32 1}
!60 = !{ptr @__ksymtab_dma_vmap_noncontiguous, !61, !"__ksymtab_dma_vmap_noncontiguous", i1 false, i1 false}
!61 = !{!"../kernel/dma/mapping.c", i32 681, i32 1}
!62 = !{ptr @__ksymtab_dma_vunmap_noncontiguous, !63, !"__ksymtab_dma_vunmap_noncontiguous", i1 false, i1 false}
!63 = !{!"../kernel/dma/mapping.c", i32 690, i32 1}
!64 = !{ptr @__ksymtab_dma_mmap_noncontiguous, !65, !"__ksymtab_dma_mmap_noncontiguous", i1 false, i1 false}
!65 = !{!"../kernel/dma/mapping.c", i32 707, i32 1}
!66 = !{ptr @__ksymtab_dma_supported, !67, !"__ksymtab_dma_supported", i1 false, i1 false}
!67 = !{!"../kernel/dma/mapping.c", i32 723, i32 1}
!68 = !{ptr @__ksymtab_dma_set_mask, !69, !"__ksymtab_dma_set_mask", i1 false, i1 false}
!69 = !{!"../kernel/dma/mapping.c", i32 746, i32 1}
!70 = !{ptr @__ksymtab_dma_set_coherent_mask, !71, !"__ksymtab_dma_set_coherent_mask", i1 false, i1 false}
!71 = !{!"../kernel/dma/mapping.c", i32 763, i32 1}
!72 = !{ptr @__ksymtab_dma_max_mapping_size, !73, !"__ksymtab_dma_max_mapping_size", i1 false, i1 false}
!73 = !{!"../kernel/dma/mapping.c", i32 778, i32 1}
!74 = !{ptr @__ksymtab_dma_need_sync, !75, !"__ksymtab_dma_need_sync", i1 false, i1 false}
!75 = !{!"../kernel/dma/mapping.c", i32 788, i32 1}
!76 = !{ptr @__ksymtab_dma_get_merge_boundary, !77, !"__ksymtab_dma_get_merge_boundary", i1 false, i1 false}
!77 = !{!"../kernel/dma/mapping.c", i32 799, i32 1}
!78 = !{ptr @dma_default_coherent, !79, !"dma_default_coherent", i1 false, i1 false}
!79 = !{!"../kernel/dma/mapping.c", i32 19, i32 6}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../kernel/dma/direct.h", i32 97, i32 3}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../kernel/dma/mapping.c", i32 188, i32 6}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../kernel/dma/mapping.c", i32 199, i32 11}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../kernel/dma/mapping.c", i32 546, i32 6}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../kernel/dma/mapping.c", i32 548, i32 6}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i32 0, i32 33}
!102 = !{i64 1115447}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!"auto-init"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2154625319, i64 2154625804, i64 2154625356, i64 2154625412, i64 2154625446, i64 2154625470, i64 2154625511, i64 2154625532, i64 2154625560, i64 2154625594}
!107 = !{i64 2154629442, i64 2154629927, i64 2154629479, i64 2154629535, i64 2154629569, i64 2154629593, i64 2154629634, i64 2154629655, i64 2154629683, i64 2154629717}
!108 = !{i64 2154632601, i64 2154633086, i64 2154632638, i64 2154632694, i64 2154632728, i64 2154632752, i64 2154632793, i64 2154632814, i64 2154632842, i64 2154632876}
!109 = !{i64 2154639185, i64 2154639670, i64 2154639222, i64 2154639278, i64 2154639312, i64 2154639336, i64 2154639377, i64 2154639398, i64 2154639426, i64 2154639460}
!110 = !{i64 2154642311, i64 2154642796, i64 2154642348, i64 2154642404, i64 2154642438, i64 2154642462, i64 2154642503, i64 2154642524, i64 2154642552, i64 2154642586}
!111 = !{i64 2154650437, i64 2154650922, i64 2154650474, i64 2154650530, i64 2154650564, i64 2154650588, i64 2154650629, i64 2154650650, i64 2154650678, i64 2154650712}
!112 = !{i64 2154653538, i64 2154654023, i64 2154653575, i64 2154653631, i64 2154653665, i64 2154653689, i64 2154653730, i64 2154653751, i64 2154653779, i64 2154653813}
!113 = !{i64 2154656764, i64 2154657249, i64 2154656801, i64 2154656857, i64 2154656891, i64 2154656915, i64 2154656956, i64 2154656977, i64 2154657005, i64 2154657039}
!114 = !{i64 2154660065, i64 2154660550, i64 2154660102, i64 2154660158, i64 2154660192, i64 2154660216, i64 2154660257, i64 2154660278, i64 2154660306, i64 2154660340}
!115 = !{i64 2154663191, i64 2154663676, i64 2154663228, i64 2154663284, i64 2154663318, i64 2154663342, i64 2154663383, i64 2154663404, i64 2154663432, i64 2154663466}
!116 = !{i64 2154485539, i64 2154486031, i64 2154485576, i64 2154485632, i64 2154485666, i64 2154485690, i64 2154485731, i64 2154485752, i64 2154485780, i64 2154485814}
!117 = !{i64 2154487149, i64 2154487641, i64 2154487186, i64 2154487242, i64 2154487276, i64 2154487300, i64 2154487341, i64 2154487362, i64 2154487390, i64 2154487424}
!118 = !{i64 2154489097, i64 2154489589, i64 2154489134, i64 2154489190, i64 2154489224, i64 2154489248, i64 2154489289, i64 2154489310, i64 2154489338, i64 2154489372}
