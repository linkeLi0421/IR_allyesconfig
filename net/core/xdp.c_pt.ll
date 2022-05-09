; ModuleID = '/llk/IR_all_yes/net/core/xdp.c_pt.bc'
source_filename = "../net/core/xdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xdp_unreg_mem_model\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_unreg_mem_model\09\09\09\09"
module asm "\09.long\09__crc_xdp_unreg_mem_model\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_unreg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_unreg_mem_model\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_unreg_mem_model\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_unreg_mem_model\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unreg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_unreg\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_unreg\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_unreg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unreg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unreg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_reg\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_reg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_unused\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_unused\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_unused\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unused\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_is_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_is_reg\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_is_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_is_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_is_reg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_is_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_reg_mem_model\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_reg_mem_model\09\09\09\09"
module asm "\09.long\09__crc_xdp_reg_mem_model\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_reg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_rxq_info_reg_mem_model\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_rxq_info_reg_mem_model\09\09\09\09"
module asm "\09.long\09__crc_xdp_rxq_info_reg_mem_model\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_reg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_return_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_return_frame\09\09\09\09"
module asm "\09.long\09__crc_xdp_return_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_return_frame_rx_napi\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_return_frame_rx_napi\09\09\09\09"
module asm "\09.long\09__crc_xdp_return_frame_rx_napi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame_rx_napi\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_flush_frame_bulk\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_flush_frame_bulk\09\09\09\09"
module asm "\09.long\09__crc_xdp_flush_frame_bulk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_flush_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_flush_frame_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_flush_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_return_frame_bulk\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_return_frame_bulk\09\09\09\09"
module asm "\09.long\09__crc_xdp_return_frame_bulk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__xdp_release_frame\22, \22a\22\09"
module asm "\09.weak\09__crc___xdp_release_frame\09\09\09\09"
module asm "\09.long\09__crc___xdp_release_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xdp_release_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22__xdp_release_frame\22\09\09\09\09\09"
module asm "__kstrtabns___xdp_release_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_attachment_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_attachment_setup\09\09\09\09"
module asm "\09.long\09__crc_xdp_attachment_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_attachment_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_attachment_setup\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_attachment_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_convert_zc_to_xdp_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_convert_zc_to_xdp_frame\09\09\09\09"
module asm "\09.long\09__crc_xdp_convert_zc_to_xdp_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_convert_zc_to_xdp_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_convert_zc_to_xdp_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_convert_zc_to_xdp_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_warn\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_warn\09\09\09\09"
module asm "\09.long\09__crc_xdp_warn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_warn\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_alloc_skb_bulk\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_alloc_skb_bulk\09\09\09\09"
module asm "\09.long\09__crc_xdp_alloc_skb_bulk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_alloc_skb_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_alloc_skb_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_alloc_skb_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__xdp_build_skb_from_frame\22, \22a\22\09"
module asm "\09.weak\09__crc___xdp_build_skb_from_frame\09\09\09\09"
module asm "\09.long\09__crc___xdp_build_skb_from_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22__xdp_build_skb_from_frame\22\09\09\09\09\09"
module asm "__kstrtabns___xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xdp_build_skb_from_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_xdp_build_skb_from_frame\09\09\09\09"
module asm "\09.long\09__crc_xdp_build_skb_from_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_build_skb_from_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.163 }
%union.anon.163 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.187 }
%union.anon.187 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_mem_allocator = type { %struct.xdp_mem_info, %union.anon, %struct.rhash_head, %struct.callback_head }
%union.anon = type { ptr }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.161, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.161 = type { %struct.atomic_t }
%struct.xdp_frame_bulk = type { i32, ptr, [16 x ptr] }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netdev_bpf = type { i32, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr, ptr }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.51, %union.anon.54, %union.anon.55, [48 x i8], %union.anon.56, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.58, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr, %union.anon.53 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32, ptr }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.60, i32, i32, i32, i16, i16, %union.anon.62, i32, %union.anon.63, %union.anon.64, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.60 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }

