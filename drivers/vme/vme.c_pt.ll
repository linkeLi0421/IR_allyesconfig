; ModuleID = '/llk/IR_all_yes/drivers/vme/vme.c_pt.bc'
source_filename = "../drivers/vme/vme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vme_alloc_consistent\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_alloc_consistent\09\09\09\09"
module asm "\09.long\09__crc_vme_alloc_consistent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_alloc_consistent:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_alloc_consistent\22\09\09\09\09\09"
module asm "__kstrtabns_vme_alloc_consistent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_free_consistent\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_free_consistent\09\09\09\09"
module asm "\09.long\09__crc_vme_free_consistent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_free_consistent:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_free_consistent\22\09\09\09\09\09"
module asm "__kstrtabns_vme_free_consistent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_get_size\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_get_size\09\09\09\09"
module asm "\09.long\09__crc_vme_get_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_vme_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_check_window\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_check_window\09\09\09\09"
module asm "\09.long\09__crc_vme_check_window\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_check_window:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_check_window\22\09\09\09\09\09"
module asm "__kstrtabns_vme_check_window:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_slave_request\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_slave_request\09\09\09\09"
module asm "\09.long\09__crc_vme_slave_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_slave_request:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_slave_request\22\09\09\09\09\09"
module asm "__kstrtabns_vme_slave_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_slave_set\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_slave_set\09\09\09\09"
module asm "\09.long\09__crc_vme_slave_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_slave_set:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_slave_set\22\09\09\09\09\09"
module asm "__kstrtabns_vme_slave_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_slave_get\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_slave_get\09\09\09\09"
module asm "\09.long\09__crc_vme_slave_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_slave_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_slave_get\22\09\09\09\09\09"
module asm "__kstrtabns_vme_slave_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_slave_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_slave_free\09\09\09\09"
module asm "\09.long\09__crc_vme_slave_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_slave_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_slave_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_slave_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_request\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_request\09\09\09\09"
module asm "\09.long\09__crc_vme_master_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_request:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_request\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_set\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_set\09\09\09\09"
module asm "\09.long\09__crc_vme_master_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_set:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_set\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_get\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_get\09\09\09\09"
module asm "\09.long\09__crc_vme_master_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_get\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_read\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_read\09\09\09\09"
module asm "\09.long\09__crc_vme_master_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_read:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_read\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_write\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_write\09\09\09\09"
module asm "\09.long\09__crc_vme_master_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_write:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_write\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_rmw\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_rmw\09\09\09\09"
module asm "\09.long\09__crc_vme_master_rmw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_rmw:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_rmw\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_rmw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_mmap\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_mmap\09\09\09\09"
module asm "\09.long\09__crc_vme_master_mmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_master_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_master_free\09\09\09\09"
module asm "\09.long\09__crc_vme_master_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_master_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_master_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_master_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_request\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_request\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_request:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_request\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_new_dma_list\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_new_dma_list\09\09\09\09"
module asm "\09.long\09__crc_vme_new_dma_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_new_dma_list:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_new_dma_list\22\09\09\09\09\09"
module asm "__kstrtabns_vme_new_dma_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_pattern_attribute\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_pattern_attribute\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_pattern_attribute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_pattern_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_pattern_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_pattern_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_pci_attribute\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_pci_attribute\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_pci_attribute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_pci_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_pci_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_pci_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_vme_attribute\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_vme_attribute\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_vme_attribute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_vme_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_vme_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_vme_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_free_attribute\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_free_attribute\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_free_attribute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_free_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_free_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_free_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_list_add\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_list_add\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_list_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_list_add\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_list_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_list_exec\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_list_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_list_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_list_exec\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_list_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_list_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_list_free\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_list_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_list_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_list_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_list_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_dma_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_dma_free\09\09\09\09"
module asm "\09.long\09__crc_vme_dma_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_dma_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_dma_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_dma_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_bus_error_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_bus_error_handler\09\09\09\09"
module asm "\09.long\09__crc_vme_bus_error_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_bus_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_bus_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_vme_bus_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_register_error_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_register_error_handler\09\09\09\09"
module asm "\09.long\09__crc_vme_register_error_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_register_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_register_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_vme_register_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_unregister_error_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_unregister_error_handler\09\09\09\09"
module asm "\09.long\09__crc_vme_unregister_error_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_unregister_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_unregister_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_vme_unregister_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_irq_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_irq_handler\09\09\09\09"
module asm "\09.long\09__crc_vme_irq_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_irq_handler\22\09\09\09\09\09"
module asm "__kstrtabns_vme_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_irq_request\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_irq_request\09\09\09\09"
module asm "\09.long\09__crc_vme_irq_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_irq_request:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_irq_request\22\09\09\09\09\09"
module asm "__kstrtabns_vme_irq_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_irq_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_irq_free\09\09\09\09"
module asm "\09.long\09__crc_vme_irq_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_irq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_irq_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_irq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_irq_generate\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_irq_generate\09\09\09\09"
module asm "\09.long\09__crc_vme_irq_generate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_irq_generate:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_irq_generate\22\09\09\09\09\09"
module asm "__kstrtabns_vme_irq_generate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_request\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_request\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_request:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_request\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_count\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_count\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_count:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_count\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_set\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_set\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_set:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_set\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_get\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_get\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_get\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_attach\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_attach\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_detach\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_detach\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_lm_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_lm_free\09\09\09\09"
module asm "\09.long\09__crc_vme_lm_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_lm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_lm_free\22\09\09\09\09\09"
module asm "__kstrtabns_vme_lm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_slot_num\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_slot_num\09\09\09\09"
module asm "\09.long\09__crc_vme_slot_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_slot_num:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_slot_num\22\09\09\09\09\09"
module asm "__kstrtabns_vme_slot_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_bus_num\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_bus_num\09\09\09\09"
module asm "\09.long\09__crc_vme_bus_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_bus_num\22\09\09\09\09\09"
module asm "__kstrtabns_vme_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_init_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_init_bridge\09\09\09\09"
module asm "\09.long\09__crc_vme_init_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_init_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_init_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_vme_init_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_register_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_register_bridge\09\09\09\09"
module asm "\09.long\09__crc_vme_register_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_register_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_register_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_vme_register_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_unregister_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_unregister_bridge\09\09\09\09"
module asm "\09.long\09__crc_vme_unregister_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_unregister_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_unregister_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_vme_unregister_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_register_driver\09\09\09\09"
module asm "\09.long\09__crc_vme_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_vme_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_vme_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_vme_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vme_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_vme_bus_type\09\09\09\09"
module asm "\09.long\09__crc_vme_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vme_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22vme_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_vme_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.vme_resource = type { i32, ptr }
%struct.vme_master_resource = type { %struct.list_head, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.resource, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.vme_slave_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.vme_dma_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, %struct.list_head, %struct.list_head, i32 }
%struct.vme_lm_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32 }
%struct.vme_bridge = type { [16 x i8], i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, [7 x %struct.vme_irq], %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vme_irq = type { i32, [256 x %struct.vme_callback] }
%struct.vme_callback = type { ptr, ptr }
%struct.vme_dev = type { i32, ptr, %struct.device, %struct.list_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vme_dma_list = type { %struct.list_head, ptr, %struct.list_head, %struct.mutex }
%struct.vme_dma_attr = type { i32, ptr }
%struct.vme_dma_pattern = type { i32, i32 }
%struct.vme_dma_vme = type { i64, i32, i32, i32 }
%struct.vme_error_handler = type { %struct.list_head, i64, i64, i64, i32, i32 }
%struct.vme_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vme_alloc_consistent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013No resource\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vme_alloc_consistent\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/vme/vme.c\00", [46 x i8] zeroinitializer }, align 32
@vme_alloc_consistent._entry_ptr = internal global ptr @vme_alloc_consistent._entry, section ".printk_index", align 4
@vme_alloc_consistent._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013Can't find bridge\0A\00", [43 x i8] zeroinitializer }, align 32
@vme_alloc_consistent._entry_ptr.5 = internal global ptr @vme_alloc_consistent._entry.3, section ".printk_index", align 4
@vme_alloc_consistent._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Dev entry NULL for bridge %s\0A\00", [32 x i8] zeroinitializer }, align 32
@vme_alloc_consistent._entry_ptr.8 = internal global ptr @vme_alloc_consistent._entry.6, section ".printk_index", align 4
@vme_alloc_consistent._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013alloc_consistent not supported by bridge %s\0A\00", [49 x i8] zeroinitializer }, align 32
@vme_alloc_consistent._entry_ptr.11 = internal global ptr @vme_alloc_consistent._entry.9, section ".printk_index", align 4
@__kstrtab_vme_alloc_consistent = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_alloc_consistent = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_alloc_consistent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_alloc_consistent to i32), ptr @__kstrtab_vme_alloc_consistent, ptr @__kstrtabns_vme_alloc_consistent }, section "___ksymtab+vme_alloc_consistent", align 4
@vme_free_consistent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vme_free_consistent\00", [44 x i8] zeroinitializer }, align 32
@vme_free_consistent._entry_ptr = internal global ptr @vme_free_consistent._entry, section ".printk_index", align 4
@vme_free_consistent._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_free_consistent._entry_ptr.14 = internal global ptr @vme_free_consistent._entry.13, section ".printk_index", align 4
@vme_free_consistent._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_free_consistent._entry_ptr.16 = internal global ptr @vme_free_consistent._entry.15, section ".printk_index", align 4
@vme_free_consistent._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013free_consistent not supported by bridge %s\0A\00", [50 x i8] zeroinitializer }, align 32
@vme_free_consistent._entry_ptr.19 = internal global ptr @vme_free_consistent._entry.17, section ".printk_index", align 4
@__kstrtab_vme_free_consistent = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_free_consistent = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_free_consistent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_free_consistent to i32), ptr @__kstrtab_vme_free_consistent, ptr @__kstrtabns_vme_free_consistent }, section "___ksymtab+vme_free_consistent", align 4
@vme_get_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Unknown resource type\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vme_get_size\00", [19 x i8] zeroinitializer }, align 32
@vme_get_size._entry_ptr = internal global ptr @vme_get_size._entry, section ".printk_index", align 4
@__kstrtab_vme_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_get_size to i32), ptr @__kstrtab_vme_get_size, ptr @__kstrtabns_vme_get_size }, section "___ksymtab+vme_get_size", align 4
@vme_check_window._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Invalid address space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vme_check_window\00", [47 x i8] zeroinitializer }, align 32
@vme_check_window._entry_ptr = internal global ptr @vme_check_window._entry, section ".printk_index", align 4
@__kstrtab_vme_check_window = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_check_window = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_check_window = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_check_window to i32), ptr @__kstrtab_vme_check_window, ptr @__kstrtabns_vme_check_window }, section "___ksymtab+vme_check_window", align 4
@vme_slave_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Can't find VME bus\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vme_slave_request\00", [46 x i8] zeroinitializer }, align 32
@vme_slave_request._entry_ptr = internal global ptr @vme_slave_request._entry, section ".printk_index", align 4
@vme_slave_request._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Registered NULL Slave resource\0A\00", [62 x i8] zeroinitializer }, align 32
@vme_slave_request._entry_ptr.28 = internal global ptr @vme_slave_request._entry.26, section ".printk_index", align 4
@__kstrtab_vme_slave_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_slave_request = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_slave_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_slave_request to i32), ptr @__kstrtab_vme_slave_request, ptr @__kstrtabns_vme_slave_request }, section "___ksymtab+vme_slave_request", align 4
@vme_slave_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Not a slave resource\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vme_slave_set\00", [18 x i8] zeroinitializer }, align 32
@vme_slave_set._entry_ptr = internal global ptr @vme_slave_set._entry, section ".printk_index", align 4
@vme_slave_set._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Function not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@vme_slave_set._entry_ptr.33 = internal global ptr @vme_slave_set._entry.31, section ".printk_index", align 4
@vme_slave_set._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Invalid attributes\0A\00", [42 x i8] zeroinitializer }, align 32
@vme_slave_set._entry_ptr.36 = internal global ptr @vme_slave_set._entry.34, section ".printk_index", align 4
@__kstrtab_vme_slave_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_slave_set = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_slave_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_slave_set to i32), ptr @__kstrtab_vme_slave_set, ptr @__kstrtabns_vme_slave_set }, section "___ksymtab+vme_slave_set", align 4
@vme_slave_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.37, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vme_slave_get\00", [18 x i8] zeroinitializer }, align 32
@vme_slave_get._entry_ptr = internal global ptr @vme_slave_get._entry, section ".printk_index", align 4
@vme_slave_get._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013vme_slave_get not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@vme_slave_get._entry_ptr.40 = internal global ptr @vme_slave_get._entry.38, section ".printk_index", align 4
@__kstrtab_vme_slave_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_slave_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_slave_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_slave_get to i32), ptr @__kstrtab_vme_slave_get, ptr @__kstrtabns_vme_slave_get }, section "___ksymtab+vme_slave_get", align 4
@vme_slave_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.41, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_slave_free\00", [17 x i8] zeroinitializer }, align 32
@vme_slave_free._entry_ptr = internal global ptr @vme_slave_free._entry, section ".printk_index", align 4
@vme_slave_free._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't find slave resource\0A\00", [35 x i8] zeroinitializer }, align 32
@vme_slave_free._entry_ptr.44 = internal global ptr @vme_slave_free._entry.42, section ".printk_index", align 4
@vme_slave_free._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Image is already free\0A\00", [39 x i8] zeroinitializer }, align 32
@vme_slave_free._entry_ptr.47 = internal global ptr @vme_slave_free._entry.45, section ".printk_index", align 4
@__kstrtab_vme_slave_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_slave_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_slave_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_slave_free to i32), ptr @__kstrtab_vme_slave_free, ptr @__kstrtabns_vme_slave_free }, section "___ksymtab+vme_slave_free", align 4
@vme_master_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.48, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vme_master_request\00", [45 x i8] zeroinitializer }, align 32
@vme_master_request._entry_ptr = internal global ptr @vme_master_request._entry, section ".printk_index", align 4
@vme_master_request._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Registered NULL master resource\0A\00", [61 x i8] zeroinitializer }, align 32
@vme_master_request._entry_ptr.51 = internal global ptr @vme_master_request._entry.49, section ".printk_index", align 4
@vme_master_request._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Can't find a suitable resource\0A\00", [62 x i8] zeroinitializer }, align 32
@vme_master_request._entry_ptr.54 = internal global ptr @vme_master_request._entry.52, section ".printk_index", align 4
@__kstrtab_vme_master_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_request = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_request to i32), ptr @__kstrtab_vme_master_request, ptr @__kstrtabns_vme_master_request }, section "___ksymtab+vme_master_request", align 4
@vme_master_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Not a master resource\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_master_set\00", [17 x i8] zeroinitializer }, align 32
@vme_master_set._entry_ptr = internal global ptr @vme_master_set._entry, section ".printk_index", align 4
@vme_master_set._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014vme_master_set not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@vme_master_set._entry_ptr.59 = internal global ptr @vme_master_set._entry.57, section ".printk_index", align 4
@vme_master_set._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014Invalid attributes\0A\00", [42 x i8] zeroinitializer }, align 32
@vme_master_set._entry_ptr.62 = internal global ptr @vme_master_set._entry.60, section ".printk_index", align 4
@__kstrtab_vme_master_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_set = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_set to i32), ptr @__kstrtab_vme_master_set, ptr @__kstrtabns_vme_master_set }, section "___ksymtab+vme_master_set", align 4
@vme_master_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.63, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_master_get\00", [17 x i8] zeroinitializer }, align 32
@vme_master_get._entry_ptr = internal global ptr @vme_master_get._entry, section ".printk_index", align 4
@vme_master_get._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014%s not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@vme_master_get._entry_ptr.66 = internal global ptr @vme_master_get._entry.64, section ".printk_index", align 4
@__kstrtab_vme_master_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_get to i32), ptr @__kstrtab_vme_master_get, ptr @__kstrtabns_vme_master_get }, section "___ksymtab+vme_master_get", align 4
@vme_master_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Reading from resource not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_master_read\00", [16 x i8] zeroinitializer }, align 32
@vme_master_read._entry_ptr = internal global ptr @vme_master_read._entry, section ".printk_index", align 4
@vme_master_read._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.68, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_master_read._entry_ptr.70 = internal global ptr @vme_master_read._entry.69, section ".printk_index", align 4
@vme_master_read._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014Invalid Offset\0A\00", [46 x i8] zeroinitializer }, align 32
@vme_master_read._entry_ptr.73 = internal global ptr @vme_master_read._entry.71, section ".printk_index", align 4
@__kstrtab_vme_master_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_read = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_read to i32), ptr @__kstrtab_vme_master_read, ptr @__kstrtabns_vme_master_read }, section "___ksymtab+vme_master_read", align 4
@vme_master_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Writing to resource not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vme_master_write\00", [47 x i8] zeroinitializer }, align 32
@vme_master_write._entry_ptr = internal global ptr @vme_master_write._entry, section ".printk_index", align 4
@vme_master_write._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.75, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_master_write._entry_ptr.77 = internal global ptr @vme_master_write._entry.76, section ".printk_index", align 4
@vme_master_write._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.75, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_master_write._entry_ptr.79 = internal global ptr @vme_master_write._entry.78, section ".printk_index", align 4
@__kstrtab_vme_master_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_write = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_write to i32), ptr @__kstrtab_vme_master_write, ptr @__kstrtabns_vme_master_write }, section "___ksymtab+vme_master_write", align 4
@vme_master_rmw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.80, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_master_rmw\00", [17 x i8] zeroinitializer }, align 32
@vme_master_rmw._entry_ptr = internal global ptr @vme_master_rmw._entry, section ".printk_index", align 4
@vme_master_rmw._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.80, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_master_rmw._entry_ptr.82 = internal global ptr @vme_master_rmw._entry.81, section ".printk_index", align 4
@__kstrtab_vme_master_rmw = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_rmw = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_rmw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_rmw to i32), ptr @__kstrtab_vme_master_rmw, ptr @__kstrtabns_vme_master_rmw }, section "___ksymtab+vme_master_rmw", align 4
@vme_master_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.83, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_master_mmap\00", [16 x i8] zeroinitializer }, align 32
@vme_master_mmap._entry_ptr = internal global ptr @vme_master_mmap._entry, section ".printk_index", align 4
@vme_master_mmap._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Map size cannot exceed the window size\0A\00", [54 x i8] zeroinitializer }, align 32
@vme_master_mmap._entry_ptr.86 = internal global ptr @vme_master_mmap._entry.84, section ".printk_index", align 4
@__kstrtab_vme_master_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_mmap to i32), ptr @__kstrtab_vme_master_mmap, ptr @__kstrtabns_vme_master_mmap }, section "___ksymtab+vme_master_mmap", align 4
@vme_master_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.87, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_master_free\00", [16 x i8] zeroinitializer }, align 32
@vme_master_free._entry_ptr = internal global ptr @vme_master_free._entry, section ".printk_index", align 4
@vme_master_free._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Can't find master resource\0A\00", [34 x i8] zeroinitializer }, align 32
@vme_master_free._entry_ptr.90 = internal global ptr @vme_master_free._entry.88, section ".printk_index", align 4
@vme_master_free._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.87, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_master_free._entry_ptr.92 = internal global ptr @vme_master_free._entry.91, section ".printk_index", align 4
@__kstrtab_vme_master_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_master_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_master_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_master_free to i32), ptr @__kstrtab_vme_master_free, ptr @__kstrtabns_vme_master_free }, section "___ksymtab+vme_master_free", align 4
@vme_dma_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013No VME resource Attribute tests done\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_dma_request\00", [16 x i8] zeroinitializer }, align 32
@vme_dma_request._entry_ptr = internal global ptr @vme_dma_request._entry, section ".printk_index", align 4
@vme_dma_request._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.94, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_dma_request._entry_ptr.96 = internal global ptr @vme_dma_request._entry.95, section ".printk_index", align 4
@vme_dma_request._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.94, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Registered NULL DMA resource\0A\00", [32 x i8] zeroinitializer }, align 32
@vme_dma_request._entry_ptr.99 = internal global ptr @vme_dma_request._entry.97, section ".printk_index", align 4
@__kstrtab_vme_dma_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_request = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_request to i32), ptr @__kstrtab_vme_dma_request, ptr @__kstrtabns_vme_dma_request }, section "___ksymtab+vme_dma_request", align 4
@vme_new_dma_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Not a DMA resource\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vme_new_dma_list\00", [47 x i8] zeroinitializer }, align 32
@vme_new_dma_list._entry_ptr = internal global ptr @vme_new_dma_list._entry, section ".printk_index", align 4
@vme_new_dma_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dma_list->mtx\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_vme_new_dma_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_new_dma_list = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_new_dma_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_new_dma_list to i32), ptr @__kstrtab_vme_new_dma_list, ptr @__kstrtabns_vme_new_dma_list }, section "___ksymtab+vme_new_dma_list", align 4
@__kstrtab_vme_dma_pattern_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_pattern_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_pattern_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_pattern_attribute to i32), ptr @__kstrtab_vme_dma_pattern_attribute, ptr @__kstrtabns_vme_dma_pattern_attribute }, section "___ksymtab+vme_dma_pattern_attribute", align 4
@__kstrtab_vme_dma_pci_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_pci_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_pci_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_pci_attribute to i32), ptr @__kstrtab_vme_dma_pci_attribute, ptr @__kstrtabns_vme_dma_pci_attribute }, section "___ksymtab+vme_dma_pci_attribute", align 4
@__kstrtab_vme_dma_vme_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_vme_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_vme_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_vme_attribute to i32), ptr @__kstrtab_vme_dma_vme_attribute, ptr @__kstrtabns_vme_dma_vme_attribute }, section "___ksymtab+vme_dma_vme_attribute", align 4
@__kstrtab_vme_dma_free_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_free_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_free_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_free_attribute to i32), ptr @__kstrtab_vme_dma_free_attribute, ptr @__kstrtabns_vme_dma_free_attribute }, section "___ksymtab+vme_dma_free_attribute", align 4
@vme_dma_list_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Link List DMA generation not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vme_dma_list_add\00", [47 x i8] zeroinitializer }, align 32
@vme_dma_list_add._entry_ptr = internal global ptr @vme_dma_list_add._entry, section ".printk_index", align 4
@vme_dma_list_add._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Link List already submitted\0A\00", [33 x i8] zeroinitializer }, align 32
@vme_dma_list_add._entry_ptr.107 = internal global ptr @vme_dma_list_add._entry.105, section ".printk_index", align 4
@__kstrtab_vme_dma_list_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_list_add = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_list_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_list_add to i32), ptr @__kstrtab_vme_dma_list_add, ptr @__kstrtabns_vme_dma_list_add }, section "___ksymtab+vme_dma_list_add", align 4
@vme_dma_list_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Link List DMA execution not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vme_dma_list_exec\00", [46 x i8] zeroinitializer }, align 32
@vme_dma_list_exec._entry_ptr = internal global ptr @vme_dma_list_exec._entry, section ".printk_index", align 4
@__kstrtab_vme_dma_list_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_list_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_list_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_list_exec to i32), ptr @__kstrtab_vme_dma_list_exec, ptr @__kstrtabns_vme_dma_list_exec }, section "___ksymtab+vme_dma_list_exec", align 4
@vme_dma_list_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Emptying of Link Lists not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vme_dma_list_free\00", [46 x i8] zeroinitializer }, align 32
@vme_dma_list_free._entry_ptr = internal global ptr @vme_dma_list_free._entry, section ".printk_index", align 4
@vme_dma_list_free._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Link List in use\0A\00", [44 x i8] zeroinitializer }, align 32
@vme_dma_list_free._entry_ptr.114 = internal global ptr @vme_dma_list_free._entry.112, section ".printk_index", align 4
@vme_dma_list_free._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unable to empty link-list entries\0A\00", [59 x i8] zeroinitializer }, align 32
@vme_dma_list_free._entry_ptr.117 = internal global ptr @vme_dma_list_free._entry.115, section ".printk_index", align 4
@__kstrtab_vme_dma_list_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_list_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_list_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_list_free to i32), ptr @__kstrtab_vme_dma_list_free, ptr @__kstrtabns_vme_dma_list_free }, section "___ksymtab+vme_dma_list_free", align 4
@vme_dma_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.118, ptr @.str.2, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vme_dma_free\00", [19 x i8] zeroinitializer }, align 32
@vme_dma_free._entry_ptr = internal global ptr @vme_dma_free._entry, section ".printk_index", align 4
@vme_dma_free._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Resource busy, can't free\0A\00", [35 x i8] zeroinitializer }, align 32
@vme_dma_free._entry_ptr.121 = internal global ptr @vme_dma_free._entry.119, section ".printk_index", align 4
@vme_dma_free._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Resource still processing transfers\0A\00", [57 x i8] zeroinitializer }, align 32
@vme_dma_free._entry_ptr.124 = internal global ptr @vme_dma_free._entry.122, section ".printk_index", align 4
@__kstrtab_vme_dma_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_dma_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_dma_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_dma_free to i32), ptr @__kstrtab_vme_dma_free, ptr @__kstrtabns_vme_dma_free }, section "___ksymtab+vme_dma_free", align 4
@vme_bus_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1270, ptr @.str.127, ptr @.str.128 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unhandled VME access error at address 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vme_bus_error_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vme_bus_error_handler._entry_ptr = internal global ptr @vme_bus_error_handler._entry, section ".printk_index", align 4
@__kstrtab_vme_bus_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_bus_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_bus_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_bus_error_handler to i32), ptr @__kstrtab_vme_bus_error_handler, ptr @__kstrtabns_vme_bus_error_handler }, section "___ksymtab+vme_bus_error_handler", align 4
@__kstrtab_vme_register_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_register_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_register_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_register_error_handler to i32), ptr @__kstrtab_vme_register_error_handler, ptr @__kstrtabns_vme_register_error_handler }, section "___ksymtab+vme_register_error_handler", align 4
@__kstrtab_vme_unregister_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_unregister_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_unregister_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_unregister_error_handler to i32), ptr @__kstrtab_vme_unregister_error_handler, ptr @__kstrtabns_vme_unregister_error_handler }, section "___ksymtab+vme_unregister_error_handler", align 4
@vme_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Spurious VME interrupt, level:%x, vector:%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@vme_irq_handler._entry_ptr = internal global ptr @vme_irq_handler._entry, section ".printk_index", align 4
@__kstrtab_vme_irq_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_irq_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_irq_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_irq_handler to i32), ptr @__kstrtab_vme_irq_handler, ptr @__kstrtabns_vme_irq_handler }, section "___ksymtab+vme_irq_handler", align 4
@vme_irq_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.131, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vme_irq_request\00", [16 x i8] zeroinitializer }, align 32
@vme_irq_request._entry_ptr = internal global ptr @vme_irq_request._entry, section ".printk_index", align 4
@vme_irq_request._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Invalid interrupt level\0A\00", [37 x i8] zeroinitializer }, align 32
@vme_irq_request._entry_ptr.134 = internal global ptr @vme_irq_request._entry.132, section ".printk_index", align 4
@vme_irq_request._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Configuring interrupts not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@vme_irq_request._entry_ptr.137 = internal global ptr @vme_irq_request._entry.135, section ".printk_index", align 4
@vme_irq_request._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014VME Interrupt already taken\0A\00", [33 x i8] zeroinitializer }, align 32
@vme_irq_request._entry_ptr.140 = internal global ptr @vme_irq_request._entry.138, section ".printk_index", align 4
@__kstrtab_vme_irq_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_irq_request = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_irq_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_irq_request to i32), ptr @__kstrtab_vme_irq_request, ptr @__kstrtabns_vme_irq_request }, section "___ksymtab+vme_irq_request", align 4
@vme_irq_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.141, ptr @.str.2, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vme_irq_free\00", [19 x i8] zeroinitializer }, align 32
@vme_irq_free._entry_ptr = internal global ptr @vme_irq_free._entry, section ".printk_index", align 4
@vme_irq_free._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.141, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_irq_free._entry_ptr.143 = internal global ptr @vme_irq_free._entry.142, section ".printk_index", align 4
@vme_irq_free._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.141, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_irq_free._entry_ptr.145 = internal global ptr @vme_irq_free._entry.144, section ".printk_index", align 4
@__kstrtab_vme_irq_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_irq_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_irq_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_irq_free to i32), ptr @__kstrtab_vme_irq_free, ptr @__kstrtabns_vme_irq_free }, section "___ksymtab+vme_irq_free", align 4
@vme_irq_generate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.146, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vme_irq_generate\00", [47 x i8] zeroinitializer }, align 32
@vme_irq_generate._entry_ptr = internal global ptr @vme_irq_generate._entry, section ".printk_index", align 4
@vme_irq_generate._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014Invalid interrupt level\0A\00", [37 x i8] zeroinitializer }, align 32
@vme_irq_generate._entry_ptr.149 = internal global ptr @vme_irq_generate._entry.147, section ".printk_index", align 4
@vme_irq_generate._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.146, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Interrupt generation not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@vme_irq_generate._entry_ptr.152 = internal global ptr @vme_irq_generate._entry.150, section ".printk_index", align 4
@__kstrtab_vme_irq_generate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_irq_generate = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_irq_generate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_irq_generate to i32), ptr @__kstrtab_vme_irq_generate, ptr @__kstrtabns_vme_irq_generate }, section "___ksymtab+vme_irq_generate", align 4
@vme_lm_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.153, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_lm_request\00", [17 x i8] zeroinitializer }, align 32
@vme_lm_request._entry_ptr = internal global ptr @vme_lm_request._entry, section ".printk_index", align 4
@vme_lm_request._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Registered NULL Location Monitor resource\0A\00", [51 x i8] zeroinitializer }, align 32
@vme_lm_request._entry_ptr.156 = internal global ptr @vme_lm_request._entry.154, section ".printk_index", align 4
@__kstrtab_vme_lm_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_request = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_request to i32), ptr @__kstrtab_vme_lm_request, ptr @__kstrtabns_vme_lm_request }, section "___ksymtab+vme_lm_request", align 4
@vme_lm_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Not a Location Monitor resource\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vme_lm_count\00", [19 x i8] zeroinitializer }, align 32
@vme_lm_count._entry_ptr = internal global ptr @vme_lm_count._entry, section ".printk_index", align 4
@__kstrtab_vme_lm_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_count = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_count to i32), ptr @__kstrtab_vme_lm_count, ptr @__kstrtabns_vme_lm_count }, section "___ksymtab+vme_lm_count", align 4
@vme_lm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.159, ptr @.str.2, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vme_lm_set\00", [21 x i8] zeroinitializer }, align 32
@vme_lm_set._entry_ptr = internal global ptr @vme_lm_set._entry, section ".printk_index", align 4
@vme_lm_set._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013vme_lm_set not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@vme_lm_set._entry_ptr.162 = internal global ptr @vme_lm_set._entry.160, section ".printk_index", align 4
@__kstrtab_vme_lm_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_set = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_set to i32), ptr @__kstrtab_vme_lm_set, ptr @__kstrtabns_vme_lm_set }, section "___ksymtab+vme_lm_set", align 4
@vme_lm_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.163, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vme_lm_get\00", [21 x i8] zeroinitializer }, align 32
@vme_lm_get._entry_ptr = internal global ptr @vme_lm_get._entry, section ".printk_index", align 4
@vme_lm_get._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013vme_lm_get not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@vme_lm_get._entry_ptr.166 = internal global ptr @vme_lm_get._entry.164, section ".printk_index", align 4
@__kstrtab_vme_lm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_get to i32), ptr @__kstrtab_vme_lm_get, ptr @__kstrtabns_vme_lm_get }, section "___ksymtab+vme_lm_get", align 4
@vme_lm_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.167, ptr @.str.2, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vme_lm_attach\00", [18 x i8] zeroinitializer }, align 32
@vme_lm_attach._entry_ptr = internal global ptr @vme_lm_attach._entry, section ".printk_index", align 4
@vme_lm_attach._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013vme_lm_attach not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@vme_lm_attach._entry_ptr.170 = internal global ptr @vme_lm_attach._entry.168, section ".printk_index", align 4
@__kstrtab_vme_lm_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_attach to i32), ptr @__kstrtab_vme_lm_attach, ptr @__kstrtabns_vme_lm_attach }, section "___ksymtab+vme_lm_attach", align 4
@vme_lm_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.171, ptr @.str.2, i32 1676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vme_lm_detach\00", [18 x i8] zeroinitializer }, align 32
@vme_lm_detach._entry_ptr = internal global ptr @vme_lm_detach._entry, section ".printk_index", align 4
@vme_lm_detach._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013vme_lm_detach not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@vme_lm_detach._entry_ptr.174 = internal global ptr @vme_lm_detach._entry.172, section ".printk_index", align 4
@__kstrtab_vme_lm_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_detach to i32), ptr @__kstrtab_vme_lm_detach, ptr @__kstrtabns_vme_lm_detach }, section "___ksymtab+vme_lm_detach", align 4
@vme_lm_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.175, ptr @.str.2, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vme_lm_free\00", [20 x i8] zeroinitializer }, align 32
@vme_lm_free._entry_ptr = internal global ptr @vme_lm_free._entry, section ".printk_index", align 4
@__kstrtab_vme_lm_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_lm_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_lm_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_lm_free to i32), ptr @__kstrtab_vme_lm_free, ptr @__kstrtabns_vme_lm_free }, section "___ksymtab+vme_lm_free", align 4
@vme_slot_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.176, ptr @.str.2, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vme_slot_num\00", [19 x i8] zeroinitializer }, align 32
@vme_slot_num._entry_ptr = internal global ptr @vme_slot_num._entry, section ".printk_index", align 4
@vme_slot_num._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014vme_slot_num not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@vme_slot_num._entry_ptr.179 = internal global ptr @vme_slot_num._entry.177, section ".printk_index", align 4
@__kstrtab_vme_slot_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_slot_num = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_slot_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_slot_num to i32), ptr @__kstrtab_vme_slot_num, ptr @__kstrtabns_vme_slot_num }, section "___ksymtab+vme_slot_num", align 4
@vme_bus_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.180, ptr @.str.2, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vme_bus_num\00", [20 x i8] zeroinitializer }, align 32
@vme_bus_num._entry_ptr = internal global ptr @vme_bus_num._entry, section ".printk_index", align 4
@__kstrtab_vme_bus_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_bus_num = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_bus_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_bus_num to i32), ptr @__kstrtab_vme_bus_num, ptr @__kstrtabns_vme_bus_num }, section "___ksymtab+vme_bus_num", align 4
@vme_init_bridge.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bridge->irq_mtx\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_vme_init_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_init_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_init_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_init_bridge to i32), ptr @__kstrtab_vme_init_bridge, ptr @__kstrtabns_vme_init_bridge }, section "___ksymtab+vme_init_bridge", align 4
@vme_buses_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.184, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vme_buses_lock, i64 52), ptr getelementptr (i8, ptr @vme_buses_lock, i64 52) }, ptr @vme_buses_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.185, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@vme_bus_numbers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vme_bus_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vme_bus_list, ptr @vme_bus_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_vme_register_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_register_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_register_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_register_bridge to i32), ptr @__kstrtab_vme_register_bridge, ptr @__kstrtabns_vme_register_bridge }, section "___ksymtab+vme_register_bridge", align 4
@__kstrtab_vme_unregister_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_unregister_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_unregister_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_unregister_bridge to i32), ptr @__kstrtab_vme_unregister_bridge, ptr @__kstrtabns_vme_unregister_bridge }, section "___ksymtab+vme_unregister_bridge", align 4
@vme_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.182, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vme_bus_match, ptr null, ptr @vme_bus_probe, ptr null, ptr @vme_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_vme_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_register_driver to i32), ptr @__kstrtab_vme_register_driver, ptr @__kstrtabns_vme_register_driver }, section "___ksymtab+vme_register_driver", align 4
@__kstrtab_vme_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_unregister_driver to i32), ptr @__kstrtab_vme_unregister_driver, ptr @__kstrtabns_vme_unregister_driver }, section "___ksymtab+vme_unregister_driver", align 4
@.str.182 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vme\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_vme_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_vme_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_vme_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vme_bus_type to i32), ptr @__kstrtab_vme_bus_type, ptr @__kstrtabns_vme_bus_type }, section "___ksymtab+vme_bus_type", align 4
@__initcall__kmod_vme__271_2015_vme_init4 = internal global ptr @vme_init, section ".initcall4.init", align 4
@find_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.183, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"find_bridge\00", [20 x i8] zeroinitializer }, align 32
@find_bridge._entry_ptr = internal global ptr @find_bridge._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vme_buses_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_buses_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s.%u-%u\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.193 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.197 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.198 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 3, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 41, i64 45, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.201 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.203 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.204 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 87, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 93, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 98, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 103, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 127, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 133, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 138, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 143, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 187, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 228, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 292, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 302, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 370, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 377, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 383, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 419, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 426, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 446, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 453, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 460, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 493, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 503, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 524, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 574, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 581, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 588, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 624, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 631, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 663, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 668, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 677, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 712, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 717, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 726, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 763, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 768, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 796, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 805, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 826, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 833, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 840, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 869, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 873, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 882, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 938, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 950, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1116, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1121, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1149, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1178, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1183, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1193, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1218, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1225, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1230, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1268, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1312, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1341, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1346, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1351, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1359, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1390, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1395, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1400, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1437, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1442, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1447, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1475, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1484, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1539, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1570, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1577, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1606, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1613, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1643, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1650, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1676, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1683, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1708, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1745, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1750, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1773, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1796, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [15 x i8] c"vme_buses_lock\00", align 1
@___asan_gen_.733 = private unnamed_addr constant [16 x i8] c"vme_bus_numbers\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 34, i32 21 }
@___asan_gen_.736 = private unnamed_addr constant [13 x i8] c"vme_bus_list\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 35, i32 8 }
@___asan_gen_.739 = private unnamed_addr constant [13 x i8] c"vme_bus_type\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2003, i32 17 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2004, i32 10 }
@___asan_gen_.745 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 65, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 36, i32 8 }
@___asan_gen_.757 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.758 = private constant [21 x i8] c"../drivers/vme/vme.c\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1863, i32 28 }
@llvm.compiler.used = appending global [316 x ptr] [ptr @__initcall__kmod_vme__271_2015_vme_init4, ptr @__ksymtab_vme_alloc_consistent, ptr @__ksymtab_vme_bus_error_handler, ptr @__ksymtab_vme_bus_num, ptr @__ksymtab_vme_bus_type, ptr @__ksymtab_vme_check_window, ptr @__ksymtab_vme_dma_free, ptr @__ksymtab_vme_dma_free_attribute, ptr @__ksymtab_vme_dma_list_add, ptr @__ksymtab_vme_dma_list_exec, ptr @__ksymtab_vme_dma_list_free, ptr @__ksymtab_vme_dma_pattern_attribute, ptr @__ksymtab_vme_dma_pci_attribute, ptr @__ksymtab_vme_dma_request, ptr @__ksymtab_vme_dma_vme_attribute, ptr @__ksymtab_vme_free_consistent, ptr @__ksymtab_vme_get_size, ptr @__ksymtab_vme_init_bridge, ptr @__ksymtab_vme_irq_free, ptr @__ksymtab_vme_irq_generate, ptr @__ksymtab_vme_irq_handler, ptr @__ksymtab_vme_irq_request, ptr @__ksymtab_vme_lm_attach, ptr @__ksymtab_vme_lm_count, ptr @__ksymtab_vme_lm_detach, ptr @__ksymtab_vme_lm_free, ptr @__ksymtab_vme_lm_get, ptr @__ksymtab_vme_lm_request, ptr @__ksymtab_vme_lm_set, ptr @__ksymtab_vme_master_free, ptr @__ksymtab_vme_master_get, ptr @__ksymtab_vme_master_mmap, ptr @__ksymtab_vme_master_read, ptr @__ksymtab_vme_master_request, ptr @__ksymtab_vme_master_rmw, ptr @__ksymtab_vme_master_set, ptr @__ksymtab_vme_master_write, ptr @__ksymtab_vme_new_dma_list, ptr @__ksymtab_vme_register_bridge, ptr @__ksymtab_vme_register_driver, ptr @__ksymtab_vme_register_error_handler, ptr @__ksymtab_vme_slave_free, ptr @__ksymtab_vme_slave_get, ptr @__ksymtab_vme_slave_request, ptr @__ksymtab_vme_slave_set, ptr @__ksymtab_vme_slot_num, ptr @__ksymtab_vme_unregister_bridge, ptr @__ksymtab_vme_unregister_driver, ptr @__ksymtab_vme_unregister_error_handler, ptr @find_bridge._entry, ptr @find_bridge._entry_ptr, ptr @vme_alloc_consistent._entry, ptr @vme_alloc_consistent._entry.3, ptr @vme_alloc_consistent._entry.6, ptr @vme_alloc_consistent._entry.9, ptr @vme_alloc_consistent._entry_ptr, ptr @vme_alloc_consistent._entry_ptr.11, ptr @vme_alloc_consistent._entry_ptr.5, ptr @vme_alloc_consistent._entry_ptr.8, ptr @vme_bus_error_handler._entry, ptr @vme_bus_error_handler._entry_ptr, ptr @vme_bus_num._entry, ptr @vme_bus_num._entry_ptr, ptr @vme_check_window._entry, ptr @vme_check_window._entry_ptr, ptr @vme_dma_free._entry, ptr @vme_dma_free._entry.119, ptr @vme_dma_free._entry.122, ptr @vme_dma_free._entry_ptr, ptr @vme_dma_free._entry_ptr.121, ptr @vme_dma_free._entry_ptr.124, ptr @vme_dma_list_add._entry, ptr @vme_dma_list_add._entry.105, ptr @vme_dma_list_add._entry_ptr, ptr @vme_dma_list_add._entry_ptr.107, ptr @vme_dma_list_exec._entry, ptr @vme_dma_list_exec._entry_ptr, ptr @vme_dma_list_free._entry, ptr @vme_dma_list_free._entry.112, ptr @vme_dma_list_free._entry.115, ptr @vme_dma_list_free._entry_ptr, ptr @vme_dma_list_free._entry_ptr.114, ptr @vme_dma_list_free._entry_ptr.117, ptr @vme_dma_request._entry, ptr @vme_dma_request._entry.95, ptr @vme_dma_request._entry.97, ptr @vme_dma_request._entry_ptr, ptr @vme_dma_request._entry_ptr.96, ptr @vme_dma_request._entry_ptr.99, ptr @vme_free_consistent._entry, ptr @vme_free_consistent._entry.13, ptr @vme_free_consistent._entry.15, ptr @vme_free_consistent._entry.17, ptr @vme_free_consistent._entry_ptr, ptr @vme_free_consistent._entry_ptr.14, ptr @vme_free_consistent._entry_ptr.16, ptr @vme_free_consistent._entry_ptr.19, ptr @vme_get_size._entry, ptr @vme_get_size._entry_ptr, ptr @vme_irq_free._entry, ptr @vme_irq_free._entry.142, ptr @vme_irq_free._entry.144, ptr @vme_irq_free._entry_ptr, ptr @vme_irq_free._entry_ptr.143, ptr @vme_irq_free._entry_ptr.145, ptr @vme_irq_generate._entry, ptr @vme_irq_generate._entry.147, ptr @vme_irq_generate._entry.150, ptr @vme_irq_generate._entry_ptr, ptr @vme_irq_generate._entry_ptr.149, ptr @vme_irq_generate._entry_ptr.152, ptr @vme_irq_handler._entry, ptr @vme_irq_handler._entry_ptr, ptr @vme_irq_request._entry, ptr @vme_irq_request._entry.132, ptr @vme_irq_request._entry.135, ptr @vme_irq_request._entry.138, ptr @vme_irq_request._entry_ptr, ptr @vme_irq_request._entry_ptr.134, ptr @vme_irq_request._entry_ptr.137, ptr @vme_irq_request._entry_ptr.140, ptr @vme_lm_attach._entry, ptr @vme_lm_attach._entry.168, ptr @vme_lm_attach._entry_ptr, ptr @vme_lm_attach._entry_ptr.170, ptr @vme_lm_count._entry, ptr @vme_lm_count._entry_ptr, ptr @vme_lm_detach._entry, ptr @vme_lm_detach._entry.172, ptr @vme_lm_detach._entry_ptr, ptr @vme_lm_detach._entry_ptr.174, ptr @vme_lm_free._entry, ptr @vme_lm_free._entry_ptr, ptr @vme_lm_get._entry, ptr @vme_lm_get._entry.164, ptr @vme_lm_get._entry_ptr, ptr @vme_lm_get._entry_ptr.166, ptr @vme_lm_request._entry, ptr @vme_lm_request._entry.154, ptr @vme_lm_request._entry_ptr, ptr @vme_lm_request._entry_ptr.156, ptr @vme_lm_set._entry, ptr @vme_lm_set._entry.160, ptr @vme_lm_set._entry_ptr, ptr @vme_lm_set._entry_ptr.162, ptr @vme_master_free._entry, ptr @vme_master_free._entry.88, ptr @vme_master_free._entry.91, ptr @vme_master_free._entry_ptr, ptr @vme_master_free._entry_ptr.90, ptr @vme_master_free._entry_ptr.92, ptr @vme_master_get._entry, ptr @vme_master_get._entry.64, ptr @vme_master_get._entry_ptr, ptr @vme_master_get._entry_ptr.66, ptr @vme_master_mmap._entry, ptr @vme_master_mmap._entry.84, ptr @vme_master_mmap._entry_ptr, ptr @vme_master_mmap._entry_ptr.86, ptr @vme_master_read._entry, ptr @vme_master_read._entry.69, ptr @vme_master_read._entry.71, ptr @vme_master_read._entry_ptr, ptr @vme_master_read._entry_ptr.70, ptr @vme_master_read._entry_ptr.73, ptr @vme_master_request._entry, ptr @vme_master_request._entry.49, ptr @vme_master_request._entry.52, ptr @vme_master_request._entry_ptr, ptr @vme_master_request._entry_ptr.51, ptr @vme_master_request._entry_ptr.54, ptr @vme_master_rmw._entry, ptr @vme_master_rmw._entry.81, ptr @vme_master_rmw._entry_ptr, ptr @vme_master_rmw._entry_ptr.82, ptr @vme_master_set._entry, ptr @vme_master_set._entry.57, ptr @vme_master_set._entry.60, ptr @vme_master_set._entry_ptr, ptr @vme_master_set._entry_ptr.59, ptr @vme_master_set._entry_ptr.62, ptr @vme_master_write._entry, ptr @vme_master_write._entry.76, ptr @vme_master_write._entry.78, ptr @vme_master_write._entry_ptr, ptr @vme_master_write._entry_ptr.77, ptr @vme_master_write._entry_ptr.79, ptr @vme_new_dma_list._entry, ptr @vme_new_dma_list._entry_ptr, ptr @vme_slave_free._entry, ptr @vme_slave_free._entry.42, ptr @vme_slave_free._entry.45, ptr @vme_slave_free._entry_ptr, ptr @vme_slave_free._entry_ptr.44, ptr @vme_slave_free._entry_ptr.47, ptr @vme_slave_get._entry, ptr @vme_slave_get._entry.38, ptr @vme_slave_get._entry_ptr, ptr @vme_slave_get._entry_ptr.40, ptr @vme_slave_request._entry, ptr @vme_slave_request._entry.26, ptr @vme_slave_request._entry_ptr, ptr @vme_slave_request._entry_ptr.28, ptr @vme_slave_set._entry, ptr @vme_slave_set._entry.31, ptr @vme_slave_set._entry.34, ptr @vme_slave_set._entry_ptr, ptr @vme_slave_set._entry_ptr.33, ptr @vme_slave_set._entry_ptr.36, ptr @vme_slot_num._entry, ptr @vme_slot_num._entry.177, ptr @vme_slot_num._entry_ptr, ptr @vme_slot_num._entry_ptr.179, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.93, ptr @.str.94, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @vme_new_dma_list.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.146, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @vme_init_bridge.__key, ptr @.str.181, ptr @vme_buses_lock, ptr @vme_bus_numbers, ptr @vme_bus_list, ptr @vme_bus_type, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_alloc_consistent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_alloc_consistent._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_alloc_consistent._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_alloc_consistent._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_free_consistent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_free_consistent._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_free_consistent._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_free_consistent._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_get_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_check_window._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_request._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_set._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_set._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_get._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_free._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slave_free._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_request._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_request._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_set._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_set._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_get._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_read._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_read._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_write._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_write._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_rmw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_rmw._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_mmap._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_free._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_master_free._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_request._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_request._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_new_dma_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_new_dma_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_add._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_free._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_list_free._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_free._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_dma_free._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_bus_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_request._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_request._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_request._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_free._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_free._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_generate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_generate._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_irq_generate._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_request._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_set._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_get._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_attach._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_detach._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_lm_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slot_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_slot_num._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_bus_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_init_bridge.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_buses_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_bus_numbers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_bus_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_alloc_consistent(ptr noundef readonly %resource, i32 noundef %size, ptr noundef %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %resource, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %find_bridge.exit.thread [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %5 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %6, i32 0, i32 1
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %8, i32 0, i32 1
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %9 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %10, i32 0, i32 1
  br label %find_bridge.exit

find_bridge.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %do.end6

find_bridge.exit:                                 ; preds = %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %parent19.i, %sw.bb14.i ], [ %parent13.i, %sw.bb8.i ], [ %parent7.i, %sw.bb2.i ], [ %parent.i, %sw.bb.i ]
  %11 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %find_bridge.exit.do.end6_crit_edge, label %if.end9

find_bridge.exit.do.end6_crit_edge:               ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end6:                                          ; preds = %find_bridge.exit.do.end6_crit_edge, %find_bridge.exit.thread
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end9:                                          ; preds = %find_bridge.exit
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %alloc_consistent = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 30
  %14 = ptrtoint ptr %alloc_consistent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alloc_consistent, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %retval.0.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call ptr %15(ptr noundef nonnull %13, i32 noundef %size, ptr noundef %dma) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end22, %do.end14, %do.end6, %do.end
  %retval.0 = phi ptr [ %call30, %if.end27 ], [ null, %do.end22 ], [ null, %do.end14 ], [ null, %do.end6 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_free_consistent(ptr noundef readonly %resource, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %resource, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %1, label %find_bridge.exit.thread [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %5 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %6, i32 0, i32 1
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %8, i32 0, i32 1
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %9 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %10, i32 0, i32 1
  br label %find_bridge.exit

find_bridge.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %do.end6

find_bridge.exit:                                 ; preds = %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %parent19.i, %sw.bb14.i ], [ %parent13.i, %sw.bb8.i ], [ %parent7.i, %sw.bb2.i ], [ %parent.i, %sw.bb.i ]
  %11 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %find_bridge.exit.do.end6_crit_edge, label %if.end9

find_bridge.exit.do.end6_crit_edge:               ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end6:                                          ; preds = %find_bridge.exit.do.end6_crit_edge, %find_bridge.exit.thread
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end9:                                          ; preds = %find_bridge.exit
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %free_consistent = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 31
  %14 = ptrtoint ptr %free_consistent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_consistent, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %retval.0.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef nonnull %13, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end22, %do.end14, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_get_size(ptr nocapture noundef readonly %resource) #0 align 64 {
entry:
  %enabled = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %buf_base = alloca i32, align 4
  %aspace = alloca i32, align 4
  %cycle = alloca i32, align 4
  %dwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #6
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %base, align 8, !annotation !464
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #6
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %size, align 8, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_base) #6
  %3 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf_base, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aspace) #6
  %4 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %aspace, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cycle) #6
  %5 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cycle, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwidth) #6
  %6 = ptrtoint ptr %dwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dwidth, align 4, !annotation !464
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %8, label %do.end [
    i32 0, label %find_bridge.exit.i
    i32 1, label %find_bridge.exit.i36
    i32 2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

find_bridge.exit.i:                               ; preds = %entry
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %find_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end.i:                                         ; preds = %find_bridge.exit.i
  %entry1.i.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %12 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry1.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.vme_master_resource, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 4
  %master_get.i = getelementptr inbounds %struct.vme_bridge, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %master_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master_get.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end7.i, label %vme_master_get.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #9
  br label %cleanup

vme_master_get.exit:                              ; preds = %if.end.i
  %18 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1.i.i, align 4
  %call12.i = call i32 %17(ptr noundef %19, ptr noundef nonnull %enabled, ptr noundef nonnull %base, ptr noundef nonnull %size, ptr noundef nonnull %aspace, ptr noundef nonnull %cycle, ptr noundef nonnull %dwidth) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not = icmp eq i32 %call12.i, 0
  br i1 %tobool.not, label %if.end, label %vme_master_get.exit.cleanup_crit_edge

vme_master_get.exit.cleanup_crit_edge:            ; preds = %vme_master_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %vme_master_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size, align 8
  %conv = trunc i64 %21 to i32
  br label %cleanup

find_bridge.exit.i36:                             ; preds = %entry
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not.i35 = icmp eq i32 %23, 1
  br i1 %cmp.not.i35, label %if.end.i40, label %do.end.i38

do.end.i38:                                       ; preds = %find_bridge.exit.i36
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end.i40:                                       ; preds = %find_bridge.exit.i36
  %entry4.i.i23 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %24 = ptrtoint ptr %entry4.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entry4.i.i23, align 4
  %parent7.i.i24 = getelementptr inbounds %struct.vme_slave_resource, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent7.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent7.i.i24, align 4
  %slave_get.i = getelementptr inbounds %struct.vme_bridge, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %slave_get.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave_get.i, align 4
  %tobool.not.i39 = icmp eq ptr %29, null
  br i1 %tobool.not.i39, label %do.end7.i42, label %vme_slave_get.exit

do.end7.i42:                                      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %cleanup

vme_slave_get.exit:                               ; preds = %if.end.i40
  %30 = ptrtoint ptr %entry4.i.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entry4.i.i23, align 4
  %call12.i44 = call i32 %29(ptr noundef %31, ptr noundef nonnull %enabled, ptr noundef nonnull %base, ptr noundef nonnull %size, ptr noundef nonnull %buf_base, ptr noundef nonnull %aspace, ptr noundef nonnull %cycle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i44)
  %tobool4.not = icmp eq i32 %call12.i44, 0
  br i1 %tobool4.not, label %if.end6, label %vme_slave_get.exit.cleanup_crit_edge

vme_slave_get.exit.cleanup_crit_edge:             ; preds = %vme_slave_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %vme_slave_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size, align 8
  %conv7 = trunc i64 %33 to i32
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6, %vme_slave_get.exit.cleanup_crit_edge, %do.end7.i42, %do.end.i38, %if.end, %vme_master_get.exit.cleanup_crit_edge, %do.end7.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv7, %if.end6 ], [ %conv, %if.end ], [ 0, %vme_master_get.exit.cleanup_crit_edge ], [ 0, %vme_slave_get.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.end7.i ], [ 0, %do.end.i38 ], [ 0, %do.end7.i42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwidth) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cycle) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aspace) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_base) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_get(ptr nocapture noundef readonly %resource, ptr noundef %enabled, ptr noundef %vme_base, ptr noundef %size, ptr noundef %aspace, ptr noundef %cycle, ptr noundef %dwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %master_get = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 15
  %21 = ptrtoint ptr %master_get to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master_get, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, ptr noundef %enabled, ptr noundef %vme_base, ptr noundef %size, ptr noundef %aspace, ptr noundef %cycle, ptr noundef %dwidth) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_slave_get(ptr nocapture noundef readonly %resource, ptr noundef %enabled, ptr noundef %vme_base, ptr noundef %size, ptr noundef %buf_base, ptr noundef %aspace, ptr noundef %cycle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %slave_get = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 13
  %21 = ptrtoint ptr %slave_get to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave_get, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, ptr noundef %enabled, ptr noundef %vme_base, ptr noundef %size, ptr noundef %buf_base, ptr noundef %aspace, ptr noundef %cycle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_check_window(i32 noundef %aspace, i64 noundef %vme_base, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %size, %vme_base
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %size)
  %cmp = icmp ult i64 %add, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %aspace, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb11
    i32 8, label %if.end.cleanup_crit_edge
    i32 16, label %sw.bb16
    i32 32, label %if.end.cleanup_crit_edge34
    i32 64, label %if.end.cleanup_crit_edge35
    i32 128, label %if.end.cleanup_crit_edge36
    i32 256, label %if.end.cleanup_crit_edge37
  ]

if.end.cleanup_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge35:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %add)
  %cmp3 = icmp ugt i64 %add, 65536
  %spec.select = select i1 %cmp3, i32 -14, i32 0
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add)
  %cmp8 = icmp ugt i64 %add, 16777216
  %spec.select31 = select i1 %cmp8, i32 -14, i32 0
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp13 = icmp ugt i64 %add, 4294967296
  %spec.select32 = select i1 %cmp13, i32 -14, i32 0
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add)
  %cmp18 = icmp ugt i64 %add, 16777216
  %spec.select33 = select i1 %cmp18, i32 -14, i32 0
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb16, %sw.bb11, %sw.bb6, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge34, %if.end.cleanup_crit_edge35, %if.end.cleanup_crit_edge36, %if.end.cleanup_crit_edge37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge34 ], [ 0, %if.end.cleanup_crit_edge35 ], [ 0, %if.end.cleanup_crit_edge36 ], [ 0, %if.end.cleanup_crit_edge37 ], [ %spec.select, %sw.bb ], [ %spec.select31, %sw.bb6 ], [ %spec.select32, %sw.bb11 ], [ %spec.select33, %sw.bb16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vme_slave_request(ptr nocapture noundef readonly %vdev, i32 noundef %address, i32 noundef %cycle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %slave_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %slave_pos.064 = load ptr, ptr %slave_resources, align 4
  %cmp.i.not65 = icmp eq ptr %slave_pos.064, %slave_resources
  br i1 %cmp.i.not65, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %slave_pos.066 = phi ptr [ %slave_pos.0, %for.inc.for.body_crit_edge ], [ %slave_pos.064, %if.end.for.body_crit_edge ]
  %tobool6.not = icmp eq ptr %slave_pos.066, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %slave_pos.066, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %address_attr = getelementptr inbounds %struct.vme_slave_resource, ptr %slave_pos.066, i32 0, i32 5
  %3 = ptrtoint ptr %address_attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address_attr, align 4
  %and = and i32 %4, %address
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %address)
  %cmp = icmp eq i32 %and, %address
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %cycle_attr = getelementptr inbounds %struct.vme_slave_resource, ptr %slave_pos.066, i32 0, i32 6
  %5 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cycle_attr, align 4
  %and14 = and i32 %6, %cycle
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %cycle)
  %cmp15 = icmp eq i32 %and14, %cycle
  br i1 %cmp15, label %land.lhs.true16, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %locked = getelementptr inbounds %struct.vme_slave_resource, ptr %slave_pos.066, i32 0, i32 3
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp17 = icmp eq i32 %8, 0
  br i1 %cmp17, label %if.end26, label %land.lhs.true16.if.end21_crit_edge

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true16.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %do.end10
  %9 = ptrtoint ptr %slave_pos.066 to i32
  call void @__asan_load4_noabort(i32 %9)
  %slave_pos.0 = load ptr, ptr %slave_pos.066, align 4
  %cmp.i.not = icmp eq ptr %slave_pos.0, %slave_resources
  br i1 %cmp.i.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true16
  %locked.le = getelementptr inbounds %struct.vme_slave_resource, ptr %slave_pos.066, i32 0, i32 3
  %10 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8) #10
  %tobool28.not = icmp eq ptr %call7.i, null
  br i1 %tobool28.not, label %err_alloc, label %if.end30

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call7.i, align 8
  %entry31 = getelementptr inbounds %struct.vme_resource, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %slave_pos.066, ptr %entry31, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %14 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end30, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call7.i, %if.end30 ], [ null, %err_alloc ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_slave_set(ptr nocapture noundef readonly %resource, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %buf_base, i32 noundef %aspace, i32 noundef %cycle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %entry3 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %21 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entry3, align 4
  %slave_set = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 14
  %23 = ptrtoint ptr %slave_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_set, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %address_attr = getelementptr inbounds %struct.vme_slave_resource, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %address_attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address_attr, align 4
  %and = and i32 %26, %aspace
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %aspace)
  %cmp12 = icmp eq i32 %and, %aspace
  br i1 %cmp12, label %land.lhs.true, label %if.end11.do.end18_crit_edge

if.end11.do.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end11
  %cycle_attr = getelementptr inbounds %struct.vme_slave_resource, ptr %22, i32 0, i32 6
  %27 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cycle_attr, align 4
  %and13 = and i32 %28, %cycle
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %cycle)
  %cmp14 = icmp eq i32 %and13, %cycle
  br i1 %cmp14, label %if.end21, label %land.lhs.true.do.end18_crit_edge

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %land.lhs.true.do.end18_crit_edge, %if.end11.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true
  %add.i = add i64 %size, %vme_base
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %size)
  %cmp.i = icmp ult i64 %add.i, %size
  br i1 %cmp.i, label %if.end21.cleanup_crit_edge, label %if.end.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %29 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %aspace, label %do.end.i45 [
    i32 1, label %sw.bb.i43
    i32 2, label %sw.bb6.i
    i32 4, label %sw.bb11.i
    i32 8, label %if.end.i.if.end25_crit_edge
    i32 16, label %sw.bb16.i
    i32 32, label %if.end.i.if.end25_crit_edge52
    i32 64, label %if.end.i.if.end25_crit_edge53
    i32 128, label %if.end.i.if.end25_crit_edge54
    i32 256, label %if.end.i.if.end25_crit_edge55
  ]