@mem_id_ht = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mem_id_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 64, i16 4, i16 4, i16 12, i32 65534, i16 8, i8 1, ptr @xdp_mem_id_hashfn, ptr null, ptr @xdp_mem_id_cmp }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_xdp_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_unreg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_unreg_mem_model to i32), ptr @__kstrtab_xdp_unreg_mem_model, ptr @__kstrtabns_xdp_unreg_mem_model }, section "___ksymtab_gpl+xdp_unreg_mem_model", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/core/xdp.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing register, driver bug\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_xdp_rxq_info_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unreg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unreg_mem_model to i32), ptr @__kstrtab_xdp_rxq_info_unreg_mem_model, ptr @__kstrtabns_xdp_rxq_info_unreg_mem_model }, section "___ksymtab_gpl+xdp_rxq_info_unreg_mem_model", align 4
@__kstrtab_xdp_rxq_info_unreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unreg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unreg to i32), ptr @__kstrtab_xdp_rxq_info_unreg, ptr @__kstrtabns_xdp_rxq_info_unreg }, section "___ksymtab_gpl+xdp_rxq_info_unreg", align 4
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing net_device from driver\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Driver promised not to register this\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missing unregister, handled but fix driver\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_xdp_rxq_info_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_reg to i32), ptr @__kstrtab_xdp_rxq_info_reg, ptr @__kstrtabns_xdp_rxq_info_reg }, section "___ksymtab_gpl+xdp_rxq_info_reg", align 4
@__kstrtab_xdp_rxq_info_unused = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unused = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unused = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unused to i32), ptr @__kstrtab_xdp_rxq_info_unused, ptr @__kstrtabns_xdp_rxq_info_unused }, section "___ksymtab_gpl+xdp_rxq_info_unused", align 4
@__kstrtab_xdp_rxq_info_is_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_is_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_is_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_is_reg to i32), ptr @__kstrtab_xdp_rxq_info_is_reg, ptr @__kstrtabns_xdp_rxq_info_is_reg }, section "___ksymtab_gpl+xdp_rxq_info_is_reg", align 4
@__kstrtab_xdp_reg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_reg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_reg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_reg_mem_model to i32), ptr @__kstrtab_xdp_reg_mem_model, ptr @__kstrtabns_xdp_reg_mem_model }, section "___ksymtab_gpl+xdp_reg_mem_model", align 4
@__kstrtab_xdp_rxq_info_reg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_reg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_reg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_reg_mem_model to i32), ptr @__kstrtab_xdp_rxq_info_reg_mem_model, ptr @__kstrtabns_xdp_rxq_info_reg_mem_model }, section "___ksymtab_gpl+xdp_rxq_info_reg_mem_model", align 4
@__kstrtab_xdp_return_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame to i32), ptr @__kstrtab_xdp_return_frame, ptr @__kstrtabns_xdp_return_frame }, section "___ksymtab_gpl+xdp_return_frame", align 4
@__kstrtab_xdp_return_frame_rx_napi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame_rx_napi = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame_rx_napi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame_rx_napi to i32), ptr @__kstrtab_xdp_return_frame_rx_napi, ptr @__kstrtabns_xdp_return_frame_rx_napi }, section "___ksymtab_gpl+xdp_return_frame_rx_napi", align 4
@__kstrtab_xdp_flush_frame_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_flush_frame_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_flush_frame_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_flush_frame_bulk to i32), ptr @__kstrtab_xdp_flush_frame_bulk, ptr @__kstrtabns_xdp_flush_frame_bulk }, section "___ksymtab_gpl+xdp_flush_frame_bulk", align 4
@__kstrtab_xdp_return_frame_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame_bulk to i32), ptr @__kstrtab_xdp_return_frame_bulk, ptr @__kstrtabns_xdp_return_frame_bulk }, section "___ksymtab_gpl+xdp_return_frame_bulk", align 4
@__kstrtab___xdp_release_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns___xdp_release_frame = external dso_local constant [0 x i8], align 1
@__ksymtab___xdp_release_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xdp_release_frame to i32), ptr @__kstrtab___xdp_release_frame, ptr @__kstrtabns___xdp_release_frame }, section "___ksymtab_gpl+__xdp_release_frame", align 4
@__kstrtab_xdp_attachment_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_attachment_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_attachment_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_attachment_setup to i32), ptr @__kstrtab_xdp_attachment_setup, ptr @__kstrtabns_xdp_attachment_setup }, section "___ksymtab_gpl+xdp_attachment_setup", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_xdp_convert_zc_to_xdp_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_convert_zc_to_xdp_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_convert_zc_to_xdp_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_convert_zc_to_xdp_frame to i32), ptr @__kstrtab_xdp_convert_zc_to_xdp_frame, ptr @__kstrtabns_xdp_convert_zc_to_xdp_frame }, section "___ksymtab_gpl+xdp_convert_zc_to_xdp_frame", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"XDP_WARN: %s(line:%d): %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_xdp_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_warn = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_warn to i32), ptr @__kstrtab_xdp_warn, ptr @__kstrtabns_xdp_warn }, section "___ksymtab_gpl+xdp_warn", align 4
@skbuff_head_cache = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_xdp_alloc_skb_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_alloc_skb_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_alloc_skb_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_alloc_skb_bulk to i32), ptr @__kstrtab_xdp_alloc_skb_bulk, ptr @__kstrtabns_xdp_alloc_skb_bulk }, section "___ksymtab_gpl+xdp_alloc_skb_bulk", align 4
@__kstrtab___xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns___xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__ksymtab___xdp_build_skb_from_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xdp_build_skb_from_frame to i32), ptr @__kstrtab___xdp_build_skb_from_frame, ptr @__kstrtabns___xdp_build_skb_from_frame }, section "___ksymtab_gpl+__xdp_build_skb_from_frame", align 4
@__kstrtab_xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_build_skb_from_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_build_skb_from_frame to i32), ptr @__kstrtab_xdp_build_skb_from_frame, ptr @__kstrtabns_xdp_build_skb_from_frame }, section "___ksymtab_gpl+xdp_build_skb_from_frame", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mem_id_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mem_id_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mem_id_lock, i64 52), ptr getelementptr (i8, ptr @mem_id_lock, i64 52) }, ptr @mem_id_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mem_id_pool = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mem_id_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mem_id_lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_id_next = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mem_id_pool.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_mem_disconnect = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_mem_disconnect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_mem_connect = external dso_local global %struct.tracepoint, align 4
@trace_mem_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Incorrect XDP memory type (%d) usage\00", [59 x i8] zeroinitializer }, align 32
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"mem_id_ht\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 34, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"mem_id_rht_params\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 57, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 138, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 169, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 179, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 546, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 594, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"mem_id_init\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"mem_id_lock\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"mem_id_pool\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"mem_id_next\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 31, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 320, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1019, i32 12 }
@___asan_gen_.98 = private constant [18 x i8] c"../net/core/xdp.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 403, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 717, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab___xdp_build_skb_from_frame, ptr @__ksymtab___xdp_release_frame, ptr @__ksymtab_xdp_alloc_skb_bulk, ptr @__ksymtab_xdp_attachment_setup, ptr @__ksymtab_xdp_build_skb_from_frame, ptr @__ksymtab_xdp_convert_zc_to_xdp_frame, ptr @__ksymtab_xdp_flush_frame_bulk, ptr @__ksymtab_xdp_reg_mem_model, ptr @__ksymtab_xdp_return_frame, ptr @__ksymtab_xdp_return_frame_bulk, ptr @__ksymtab_xdp_return_frame_rx_napi, ptr @__ksymtab_xdp_rxq_info_is_reg, ptr @__ksymtab_xdp_rxq_info_reg, ptr @__ksymtab_xdp_rxq_info_reg_mem_model, ptr @__ksymtab_xdp_rxq_info_unreg, ptr @__ksymtab_xdp_rxq_info_unreg_mem_model, ptr @__ksymtab_xdp_rxq_info_unused, ptr @__ksymtab_xdp_unreg_mem_model, ptr @__ksymtab_xdp_warn, ptr @mem_id_ht, ptr @mem_id_rht_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mem_id_init, ptr @mem_id_lock, ptr @mem_id_pool, ptr @.str.12, ptr @.str.13, ptr @mem_id_next, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_ht to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_pool to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_id_next to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_unreg_mem_model(ptr nocapture noundef %mem) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %id2 = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 4
  store i32 0, ptr %id2, align 4
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5 = icmp eq i32 %1, 2
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then6.rcu_read_lock.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then6.rcu_read_lock.exit_crit_edge
  %10 = load ptr, ptr @mem_id_ht, align 4
  %call = call fastcc ptr @rhashtable_lookup(ptr noundef %10, ptr noundef nonnull %id, [7 x i32] [i32 4194308, i32 262156, i32 65534, i32 524544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %11 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @page_pool_destroy(ptr noundef %13) #11
  %call.i19 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i19, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %rcu_read_lock.exit
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %14 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i26 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #11
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 594, ptr noundef nonnull @.str.9) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %5, %do.end12.i ], [ %36, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #11
  %12 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %13, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !124

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i) #11
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %16 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i93.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 369, ptr noundef nonnull @.str.9) #11
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i.i95.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i96.i, i32 %or.i.i.i, i32 %and.i.i95.i
  %21 = inttoptr i32 %cond.i.i.i to ptr
  %and.i106.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.i.not107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.i.not107.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.0108.i = phi ptr [ %33, %for.inc.i.for.body.i_crit_edge ], [ %21, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i, align 2
  %conv.i98.i = zext i16 %23 to i32
  %idx.neg.i99.i = sub nsw i32 0, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i99.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i100.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i, align 4
  %conv.i101.i = zext i16 %27 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i100.i, i32 %conv.i101.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %31 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i102.i, ptr %29, i32 %conv3.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %he.0108.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i = and i32 %34, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %33, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %17
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b9091.i = load i1, ptr @__rhashtable_lookup.__warned.10, align 1
  br i1 %.b9091.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 614, ptr noundef nonnull @.str.9) #11
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !124

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #11
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #11
  %tobool.not = icmp eq ptr %he.0108.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head_offset.i.i, align 2
  %conv.i = zext i16 %38 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_rxq_info_unreg_mem_model(ptr nocapture noundef %xdp_rxq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %return

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 3
  tail call void @xdp_unreg_mem_model(ptr noundef %mem)
  br label %return

return:                                           ; preds = %if.end16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_rxq_info_unreg(ptr nocapture noundef %xdp_rxq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end.i [
    i32 3, label %entry.return_crit_edge
    i32 1, label %if.end16.i
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %xdp_rxq_info_unreg_mem_model.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 3
  tail call void @xdp_unreg_mem_model(ptr noundef %mem.i) #11
  br label %xdp_rxq_info_unreg_mem_model.exit

xdp_rxq_info_unreg_mem_model.exit:                ; preds = %if.end16.i, %do.end.i
  %3 = ptrtoint ptr %reg_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %reg_state, align 8
  %4 = ptrtoint ptr %xdp_rxq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xdp_rxq, align 128
  br label %return

return:                                           ; preds = %xdp_rxq_info_unreg_mem_model.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xdp_rxq_info_reg(ptr nocapture noundef %xdp_rxq, ptr noundef %dev, i32 noundef %queue_index, i32 noundef %napi_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2) #11
  br label %return

if.end17:                                         ; preds = %entry
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %if.end17.if.end75_crit_edge [
    i32 3, label %do.end31
    i32 1, label %do.end61
  ]

if.end17.if.end75_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.3) #11
  br label %return

do.end61:                                         ; preds = %if.end17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef nonnull @.str.4) #11
  %3 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_state, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %4, label %do.end.i.i [
    i32 3, label %do.end61.if.end75_crit_edge
    i32 1, label %if.end16.i.i
  ]

do.end61.if.end75_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end.i.i:                                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %if.end75

if.end16.i.i:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  %mem.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 3
  tail call void @xdp_unreg_mem_model(ptr noundef %mem.i.i) #11
  br label %if.end75

if.end75:                                         ; preds = %if.end16.i.i, %do.end.i.i, %do.end61.if.end75_crit_edge, %if.end17.if.end75_crit_edge
  %6 = call ptr @memset(ptr %xdp_rxq, i32 0, i32 128)
  %7 = ptrtoint ptr %xdp_rxq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %xdp_rxq, align 128
  %queue_index77 = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 1
  %8 = ptrtoint ptr %queue_index77 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %queue_index, ptr %queue_index77, align 4
  %napi_id78 = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 4
  %9 = ptrtoint ptr %napi_id78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %napi_id, ptr %napi_id78, align 4
  %10 = ptrtoint ptr %reg_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %reg_state, align 8
  br label %return

return:                                           ; preds = %if.end75, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end31 ], [ 0, %if.end75 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xdp_rxq_info_unused(ptr nocapture noundef writeonly %xdp_rxq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %reg_state, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr nocapture noundef readonly %xdp_rxq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xdp_reg_mem_model(ptr noundef %mem, i32 noundef %type, ptr noundef %allocator) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__xdp_reg_mem_model(ptr noundef %mem, i32 noundef %type, ptr noundef %allocator)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %0, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__xdp_reg_mem_model(ptr noundef %mem, i32 noundef %type, ptr noundef %allocator) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp1.i = icmp ult i32 %type, 4
  br i1 %cmp1.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %mem, align 4
  %tobool.not = icmp eq ptr %allocator, null
  br i1 %tobool.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  %spec.select = select i1 %cmp, ptr inttoptr (i32 -22 to ptr), ptr null
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %.b79 = load i1, ptr @mem_id_init, align 1
  br i1 %.b79, label %if.end7.if.end32_crit_edge, label %if.then9

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then9:                                         ; preds = %if.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_id_lock, i32 noundef 0) #11
  %.b17.i = load i1, ptr @mem_id_init, align 1
  br i1 %.b17.i, label %if.then9.__mem_id_init_hash_table.exit_crit_edge, label %if.end.i, !prof !127

if.then9.__mem_id_init_hash_table.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mem_id_init_hash_table.exit

if.end.i:                                         ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 228) #15
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.do.end_crit_edge, label %if.end5.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mem_id_rht_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %phi.cast = inttoptr i32 %call6.i to ptr
  br label %do.end

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i.i, ptr @mem_id_ht, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  store i1 true, ptr @mem_id_init, align 1
  br label %__mem_id_init_hash_table.exit

__mem_id_init_hash_table.exit:                    ; preds = %if.end8.i, %if.then9.__mem_id_init_hash_table.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #11
  br label %if.end32

do.end:                                           ; preds = %if.then7.i, %if.end.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.do.end_crit_edge ], [ %phi.cast, %if.then7.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end32:                                         ; preds = %__mem_id_init_hash_table.exit, %if.end7.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #15
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_id_lock, i32 noundef 0) #11
  %3 = load i32, ptr @mem_id_next, align 4
  %call3.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @mem_id_pool, i32 noundef %3, i32 noundef 65533, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call3.i)
  %cmp1.i81.not = icmp eq i32 %call3.i, -28
  br i1 %cmp1.i81.not, label %if.then3.i, label %if.then.i.__mem_id_cyclic_get.exit.thread_crit_edge

if.then.i.__mem_id_cyclic_get.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mem_id_cyclic_get.exit.thread

__mem_id_cyclic_get.exit.thread:                  ; preds = %if.then3.i.__mem_id_cyclic_get.exit.thread_crit_edge, %if.then.i.__mem_id_cyclic_get.exit.thread_crit_edge
  %call6.i80.lcssa = phi i32 [ %call3.i, %if.then.i.__mem_id_cyclic_get.exit.thread_crit_edge ], [ %call.i, %if.then3.i.__mem_id_cyclic_get.exit.thread_crit_edge ]
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6.i80.lcssa, ptr %id, align 4
  br label %err

if.then3.i:                                       ; preds = %if.then.i
  store i32 1, ptr @mem_id_next, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @mem_id_pool, i32 noundef 1, i32 noundef 65533, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i82 = icmp slt i32 %call.i, 0
  br i1 %cmp.i82, label %if.then3.i.__mem_id_cyclic_get.exit.thread_crit_edge, label %if.then3.i.if.end41_crit_edge

if.then3.i.if.end41_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then3.i.__mem_id_cyclic_get.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mem_id_cyclic_get.exit.thread

if.end41:                                         ; preds = %if.then3.i.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  %call.lcssa.i = phi i32 [ %call3.i, %if.end37.if.end41_crit_edge ], [ %call.i, %if.then3.i.if.end41_crit_edge ]
  %add.i = add nuw i32 %call.lcssa.i, 1
  store i32 %add.i, ptr @mem_id_next, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.lcssa.i, ptr %id, align 4
  %id42 = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %6 = ptrtoint ptr %id42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.lcssa.i, ptr %id42, align 4
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %mem, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %call7.i.i, align 8
  %10 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %allocator, ptr %10, align 8
  %12 = load ptr, ptr @mem_id_ht, align 4
  %node = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call7.i.i, i32 0, i32 2
  %call44 = call ptr @rhashtable_insert_slow(ptr noundef %12, ptr noundef nonnull %id, ptr noundef %node) #11
  %cmp.i84 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %id42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id42, align 4
  call void @ida_free(ptr noundef nonnull @mem_id_pool, i32 noundef %14) #11
  %15 = ptrtoint ptr %id42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %id42, align 4
  %16 = ptrtoint ptr %call44 to i32
  br label %err

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp51 = icmp eq i32 %type, 2
  br i1 %cmp51, label %if.then52, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  call void @page_pool_use_xdp_mem(ptr noundef nonnull %allocator, ptr noundef nonnull @mem_allocator_disconnect, ptr noundef %mem) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #11
  br label %cleanup