if.end.i.if.end25_crit_edge55:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end.i.if.end25_crit_edge54:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end.i.if.end25_crit_edge53:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end.i.if.end25_crit_edge52:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.bb.i43:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %add.i)
  %cmp3.i = icmp ugt i64 %add.i, 65536
  br i1 %cmp3.i, label %sw.bb.i43.cleanup_crit_edge, label %sw.bb.i43.if.end25_crit_edge

sw.bb.i43.if.end25_crit_edge:                     ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.bb.i43.cleanup_crit_edge:                      ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add.i)
  %cmp8.i = icmp ugt i64 %add.i, 16777216
  br i1 %cmp8.i, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.if.end25_crit_edge

sw.bb6.i.if.end25_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp13.i = icmp ugt i64 %add.i, 4294967296
  br i1 %cmp13.i, label %sw.bb11.i.cleanup_crit_edge, label %sw.bb11.i.if.end25_crit_edge

sw.bb11.i.if.end25_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add.i)
  %cmp18.i = icmp ugt i64 %add.i, 16777216
  br i1 %cmp18.i, label %sw.bb16.i.cleanup_crit_edge, label %sw.bb16.i.if.end25_crit_edge

sw.bb16.i.if.end25_crit_edge:                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.bb16.i.cleanup_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i45:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb16.i.if.end25_crit_edge, %sw.bb11.i.if.end25_crit_edge, %sw.bb6.i.if.end25_crit_edge, %sw.bb.i43.if.end25_crit_edge, %if.end.i.if.end25_crit_edge, %if.end.i.if.end25_crit_edge52, %if.end.i.if.end25_crit_edge53, %if.end.i.if.end25_crit_edge54, %if.end.i.if.end25_crit_edge55
  %30 = ptrtoint ptr %slave_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slave_set, align 4
  %call27 = tail call i32 %31(ptr noundef %22, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %buf_base, i32 noundef %aspace, i32 noundef %cycle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end.i45, %sw.bb16.i.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i43.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end18, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call27, %if.end25 ], [ -22, %do.end18 ], [ -38, %do.end8 ], [ -22, %do.end.i45 ], [ -22, %if.end21.cleanup_crit_edge ], [ -14, %sw.bb.i43.cleanup_crit_edge ], [ -14, %sw.bb6.i.cleanup_crit_edge ], [ -14, %sw.bb11.i.cleanup_crit_edge ], [ -14, %sw.bb16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_slave_free(ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %locked = getelementptr inbounds %struct.vme_slave_resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %do.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %locked, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  tail call void @kfree(ptr noundef %resource) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vme_master_request(ptr nocapture noundef readonly %vdev, i32 noundef %address, i32 noundef %cycle, i32 noundef %dwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %master_pos.074 = load ptr, ptr %master_resources, align 4
  %cmp.i.not75 = icmp eq ptr %master_pos.074, %master_resources
  br i1 %cmp.i.not75, label %if.end.do.end31_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %master_pos.076 = phi ptr [ %master_pos.0, %for.inc.for.body_crit_edge ], [ %master_pos.074, %if.end.for.body_crit_edge ]
  %tobool6.not = icmp eq ptr %master_pos.076, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %address_attr = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 5
  %3 = ptrtoint ptr %address_attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address_attr, align 4
  %and = and i32 %4, %address
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %address)
  %cmp = icmp eq i32 %and, %address
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end13
  %cycle_attr = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 6
  %5 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cycle_attr, align 4
  %and14 = and i32 %6, %cycle
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %cycle)
  %cmp15 = icmp eq i32 %and14, %cycle
  br i1 %cmp15, label %land.lhs.true16, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true16:                                  ; preds = %land.lhs.true
  %width_attr = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 7
  %7 = ptrtoint ptr %width_attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width_attr, align 4
  %and17 = and i32 %8, %dwidth
  call void @__sanitizer_cov_trace_cmp4(i32 %and17, i32 %dwidth)
  %cmp18 = icmp eq i32 %and17, %dwidth
  br i1 %cmp18, label %land.lhs.true19, label %land.lhs.true16.if.end24_crit_edge

land.lhs.true16.if.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %locked = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 3
  %9 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20 = icmp eq i32 %10, 0
  br i1 %cmp20, label %if.end34, label %land.lhs.true19.if.end24_crit_edge

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true19.if.end24_crit_edge, %land.lhs.true16.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %do.end10
  %11 = ptrtoint ptr %master_pos.076 to i32
  call void @__asan_load4_noabort(i32 %11)
  %master_pos.0 = load ptr, ptr %master_pos.076, align 4
  %cmp.i.not = icmp eq ptr %master_pos.0, %master_resources
  br i1 %cmp.i.not, label %for.inc.do.end31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

do.end31:                                         ; preds = %for.inc.do.end31_crit_edge, %if.end.do.end31_crit_edge
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true19
  %locked.le = getelementptr inbounds %struct.vme_master_resource, ptr %master_pos.076, i32 0, i32 3
  %12 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %locked.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 8) #10
  %tobool36.not = icmp eq ptr %call7.i, null
  br i1 %tobool36.not, label %err_alloc, label %if.end38

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call7.i, align 8
  %entry39 = getelementptr inbounds %struct.vme_resource, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %master_pos.076, ptr %entry39, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %16 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %locked.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end38, %do.end31, %do.end
  %retval.0 = phi ptr [ %call7.i, %if.end38 ], [ null, %do.end31 ], [ null, %err_alloc ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_set(ptr nocapture noundef readonly %resource, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %aspace, i32 noundef %cycle, i32 noundef %dwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %entry3 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %21 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entry3, align 4
  %master_set = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 16
  %23 = ptrtoint ptr %master_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master_set, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %address_attr = getelementptr inbounds %struct.vme_master_resource, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %address_attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address_attr, align 4
  %and = and i32 %26, %aspace
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %aspace)
  %cmp12 = icmp eq i32 %and, %aspace
  br i1 %cmp12, label %land.lhs.true, label %if.end11.do.end21_crit_edge

if.end11.do.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

land.lhs.true:                                    ; preds = %if.end11
  %cycle_attr = getelementptr inbounds %struct.vme_master_resource, ptr %22, i32 0, i32 6
  %27 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cycle_attr, align 4
  %and13 = and i32 %28, %cycle
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %cycle)
  %cmp14 = icmp eq i32 %and13, %cycle
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true.do.end21_crit_edge

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