err:                                              ; preds = %if.then46, %__mem_id_cyclic_get.exit.thread
  %errno.0 = phi i32 [ %16, %if.then46 ], [ %call6.i80.lcssa, %__mem_id_cyclic_get.exit.thread ]
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %17 = inttoptr i32 %errno.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end53, %if.end32.cleanup_crit_edge, %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %err ], [ %call7.i.i, %if.end53 ], [ %retval.0.i.ph, %do.end ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end32.cleanup_crit_edge ], [ %spec.select, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq, i32 noundef %type, ptr noundef %allocator) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 2
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %entry
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %xdp_rxq, i32 0, i32 3
  %call = tail call fastcc ptr @__xdp_reg_mem_model(ptr noundef %mem, i32 noundef %type, ptr noundef %allocator)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 1), ptr blockaddress(@xdp_rxq_info_reg_mem_model, %l_yes.i.i.i)) #11
          to label %trace_mem_connect_enabled.exit [label %l_yes.i.i.i], !srcloc !129

l_yes.i.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_mem_connect_enabled.exit

trace_mem_connect_enabled.exit:                   ; preds = %l_yes.i.i.i, %if.end20
  %retval.0.i.i.i = phi i1 [ false, %l_yes.i.i.i ], [ true, %if.end20 ]
  %tobool22.not = icmp eq ptr %call, null
  %or.cond = or i1 %tobool22.not, %retval.0.i.i.i
  br i1 %or.cond, label %trace_mem_connect_enabled.exit.cleanup_crit_edge, label %if.then23

trace_mem_connect_enabled.exit.cleanup_crit_edge: ; preds = %trace_mem_connect_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %trace_mem_connect_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_mem_connect(ptr noundef nonnull %call, ptr noundef %xdp_rxq)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %trace_mem_connect_enabled.exit.cleanup_crit_edge, %if.then18, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %2, %if.then18 ], [ 0, %if.then23 ], [ 0, %trace_mem_connect_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mem_connect(ptr noundef %xa, ptr noundef %rxq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 1), ptr blockaddress(@trace_mem_connect, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !129

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !130
  %call42 = tail call i32 @__traceiter_mem_connect(ptr noundef null, ptr noundef %xa, ptr noundef %rxq) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mem_connect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mem_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 379, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_return_frame(ptr noundef %xdpf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdpf, align 4
  %mem = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4
  tail call fastcc void @__xdp_return(ptr noundef %1, ptr noundef %mem, i1 noundef zeroext false, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xdp_return(ptr noundef %data, ptr noundef %mem, i1 noundef zeroext %napi_direct, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %do.end [
    i32 2, label %sw.bb
    i32 0, label %sw.bb4
    i32 1, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %sw.bb.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb.rcu_read_lock.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb.rcu_read_lock.exit_crit_edge
  %7 = load ptr, ptr @mem_id_ht, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %call = tail call fastcc ptr @rhashtable_lookup(ptr noundef %7, ptr noundef %id, [7 x i32] [i32 4194308, i32 262156, i32 65534, i32 524544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %data to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %10 = getelementptr %struct.page, ptr %8, i32 %shr.i, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !124

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %12, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  br i1 %napi_direct, label %land.lhs.true, label %virt_to_head_page.exit.if.end_crit_edge

virt_to_head_page.exit.if.end_crit_edge:          ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i39 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i39 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, ptrtoint (ptr @bpf_redirect_info to i32)
  %21 = inttoptr i32 %add.i to ptr
  %kern_flags.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %kern_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kern_flags.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %virt_to_head_page.exit.if.end_crit_edge
  %napi_direct.addr.0.shrunk = phi i1 [ false, %virt_to_head_page.exit.if.end_crit_edge ], [ %tobool.i.not, %land.lhs.true ]
  %24 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void @page_pool_put_page(ptr noundef %26, ptr noundef %14, i32 noundef -1, i1 noundef zeroext %napi_direct.addr.0.shrunk) #11
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i40, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.end
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %27 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i47 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @page_frag_free(ptr noundef %data) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %data to i32
  %sub = add i32 %32, 1073741824
  %shr = lshr i32 %sub, 12
  %33 = getelementptr %struct.page, ptr %31, i32 %shr, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i49 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.end.i.i53, label %if.then.i.i52, !prof !124

if.then.i.i52:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i51 = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i53:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.page, ptr %31, i32 %shr
  %36 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i53, %if.then.i.i52
  %retval.0.i.i54 = phi i32 [ %sub.i.i51, %if.then.i.i52 ], [ %36, %if.end.i.i53 ]
  %37 = inttoptr i32 %retval.0.i.i54 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !127

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.24) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !136
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__xdp_return, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !129

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %37, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.sw.epilog_crit_edge

folio_put_testzero.exit.i.i.sw.epilog_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %37) #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xp_free(ptr noundef %xdp) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %1) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb7, %if.then.i4.i, %folio_put_testzero.exit.i.i.sw.epilog_crit_edge, %sw.bb4, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_return_frame_rx_napi(ptr noundef %xdpf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdpf, align 4
  %mem = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4
  tail call fastcc void @__xdp_return(ptr noundef %1, ptr noundef %mem, i1 noundef zeroext true, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_flush_frame_bulk(ptr noundef %bq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xa1 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 1
  %0 = ptrtoint ptr %xa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !127

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %2 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !127

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %q = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 2
  tail call void @page_pool_put_page_bulk(ptr noundef %6, ptr noundef %q, i32 noundef %3) #11
  %7 = ptrtoint ptr %bq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page_bulk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_return_frame_bulk(ptr noundef %xdpf, ptr noundef %bq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdpf, align 4
  tail call fastcc void @__xdp_return(ptr noundef %3, ptr noundef %mem1, i1 noundef zeroext false, ptr noundef null)
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa3 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 1
  %4 = ptrtoint ptr %xa3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xa3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end9.thread, label %if.end9, !prof !127

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @mem_id_ht, align 4
  %id = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4, i32 1
  %call = tail call fastcc ptr @rhashtable_lookup(ptr noundef %6, ptr noundef %id, [7 x i32] [i32 4194308, i32 262156, i32 65534, i32 524544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %7 = ptrtoint ptr %bq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bq, align 4
  %8 = ptrtoint ptr %xa3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %xa3, align 4
  br label %if.end13

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %bq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp11 = icmp eq i32 %.pr, 16
  br i1 %cmp11, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  %10 = ptrtoint ptr %xa3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xa3, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then12.if.end13_crit_edge, label %if.end.i, !prof !127

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %12 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %q.i = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 2
  tail call void @page_pool_put_page_bulk(ptr noundef %14, ptr noundef %q.i, i32 noundef 16) #11
  %15 = ptrtoint ptr %bq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bq, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.then12.if.end13_crit_edge, %if.end9.if.end13_crit_edge, %if.end9.thread
  %xa.062 = phi ptr [ %call, %if.end9.thread ], [ %5, %if.end9.if.end13_crit_edge ], [ %5, %if.then12.if.end13_crit_edge ], [ %5, %if.end.i ]
  %id14 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id14, align 4
  %id16 = getelementptr inbounds %struct.xdp_mem_info, ptr %xa.062, i32 0, i32 1
  %18 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17.not = icmp eq i32 %17, %19
  br i1 %cmp17.not, label %if.end13.if.end28_crit_edge, label %if.then24, !prof !124

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xdp_flush_frame_bulk(ptr noundef %bq)
  %20 = load ptr, ptr @mem_id_ht, align 4
  %call26 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %20, ptr noundef %id14, [7 x i32] [i32 4194308, i32 262156, i32 65534, i32 524544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %21 = ptrtoint ptr %xa3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %xa3, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end13.if.end28_crit_edge
  %22 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xdpf, align 4
  %24 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bq, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %bq, align 4
  %arrayidx = getelementptr %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 2, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_return_buff(ptr noundef %xdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp, align 4
  %rxq = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %2 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxq, align 4
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %3, i32 0, i32 3
  tail call fastcc void @__xdp_return(ptr noundef %1, ptr noundef %mem, i1 noundef zeroext true, ptr noundef %xdp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__xdp_release_frame(ptr noundef %data, ptr noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load ptr, ptr @mem_id_ht, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %call = tail call fastcc ptr @rhashtable_lookup(ptr noundef %4, ptr noundef %id, [7 x i32] [i32 4194308, i32 262156, i32 65534, i32 524544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %data to i32
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %7 = getelementptr %struct.page, ptr %5, i32 %shr.i, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !124

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %9, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %shr.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %virt_to_head_page.exit.if.end_crit_edge, label %if.then

virt_to_head_page.exit.if.end_crit_edge:          ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @page_pool_release_page(ptr noundef %14, ptr noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %virt_to_head_page.exit.if.end_crit_edge
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i9, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %15 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i16 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_release_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_attachment_setup(ptr nocapture noundef %info, ptr nocapture noundef readonly %bpf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bpf_prog_put(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %prog2 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prog2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prog2, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %info, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %flags4 = getelementptr inbounds %struct.xdp_attachment_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %0 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_meta.i, align 4
  %2 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp, align 4
  %cmp.i = icmp ugt ptr %1, %3
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %cmp.i, i32 0, i32 %sub.ptr.sub
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %4 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_end, align 4
  %sub.ptr.lhs.cast2 = ptrtoint ptr %5 to i32
  %sub.ptr.sub4 = sub i32 %sub.ptr.lhs.cast2, %sub.ptr.lhs.cast
  %add = add i32 %sub.ptr.sub4, %cond
  %6 = add i32 %add, -4073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %6)
  %cmp = icmp ult i32 %6, -4097
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast9 = ptrtoint ptr %call38.i.i.i.i.i to i32
  %sub.ptr.rhs.cast10 = ptrtoint ptr %7 to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub11, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add12 = add i32 %sub.ptr.div, %8
  %shl = shl i32 %add12, 12
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl, i32 -2130706432, i32 8454144) #16, !srcloc !138
  %10 = inttoptr i32 %9 to ptr
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %add.ptr = getelementptr i8, ptr %10, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool14.not = icmp eq i32 %cond, 0
  %cond20.in = select i1 %tobool14.not, ptr %xdp, ptr %data_meta.i
  %12 = ptrtoint ptr %cond20.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond20 = load ptr, ptr %cond20.in, align 4
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %cond20, i32 %add)
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %cond
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr21, ptr %10, align 4
  %conv = trunc i32 %sub.ptr.sub4 to i16
  %len = getelementptr inbounds %struct.xdp_frame, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %len, align 4
  %headroom = getelementptr inbounds %struct.xdp_frame, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %headroom to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %headroom, align 2
  %metasize23 = getelementptr inbounds %struct.xdp_frame, ptr %10, i32 0, i32 3
  %bf.shl = shl i32 %cond, 24
  %bf.set26 = or i32 %bf.shl, 4096
  %17 = ptrtoint ptr %metasize23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.set26, ptr %metasize23, align 4
  %mem = getelementptr inbounds %struct.xdp_frame, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mem, align 4
  tail call void @xp_free(ptr noundef %xdp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_warn(ptr noundef %msg, ptr noundef %func, i32 noundef %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %func, i32 noundef %line, ptr noundef %msg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xdp_alloc_skb_bulk(ptr noundef %skbs, i32 noundef %n_skb, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @skbuff_head_cache to i32))
  %0 = load ptr, ptr @skbuff_head_cache, align 4
  %call = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %0, i32 noundef %gfp, i32 noundef %n_skb, ptr noundef %skbs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -12, i32 0, !prof !127
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__xdp_build_skb_from_frame(ptr noundef %xdpf, ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %headroom1 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 2
  %0 = ptrtoint ptr %headroom1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %headroom1, align 2
  %conv = zext i16 %1 to i32
  %frame_sz = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 3
  %2 = ptrtoint ptr %frame_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %frame_sz, align 4
  %bf.clear = and i32 %bf.load, 16777215
  %3 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xdpf, align 4
  %idx.neg = sub nuw nsw i32 -24, %conv
  %add.ptr = getelementptr i8, ptr %4, i32 %idx.neg
  %call = tail call ptr @build_skb_around(ptr noundef %skb, ptr noundef %add.ptr, i32 noundef %bf.clear) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !127

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw nsw i32 %conv, 24
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 %add
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !139
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  %len = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv5 = zext i16 %12 to i32
  %add.ptr.i34 = getelementptr i8, ptr %add.ptr1.i, i32 %conv5
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i34, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %15, %conv5
  store i32 %add.i, ptr %len9.i, align 4
  %16 = ptrtoint ptr %frame_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load7 = load i32, ptr %frame_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load7)
  %tobool8.not = icmp ult i32 %bf.load7, 16777216
  br i1 %tobool8.not, label %__skb_put.exit.if.end14_crit_edge, label %if.then9

__skb_put.exit.if.end14_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr = lshr i32 %bf.load7, 24
  %conv13 = trunc i32 %bf.lshr to i8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %meta_len1.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %meta_len1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %meta_len1.i, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %__skb_put.exit.if.end14_crit_edge
  %call15 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call, ptr noundef %dev) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call15, ptr %protocol, align 8
  %mem1.i = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 4
  %21 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i = icmp eq i32 %22, 2
  br i1 %cmp.i, label %if.then.i, label %if.end14.xdp_release_frame.exit_crit_edge

if.end14.xdp_release_frame.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %xdp_release_frame.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdpf, align 4
  tail call void @__xdp_release_frame(ptr noundef %24, ptr noundef %mem1.i) #11
  br label %xdp_release_frame.exit

xdp_release_frame.exit:                           ; preds = %if.then.i, %if.end14.xdp_release_frame.exit_crit_edge
  %25 = ptrtoint ptr %xdpf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xdpf, align 4
  %dev_rx.i = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 5
  %26 = ptrtoint ptr %dev_rx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dev_rx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdp_release_frame.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb_around(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xdp_build_skb_from_frame(ptr noundef %xdpf, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @skbuff_head_cache to i32))
  %0 = load ptr, ptr @skbuff_head_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !127

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = call ptr @memset(ptr %call, i32 0, i32 168)
  %call4 = tail call ptr @__xdp_build_skb_from_frame(ptr noundef %xdpf, ptr noundef nonnull %call, ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xdpf_clone(ptr nocapture noundef readonly %xdpf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %headroom1 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 2
  %0 = ptrtoint ptr %headroom1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %headroom1, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 24
  %len = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  %conv2 = zext i16 %3 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add3)
  %cmp = icmp ugt i32 %add3, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !127

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool6.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call38.i.i.i.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add9 = add i32 %sub.ptr.div, %5
  %shl = shl i32 %add9, 12
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl, i32 -2130706432, i32 8454144) #16, !srcloc !138
  %7 = inttoptr i32 %6 to ptr
  %8 = call ptr @memcpy(ptr %7, ptr %xdpf, i32 %add3)
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %7, align 4
  %frame_sz = getelementptr inbounds %struct.xdp_frame, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %frame_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %frame_sz, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set = or i32 %bf.clear, 4096
  store i32 %bf.set, ptr %frame_sz, align 4
  %mem = getelementptr inbounds %struct.xdp_frame, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mem, align 4
  %id = getelementptr inbounds %struct.xdp_frame, ptr %7, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xdp_mem_id_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xdp_mem_id_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp ne i32 %5, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_use_xdp_mem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mem_allocator_disconnect(ptr noundef readnone %allocator) #0 align 64 {
entry:
  %iter = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #11
  %0 = call ptr @memset(ptr %iter, i32 255, i32 36)
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_id_lock, i32 noundef 0) #11
  %1 = load ptr, ptr @mem_id_ht, align 4
  call void @rhashtable_walk_enter(ptr noundef %1, ptr noundef nonnull %iter) #11
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #11
  %call21 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not22 = icmp eq ptr %call21, null
  br i1 %tobool.not22, label %do.body.while.end.thread_crit_edge, label %do.body.land.rhs_crit_edge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

do.body.while.end.thread_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.end.while.end.thread_crit_edge, %do.body.while.end.thread_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #11
  br label %do.end

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %call23 = phi ptr [ %call, %if.end.land.rhs_crit_edge ], [ %call21, %do.body.land.rhs_crit_edge ]
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %2 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call23, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %4, %allocator
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call fastcc void @trace_mem_disconnect(ptr noundef nonnull %call23) #11
  %5 = load ptr, ptr @mem_id_ht, align 4
  %node.i = getelementptr inbounds %struct.xdp_mem_allocator, ptr %call23, i32 0, i32 2
  %6 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i.i, label %if.then.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.rcu_read_lock.exit.i.i.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i.i_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %5, align 4
  %call.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call5.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1076, ptr noundef nonnull @.str.9) #11
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 3, i32 3
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.xdp_mem_allocator, ptr %call23, i32 0, i32 3
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.end33.i.i.i.while.cond.i.i.i_crit_edge, %do.end10.i.i.i
  %tbl.0.i.i.i = phi ptr [ %11, %do.end10.i.i.i ], [ %42, %do.end33.i.i.i.while.cond.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %13 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i.i, %15
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i3.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i3.i.i.i.i, label %cond.false.i5.i.i.i.i, label %cond.true.i4.i.i.i.i, !prof !124

cond.true.i4.i.i.i.i:                             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #11
  br label %rht_bucket_var.exit.i.i.i.i

cond.false.i5.i.i.i.i:                            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i.i

rht_bucket_var.exit.i.i.i.i:                      ; preds = %cond.false.i5.i.i.i.i, %cond.true.i4.i.i.i.i
  %cond.i6.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %cond.true.i4.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i5.i.i.i.i ]
  %tobool.not.i3.i.i.i = icmp eq ptr %cond.i6.i.i.i.i, null
  br i1 %tobool.not.i3.i.i.i, label %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end.i.i.i.i

rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

if.end.i.i.i.i:                                   ; preds = %rht_bucket_var.exit.i.i.i.i
  call fastcc void @rht_lock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #11
  %call.i8.i.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i.i)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %call.i8.i.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call1.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 377, ptr noundef nonnull @.str.18) #11
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond.i6.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i.i.i.i.i.i = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %23 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %23, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i20.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i.i)
  %tobool.i.not21.i.i.i.i = icmp eq i32 %and.i20.i.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i.i, label %for.body.preheader.i.i.i.i, label %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge:  ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %rht_ptr.exit.i.i.i.i
  %24 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %cmp.not.i21.i.i.i = icmp eq ptr %node.i, %24
  br i1 %cmp.not.i21.i.i.i, label %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  br label %do.body145.i.i.i.i

for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq ptr %29, %node.i
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body145.i.i.i.i

for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i.i

do.body54.i.i.i.i:                                ; preds = %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i.i = phi ptr [ %he.022.i22.i.i.i, %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge ]
  %call55.i.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %call55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %land.lhs.true57.i.i.i.i, label %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge

do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge:     ; preds = %do.body54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i.i

land.lhs.true57.i.i.i.i:                          ; preds = %do.body54.i.i.i.i
  %call58.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i.i)
  %tobool59.not.i.i.i.i = icmp eq i32 %call58.i.i.i.i, 0
  br i1 %tobool59.not.i.i.i.i, label %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %land.lhs.true60.i.i.i.i

land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i.i

land.lhs.true60.i.i.i.i:                          ; preds = %land.lhs.true57.i.i.i.i
  %.b2.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  br i1 %.b2.i.i.i.i, label %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %if.then62.i.i.i.i

land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1032, ptr noundef nonnull @.str.18) #11
  br label %do.end65.i.i.i.i

do.end65.i.i.i.i:                                 ; preds = %if.then62.i.i.i.i, %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node.i, align 4
  %tobool103.not.i.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i.i, null
  br i1 %tobool103.not.i.i.i.i, label %if.else142.i.i.i.i, label %do.body105.i.i.i.i

do.body105.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !140
  %27 = ptrtoint ptr %pprev.023.i.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %pprev.023.i.lcssa.i.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #11
  br label %if.then160.i.i.i.i

if.else142.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i, ptr noundef %26) #11
  br label %if.then160.i.i.i.i

do.body145.i.i.i.i:                               ; preds = %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge
  %he.022.i22.i.i.i = phi ptr [ %29, %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge ], [ %24, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge ]
  %call146.i.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i.i)
  %tobool147.not.i.i.i.i = icmp eq i32 %call146.i.i.i.i, 0
  br i1 %tobool147.not.i.i.i.i, label %land.lhs.true148.i.i.i.i, label %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge

do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge:   ; preds = %do.body145.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i.i

land.lhs.true148.i.i.i.i:                         ; preds = %do.body145.i.i.i.i
  %call149.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i.i)
  %tobool150.not.i.i.i.i = icmp eq i32 %call149.i.i.i.i, 0
  br i1 %tobool150.not.i.i.i.i, label %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %land.lhs.true151.i.i.i.i

land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i.i

land.lhs.true151.i.i.i.i:                         ; preds = %land.lhs.true148.i.i.i.i
  %.b2281.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2281.i.i.i.i, label %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %if.then153.i.i.i.i

land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i.i

if.then153.i.i.i.i:                               ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1004, ptr noundef nonnull @.str.18) #11
  br label %do.end156.i.i.i.i

do.end156.i.i.i.i:                                ; preds = %if.then153.i.i.i.i, %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge
  %28 = ptrtoint ptr %he.022.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %he.022.i22.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.body.i.i.i.i, label %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge

do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge:     ; preds = %do.end156.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i.i

unlocked.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #11
  br label %land.rhs.i.i.i

if.then160.i.i.i.i:                               ; preds = %if.else142.i.i.i.i, %do.body105.i.i.i.i
  %nelems.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #11
  %31 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #11, !srcloc !141
  %automatic_shrinking.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 3, i32 6
  %32 = ptrtoint ptr %automatic_shrinking.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %automatic_shrinking.i.i.i.i, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool161.not.i.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool161.not.i.i.i.i, label %if.then160.i.i.i.i.while.end.i.i.i_crit_edge, label %land.rhs162.i.i.i.i

if.then160.i.i.i.i.while.end.i.i.i_crit_edge:     ; preds = %if.then160.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

land.rhs162.i.i.i.i:                              ; preds = %if.then160.i.i.i.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %36 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tbl.0.i.i.i, align 128
  %mul.i.i.i.i.i = mul i32 %37, 3
  %div.i.i.i.i.i = udiv i32 %mul.i.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %35, %div.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i, label %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge

land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge:    ; preds = %land.rhs162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

rht_shrink_below_30.exit.i.i.i.i:                 ; preds = %land.rhs162.i.i.i.i
  %min_size.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %min_size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min_size.i.i.i.i.i, align 4
  %conv.i11.i.i.i.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i11.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp ugt i32 %37, %conv.i11.i.i.i.i
  br i1 %cmp2.i.i.i.i.i, label %if.then168.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, !prof !127

rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

if.then168.i.i.i.i:                               ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %run_work.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %5, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %run_work.i.i.i.i) #11
  br label %while.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %unlocked.i.i.i.i, %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call20.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %lor.lhs.false22.i.i.i, label %land.rhs.i.i.i.do.end33.i.i.i_crit_edge

land.rhs.i.i.i.do.end33.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i.i

lor.lhs.false22.i.i.i:                            ; preds = %land.rhs.i.i.i
  %call23.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %land.lhs.true25.i.i.i, label %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge

lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %lor.lhs.false22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %lor.lhs.false22.i.i.i
  %call26.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, label %land.lhs.true28.i.i.i

land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i.i

land.lhs.true28.i.i.i:                            ; preds = %land.lhs.true25.i.i.i
  %.b401.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.17, align 1
  br i1 %.b401.i.i.i, label %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1085, ptr noundef nonnull @.str.9) #11
  br label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %if.then30.i.i.i, %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge, %land.rhs.i.i.i.do.end33.i.i.i_crit_edge
  %tobool35.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool35.not.i.i.i, label %do.end33.i.i.i.while.end.i.i.i_crit_edge, label %do.end33.i.i.i.while.cond.i.i.i_crit_edge

do.end33.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i

do.end33.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end33.i.i.i.while.end.i.i.i_crit_edge, %if.then168.i.i.i.i, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge
  %tobool.not.i = phi i1 [ true, %if.then168.i.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge ], [ true, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge ], [ false, %do.end33.i.i.i.while.end.i.i.i_crit_edge ]
  %call.i4.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4.i.i.i, label %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true.i7.i.i.i

while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit.i

land.lhs.true.i7.i.i.i:                           ; preds = %while.end.i.i.i
  %call1.i5.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %call1.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true2.i9.i.i.i

land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit.i

land.lhs.true2.i9.i.i.i:                          ; preds = %land.lhs.true.i7.i.i.i
  %.b4.i8.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i.i, label %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %if.then.i10.i.i.i

land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit.i

if.then.i10.i.i.i:                                ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %rhashtable_remove_fast.exit.i

rhashtable_remove_fast.exit.i:                    ; preds = %if.then.i10.i.i.i, %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %43 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i11.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i11.i.i.i to ptr
  %preempt_count.i.i.i.i12.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %tobool.not.i, label %if.then.i, label %rhashtable_remove_fast.exit.i.if.end_crit_edge

rhashtable_remove_fast.exit.i.if.end_crit_edge:   ; preds = %rhashtable_remove_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %rhashtable_remove_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @call_rcu(ptr noundef %add.ptr.i.i.i.i.i.i, ptr noundef nonnull @__xdp_mem_allocator_rcu_free) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %rhashtable_remove_fast.exit.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %call = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end.thread_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end.while.end.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.end:                                        ; preds = %land.rhs
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #11
  %cmp3 = icmp eq ptr %call23, inttoptr (i32 -11 to ptr)
  br i1 %cmp3, label %while.end.do.body_crit_edge, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.end.thread
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #11
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mem_disconnect(ptr noundef %xa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_disconnect, i32 0, i32 1), ptr blockaddress(@trace_mem_disconnect, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !129

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !143
  %call42 = tail call i32 @__traceiter_mem_disconnect(ptr noundef null, ptr noundef %xa) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_disconnect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_disconnect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mem_disconnect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mem_disconnect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 345, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__xdp_mem_allocator_rcu_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -16
  %id = getelementptr i8, ptr %rcu, i32 -12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @mem_id_pool, i32 noundef %1) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mem_disconnect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !146

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !124

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !149
  %7 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !151
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #11
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !127

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #11, !srcloc !153
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !155
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %3 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  %2 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mem_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !70, !72, !73, !74, !76, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__ksymtab_xdp_unreg_mem_model, !1, !"__ksymtab_xdp_unreg_mem_model", i1 false, i1 false}
!1 = !{!"../net/core/xdp.c", i32 133, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/core/xdp.c", i32 138, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_xdp_rxq_info_unreg_mem_model, !6, !"__ksymtab_xdp_rxq_info_unreg_mem_model", i1 false, i1 false}
!6 = !{!"../net/core/xdp.c", i32 144, i32 1}
!7 = !{ptr @__ksymtab_xdp_rxq_info_unreg, !8, !"__ksymtab_xdp_rxq_info_unreg", i1 false, i1 false}
!8 = !{!"../net/core/xdp.c", i32 157, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/core/xdp.c", i32 169, i32 3}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/core/xdp.c", i32 174, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/core/xdp.c", i32 179, i32 3}
!15 = !{ptr @__ksymtab_xdp_rxq_info_reg, !16, !"__ksymtab_xdp_rxq_info_reg", i1 false, i1 false}
!16 = !{!"../net/core/xdp.c", i32 192, i32 1}
!17 = !{ptr @__ksymtab_xdp_rxq_info_unused, !18, !"__ksymtab_xdp_rxq_info_unused", i1 false, i1 false}
!18 = !{!"../net/core/xdp.c", i32 198, i32 1}
!19 = !{ptr @__ksymtab_xdp_rxq_info_is_reg, !20, !"__ksymtab_xdp_rxq_info_is_reg", i1 false, i1 false}
!20 = !{!"../net/core/xdp.c", i32 204, i32 1}
!21 = !{ptr @__ksymtab_xdp_reg_mem_model, !22, !"__ksymtab_xdp_reg_mem_model", i1 false, i1 false}
!22 = !{!"../net/core/xdp.c", i32 344, i32 1}
!23 = !{ptr @__ksymtab_xdp_rxq_info_reg_mem_model, !24, !"__ksymtab_xdp_rxq_info_reg_mem_model", i1 false, i1 false}
!24 = !{!"../net/core/xdp.c", i32 365, i32 1}
!25 = !{ptr @__ksymtab_xdp_return_frame, !26, !"__ksymtab_xdp_return_frame", i1 false, i1 false}
!26 = !{!"../net/core/xdp.c", i32 412, i32 1}
!27 = !{ptr @__ksymtab_xdp_return_frame_rx_napi, !28, !"__ksymtab_xdp_return_frame_rx_napi", i1 false, i1 false}
!28 = !{!"../net/core/xdp.c", i32 418, i32 1}
!29 = !{ptr @__ksymtab_xdp_flush_frame_bulk, !30, !"__ksymtab_xdp_flush_frame_bulk", i1 false, i1 false}
!30 = !{!"../net/core/xdp.c", i32 441, i32 1}
!31 = !{ptr @__ksymtab_xdp_return_frame_bulk, !32, !"__ksymtab_xdp_return_frame_bulk", i1 false, i1 false}
!32 = !{!"../net/core/xdp.c", i32 472, i32 1}
!33 = !{ptr @__ksymtab___xdp_release_frame, !34, !"__ksymtab___xdp_release_frame", i1 false, i1 false}
!34 = !{!"../net/core/xdp.c", i32 492, i32 1}
!35 = !{ptr @__ksymtab_xdp_attachment_setup, !36, !"__ksymtab_xdp_attachment_setup", i1 false, i1 false}
!36 = !{!"../net/core/xdp.c", i32 502, i32 1}
!37 = !{ptr @__ksymtab_xdp_convert_zc_to_xdp_frame, !38, !"__ksymtab_xdp_convert_zc_to_xdp_frame", i1 false, i1 false}
!38 = !{!"../net/core/xdp.c", i32 541, i32 1}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/core/xdp.c", i32 546, i32 2}
!41 = !{ptr @__ksymtab_xdp_warn, !42, !"__ksymtab_xdp_warn", i1 false, i1 false}
!42 = !{!"../net/core/xdp.c", i32 548, i32 1}
!43 = !{ptr @__ksymtab_xdp_alloc_skb_bulk, !44, !"__ksymtab_xdp_alloc_skb_bulk", i1 false, i1 false}
!44 = !{!"../net/core/xdp.c", i32 559, i32 1}
!45 = !{ptr @__ksymtab___xdp_build_skb_from_frame, !46, !"__ksymtab___xdp_build_skb_from_frame", i1 false, i1 false}
!46 = !{!"../net/core/xdp.c", i32 603, i32 1}
!47 = !{ptr @__ksymtab_xdp_build_skb_from_frame, !48, !"__ksymtab_xdp_build_skb_from_frame", i1 false, i1 false}
!48 = !{!"../net/core/xdp.c", i32 618, i32 1}
!49 = !{ptr @mem_id_ht, !50, !"mem_id_ht", i1 false, i1 false}
!50 = !{!"../net/core/xdp.c", i32 34, i32 27}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!57 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!63 = !{ptr @mem_id_rht_params, !64, !"mem_id_rht_params", i1 false, i1 false}
!64 = !{!"../net/core/xdp.c", i32 57, i32 39}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"mem_id_init", i1 false, i1 false}
!69 = !{!"../net/core/xdp.c", i32 33, i32 13}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/core/xdp.c", i32 28, i32 8}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mem_id_lock, !71, !"mem_id_lock", i1 false, i1 false}
!74 = !{ptr @mem_id_next, !75, !"mem_id_next", i1 false, i1 false}
!75 = !{!"../net/core/xdp.c", i32 31, i32 12}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/core/xdp.c", i32 27, i32 8}
!78 = !{ptr @mem_id_pool, !77, !"mem_id_pool", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/trace/events/xdp.h", i32 320, i32 1}
!81 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!85 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!92 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/trace/events/xdp.h", i32 347, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/core/xdp.c", i32 403, i32 3}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/mm.h", i32 717, i32 2}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2149689159}
!123 = !{i64 2149689425}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2157090468}
!126 = !{i64 2157093902}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2158350461}
!129 = !{i64 2149259164, i64 2149259169, i64 2149259182, i64 2149259226, i64 2149259260, i64 2149259281}
!130 = !{i64 2157469985}
!131 = !{i64 2157470184}
!132 = !{i64 2149697718}
!133 = !{i64 2149698754}
!134 = !{i64 2153682706, i64 2153683189, i64 2153682743, i64 2153682799, i64 2153682833, i64 2153682857, i64 2153682898, i64 2153682919, i64 2153682947, i64 2153682981}
!135 = !{i64 2148786314}
!136 = !{i64 2148701023, i64 2148701055, i64 2148701084, i64 2148701118, i64 2148701149, i64 2148701172}
!137 = !{i64 2148786543}
!138 = !{i64 2149358354, i64 2149358377, i64 2149358409, i64 2149358441, i64 2149358479, i64 2149358509}
!139 = !{i64 2155226972, i64 2155227460, i64 2155227009, i64 2155227065, i64 2155227099, i64 2155227123, i64 2155227164, i64 2155227185, i64 2155227213, i64 2155227247}
!140 = !{i64 2157157844}
!141 = !{i64 2148700303, i64 2148700329, i64 2148700358, i64 2148700392, i64 2148700423, i64 2148700446}
!142 = !{i8 0, i8 2}
!143 = !{i64 2157449391}
!144 = !{i64 2157449586}
!145 = !{i64 2152052985}
!146 = !{!"branch_weights", i32 2146410443, i32 1073205}
!147 = !{i64 2148706696, i64 2148706728, i64 2148706757, i64 2148706791, i64 2148706822, i64 2148706845}
!148 = !{i64 2148795801}
!149 = !{i64 2152053145}
!150 = !{i64 2152053422}
!151 = !{i64 2152053264}
!152 = !{i64 2152053627}
!153 = !{i64 2152054690, i64 2152059243, i64 2152054727, i64 2152054783, i64 2152054817, i64 2152054841, i64 2152054882, i64 2152054903, i64 2152054931, i64 2152054965}
!154 = !{i64 2148794688}
!155 = !{i64 2148705083, i64 2148705115, i64 2148705144, i64 2148705178, i64 2148705209, i64 2148705232}
!156 = !{i64 2152060146}
!157 = !{i64 2157083541}
!158 = !{i64 2157085840}