land.lhs.true15:                                  ; preds = %land.lhs.true
  %width_attr = getelementptr inbounds %struct.vme_master_resource, ptr %22, i32 0, i32 7
  %29 = ptrtoint ptr %width_attr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width_attr, align 4
  %and16 = and i32 %30, %dwidth
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %dwidth)
  %cmp17 = icmp eq i32 %and16, %dwidth
  br i1 %cmp17, label %if.end24, label %land.lhs.true15.do.end21_crit_edge

land.lhs.true15.do.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end21:                                         ; preds = %land.lhs.true15.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %if.end11.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #9
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true15
  %add.i = add i64 %size, %vme_base
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %size)
  %cmp.i = icmp ult i64 %add.i, %size
  br i1 %cmp.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %31 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %aspace, label %do.end.i51 [
    i32 1, label %sw.bb.i49
    i32 2, label %sw.bb6.i
    i32 4, label %sw.bb11.i
    i32 8, label %if.end.i.if.end28_crit_edge
    i32 16, label %sw.bb16.i
    i32 32, label %if.end.i.if.end28_crit_edge58
    i32 64, label %if.end.i.if.end28_crit_edge59
    i32 128, label %if.end.i.if.end28_crit_edge60
    i32 256, label %if.end.i.if.end28_crit_edge61
  ]

if.end.i.if.end28_crit_edge61:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i.if.end28_crit_edge60:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i.if.end28_crit_edge59:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i.if.end28_crit_edge58:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

sw.bb.i49:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %add.i)
  %cmp3.i = icmp ugt i64 %add.i, 65536
  br i1 %cmp3.i, label %sw.bb.i49.cleanup_crit_edge, label %sw.bb.i49.if.end28_crit_edge

sw.bb.i49.if.end28_crit_edge:                     ; preds = %sw.bb.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

sw.bb.i49.cleanup_crit_edge:                      ; preds = %sw.bb.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add.i)
  %cmp8.i = icmp ugt i64 %add.i, 16777216
  br i1 %cmp8.i, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.if.end28_crit_edge

sw.bb6.i.if.end28_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp13.i = icmp ugt i64 %add.i, 4294967296
  br i1 %cmp13.i, label %sw.bb11.i.cleanup_crit_edge, label %sw.bb11.i.if.end28_crit_edge

sw.bb11.i.if.end28_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add.i)
  %cmp18.i = icmp ugt i64 %add.i, 16777216
  br i1 %cmp18.i, label %sw.bb16.i.cleanup_crit_edge, label %sw.bb16.i.if.end28_crit_edge

sw.bb16.i.if.end28_crit_edge:                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

sw.bb16.i.cleanup_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i51:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end28:                                         ; preds = %sw.bb16.i.if.end28_crit_edge, %sw.bb11.i.if.end28_crit_edge, %sw.bb6.i.if.end28_crit_edge, %sw.bb.i49.if.end28_crit_edge, %if.end.i.if.end28_crit_edge, %if.end.i.if.end28_crit_edge58, %if.end.i.if.end28_crit_edge59, %if.end.i.if.end28_crit_edge60, %if.end.i.if.end28_crit_edge61
  %32 = ptrtoint ptr %master_set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master_set, align 4
  %call30 = tail call i32 %33(ptr noundef %22, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %aspace, i32 noundef %cycle, i32 noundef %dwidth) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end.i51, %sw.bb16.i.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i49.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end21, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call30, %if.end28 ], [ -22, %do.end21 ], [ -22, %do.end8 ], [ -22, %do.end.i51 ], [ -22, %if.end24.cleanup_crit_edge ], [ -14, %sw.bb.i49.cleanup_crit_edge ], [ -14, %sw.bb6.i.cleanup_crit_edge ], [ -14, %sw.bb11.i.cleanup_crit_edge ], [ -14, %sw.bb16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_read(ptr nocapture noundef readonly %resource, ptr noundef %buf, i32 noundef %count, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %master_read = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 17
  %19 = ptrtoint ptr %master_read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_read, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %entry9 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry9, align 4
  %call11 = tail call i32 @vme_get_size(ptr noundef %resource)
  %conv = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp12 = icmp slt i64 %conv, %offset
  br i1 %cmp12, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = zext i32 %count to i64
  %add = add i64 %conv21, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp23 = icmp sgt i64 %add, %conv
  %25 = trunc i64 %offset to i32
  %conv27 = sub i32 %call11, %25
  %count.addr.0 = select i1 %cmp23, i32 %conv27, i32 %count
  %26 = ptrtoint ptr %master_read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_read, align 4
  %call30 = tail call i32 %27(ptr noundef %24, ptr noundef %buf, i32 noundef %count.addr.0, i64 noundef %offset) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -14, %do.end17 ], [ %call30, %if.end20 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_write(ptr nocapture noundef readonly %resource, ptr noundef %buf, i32 noundef %count, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %master_write = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 18
  %19 = ptrtoint ptr %master_write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_write, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %entry9 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry9, align 4
  %call11 = tail call i32 @vme_get_size(ptr noundef %resource)
  %conv = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp12 = icmp slt i64 %conv, %offset
  br i1 %cmp12, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = zext i32 %count to i64
  %add = add i64 %conv21, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp23 = icmp sgt i64 %add, %conv
  %25 = trunc i64 %offset to i32
  %conv27 = sub i32 %call11, %25
  %count.addr.0 = select i1 %cmp23, i32 %conv27, i32 %count
  %26 = ptrtoint ptr %master_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_write, align 4
  %call30 = tail call i32 %27(ptr noundef %24, ptr noundef %buf, i32 noundef %count.addr.0, i64 noundef %offset) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -14, %do.end17 ], [ %call30, %if.end20 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_rmw(ptr nocapture noundef readonly %resource, i32 noundef %mask, i32 noundef %compare, i32 noundef %swap, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %master_rmw = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 19
  %19 = ptrtoint ptr %master_rmw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_rmw, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry9 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry9, align 4
  %call12 = tail call i32 %20(ptr noundef %24, i32 noundef %mask, i32 noundef %compare, i32 noundef %swap, i64 noundef %offset) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %call12, %if.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_master_mmap(ptr nocapture noundef readonly %resource, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %bus_resource = getelementptr inbounds %struct.vme_master_resource, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %bus_resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_resource, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %7, 12
  %add = add i32 %shl, %5
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma, align 4
  %sub = sub i32 %9, %11
  %add3 = add i32 %sub, %add
  %end = getelementptr inbounds %struct.vme_master_resource, ptr %3, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  %add5 = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %add5)
  %cmp6 = icmp ugt i32 %add3, %add5
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %14 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %15, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %call18 = tail call i32 @vm_iomap_memory(ptr noundef %vma, i32 noundef %add, i32 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -14, %do.end10 ], [ %call18, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_master_free(ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %locked = getelementptr inbounds %struct.vme_master_resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %do.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %locked, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @kfree(ptr noundef %resource) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vme_dma_request(ptr nocapture noundef readonly %vdev, i32 noundef %route) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #9
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dma_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %dma_pos.064 = load ptr, ptr %dma_resources, align 4
  %cmp.i.not65 = icmp eq ptr %dma_pos.064, %dma_resources
  br i1 %cmp.i.not65, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %dma_pos.066 = phi ptr [ %dma_pos.0, %for.inc.for.body_crit_edge ], [ %dma_pos.064, %if.end.for.body_crit_edge ]
  %tobool11.not = icmp eq ptr %dma_pos.066, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #9
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %mtx = getelementptr inbounds %struct.vme_dma_resource, ptr %dma_pos.066, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %route_attr = getelementptr inbounds %struct.vme_dma_resource, ptr %dma_pos.066, i32 0, i32 7
  %3 = ptrtoint ptr %route_attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %route_attr, align 4
  %and = and i32 %4, %route
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %route)
  %cmp = icmp eq i32 %and, %route
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  %locked = getelementptr inbounds %struct.vme_dma_resource, ptr %dma_pos.066, i32 0, i32 3
  %5 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19 = icmp eq i32 %6, 0
  br i1 %cmp19, label %if.end28, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %do.end15
  %7 = ptrtoint ptr %dma_pos.066 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dma_pos.0 = load ptr, ptr %dma_pos.066, align 4
  %cmp.i.not = icmp eq ptr %dma_pos.0, %dma_resources
  br i1 %cmp.i.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true
  %locked.le = getelementptr inbounds %struct.vme_dma_resource, ptr %dma_pos.066, i32 0, i32 3
  %8 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 8) #10
  %tobool30.not = icmp eq ptr %call7.i, null
  br i1 %tobool30.not, label %err_alloc, label %if.end32

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %call7.i, align 8
  %entry33 = getelementptr inbounds %struct.vme_resource, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dma_pos.066, ptr %entry33, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %12 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end32, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end4
  %retval.0 = phi ptr [ %call7.i, %if.end32 ], [ null, %err_alloc ], [ null, %do.end4 ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_new_dma_list(ptr nocapture noundef readonly %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 112) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entries = getelementptr inbounds %struct.vme_dma_list, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i = getelementptr inbounds %struct.vme_dma_list, ptr %call7.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entries, ptr %prev.i, align 8
  %entry4 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %5 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry4, align 4
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %mtx = getelementptr inbounds %struct.vme_dma_list, ptr %call7.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.102, ptr noundef nonnull @vme_new_dma_list.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end3 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_dma_pattern_attribute(i32 noundef %pattern, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8) #10
  %tobool2.not = icmp eq ptr %call7.i16, null
  br i1 %tobool2.not, label %err_pat, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call7.i, align 8
  %private = getelementptr inbounds %struct.vme_dma_attr, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i16, ptr %private, align 4
  %4 = ptrtoint ptr %call7.i16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pattern, ptr %call7.i16, align 8
  %type7 = getelementptr inbounds %struct.vme_dma_pattern, ptr %call7.i16, i32 0, i32 1
  %5 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type7, align 4
  br label %cleanup

err_pat:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pat, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %err_pat ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_dma_pci_attribute(i32 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #10
  %tobool2.not = icmp eq ptr %call7.i13, null
  br i1 %tobool2.not, label %err_pci, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %call7.i, align 8
  %private = getelementptr inbounds %struct.vme_dma_attr, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i13, ptr %private, align 4
  %4 = ptrtoint ptr %call7.i13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %address, ptr %call7.i13, align 8
  br label %cleanup

err_pci:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pci, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %err_pci ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_dma_vme_attribute(i64 noundef %address, i32 noundef %aspace, i32 noundef %cycle, i32 noundef %dwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 24) #10
  %tobool2.not = icmp eq ptr %call7.i19, null
  br i1 %tobool2.not, label %err_vme, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %call7.i, align 8
  %private = getelementptr inbounds %struct.vme_dma_attr, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i19, ptr %private, align 4
  %4 = ptrtoint ptr %call7.i19 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %address, ptr %call7.i19, align 8
  %aspace6 = getelementptr inbounds %struct.vme_dma_vme, ptr %call7.i19, i32 0, i32 1
  %5 = ptrtoint ptr %aspace6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %aspace, ptr %aspace6, align 8
  %cycle7 = getelementptr inbounds %struct.vme_dma_vme, ptr %call7.i19, i32 0, i32 2
  %6 = ptrtoint ptr %cycle7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cycle, ptr %cycle7, align 4
  %dwidth8 = getelementptr inbounds %struct.vme_dma_vme, ptr %call7.i19, i32 0, i32 3
  %7 = ptrtoint ptr %dwidth8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dwidth, ptr %dwidth8, align 8
  br label %cleanup

err_vme:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_vme, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %err_vme ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_dma_free_attribute(ptr noundef %attributes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.vme_dma_attr, ptr %attributes, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %attributes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_dma_list_add(ptr noundef %list, ptr noundef %src, ptr noundef %dest, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %dma_list_add = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %dma_list_add to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_list_add, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtx = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 3
  %call3 = tail call i32 @mutex_trylock(ptr noundef %mtx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dma_list_add to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_list_add, align 4
  %call13 = tail call i32 %7(ptr noundef %list, ptr noundef %src, ptr noundef %dest, i32 noundef %count) #6
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -22, %do.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_dma_list_exec(ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %dma_list_exec = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %dma_list_exec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_list_exec, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mtx = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %6 = ptrtoint ptr %dma_list_exec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_list_exec, align 4
  %call4 = tail call i32 %7(ptr noundef %list) #6
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_dma_list_free(ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %dma_list_empty = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %dma_list_empty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_list_empty, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtx = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 3
  %call3 = tail call i32 @mutex_trylock(ptr noundef %mtx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %6 = ptrtoint ptr %dma_list_empty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_list_empty, align 4
  %call13 = tail call i32 %7(ptr noundef %list) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #9
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  tail call void @kfree(ptr noundef %list) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end8, %do.end
  %retval.0 = phi i32 [ %call13, %do.end18 ], [ 0, %if.end22 ], [ -16, %do.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_dma_free(ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %mtx = getelementptr inbounds %struct.vme_dma_resource, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @mutex_trylock(ptr noundef %mtx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %pending = getelementptr inbounds %struct.vme_dma_resource, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %5, %pending
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end10.do.end18_crit_edge

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end10
  %running = getelementptr inbounds %struct.vme_dma_resource, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %running, align 4
  %cmp.i31.not = icmp eq ptr %7, %running
  br i1 %cmp.i31.not, label %if.end22, label %land.lhs.true.do.end18_crit_edge

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %land.lhs.true.do.end18_crit_edge, %if.end10.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #9
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %locked = getelementptr inbounds %struct.vme_dma_resource, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %locked, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  tail call void @kfree(ptr noundef %resource) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end22 ], [ -16, %do.end18 ], [ -16, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_bus_error_handler(ptr noundef readonly %bridge, i64 noundef %address, i32 noundef %am) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %am to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %am, label %sw.epilog.i [
    i32 41, label %entry.vme_get_aspace.exit_crit_edge
    i32 45, label %entry.vme_get_aspace.exit_crit_edge39
    i32 56, label %entry.sw.bb1.i_crit_edge
    i32 57, label %entry.sw.bb1.i_crit_edge40
    i32 58, label %entry.sw.bb1.i_crit_edge41
    i32 59, label %entry.sw.bb1.i_crit_edge42
    i32 60, label %entry.sw.bb1.i_crit_edge43
    i32 61, label %entry.sw.bb1.i_crit_edge44
    i32 62, label %entry.sw.bb1.i_crit_edge45
    i32 63, label %entry.sw.bb1.i_crit_edge46
    i32 8, label %entry.sw.bb2.i_crit_edge
    i32 9, label %entry.sw.bb2.i_crit_edge47
    i32 10, label %entry.sw.bb2.i_crit_edge48
    i32 11, label %entry.sw.bb2.i_crit_edge49
    i32 12, label %entry.sw.bb2.i_crit_edge50
    i32 13, label %entry.sw.bb2.i_crit_edge51
    i32 14, label %entry.sw.bb2.i_crit_edge52
    i32 15, label %entry.sw.bb2.i_crit_edge53
    i32 0, label %entry.sw.bb3.i_crit_edge
    i32 1, label %entry.sw.bb3.i_crit_edge54
    i32 3, label %entry.sw.bb3.i_crit_edge55
  ]

entry.sw.bb3.i_crit_edge55:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge54:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb2.i_crit_edge53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge52:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge51:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge48:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge47:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb1.i_crit_edge46:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge45:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge44:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge43:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge42:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge41:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.vme_get_aspace.exit_crit_edge39:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vme_get_aspace.exit

entry.vme_get_aspace.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vme_get_aspace.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge40, %entry.sw.bb1.i_crit_edge41, %entry.sw.bb1.i_crit_edge42, %entry.sw.bb1.i_crit_edge43, %entry.sw.bb1.i_crit_edge44, %entry.sw.bb1.i_crit_edge45, %entry.sw.bb1.i_crit_edge46
  br label %vme_get_aspace.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge47, %entry.sw.bb2.i_crit_edge48, %entry.sw.bb2.i_crit_edge49, %entry.sw.bb2.i_crit_edge50, %entry.sw.bb2.i_crit_edge51, %entry.sw.bb2.i_crit_edge52, %entry.sw.bb2.i_crit_edge53
  br label %vme_get_aspace.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge54, %entry.sw.bb3.i_crit_edge55
  br label %vme_get_aspace.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vme_get_aspace.exit

vme_get_aspace.exit:                              ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.vme_get_aspace.exit_crit_edge, %entry.vme_get_aspace.exit_crit_edge39
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 8, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %entry.vme_get_aspace.exit_crit_edge ], [ 1, %entry.vme_get_aspace.exit_crit_edge39 ]
  %vme_error_handlers = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 6
  %1 = ptrtoint ptr %vme_error_handlers to i32
  call void @__asan_load4_noabort(i32 %1)
  %handler_pos.033 = load ptr, ptr %vme_error_handlers, align 4
  %cmp.i.not34 = icmp eq ptr %handler_pos.033, %vme_error_handlers
  br i1 %cmp.i.not34, label %vme_get_aspace.exit.do.end_crit_edge, label %vme_get_aspace.exit.for.body_crit_edge

vme_get_aspace.exit.for.body_crit_edge:           ; preds = %vme_get_aspace.exit
  br label %for.body

vme_get_aspace.exit.do.end_crit_edge:             ; preds = %vme_get_aspace.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %vme_get_aspace.exit.for.body_crit_edge
  %handler_pos.036 = phi ptr [ %handler_pos.0, %for.inc.for.body_crit_edge ], [ %handler_pos.033, %vme_get_aspace.exit.for.body_crit_edge ]
  %handler_triggered.035 = phi i32 [ %handler_triggered.1, %for.inc.for.body_crit_edge ], [ 0, %vme_get_aspace.exit.for.body_crit_edge ]
  %aspace3 = getelementptr inbounds %struct.vme_error_handler, ptr %handler_pos.036, i32 0, i32 4
  %2 = ptrtoint ptr %aspace3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aspace3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %3)
  %cmp = icmp eq i32 %retval.0.i, %3
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %start = getelementptr inbounds %struct.vme_error_handler, ptr %handler_pos.036, i32 0, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %address)
  %cmp4.not = icmp ugt i64 %5, %address
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.vme_error_handler, ptr %handler_pos.036, i32 0, i32 2
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %address)
  %cmp6 = icmp ugt i64 %7, %address
  br i1 %cmp6, label %if.then, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true5
  %num_errors = getelementptr inbounds %struct.vme_error_handler, ptr %handler_pos.036, i32 0, i32 5
  %8 = ptrtoint ptr %num_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_errors, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %9, label %if.then.if.then11_crit_edge [
    i32 0, label %if.end.thread
    i32 -1, label %if.then.for.inc_crit_edge
  ]

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %first_error = getelementptr inbounds %struct.vme_error_handler, ptr %handler_pos.036, i32 0, i32 3
  %11 = ptrtoint ptr %first_error to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %address, ptr %first_error, align 8
  br label %if.then11

if.then11:                                        ; preds = %if.end.thread, %if.then.if.then11_crit_edge
  %inc = add nuw i32 %9, 1
  %12 = ptrtoint ptr %num_errors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %num_errors, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.then.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handler_triggered.1 = phi i32 [ %handler_triggered.035, %land.lhs.true5.for.inc_crit_edge ], [ %handler_triggered.035, %land.lhs.true.for.inc_crit_edge ], [ %handler_triggered.035, %for.body.for.inc_crit_edge ], [ 1, %if.then11 ], [ 1, %if.then.for.inc_crit_edge ]
  %13 = ptrtoint ptr %handler_pos.036 to i32
  call void @__asan_load4_noabort(i32 %13)
  %handler_pos.0 = load ptr, ptr %handler_pos.036, align 4
  %cmp.i.not = icmp eq ptr %handler_pos.0, %vme_error_handlers
  br i1 %cmp.i.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handler_triggered.1)
  %tobool16.not = icmp eq i32 %handler_triggered.1, 0
  br i1 %tobool16.not, label %for.end.do.end_crit_edge, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %vme_get_aspace.exit.do.end_crit_edge
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 8
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.125, i64 noundef %address) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_register_error_handler(ptr noundef %bridge, i32 noundef %aspace, i64 noundef %address, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %aspace1 = getelementptr inbounds %struct.vme_error_handler, ptr %call7.i, i32 0, i32 4
  %1 = ptrtoint ptr %aspace1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %aspace, ptr %aspace1, align 8
  %start = getelementptr inbounds %struct.vme_error_handler, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %address, ptr %start, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %address
  %end = getelementptr inbounds %struct.vme_error_handler, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %end, align 8
  %num_errors = getelementptr inbounds %struct.vme_error_handler, ptr %call7.i, i32 0, i32 5
  %4 = ptrtoint ptr %num_errors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_errors, align 4
  %first_error = getelementptr inbounds %struct.vme_error_handler, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %first_error to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %first_error, align 8
  %vme_error_handlers = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %7, ptr noundef %vme_error_handlers) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vme_error_handlers, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_unregister_error_handler(ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %handler) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %handler, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %handler, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %handler, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %handler) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_irq_handler(ptr nocapture noundef readonly %bridge, i32 noundef %level, i32 noundef %statid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %level, -1
  %arrayidx1 = getelementptr %struct.vme_bridge, ptr %bridge, i32 0, i32 11, i32 %sub, i32 1, i32 %statid
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv_data7 = getelementptr %struct.vme_bridge, ptr %bridge, i32 0, i32 11, i32 %sub, i32 1, i32 %statid, i32 1
  %2 = ptrtoint ptr %priv_data7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data7, align 4
  tail call void %1(i32 noundef %level, i32 noundef %statid, ptr noundef %3) #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %level, i32 noundef %statid) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_irq_request(ptr nocapture noundef readonly %vdev, i32 noundef %level, i32 noundef %statid, ptr noundef %callback, ptr noundef %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %level, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq_set = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %irq_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_set, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %irq_mtx = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irq_mtx, i32 noundef 0) #6
  %sub = add nsw i32 %level, -1
  %arrayidx19 = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub, i32 1, i32 %statid
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %irq_mtx) #6
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx, align 4
  %priv_data37 = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub, i32 1, i32 %statid, i32 1
  %10 = ptrtoint ptr %priv_data37 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv_data, ptr %priv_data37, align 4
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %callback, ptr %arrayidx19, align 4
  %12 = ptrtoint ptr %irq_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_set, align 4
  tail call void %13(ptr noundef nonnull %1, i32 noundef %level, i32 noundef 1, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %irq_mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then21, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -16, %if.then21 ], [ 0, %if.end28 ], [ -22, %do.end14 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_irq_free(ptr nocapture noundef readonly %vdev, i32 noundef %level, i32 noundef %statid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %level, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq_set = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %irq_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_set, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %irq_mtx = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irq_mtx, i32 noundef 0) #6
  %sub = add nsw i32 %level, -1
  %arrayidx = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp22 = icmp eq i32 %dec, 0
  br i1 %cmp22, label %if.then23, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %irq_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_set, align 4
  tail call void %9(ptr noundef nonnull %1, i32 noundef %level, i32 noundef 0, i32 noundef 1) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17.if.end25_crit_edge
  %arrayidx29 = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub, i32 1, i32 %statid
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx29, align 4
  %priv_data = getelementptr %struct.vme_bridge, ptr %1, i32 0, i32 11, i32 %sub, i32 1, i32 %statid, i32 1
  %11 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %priv_data, align 4
  tail call void @mutex_unlock(ptr noundef %irq_mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end14, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_irq_generate(ptr nocapture noundef readonly %vdev, i32 noundef %level, i32 noundef %statid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %level, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq_generate = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %irq_generate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_generate, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %level, i32 noundef %statid) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call19, %if.end17 ], [ -22, %do.end14 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vme_lm_request(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lm_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lm_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %lm_pos.056 = load ptr, ptr %lm_resources, align 4
  %cmp.i.not57 = icmp eq ptr %lm_pos.056, %lm_resources
  br i1 %cmp.i.not57, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %lm_pos.058 = phi ptr [ %lm_pos.0, %for.inc.for.body_crit_edge ], [ %lm_pos.056, %if.end.for.body_crit_edge ]
  %tobool6.not = icmp eq ptr %lm_pos.058, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #9
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm_pos.058, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %locked = getelementptr inbounds %struct.vme_lm_resource, ptr %lm_pos.058, i32 0, i32 3
  %3 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end22, label %if.end17

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %do.end10
  %5 = ptrtoint ptr %lm_pos.058 to i32
  call void @__asan_load4_noabort(i32 %5)
  %lm_pos.0 = load ptr, ptr %lm_pos.058, align 4
  %cmp.i.not = icmp eq ptr %lm_pos.0, %lm_resources
  br i1 %cmp.i.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %locked.le = getelementptr inbounds %struct.vme_lm_resource, ptr %lm_pos.058, i32 0, i32 3
  %6 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 8) #10
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %err_alloc, label %if.end26

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %call7.i, align 8
  %entry27 = getelementptr inbounds %struct.vme_resource, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lm_pos.058, ptr %entry27, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %10 = ptrtoint ptr %locked.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %locked.le, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end26, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call7.i, %if.end26 ], [ null, %err_alloc ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_lm_count(ptr nocapture noundef readonly %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_lm_set(ptr nocapture noundef readonly %resource, i64 noundef %lm_base, i32 noundef %aspace, i32 noundef %cycle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.not = icmp eq i32 %20, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %lm_set = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 25
  %21 = ptrtoint ptr %lm_set to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lm_set, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, i64 noundef %lm_base, i32 noundef %aspace, i32 noundef %cycle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_lm_get(ptr nocapture noundef readonly %resource, ptr noundef %lm_base, ptr noundef %aspace, ptr noundef %cycle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.not = icmp eq i32 %20, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %lm_get = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 26
  %21 = ptrtoint ptr %lm_get to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lm_get, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, ptr noundef %lm_base, ptr noundef %aspace, ptr noundef %cycle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_lm_attach(ptr nocapture noundef readonly %resource, i32 noundef %monitor, ptr noundef %callback, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.not = icmp eq i32 %20, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %lm_attach = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 27
  %21 = ptrtoint ptr %lm_attach to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lm_attach, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, i32 noundef %monitor, ptr noundef %callback, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_lm_detach(ptr nocapture noundef readonly %resource, i32 noundef %monitor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %1, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  br label %find_bridge.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry4.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry4.i, align 4
  %parent7.i = getelementptr inbounds %struct.vme_slave_resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent7.i, align 4
  br label %find_bridge.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry10.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %11 = ptrtoint ptr %entry10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry10.i, align 4
  %parent13.i = getelementptr inbounds %struct.vme_dma_resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13.i, align 4
  br label %find_bridge.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry16.i = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %15 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry16.i, align 4
  %parent19.i = getelementptr inbounds %struct.vme_lm_resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent19.i, align 4
  br label %find_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %find_bridge.exit

find_bridge.exit:                                 ; preds = %do.end.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %18, %sw.bb14.i ], [ %14, %sw.bb8.i ], [ %10, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.not = icmp eq i32 %20, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %find_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %find_bridge.exit
  %lm_detach = getelementptr inbounds %struct.vme_bridge, ptr %retval.0.i, i32 0, i32 28
  %21 = ptrtoint ptr %lm_detach to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lm_detach, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %entry2 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %23 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry2, align 4
  %call12 = tail call i32 %22(ptr noundef %24, i32 noundef %monitor) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end10 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_lm_free(ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %entry1 = getelementptr inbounds %struct.vme_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %locked = getelementptr inbounds %struct.vme_lm_resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %locked, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  tail call void @kfree(ptr noundef %resource) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_slot_num(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %slot_get = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %slot_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot_get, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 %3(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ -22, %do.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_bus_num(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vme_init_bridge(ptr noundef returned %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vme_error_handlers = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %vme_error_handlers to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %vme_error_handlers, ptr %vme_error_handlers, align 4
  %prev.i = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vme_error_handlers, ptr %prev.i, align 4
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %master_resources to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %master_resources, ptr %master_resources, align 4
  %prev.i7 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %master_resources, ptr %prev.i7, align 4
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 3
  %4 = ptrtoint ptr %slave_resources to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %slave_resources, ptr %slave_resources, align 4
  %prev.i8 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %slave_resources, ptr %prev.i8, align 4
  %dma_resources = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 4
  %6 = ptrtoint ptr %dma_resources to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %dma_resources, ptr %dma_resources, align 4
  %prev.i9 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma_resources, ptr %prev.i9, align 4
  %lm_resources = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 5
  %8 = ptrtoint ptr %lm_resources to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lm_resources, ptr %lm_resources, align 4
  %prev.i10 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lm_resources, ptr %prev.i10, align 4
  %irq_mtx = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %irq_mtx, ptr noundef nonnull @.str.181, ptr noundef nonnull @vme_init_bridge.__key) #6
  ret ptr %bridge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_register_bridge(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vme_buses_lock, i32 noundef 0) #6
  %0 = load i32, ptr @vme_bus_numbers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.010
  %and = and i32 %0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %or = or i32 %0, %shl
  store i32 %or, ptr @vme_bus_numbers, align 4
  %num = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 1
  %1 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.010, ptr %num, align 4
  %devices = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 7
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %devices, ptr %prev.i, align 4
  %bus_list = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 10
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vme_bus_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bus_list, ptr noundef %4, ptr noundef nonnull @vme_bus_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %bus_list, ptr getelementptr inbounds (%struct.list_head, ptr @vme_bus_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %bus_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vme_bus_list, ptr %bus_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %bus_list, ptr %4, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i, %if.then.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.for.end_crit_edge ], [ 0, %if.end.i.i ], [ -1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @vme_buses_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_unregister_bridge(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vme_buses_lock, i32 noundef 0) #6
  %num = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  %shl = shl nuw i32 1, %1
  %neg = xor i32 %shl, -1
  %2 = load i32, ptr @vme_bus_numbers, align 4
  %and = and i32 %2, %neg
  store i32 %and, ptr @vme_bus_numbers, align 4
  %devices = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 7
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devices, align 4
  %cmp.not35 = icmp eq ptr %4, %devices
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit28.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn, %list_del.exit28.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in36, align 8
  %drv_list = getelementptr i8, ptr %.pn.in36, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr i8, ptr %.pn.in36, i32 -4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %drv_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %drv_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %drv_list, align 4
  %prev.i = getelementptr i8, ptr %.pn.in36, i32 -4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #6
  br i1 %call.i.i23, label %if.end.i.i26, label %list_del.exit.list_del.exit28_crit_edge

list_del.exit.list_del.exit28_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit28

if.end.i.i26:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i24 = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i24, align 4
  %16 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i25, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit28

list_del.exit28:                                  ; preds = %if.end.i.i26, %list_del.exit.list_del.exit28_crit_edge
  %20 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36, align 4
  %prev.i27 = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i27, align 4
  %dev = getelementptr i8, ptr %.pn.in36, i32 -936
  tail call void @device_unregister(ptr noundef %dev) #6
  %cmp.not = icmp eq ptr %.pn, %devices
  br i1 %cmp.not, label %list_del.exit28.for.end_crit_edge, label %list_del.exit28.for.body_crit_edge

list_del.exit28.for.body_crit_edge:               ; preds = %list_del.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit28.for.end_crit_edge:                ; preds = %list_del.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit28.for.end_crit_edge, %entry.for.end_crit_edge
  %bus_list = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 10
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bus_list) #6
  br i1 %call.i.i29, label %if.end.i.i32, label %for.end.list_del.exit34_crit_edge

for.end.list_del.exit34_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit34

if.end.i.i32:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i30 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i30, align 4
  %24 = ptrtoint ptr %bus_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_list, align 4
  %prev1.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i31, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit34

list_del.exit34:                                  ; preds = %if.end.i.i32, %for.end.list_del.exit34_crit_edge
  %28 = ptrtoint ptr %bus_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %bus_list, align 4
  %prev.i33 = getelementptr inbounds %struct.vme_bridge, ptr %bridge, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i33, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @vme_buses_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vme_register_driver(ptr noundef %drv, i32 noundef %ndevs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %driver = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver, align 4
  %bus = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vme_bus_type, ptr %bus, align 4
  %devices = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 5
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %devices, ptr %prev.i, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @vme_buses_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndevs)
  %cmp94.not.i.i = icmp eq i32 %ndevs, 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %__vme_register_driver_bus.exit.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @vme_bus_list, %if.end ], [ %.pn.i, %__vme_register_driver_bus.exit.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @vme_bus_list
  br i1 %cmp.not.i, label %__vme_register_driver.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bridge.0.i = getelementptr i8, ptr %.pn.i, i32 -76
  br i1 %cmp94.not.i.i, label %for.body.i.__vme_register_driver_bus.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.__vme_register_driver_bus.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vme_register_driver_bus.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %parent.i.i = getelementptr i8, ptr %.pn.i, i32 -8
  %num7.i.i = getelementptr i8, ptr %.pn.i, i32 -60
  %devices19.i.i = getelementptr i8, ptr %.pn.i, i32 -16
  %prev.i79.i.i = getelementptr i8, ptr %.pn.i, i32 -12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.095.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 952) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.err_devalloc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.err_devalloc.i.i_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_devalloc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.095.i.i, ptr %call7.i.i.i.i, align 8
  %bridge1.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %bridge1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bridge.0.i, ptr %bridge1.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 2
  %platform_data.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %drv, ptr %platform_data.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 2, i32 35
  %11 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vme_dev_release, ptr %release.i.i, align 4
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i, align 4
  %parent4.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %parent4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent4.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vme_bus_type, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv, align 4
  %18 = ptrtoint ptr %num7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num7.i.i, align 4
  %call9.i.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i.i, ptr noundef nonnull @.str.186, ptr noundef %17, i32 noundef %19, i32 noundef %i.095.i.i) #6
  %call11.i.i = tail call i32 @device_register(ptr noundef %dev.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %err_reg.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %20 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data.i.i, align 8
  %tobool17.not.i.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i.i, label %if.else.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  %drv_list.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_list.i.i, ptr noundef %23, ptr noundef %devices) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then18.i.i.list_add_tail.exit.i.i_crit_edge

if.then18.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %drv_list.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %drv_list.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %devices, ptr %drv_list.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %drv_list.i.i, ptr %23, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then18.i.i.list_add_tail.exit.i.i_crit_edge
  %bridge_list.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %prev.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i79.i.i, align 4
  %call.i.i80.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bridge_list.i.i, ptr noundef %29, ptr noundef %devices19.i.i) #6
  br i1 %call.i.i80.i.i, label %if.end.i.i82.i.i, label %list_add_tail.exit.i.i.for.inc.i.i_crit_edge

list_add_tail.exit.i.i.for.inc.i.i_crit_edge:     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i82.i.i:                                 ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i79.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bridge_list.i.i, ptr %prev.i79.i.i, align 4
  %31 = ptrtoint ptr %bridge_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %devices19.i.i, ptr %bridge_list.i.i, align 8
  %prev3.i.i81.i.i = getelementptr inbounds %struct.vme_dev, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i81.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %bridge_list.i.i, ptr %29, align 4
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_unregister(ptr noundef %dev.i.i) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i82.i.i, %list_add_tail.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.095.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %ndevs
  br i1 %exitcond.not.i.i, label %for.inc.i.i.__vme_register_driver_bus.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.__vme_register_driver_bus.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vme_register_driver_bus.exit.i

err_reg.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %dev.i.i) #6
  br label %err_devalloc.i.i

err_devalloc.i.i:                                 ; preds = %err_reg.i.i, %for.body.i.i.err_devalloc.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call11.i.i, %err_reg.i.i ], [ -12, %for.body.i.i.err_devalloc.i.i_crit_edge ]
  %34 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devices, align 4
  %cmp33.not96.i.i = icmp eq ptr %35, %devices
  br i1 %cmp33.not96.i.i, label %err_devalloc.i.i.if.then6_crit_edge, label %err_devalloc.i.i.for.body34.i.i_crit_edge

err_devalloc.i.i.for.body34.i.i_crit_edge:        ; preds = %err_devalloc.i.i
  br label %for.body34.i.i

err_devalloc.i.i.if.then6_crit_edge:              ; preds = %err_devalloc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.body34.i.i:                                   ; preds = %list_del.exit92.i.i.for.body34.i.i_crit_edge, %err_devalloc.i.i.for.body34.i.i_crit_edge
  %.pn.in97.i.i = phi ptr [ %.pn.i.i, %list_del.exit92.i.i.for.body34.i.i_crit_edge ], [ %35, %err_devalloc.i.i.for.body34.i.i_crit_edge ]
  %36 = ptrtoint ptr %.pn.in97.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i = load ptr, ptr %.pn.in97.i.i, align 8
  %call.i.i84.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in97.i.i) #6
  br i1 %call.i.i84.i.i, label %if.end.i.i85.i.i, label %for.body34.i.i.list_del.exit.i.i_crit_edge

for.body34.i.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i

if.end.i.i85.i.i:                                 ; preds = %for.body34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in97.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %.pn.in97.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.in97.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i85.i.i, %for.body34.i.i.list_del.exit.i.i_crit_edge
  %43 = ptrtoint ptr %.pn.in97.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in97.i.i, align 4
  %prev.i86.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in97.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i86.i.i, align 4
  %bridge_list36.i.i = getelementptr i8, ptr %.pn.in97.i.i, i32 8
  %call.i.i87.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bridge_list36.i.i) #6
  br i1 %call.i.i87.i.i, label %if.end.i.i90.i.i, label %list_del.exit.i.i.list_del.exit92.i.i_crit_edge

list_del.exit.i.i.list_del.exit92.i.i_crit_edge:  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit92.i.i

if.end.i.i90.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i88.i.i = getelementptr i8, ptr %.pn.in97.i.i, i32 12
  %45 = ptrtoint ptr %prev.i.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i88.i.i, align 4
  %47 = ptrtoint ptr %bridge_list36.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bridge_list36.i.i, align 4
  %prev1.i.i.i89.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i89.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit92.i.i

list_del.exit92.i.i:                              ; preds = %if.end.i.i90.i.i, %list_del.exit.i.i.list_del.exit92.i.i_crit_edge
  %51 = ptrtoint ptr %bridge_list36.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %bridge_list36.i.i, align 4
  %prev.i91.i.i = getelementptr i8, ptr %.pn.in97.i.i, i32 12
  %52 = ptrtoint ptr %prev.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i91.i.i, align 4
  %dev37.i.i = getelementptr i8, ptr %.pn.in97.i.i, i32 -928
  tail call void @device_unregister(ptr noundef %dev37.i.i) #6
  %cmp33.not.i.i = icmp eq ptr %.pn.i.i, %devices
  br i1 %cmp33.not.i.i, label %list_del.exit92.i.i.__vme_register_driver_bus.exit.i_crit_edge, label %list_del.exit92.i.i.for.body34.i.i_crit_edge

list_del.exit92.i.i.for.body34.i.i_crit_edge:     ; preds = %list_del.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.i.i

list_del.exit92.i.i.__vme_register_driver_bus.exit.i_crit_edge: ; preds = %list_del.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__vme_register_driver_bus.exit.i

__vme_register_driver_bus.exit.i:                 ; preds = %list_del.exit92.i.i.__vme_register_driver_bus.exit.i_crit_edge, %for.inc.i.i.__vme_register_driver_bus.exit.i_crit_edge, %for.body.i.__vme_register_driver_bus.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.__vme_register_driver_bus.exit.i_crit_edge ], [ %err.0.i.i, %list_del.exit92.i.i.__vme_register_driver_bus.exit.i_crit_edge ], [ 0, %for.inc.i.i.__vme_register_driver_bus.exit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %__vme_register_driver_bus.exit.i.for.cond.i_crit_edge, label %__vme_register_driver_bus.exit.i.if.then6_crit_edge

__vme_register_driver_bus.exit.i.if.then6_crit_edge: ; preds = %__vme_register_driver_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

__vme_register_driver_bus.exit.i.for.cond.i_crit_edge: ; preds = %__vme_register_driver_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__vme_register_driver.exit:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @vme_buses_lock) #6
  br label %cleanup

if.then6:                                         ; preds = %__vme_register_driver_bus.exit.i.if.then6_crit_edge, %err_devalloc.i.i.if.then6_crit_edge
  %err.1.i.ph = phi i32 [ %err.0.i.i, %err_devalloc.i.i.if.then6_crit_edge ], [ %retval.0.i.i, %__vme_register_driver_bus.exit.i.if.then6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @vme_buses_lock) #6
  tail call void @driver_unregister(ptr noundef %driver) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %__vme_register_driver.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.1.i.ph, %if.then6 ], [ 0, %__vme_register_driver.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vme_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vme_buses_lock, i32 noundef 0) #6
  %devices = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 5
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devices, align 4
  %cmp.not28 = icmp eq ptr %1, %devices
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit27.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn, %list_del.exit27.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in29, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %bridge_list = getelementptr i8, ptr %.pn.in29, i32 8
  %call.i.i22 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bridge_list) #6
  br i1 %call.i.i22, label %if.end.i.i25, label %list_del.exit.list_del.exit27_crit_edge

list_del.exit.list_del.exit27_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit27

if.end.i.i25:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i23 = getelementptr i8, ptr %.pn.in29, i32 12
  %11 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i23, align 4
  %13 = ptrtoint ptr %bridge_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bridge_list, align 4
  %prev1.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i24, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit27

list_del.exit27:                                  ; preds = %if.end.i.i25, %list_del.exit.list_del.exit27_crit_edge
  %17 = ptrtoint ptr %bridge_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %bridge_list, align 4
  %prev.i26 = getelementptr i8, ptr %.pn.in29, i32 12
  %18 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i26, align 4
  %dev8 = getelementptr i8, ptr %.pn.in29, i32 -928
  tail call void @device_unregister(ptr noundef %dev8) #6
  %cmp.not = icmp eq ptr %.pn, %devices
  br i1 %cmp.not, label %list_del.exit27.for.end_crit_edge, label %list_del.exit27.for.body_crit_edge

list_del.exit27.for.body_crit_edge:               ; preds = %list_del.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit27.for.end_crit_edge:                ; preds = %list_del.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit27.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vme_buses_lock) #6
  %driver = getelementptr inbounds %struct.vme_driver, ptr %drv, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %driver) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_bus_match(ptr noundef %dev, ptr noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %drv, i32 -16
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, %add.ptr
  br i1 %cmp, label %if.then, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.then:                                          ; preds = %entry
  %match = getelementptr i8, ptr %drv, i32 -12
  %2 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup7_crit_edge

land.lhs.true.cleanup7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %platform_data, align 8
  br label %cleanup7

cleanup7:                                         ; preds = %if.end, %land.lhs.true.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup7_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_bus_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %probe = getelementptr inbounds %struct.vme_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vme_bus_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %remove = getelementptr inbounds %struct.vme_driver, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @vme_bus_type) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vme_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  tail call void @kfree(ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !163, !164, !166, !168, !169, !170, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !200, !201, !202, !203, !205, !206, !208, !209, !210, !212, !214, !215, !216, !217, !219, !220, !222, !224, !226, !228, !230, !232, !233, !234, !235, !237, !238, !239, !241, !243, !244, !245, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !279, !280, !281, !282, !283, !284, !286, !288, !290, !292, !293, !294, !295, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !317, !318, !319, !321, !322, !324, !325, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !344, !345, !347, !348, !349, !351, !353, !354, !355, !356, !358, !360, !361, !362, !364, !365, !366, !368, !370, !371, !372, !374, !375, !376, !378, !380, !381, !382, !384, !385, !386, !388, !390, !391, !392, !394, !395, !396, !398, !400, !401, !402, !404, !406, !407, !408, !410, !411, !412, !414, !416, !417, !418, !420, !422, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !446, !447, !449, !450, !451, !453}
!llvm.module.flags = !{!455, !456, !457, !458, !459, !460, !461, !462}
!llvm.ident = !{!463}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vme/vme.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vme_alloc_consistent._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vme_alloc_consistent._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/vme/vme.c", i32 93, i32 3}
!8 = !{ptr @vme_alloc_consistent._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vme_alloc_consistent._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/vme/vme.c", i32 98, i32 3}
!12 = !{ptr @vme_alloc_consistent._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @vme_alloc_consistent._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/vme/vme.c", i32 103, i32 3}
!16 = !{ptr @vme_alloc_consistent._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vme_alloc_consistent._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_vme_alloc_consistent, !19, !"__ksymtab_vme_alloc_consistent", i1 false, i1 false}
!19 = !{!"../drivers/vme/vme.c", i32 110, i32 1}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/vme/vme.c", i32 127, i32 3}
!22 = !{ptr @vme_free_consistent._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vme_free_consistent._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @vme_free_consistent._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/vme/vme.c", i32 133, i32 3}
!26 = !{ptr @vme_free_consistent._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @vme_free_consistent._entry.15, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/vme/vme.c", i32 138, i32 3}
!29 = !{ptr @vme_free_consistent._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/vme/vme.c", i32 143, i32 3}
!32 = !{ptr @vme_free_consistent._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vme_free_consistent._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_vme_free_consistent, !35, !"__ksymtab_vme_free_consistent", i1 false, i1 false}
!35 = !{!"../drivers/vme/vme.c", i32 150, i32 1}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/vme/vme.c", i32 187, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vme_get_size._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vme_get_size._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_vme_get_size, !42, !"__ksymtab_vme_get_size", i1 false, i1 false}
!42 = !{!"../drivers/vme/vme.c", i32 191, i32 1}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/vme/vme.c", i32 228, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vme_check_window._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @vme_check_window._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_vme_check_window, !49, !"__ksymtab_vme_check_window", i1 false, i1 false}
!49 = !{!"../drivers/vme/vme.c", i32 235, i32 1}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/vme/vme.c", i32 292, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vme_slave_request._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @vme_slave_request._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/vme/vme.c", i32 302, i32 4}
!57 = !{ptr @vme_slave_request._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vme_slave_request._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__ksymtab_vme_slave_request, !60, !"__ksymtab_vme_slave_request", i1 false, i1 false}
!60 = !{!"../drivers/vme/vme.c", i32 342, i32 1}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/vme/vme.c", i32 370, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vme_slave_set._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @vme_slave_set._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/vme/vme.c", i32 377, i32 3}
!68 = !{ptr @vme_slave_set._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vme_slave_set._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vme/vme.c", i32 383, i32 3}
!72 = !{ptr @vme_slave_set._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vme_slave_set._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__ksymtab_vme_slave_set, !75, !"__ksymtab_vme_slave_set", i1 false, i1 false}
!75 = !{!"../drivers/vme/vme.c", i32 394, i32 1}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/vme/vme.c", i32 419, i32 3}
!78 = !{ptr @vme_slave_get._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @vme_slave_get._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/vme/vme.c", i32 426, i32 3}
!82 = !{ptr @vme_slave_get._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vme_slave_get._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__ksymtab_vme_slave_get, !85, !"__ksymtab_vme_slave_get", i1 false, i1 false}
!85 = !{!"../drivers/vme/vme.c", i32 433, i32 1}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/vme/vme.c", i32 446, i32 3}
!88 = !{ptr @vme_slave_free._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vme_slave_free._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/vme/vme.c", i32 453, i32 3}
!92 = !{ptr @vme_slave_free._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vme_slave_free._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/vme/vme.c", i32 460, i32 3}
!96 = !{ptr @vme_slave_free._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vme_slave_free._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @__ksymtab_vme_slave_free, !99, !"__ksymtab_vme_slave_free", i1 false, i1 false}
!99 = !{!"../drivers/vme/vme.c", i32 468, i32 1}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/vme/vme.c", i32 493, i32 3}
!102 = !{ptr @vme_master_request._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vme_master_request._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/vme/vme.c", i32 503, i32 4}
!106 = !{ptr @vme_master_request._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @vme_master_request._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/vme/vme.c", i32 524, i32 3}
!110 = !{ptr @vme_master_request._entry.52, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vme_master_request._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @__ksymtab_vme_master_request, !113, !"__ksymtab_vme_master_request", i1 false, i1 false}
!113 = !{!"../drivers/vme/vme.c", i32 546, i32 1}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/vme/vme.c", i32 574, i32 3}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @vme_master_set._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @vme_master_set._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/vme/vme.c", i32 581, i32 3}
!121 = !{ptr @vme_master_set._entry.57, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @vme_master_set._entry_ptr.59, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/vme/vme.c", i32 588, i32 3}
!125 = !{ptr @vme_master_set._entry.60, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vme_master_set._entry_ptr.62, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @__ksymtab_vme_master_set, !128, !"__ksymtab_vme_master_set", i1 false, i1 false}
!128 = !{!"../drivers/vme/vme.c", i32 599, i32 1}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/vme/vme.c", i32 624, i32 3}
!131 = !{ptr @vme_master_get._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @vme_master_get._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/vme/vme.c", i32 631, i32 3}
!135 = !{ptr @vme_master_get._entry.64, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @vme_master_get._entry_ptr.66, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @__ksymtab_vme_master_get, !138, !"__ksymtab_vme_master_get", i1 false, i1 false}
!138 = !{!"../drivers/vme/vme.c", i32 638, i32 1}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/vme/vme.c", i32 663, i32 3}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @vme_master_read._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @vme_master_read._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @vme_master_read._entry.69, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/vme/vme.c", i32 668, i32 3}
!146 = !{ptr @vme_master_read._entry_ptr.70, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/vme/vme.c", i32 677, i32 3}
!149 = !{ptr @vme_master_read._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @vme_master_read._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @__ksymtab_vme_master_read, !152, !"__ksymtab_vme_master_read", i1 false, i1 false}
!152 = !{!"../drivers/vme/vme.c", i32 687, i32 1}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/vme/vme.c", i32 712, i32 3}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vme_master_write._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @vme_master_write._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @vme_master_write._entry.76, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/vme/vme.c", i32 717, i32 3}
!160 = !{ptr @vme_master_write._entry_ptr.77, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @vme_master_write._entry.78, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/vme/vme.c", i32 726, i32 3}
!163 = !{ptr @vme_master_write._entry_ptr.79, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @__ksymtab_vme_master_write, !165, !"__ksymtab_vme_master_write", i1 false, i1 false}
!165 = !{!"../drivers/vme/vme.c", i32 735, i32 1}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/vme/vme.c", i32 763, i32 3}
!168 = !{ptr @vme_master_rmw._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @vme_master_rmw._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @vme_master_rmw._entry.81, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/vme/vme.c", i32 768, i32 3}
!172 = !{ptr @vme_master_rmw._entry_ptr.82, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @__ksymtab_vme_master_rmw, !174, !"__ksymtab_vme_master_rmw", i1 false, i1 false}
!174 = !{!"../drivers/vme/vme.c", i32 776, i32 1}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/vme/vme.c", i32 796, i32 3}
!177 = !{ptr @vme_master_mmap._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @vme_master_mmap._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/vme/vme.c", i32 805, i32 3}
!181 = !{ptr @vme_master_mmap._entry.84, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @vme_master_mmap._entry_ptr.86, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @__ksymtab_vme_master_mmap, !184, !"__ksymtab_vme_master_mmap", i1 false, i1 false}
!184 = !{!"../drivers/vme/vme.c", i32 813, i32 1}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/vme/vme.c", i32 826, i32 3}
!187 = !{ptr @vme_master_free._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @vme_master_free._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/vme/vme.c", i32 833, i32 3}
!191 = !{ptr @vme_master_free._entry.88, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @vme_master_free._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @vme_master_free._entry.91, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/vme/vme.c", i32 840, i32 3}
!195 = !{ptr @vme_master_free._entry_ptr.92, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @__ksymtab_vme_master_free, !197, !"__ksymtab_vme_master_free", i1 false, i1 false}
!197 = !{!"../drivers/vme/vme.c", i32 848, i32 1}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/vme/vme.c", i32 869, i32 2}
!200 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @vme_dma_request._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @vme_dma_request._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @vme_dma_request._entry.95, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/vme/vme.c", i32 873, i32 3}
!205 = !{ptr @vme_dma_request._entry_ptr.96, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/vme/vme.c", i32 882, i32 4}
!208 = !{ptr @vme_dma_request._entry.97, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @vme_dma_request._entry_ptr.99, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @__ksymtab_vme_dma_request, !211, !"__ksymtab_vme_dma_request", i1 false, i1 false}
!211 = !{!"../drivers/vme/vme.c", i32 921, i32 1}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/vme/vme.c", i32 938, i32 3}
!214 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @vme_new_dma_list._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @vme_new_dma_list._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @vme_new_dma_list.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/vme/vme.c", i32 950, i32 2}
!219 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__ksymtab_vme_new_dma_list, !221, !"__ksymtab_vme_new_dma_list", i1 false, i1 false}
!221 = !{!"../drivers/vme/vme.c", i32 954, i32 1}
!222 = !{ptr @__ksymtab_vme_dma_pattern_attribute, !223, !"__ksymtab_vme_dma_pattern_attribute", i1 false, i1 false}
!223 = !{!"../drivers/vme/vme.c", i32 993, i32 1}
!224 = !{ptr @__ksymtab_vme_dma_pci_attribute, !225, !"__ksymtab_vme_dma_pci_attribute", i1 false, i1 false}
!225 = !{!"../drivers/vme/vme.c", i32 1032, i32 1}
!226 = !{ptr @__ksymtab_vme_dma_vme_attribute, !227, !"__ksymtab_vme_dma_vme_attribute", i1 false, i1 false}
!227 = !{!"../drivers/vme/vme.c", i32 1076, i32 1}
!228 = !{ptr @__ksymtab_vme_dma_free_attribute, !229, !"__ksymtab_vme_dma_free_attribute", i1 false, i1 false}
!229 = !{!"../drivers/vme/vme.c", i32 1090, i32 1}
!230 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/vme/vme.c", i32 1116, i32 3}
!232 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @vme_dma_list_add._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @vme_dma_list_add._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/vme/vme.c", i32 1121, i32 3}
!237 = !{ptr @vme_dma_list_add._entry.105, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @vme_dma_list_add._entry_ptr.107, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @__ksymtab_vme_dma_list_add, !240, !"__ksymtab_vme_dma_list_add", i1 false, i1 false}
!240 = !{!"../drivers/vme/vme.c", i32 1131, i32 1}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/vme/vme.c", i32 1149, i32 3}
!243 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vme_dma_list_exec._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vme_dma_list_exec._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @__ksymtab_vme_dma_list_exec, !247, !"__ksymtab_vme_dma_list_exec", i1 false, i1 false}
!247 = !{!"../drivers/vme/vme.c", i32 1161, i32 1}
!248 = !{ptr @.str.110, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/vme/vme.c", i32 1178, i32 3}
!250 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @vme_dma_list_free._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @vme_dma_list_free._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/vme/vme.c", i32 1183, i32 3}
!255 = !{ptr @vme_dma_list_free._entry.112, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @vme_dma_list_free._entry_ptr.114, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/vme/vme.c", i32 1193, i32 3}
!259 = !{ptr @vme_dma_list_free._entry.115, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @vme_dma_list_free._entry_ptr.117, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @__ksymtab_vme_dma_list_free, !262, !"__ksymtab_vme_dma_list_free", i1 false, i1 false}
!262 = !{!"../drivers/vme/vme.c", i32 1202, i32 1}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/vme/vme.c", i32 1218, i32 3}
!265 = !{ptr @vme_dma_free._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @vme_dma_free._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/vme/vme.c", i32 1225, i32 3}
!269 = !{ptr @vme_dma_free._entry.119, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @vme_dma_free._entry_ptr.121, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/vme/vme.c", i32 1230, i32 3}
!273 = !{ptr @vme_dma_free._entry.122, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @vme_dma_free._entry_ptr.124, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @__ksymtab_vme_dma_free, !276, !"__ksymtab_vme_dma_free", i1 false, i1 false}
!276 = !{!"../drivers/vme/vme.c", i32 1243, i32 1}
!277 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/vme/vme.c", i32 1268, i32 3}
!279 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.127, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vme_bus_error_handler._entry, !278, !"_entry", i1 false, i1 false}
!283 = !{ptr @vme_bus_error_handler._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @__ksymtab_vme_bus_error_handler, !285, !"__ksymtab_vme_bus_error_handler", i1 false, i1 false}
!285 = !{!"../drivers/vme/vme.c", i32 1272, i32 1}
!286 = !{ptr @__ksymtab_vme_register_error_handler, !287, !"__ksymtab_vme_register_error_handler", i1 false, i1 false}
!287 = !{!"../drivers/vme/vme.c", i32 1293, i32 1}
!288 = !{ptr @__ksymtab_vme_unregister_error_handler, !289, !"__ksymtab_vme_unregister_error_handler", i1 false, i1 false}
!289 = !{!"../drivers/vme/vme.c", i32 1300, i32 1}
!290 = !{ptr @.str.129, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/vme/vme.c", i32 1312, i32 3}
!292 = !{ptr @.str.130, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @vme_irq_handler._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @vme_irq_handler._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @__ksymtab_vme_irq_handler, !296, !"__ksymtab_vme_irq_handler", i1 false, i1 false}
!296 = !{!"../drivers/vme/vme.c", i32 1315, i32 1}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/vme/vme.c", i32 1341, i32 3}
!299 = !{ptr @vme_irq_request._entry, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @vme_irq_request._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/vme/vme.c", i32 1346, i32 3}
!303 = !{ptr @vme_irq_request._entry.132, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @vme_irq_request._entry_ptr.134, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.136, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/vme/vme.c", i32 1351, i32 3}
!307 = !{ptr @vme_irq_request._entry.135, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @vme_irq_request._entry_ptr.137, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/vme/vme.c", i32 1359, i32 3}
!311 = !{ptr @vme_irq_request._entry.138, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @vme_irq_request._entry_ptr.140, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @__ksymtab_vme_irq_request, !314, !"__ksymtab_vme_irq_request", i1 false, i1 false}
!314 = !{!"../drivers/vme/vme.c", i32 1374, i32 1}
!315 = !{ptr @.str.141, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/vme/vme.c", i32 1390, i32 3}
!317 = !{ptr @vme_irq_free._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @vme_irq_free._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @vme_irq_free._entry.142, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/vme/vme.c", i32 1395, i32 3}
!321 = !{ptr @vme_irq_free._entry_ptr.143, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @vme_irq_free._entry.144, !323, !"_entry", i1 false, i1 false}
!323 = !{!"../drivers/vme/vme.c", i32 1400, i32 3}
!324 = !{ptr @vme_irq_free._entry_ptr.145, !323, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @__ksymtab_vme_irq_free, !326, !"__ksymtab_vme_irq_free", i1 false, i1 false}
!326 = !{!"../drivers/vme/vme.c", i32 1417, i32 1}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/vme/vme.c", i32 1437, i32 3}
!329 = !{ptr @vme_irq_generate._entry, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @vme_irq_generate._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/vme/vme.c", i32 1442, i32 3}
!333 = !{ptr @vme_irq_generate._entry.147, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @vme_irq_generate._entry_ptr.149, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.151, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/vme/vme.c", i32 1447, i32 3}
!337 = !{ptr @vme_irq_generate._entry.150, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @vme_irq_generate._entry_ptr.152, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @__ksymtab_vme_irq_generate, !340, !"__ksymtab_vme_irq_generate", i1 false, i1 false}
!340 = !{!"../drivers/vme/vme.c", i32 1453, i32 1}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/vme/vme.c", i32 1475, i32 3}
!343 = !{ptr @vme_lm_request._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @vme_lm_request._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/vme/vme.c", i32 1484, i32 4}
!347 = !{ptr @vme_lm_request._entry.154, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @vme_lm_request._entry_ptr.156, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @__ksymtab_vme_lm_request, !350, !"__ksymtab_vme_lm_request", i1 false, i1 false}
!350 = !{!"../drivers/vme/vme.c", i32 1521, i32 1}
!351 = !{ptr @.str.157, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/vme/vme.c", i32 1539, i32 3}
!353 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @vme_lm_count._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @vme_lm_count._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @__ksymtab_vme_lm_count, !357, !"__ksymtab_vme_lm_count", i1 false, i1 false}
!357 = !{!"../drivers/vme/vme.c", i32 1547, i32 1}
!358 = !{ptr @.str.159, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/vme/vme.c", i32 1570, i32 3}
!360 = !{ptr @vme_lm_set._entry, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @vme_lm_set._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.161, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/vme/vme.c", i32 1577, i32 3}
!364 = !{ptr @vme_lm_set._entry.160, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @vme_lm_set._entry_ptr.162, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @__ksymtab_vme_lm_set, !367, !"__ksymtab_vme_lm_set", i1 false, i1 false}
!367 = !{!"../drivers/vme/vme.c", i32 1583, i32 1}
!368 = !{ptr @.str.163, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/vme/vme.c", i32 1606, i32 3}
!370 = !{ptr @vme_lm_get._entry, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @vme_lm_get._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.165, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/vme/vme.c", i32 1613, i32 3}
!374 = !{ptr @vme_lm_get._entry.164, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @vme_lm_get._entry_ptr.166, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @__ksymtab_vme_lm_get, !377, !"__ksymtab_vme_lm_get", i1 false, i1 false}
!377 = !{!"../drivers/vme/vme.c", i32 1619, i32 1}
!378 = !{ptr @.str.167, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/vme/vme.c", i32 1643, i32 3}
!380 = !{ptr @vme_lm_attach._entry, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @vme_lm_attach._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.169, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/vme/vme.c", i32 1650, i32 3}
!384 = !{ptr @vme_lm_attach._entry.168, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @vme_lm_attach._entry_ptr.170, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @__ksymtab_vme_lm_attach, !387, !"__ksymtab_vme_lm_attach", i1 false, i1 false}
!387 = !{!"../drivers/vme/vme.c", i32 1656, i32 1}
!388 = !{ptr @.str.171, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/vme/vme.c", i32 1676, i32 3}
!390 = !{ptr @vme_lm_detach._entry, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @vme_lm_detach._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.173, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/vme/vme.c", i32 1683, i32 3}
!394 = !{ptr @vme_lm_detach._entry.172, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @vme_lm_detach._entry_ptr.174, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @__ksymtab_vme_lm_detach, !397, !"__ksymtab_vme_lm_detach", i1 false, i1 false}
!397 = !{!"../drivers/vme/vme.c", i32 1689, i32 1}
!398 = !{ptr @.str.175, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/vme/vme.c", i32 1708, i32 3}
!400 = !{ptr @vme_lm_free._entry, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @vme_lm_free._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @__ksymtab_vme_lm_free, !403, !"__ksymtab_vme_lm_free", i1 false, i1 false}
!403 = !{!"../drivers/vme/vme.c", i32 1727, i32 1}
!404 = !{ptr @.str.176, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/vme/vme.c", i32 1745, i32 3}
!406 = !{ptr @vme_slot_num._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @vme_slot_num._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.178, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/vme/vme.c", i32 1750, i32 3}
!410 = !{ptr @vme_slot_num._entry.177, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @vme_slot_num._entry_ptr.179, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @__ksymtab_vme_slot_num, !413, !"__ksymtab_vme_slot_num", i1 false, i1 false}
!413 = !{!"../drivers/vme/vme.c", i32 1756, i32 1}
!414 = !{ptr @.str.180, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/vme/vme.c", i32 1773, i32 3}
!416 = !{ptr @vme_bus_num._entry, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @vme_bus_num._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @__ksymtab_vme_bus_num, !419, !"__ksymtab_vme_bus_num", i1 false, i1 false}
!419 = !{!"../drivers/vme/vme.c", i32 1779, i32 1}
!420 = !{ptr @vme_init_bridge.__key, !421, !"__key", i1 false, i1 false}
!421 = !{!"../drivers/vme/vme.c", i32 1796, i32 2}
!422 = !{ptr @.str.181, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @__ksymtab_vme_init_bridge, !424, !"__ksymtab_vme_init_bridge", i1 false, i1 false}
!424 = !{!"../drivers/vme/vme.c", i32 1800, i32 1}
!425 = !{ptr @__ksymtab_vme_register_bridge, !426, !"__ksymtab_vme_register_bridge", i1 false, i1 false}
!426 = !{!"../drivers/vme/vme.c", i32 1822, i32 1}
!427 = !{ptr @__ksymtab_vme_unregister_bridge, !428, !"__ksymtab_vme_unregister_bridge", i1 false, i1 false}
!428 = !{!"../drivers/vme/vme.c", i32 1839, i32 1}
!429 = !{ptr @__ksymtab_vme_register_driver, !430, !"__ksymtab_vme_register_driver", i1 false, i1 false}
!430 = !{!"../drivers/vme/vme.c", i32 1938, i32 1}
!431 = !{ptr @__ksymtab_vme_unregister_driver, !432, !"__ksymtab_vme_unregister_driver", i1 false, i1 false}
!432 = !{!"../drivers/vme/vme.c", i32 1960, i32 1}
!433 = !{ptr @.str.182, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/vme/vme.c", i32 2004, i32 10}
!435 = !{ptr @vme_bus_type, !436, !"vme_bus_type", i1 false, i1 false}
!436 = !{!"../drivers/vme/vme.c", i32 2003, i32 17}
!437 = !{ptr @__ksymtab_vme_bus_type, !438, !"__ksymtab_vme_bus_type", i1 false, i1 false}
!438 = !{!"../drivers/vme/vme.c", i32 2009, i32 1}
!439 = !{ptr @__initcall__kmod_vme__271_2015_vme_init4, !440, !"__initcall__kmod_vme__271_2015_vme_init4", i1 false, i1 false}
!440 = !{!"../drivers/vme/vme.c", i32 2015, i32 1}
!441 = !{ptr @vme_bus_numbers, !442, !"vme_bus_numbers", i1 false, i1 false}
!442 = !{!"../drivers/vme/vme.c", i32 34, i32 21}
!443 = !{ptr @.str.183, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/vme/vme.c", i32 65, i32 3}
!445 = !{ptr @find_bridge._entry, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @find_bridge._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.184, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/vme/vme.c", i32 36, i32 8}
!449 = !{ptr @.str.185, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @vme_buses_lock, !448, !"vme_buses_lock", i1 false, i1 false}
!451 = !{ptr @vme_bus_list, !452, !"vme_bus_list", i1 false, i1 false}
!452 = !{!"../drivers/vme/vme.c", i32 35, i32 8}
!453 = !{ptr @.str.186, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/vme/vme.c", i32 1863, i32 28}
!455 = !{i32 1, !"wchar_size", i32 2}
!456 = !{i32 1, !"min_enum_size", i32 4}
!457 = !{i32 8, !"branch-target-enforcement", i32 0}
!458 = !{i32 8, !"sign-return-address", i32 0}
!459 = !{i32 8, !"sign-return-address-all", i32 0}
!460 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!461 = !{i32 7, !"uwtable", i32 1}
!462 = !{i32 7, !"frame-pointer", i32 2}
!463 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!464 = !{!"auto-init"}
