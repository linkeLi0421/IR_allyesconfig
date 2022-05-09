; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb3_register_client\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_register_client\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_register_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_register_client\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_unregister_client\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_unregister_client\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_unregister_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_unregister_client\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_free_atid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_free_atid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_free_atid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_free_atid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_free_atid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_free_atid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_free_stid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_free_stid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_free_stid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_free_stid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_free_stid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_free_stid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_insert_tid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_insert_tid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_insert_tid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_insert_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_insert_tid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_insert_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_queue_tid_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_queue_tid_release\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_queue_tid_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_queue_tid_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_queue_tid_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_queue_tid_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_remove_tid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_remove_tid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_remove_tid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_remove_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_remove_tid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_remove_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_alloc_atid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_alloc_atid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_alloc_atid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_alloc_atid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_alloc_atid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_alloc_atid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_alloc_stid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_alloc_stid\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_alloc_stid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_alloc_stid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_alloc_stid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_alloc_stid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dev2t3cdev\22, \22a\22\09"
module asm "\09.weak\09__crc_dev2t3cdev\09\09\09\09"
module asm "\09.long\09__crc_dev2t3cdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev2t3cdev:\09\09\09\09\09"
module asm "\09.asciz \09\22dev2t3cdev\22\09\09\09\09\09"
module asm "__kstrtabns_dev2t3cdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t3_register_cpl_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_t3_register_cpl_handler\09\09\09\09"
module asm "\09.long\09__crc_t3_register_cpl_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t3_register_cpl_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22t3_register_cpl_handler\22\09\09\09\09\09"
module asm "__kstrtabns_t3_register_cpl_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb3_ofld_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb3_ofld_send\09\09\09\09"
module asm "\09.long\09__crc_cxgb3_ofld_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb3_ofld_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb3_ofld_send\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb3_ofld_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cxgb3_client = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.t3c_data = type { %struct.list_head, ptr, i32, i32, i32, ptr, [100 x i8], %struct.tid_info, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, [28 x i8] }
%struct.tid_info = type { ptr, i32, %struct.atomic_t, ptr, i32, i32, ptr, i32, i32, [92 x i8], %struct.spinlock, ptr, i32, [76 x i8], %struct.spinlock, ptr, i32, [76 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.active_open_entry = type { %struct.t3c_tid_entry }
%struct.t3c_tid_entry = type { ptr, ptr }
%union.listen_entry = type { %struct.t3c_tid_entry }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cpl_tid_release = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.work_request_hdr = type { i32, i32 }
%union.opcode_tid = type { i32 }
%struct.tid_range = type { i32, i32 }
%struct.mtutab = type { i32, ptr }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.193], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.193 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.l2t_data = type { i32, ptr, %struct.atomic_t, %struct.rwlock_t, %struct.callback_head, [0 x %struct.l2t_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.l2t_entry = type { i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, [6 x i8] }
%struct.iff_mac = type { ptr, ptr, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.186 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ddp_params = type { i32, i32, i32, ptr }
%struct.adap_ports = type { i32, [2 x ptr] }
%struct.ulp_iscsi_info = type { i32, i32, i32, i32, [4 x i8], i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.192, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.192 = type { ptr }
%struct.rdma_info = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.rdma_cq_op = type { i32, i32, i32 }
%struct.ch_mem_range = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.rdma_cq_setup = type { i32, i64, i32, i32, i32, i32 }
%struct.rdma_ctrlqp_setup = type { i64, i32 }
%struct.ofld_page_info = type { i32, i32 }
%struct.iscsi_ipv4addr = type { ptr, i32 }
%struct.ch_embedded_info = type { i32, i32 }
%struct.cpl_smt_write_rpl = type { %union.opcode_tid, i8, [3 x i8] }
%struct.cpl_l2t_write_rpl = type { %union.opcode_tid, i8, [3 x i8] }
%struct.cpl_rte_write_rpl = type { %union.opcode_tid, i8, [3 x i8] }
%struct.cpl_pass_accept_req = type { %union.opcode_tid, i16, i16, i32, i32, i32, %struct.tcp_options, [6 x i8], i16, [6 x i8], i8, i8, i32, i32 }
%struct.tcp_options = type { i16, i8, i8 }
%struct.cpl_act_open_rpl = type { %union.opcode_tid, i16, i16, i32, i32, i32, [3 x i8], i8 }
%struct.cpl_abort_req_rss = type { %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_act_establish = type { %union.opcode_tid, i16, i16, i32, i32, i32, i16, i16, i32, i32 }
%struct.netevent_redirect = type { ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i8, i8, i16, i64, i64 }

@cxgb3_db_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cxgb3_db_lock, i64 52), ptr getelementptr (i8, ptr @cxgb3_db_lock, i64 52) }, ptr @cxgb3_db_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@client_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @client_list, ptr @client_list }, [24 x i8] zeroinitializer }, align 32
@ofld_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ofld_dev_list, ptr @ofld_dev_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb3_register_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_register_client = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_register_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_register_client to i32), ptr @__kstrtab_cxgb3_register_client, ptr @__kstrtabns_cxgb3_register_client }, section "___ksymtab+cxgb3_register_client", align 4
@__kstrtab_cxgb3_unregister_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_unregister_client = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_unregister_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_unregister_client to i32), ptr @__kstrtab_cxgb3_unregister_client, ptr @__kstrtabns_cxgb3_unregister_client }, section "___ksymtab+cxgb3_unregister_client", align 4
@__kstrtab_cxgb3_free_atid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_free_atid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_free_atid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_free_atid to i32), ptr @__kstrtab_cxgb3_free_atid, ptr @__kstrtabns_cxgb3_free_atid }, section "___ksymtab+cxgb3_free_atid", align 4
@__kstrtab_cxgb3_free_stid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_free_stid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_free_stid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_free_stid to i32), ptr @__kstrtab_cxgb3_free_stid, ptr @__kstrtabns_cxgb3_free_stid }, section "___ksymtab+cxgb3_free_stid", align 4
@__kstrtab_cxgb3_insert_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_insert_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_insert_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_insert_tid to i32), ptr @__kstrtab_cxgb3_insert_tid, ptr @__kstrtabns_cxgb3_insert_tid }, section "___ksymtab+cxgb3_insert_tid", align 4
@__kstrtab_cxgb3_queue_tid_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_queue_tid_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_queue_tid_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_queue_tid_release to i32), ptr @__kstrtab_cxgb3_queue_tid_release, ptr @__kstrtabns_cxgb3_queue_tid_release }, section "___ksymtab+cxgb3_queue_tid_release", align 4
@__kstrtab_cxgb3_remove_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_remove_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_remove_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_remove_tid to i32), ptr @__kstrtab_cxgb3_remove_tid, ptr @__kstrtabns_cxgb3_remove_tid }, section "___ksymtab+cxgb3_remove_tid", align 4
@__kstrtab_cxgb3_alloc_atid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_alloc_atid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_alloc_atid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_alloc_atid to i32), ptr @__kstrtab_cxgb3_alloc_atid, ptr @__kstrtabns_cxgb3_alloc_atid }, section "___ksymtab+cxgb3_alloc_atid", align 4
@__kstrtab_cxgb3_alloc_stid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_alloc_stid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_alloc_stid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_alloc_stid to i32), ptr @__kstrtab_cxgb3_alloc_stid, ptr @__kstrtabns_cxgb3_alloc_stid }, section "___ksymtab+cxgb3_alloc_stid", align 4
@__kstrtab_dev2t3cdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev2t3cdev = external dso_local constant [0 x i8], align 1
@__ksymtab_dev2t3cdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev2t3cdev to i32), ptr @__kstrtab_dev2t3cdev, ptr @__kstrtabns_dev2t3cdev }, section "___ksymtab+dev2t3cdev", align 4
@cpl_handlers = internal global { [166 x ptr], [168 x i8] } zeroinitializer, align 32
@t3_register_cpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cxgb3: T3C: handler registration for opcode %x failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"t3_register_cpl_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\00", [45 x i8] zeroinitializer }, align 32
@t3_register_cpl_handler._entry_ptr = internal global ptr @t3_register_cpl_handler._entry, section ".printk_index", align 4
@__kstrtab_t3_register_cpl_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_t3_register_cpl_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_t3_register_cpl_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t3_register_cpl_handler to i32), ptr @__kstrtab_t3_register_cpl_handler, ptr @__kstrtabns_t3_register_cpl_handler }, section "___ksymtab+t3_register_cpl_handler", align 4
@__kstrtab_cxgb3_ofld_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb3_ofld_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb3_ofld_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb3_ofld_send to i32), ptr @__kstrtab_cxgb3_ofld_send, ptr @__kstrtabns_cxgb3_ofld_send }, section "___ksymtab+cxgb3_ofld_send", align 4
@cxgb3_offload_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&t->tid_release_task)\00", [56 x i8] zeroinitializer }, align 32
@cxgb3_offload_activate.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&t->tid_release_lock\00", [43 x i8] zeroinitializer }, align 32
@adapter_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @adapter_list, ptr @adapter_list }, [24 x i8] zeroinitializer }, align 32
@nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nb_callback, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cxgb3_offload_deactivate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb3_db_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxgb3_db_lock\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@do_bad_cpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cxgb3: %s: received bad CPL command 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_bad_cpl\00", [21 x i8] zeroinitializer }, align 32
@do_bad_cpl._entry_ptr = internal global ptr @do_bad_cpl._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_tid_tabs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&t->stid_lock\00", [18 x i8] zeroinitializer }, align 32
@init_tid_tabs.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&t->atid_lock\00", [18 x i8] zeroinitializer }, align 32
@process_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cxgb3: %s: CPL message (opcode %u) had unknown TID %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"process_rx\00", [21 x i8] zeroinitializer }, align 32
@process_rx._entry_ptr = internal global ptr @process_rx._entry, section ".printk_index", align 4
@adapter_list_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adapter_list_lock\00", [46 x i8] zeroinitializer }, align 32
@cxgb_redirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxgb3: %s: couldn't allocate new l2t entry!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxgb_redirect\00", [18 x i8] zeroinitializer }, align 32
@cxgb_redirect._entry_ptr = internal global ptr @cxgb_redirect._entry, section ".printk_index", align 4
@cxgb_redirect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@set_l2t_ix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cxgb3: %s: cannot allocate skb!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_l2t_ix\00", [21 x i8] zeroinitializer }, align 32
@set_l2t_ix._entry_ptr = internal global ptr @set_l2t_ix._entry, section ".printk_index", align 4
@l2t_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb3/l2t.h\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cxgb_ulp_iscsi_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxgb3: %s, iscsi set MaxRxData to 16224 (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgb_ulp_iscsi_ctl\00", [45 x i8] zeroinitializer }, align 32
@cxgb_ulp_iscsi_ctl._entry_ptr = internal global ptr @cxgb_ulp_iscsi_ctl._entry, section ".printk_index", align 4
@cxgb_ulp_iscsi_ctl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cxgb3: %s, setting iscsi pgsz 0x%x, %u,%u,%u,%u\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgb_ulp_iscsi_ctl._entry_ptr.29 = internal global ptr @cxgb_ulp_iscsi_ctl._entry.27, section ".printk_index", align 4
@register_tdev.unit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ofld_dev%d\00", [21 x i8] zeroinitializer }, align 32
@do_smt_write_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cxgb3: Unexpected SMT_WRITE_RPL status %u for entry %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_smt_write_rpl\00", [47 x i8] zeroinitializer }, align 32
@do_smt_write_rpl._entry_ptr = internal global ptr @do_smt_write_rpl._entry, section ".printk_index", align 4
@do_l2t_write_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cxgb3: Unexpected L2T_WRITE_RPL status %u for entry %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_l2t_write_rpl\00", [47 x i8] zeroinitializer }, align 32
@do_l2t_write_rpl._entry_ptr = internal global ptr @do_l2t_write_rpl._entry, section ".printk_index", align 4
@do_rte_write_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cxgb3: Unexpected RTE_WRITE_RPL status %u for entry %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_rte_write_rpl\00", [47 x i8] zeroinitializer }, align 32
@do_rte_write_rpl._entry_ptr = internal global ptr @do_rte_write_rpl._entry, section ".printk_index", align 4
@do_stid_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cxgb3: %s: received clientless CPL command 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_stid_rpl\00", [20 x i8] zeroinitializer }, align 32
@do_stid_rpl._entry_ptr = internal global ptr @do_stid_rpl._entry, section ".printk_index", align 4
@do_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: passive open TID %u too large\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_cr\00", [26 x i8] zeroinitializer }, align 32
@do_cr._entry_ptr = internal global ptr @do_cr._entry, section ".printk_index", align 4
@do_cr._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.40, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_cr._entry_ptr.42 = internal global ptr @do_cr._entry.41, section ".printk_index", align 4
@do_hwtid_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.43, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_hwtid_rpl\00", [19 x i8] zeroinitializer }, align 32
@do_hwtid_rpl._entry_ptr = internal global ptr @do_hwtid_rpl._entry, section ".printk_index", align 4
@do_act_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.44, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_act_open_rpl\00", [16 x i8] zeroinitializer }, align 32
@do_act_open_rpl._entry_ptr = internal global ptr @do_act_open_rpl._entry, section ".printk_index", align 4
@do_abort_req_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"do_abort_req_rss: couldn't get skb!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_abort_req_rss\00", [47 x i8] zeroinitializer }, align 32
@do_abort_req_rss._entry_ptr = internal global ptr @do_abort_req_rss._entry, section ".printk_index", align 4
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@do_act_establish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: active establish TID %u too large\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_act_establish\00", [47 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr = internal global ptr @do_act_establish._entry, section ".printk_index", align 4
@do_act_establish._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.49, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.51 = internal global ptr @do_act_establish._entry.50, section ".printk_index", align 4
@do_term._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.52, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_term\00", [24 x i8] zeroinitializer }, align 32
@do_term._entry_ptr = internal global ptr @do_term._entry, section ".printk_index", align 4
@switch.table.cxgb3_adapter_ofld = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 50, i64 51, i64 70]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.55 = internal global [9 x i64] [i64 7, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"cxgb3_db_lock\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"client_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 56, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"ofld_dev_list\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 57, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"cpl_handlers\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 999, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1010, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1254, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1255, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"adapter_list\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 61, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 983, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1301, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 58, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 992, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1179, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1180, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1030, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"adapter_list_lock\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 60, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1132, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1095, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/l2t.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 134, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 695, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 723, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 239, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 259, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1311, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1314, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 711, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 722, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 733, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 771, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 804, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 816, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 789, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 753, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 872, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2789, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 898, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 910, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [54 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 956, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [32 x i8] c"switch.table.cxgb3_adapter_ofld\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__ksymtab_cxgb3_alloc_atid, ptr @__ksymtab_cxgb3_alloc_stid, ptr @__ksymtab_cxgb3_free_atid, ptr @__ksymtab_cxgb3_free_stid, ptr @__ksymtab_cxgb3_insert_tid, ptr @__ksymtab_cxgb3_ofld_send, ptr @__ksymtab_cxgb3_queue_tid_release, ptr @__ksymtab_cxgb3_register_client, ptr @__ksymtab_cxgb3_remove_tid, ptr @__ksymtab_cxgb3_unregister_client, ptr @__ksymtab_dev2t3cdev, ptr @__ksymtab_t3_register_cpl_handler, ptr @cxgb_redirect._entry, ptr @cxgb_redirect._entry_ptr, ptr @cxgb_ulp_iscsi_ctl._entry, ptr @cxgb_ulp_iscsi_ctl._entry.27, ptr @cxgb_ulp_iscsi_ctl._entry_ptr, ptr @cxgb_ulp_iscsi_ctl._entry_ptr.29, ptr @do_abort_req_rss._entry, ptr @do_abort_req_rss._entry_ptr, ptr @do_act_establish._entry, ptr @do_act_establish._entry.50, ptr @do_act_establish._entry_ptr, ptr @do_act_establish._entry_ptr.51, ptr @do_act_open_rpl._entry, ptr @do_act_open_rpl._entry_ptr, ptr @do_bad_cpl._entry, ptr @do_bad_cpl._entry_ptr, ptr @do_cr._entry, ptr @do_cr._entry.41, ptr @do_cr._entry_ptr, ptr @do_cr._entry_ptr.42, ptr @do_hwtid_rpl._entry, ptr @do_hwtid_rpl._entry_ptr, ptr @do_l2t_write_rpl._entry, ptr @do_l2t_write_rpl._entry_ptr, ptr @do_rte_write_rpl._entry, ptr @do_rte_write_rpl._entry_ptr, ptr @do_smt_write_rpl._entry, ptr @do_smt_write_rpl._entry_ptr, ptr @do_stid_rpl._entry, ptr @do_stid_rpl._entry_ptr, ptr @do_term._entry, ptr @do_term._entry_ptr, ptr @process_rx._entry, ptr @process_rx._entry_ptr, ptr @set_l2t_ix._entry, ptr @set_l2t_ix._entry_ptr, ptr @t3_register_cpl_handler._entry, ptr @t3_register_cpl_handler._entry_ptr, ptr @cxgb3_db_lock, ptr @client_list, ptr @ofld_dev_list, ptr @cpl_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cxgb3_offload_activate.__key, ptr @.str.3, ptr @cxgb3_offload_activate.__key.4, ptr @.str.5, ptr @adapter_list, ptr @nb, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_tid_tabs.__key, ptr @.str.11, ptr @init_tid_tabs.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @adapter_list_lock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @register_tdev.unit, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @switch.table.cxgb3_adapter_ofld], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_db_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofld_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpl_handlers to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_register_cpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_offload_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_offload_activate.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bad_cpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tid_tabs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tid_tabs.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_redirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_l2t_ix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_ulp_iscsi_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_ulp_iscsi_ctl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_tdev.unit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_smt_write_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_l2t_write_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rte_write_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_stid_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cr._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_hwtid_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_req_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_term._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxgb3_adapter_ofld to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_register_client(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %client_list = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 5
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @client_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %client_list, ptr noundef %0, ptr noundef nonnull @client_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %client_list, ptr getelementptr inbounds (%struct.list_head, ptr @client_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @client_list, ptr %client_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %client_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %add = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %add to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %list_add_tail.exit.if.end8_crit_edge, label %for.cond.preheader

list_add_tail.exit.if.end8_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.preheader:                               ; preds = %list_add_tail.exit
  %.pn14 = load ptr, ptr @ofld_dev_list, align 4
  %cmp.not16 = icmp eq ptr %.pn14, @ofld_dev_list
  br i1 %cmp.not16, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn14, %for.cond.preheader.for.body_crit_edge ]
  %open_device_map.i = getelementptr i8, ptr %.pn17, i32 76
  %6 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %open_device_map.i, align 4
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %tdev.018 = getelementptr i8, ptr %.pn17, i32 -20
  %9 = ptrtoint ptr %add to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add, align 4
  tail call void %10(ptr noundef %tdev.018) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, @ofld_dev_list
  br i1 %cmp.not, label %for.inc.if.end8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %list_add_tail.exit.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_unregister_client(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %client_list = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %client_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %remove = getelementptr inbounds %struct.cxgb3_client, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %list_del.exit.if.end8_crit_edge, label %for.cond.preheader

list_del.exit.if.end8_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.preheader:                               ; preds = %list_del.exit
  %.pn14 = load ptr, ptr @ofld_dev_list, align 4
  %cmp.not16 = icmp eq ptr %.pn14, @ofld_dev_list
  br i1 %cmp.not16, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn14, %for.cond.preheader.for.body_crit_edge ]
  %open_device_map.i = getelementptr i8, ptr %.pn17, i32 76
  %10 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %open_device_map.i, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not = icmp eq i32 %12, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %tdev.018 = getelementptr i8, ptr %.pn17, i32 -20
  %13 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remove, align 4
  tail call void %14(ptr noundef %tdev.018) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, @ofld_dev_list
  br i1 %cmp.not, label %for.inc.if.end8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %list_del.exit.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_add_clients(ptr noundef %tdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %.pn9 = load ptr, ptr @client_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, @client_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %add = getelementptr i8, ptr %.pn11, i32 -16
  %0 = ptrtoint ptr %add to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %1(ptr noundef %tdev) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, @client_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_remove_clients(ptr noundef %tdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %.pn9 = load ptr, ptr @client_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, @client_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %remove = getelementptr i8, ptr %.pn11, i32 -12
  %0 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %1(ptr noundef %tdev) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, @client_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_event_notify(ptr noundef %tdev, i32 noundef %event, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %.pn9 = load ptr, ptr @client_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, @client_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %event_handler = getelementptr i8, ptr %.pn11, i32 8
  %0 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %1(ptr noundef %tdev, i32 noundef %event, i32 noundef %port) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, @client_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cxgb3_set_dummy_ops(ptr nocapture noundef writeonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %recv = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rx_offload_blackhole, ptr %recv, align 4
  %neigh_update = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %neigh_update to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dummy_neigh_update, ptr %neigh_update, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_offload_blackhole(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %skbs, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not2 = icmp eq i32 %n, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %n.addr.03 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %n, %entry.while.body_crit_edge ]
  %dec = add i32 %n.addr.03, -1
  %arrayidx = getelementptr ptr, ptr %skbs, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #15
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_neigh_update(ptr nocapture noundef %dev, ptr nocapture noundef %neigh) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb3_free_atid(ptr nocapture noundef readonly %tdev, i32 noundef %atid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %atid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atid_tab.i, align 8
  %atid_base.i = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %atid_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atid_base.i, align 32
  %sub.i = sub i32 %atid, %5
  %arrayidx.i = getelementptr %union.active_open_entry, ptr %3, i32 %sub.i
  %ctx1 = getelementptr inbounds %struct.t3c_tid_entry, ptr %arrayidx.i, i32 0, i32 1
  %6 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx1, align 4
  %atid_lock = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %atid_lock) #15
  %afree = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 11
  %8 = ptrtoint ptr %afree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %afree, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx.i, align 4
  store ptr %arrayidx.i, ptr %afree, align 4
  %atids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 12
  %11 = ptrtoint ptr %atids_in_use to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %atids_in_use, align 16
  %dec = add i32 %12, -1
  store i32 %dec, ptr %atids_in_use, align 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %atid_lock) #15
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_free_stid(ptr nocapture noundef readonly %tdev, i32 noundef %stid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %stid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stid_tab.i, align 4
  %stid_base.i = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stid_base.i, align 4
  %sub.i = sub i32 %stid, %5
  %arrayidx.i = getelementptr %union.listen_entry, ptr %3, i32 %sub.i
  %stid_lock = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %stid_lock) #15
  %sfree = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 15
  %6 = ptrtoint ptr %sfree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sfree, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arrayidx.i, align 4
  store ptr %arrayidx.i, ptr %sfree, align 4
  %stids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 16
  %9 = ptrtoint ptr %stids_in_use to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stids_in_use, align 16
  %dec = add i32 %10, -1
  store i32 %dec, ptr %stids_in_use, align 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %stid_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_insert_tid(ptr nocapture noundef readonly %tdev, ptr noundef %client, ptr noundef %ctx, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tid_maps, align 128
  %arrayidx = getelementptr %struct.t3c_tid_entry, ptr %3, i32 %tid
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %arrayidx, align 4
  %5 = load ptr, ptr %tid_maps, align 128
  %ctx4 = getelementptr %struct.t3c_tid_entry, ptr %5, i32 %tid, i32 1
  %6 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctx, ptr %ctx4, align 4
  %tids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %tids_in_use, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use, ptr %tids_in_use, i32 1, ptr elementtype(i32) %tids_in_use) #15, !srcloc !172
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_queue_tid_release(ptr nocapture noundef readonly %tdev, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tid_maps, align 128
  %arrayidx = getelementptr %struct.t3c_tid_entry, ptr %3, i32 %tid
  %tid_release_lock = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_release_lock) #15
  %tid_release_list = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tid_release_list, align 128
  %ctx = getelementptr %struct.t3c_tid_entry, ptr %3, i32 %tid, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ctx, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  store ptr %arrayidx, ptr %tid_release_list, align 128
  %8 = load ptr, ptr %ctx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %release_list_incomplete = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %release_list_incomplete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %release_list_incomplete, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tid_release_task = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %tid_release_task) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_release_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_remove_tid(ptr noundef %tdev, ptr noundef %ctx, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7
  %ntids = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tid)
  %cmp.not = icmp ugt i32 %3, %tid
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !173

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 631, 0\0A.popsection", ""() #15, !srcloc !174
  unreachable

do.end7:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end7
  %6 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tid_maps, align 128
  %ctx10 = getelementptr %struct.t3c_tid_entry, ptr %7, i32 %tid, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx10, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  %8 = ptrtoint ptr %ctx to i32
  tail call void @llvm.prefetch.p0(ptr %ctx10, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then9
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %ctx10, i32 %8, i32 0) #15, !srcloc !176
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !177
  br label %if.end43

if.else:                                          ; preds = %do.end7
  %call.i57 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool29.not = icmp eq ptr %call.i57, null
  br i1 %tobool29.not, label %if.else41, label %if.then36, !prof !178

if.then36:                                        ; preds = %if.else
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i57, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %priority.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i57, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %mk_tid_release.exit, label %do.body3.i.i, !prof !173

do.body3.i.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !179
  unreachable

mk_tid_release.exit:                              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i57, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 16
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i57, i32 0, i32 6
  %15 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %16, 16
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777216, ptr %14, align 4
  %or.i = or i32 %tid, 436207616
  %ot.i = getelementptr inbounds %struct.cpl_tid_release, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %ot.i, align 4
  tail call fastcc void @local_bh_disable() #15
  %send.i = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 5
  %19 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send.i, align 4
  %call.i58 = tail call i32 %20(ptr noundef %tdev, ptr noundef nonnull %call.i57) #15
  tail call fastcc void @local_bh_enable() #15
  %21 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tid_maps, align 128
  %ctx40 = getelementptr %struct.t3c_tid_entry, ptr %22, i32 %tid, i32 1
  %23 = ptrtoint ptr %ctx40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ctx40, align 4
  br label %if.end43

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cxgb3_queue_tid_release(ptr noundef %tdev, i32 noundef %tid)
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %mk_tid_release.exit, %__cmpxchg.exit
  %tids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %tids_in_use, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use, ptr %tids_in_use, i32 1, ptr elementtype(i32) %tids_in_use) #15, !srcloc !180
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb3_ofld_send(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %send = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send, align 4
  %call = tail call i32 %1(ptr noundef %dev, ptr noundef %skb) #15
  tail call fastcc void @local_bh_enable()
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb3_alloc_atid(ptr nocapture noundef readonly %tdev, ptr noundef %client, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %atid_lock = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %atid_lock) #15
  %afree = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 11
  %2 = ptrtoint ptr %afree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afree, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 12
  %4 = ptrtoint ptr %atids_in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atids_in_use, align 16
  %tids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tids_in_use, i32 noundef 4) #15
  %6 = ptrtoint ptr %tids_in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tids_in_use, align 4
  %add = add i32 %5, 16
  %add1 = add i32 %add, %7
  %ntids = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %9)
  %cmp.not = icmp ugt i32 %add1, %9
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %afree to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afree, align 4
  %atid_tab = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 6
  %12 = ptrtoint ptr %atid_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atid_tab, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %atid_base = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 8
  %14 = ptrtoint ptr %atid_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %atid_base, align 32
  %add3 = add i32 %sub.ptr.div, %15
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  store ptr %17, ptr %afree, align 4
  %ctx5 = getelementptr inbounds %struct.t3c_tid_entry, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %ctx5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ctx, ptr %ctx5, align 4
  store ptr %client, ptr %11, align 4
  %19 = ptrtoint ptr %atids_in_use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %atids_in_use, align 16
  %inc = add i32 %20, 1
  store i32 %inc, ptr %atids_in_use, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %atid.0 = phi i32 [ %add3, %if.then ], [ -1, %land.lhs.true.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %atid_lock) #15
  ret i32 %atid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb3_alloc_stid(ptr nocapture noundef readonly %tdev, ptr noundef %client, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %stid_lock = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %stid_lock) #15
  %sfree = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 15
  %2 = ptrtoint ptr %sfree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sfree, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %stid_tab = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %stid_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stid_tab, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %stid_base = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stid_base, align 4
  %add = add i32 %sub.ptr.div, %7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = ptrtoint ptr %sfree to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sfree, align 4
  %ctx3 = getelementptr inbounds %struct.t3c_tid_entry, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ctx, ptr %ctx3, align 4
  store ptr %client, ptr %3, align 4
  %stids_in_use = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7, i32 16
  %12 = ptrtoint ptr %stids_in_use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stids_in_use, align 16
  %inc = add i32 %13, 1
  store i32 %inc, ptr %stids_in_use, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stid.0 = phi i32 [ %add, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %stid_lock) #15
  ret i32 %stid.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dev2t3cdev(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_register_cpl_handler(i32 noundef %opcode, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 166, i32 %opcode)
  %cmp = icmp ult i32 %opcode, 166
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %h, null
  %spec.select = select i1 %tobool.not, ptr @do_bad_cpl, ptr %h
  %arrayidx = getelementptr [166 x ptr], ptr @cpl_handlers, i32 0, i32 %opcode
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spec.select, ptr %arrayidx, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %opcode) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_bad_cpl(ptr noundef %dev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, i32 noundef %conv) #18
  ret i32 3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb3_offload_activate(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %stid_range = alloca %struct.tid_range, align 4
  %tid_range = alloca %struct.tid_range, align 4
  %mtutab = alloca %struct.mtutab, align 4
  %l2t_capacity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stid_range) #15
  %0 = ptrtoint ptr %stid_range to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stid_range, align 4, !annotation !181
  %1 = getelementptr inbounds %struct.tid_range, ptr %stid_range, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tid_range) #15
  %3 = ptrtoint ptr %tid_range to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tid_range, align 4, !annotation !181
  %4 = getelementptr inbounds %struct.tid_range, ptr %tid_range, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mtutab) #15
  %6 = ptrtoint ptr %mtutab to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mtutab, align 4, !annotation !181
  %7 = getelementptr inbounds %struct.mtutab, ptr %mtutab, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l2t_capacity) #15
  %9 = ptrtoint ptr %l2t_capacity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %l2t_capacity, align 4, !annotation !181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 640) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 7
  %11 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl, align 4
  %tx_max_chunk = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call i32 %12(ptr noundef %adapter, i32 noundef 1, ptr noundef %tx_max_chunk) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_free_crit_edge, label %lor.lhs.false

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl, align 4
  %max_wrs = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 3
  %call3 = tail call i32 %14(ptr noundef %adapter, i32 noundef 0, ptr noundef %max_wrs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %lor.lhs.false.out_free_crit_edge, label %lor.lhs.false5

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl, align 4
  %call7 = call i32 %16(ptr noundef %adapter, i32 noundef 5, ptr noundef nonnull %l2t_capacity) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %lor.lhs.false5.out_free_crit_edge, label %lor.lhs.false9

lor.lhs.false5.out_free_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %17 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl, align 4
  %call11 = call i32 %18(ptr noundef %adapter, i32 noundef 6, ptr noundef nonnull %mtutab) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %lor.lhs.false9.out_free_crit_edge, label %lor.lhs.false13

lor.lhs.false9.out_free_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl, align 4
  %call15 = call i32 %20(ptr noundef %adapter, i32 noundef 2, ptr noundef nonnull %tid_range) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %lor.lhs.false13.out_free_crit_edge, label %lor.lhs.false17

lor.lhs.false13.out_free_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %21 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl, align 4
  %call19 = call i32 %22(ptr noundef %adapter, i32 noundef 3, ptr noundef nonnull %stid_range) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %lor.lhs.false17.out_free_crit_edge, label %if.end22

lor.lhs.false17.out_free_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end22:                                         ; preds = %lor.lhs.false17
  %23 = ptrtoint ptr %l2t_capacity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l2t_capacity, align 4
  %call23 = call ptr @t3_init_l2t(i32 noundef %24) #15
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.out_free_crit_edge, label %if.end26

if.end22.out_free_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end26:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %26)
  %cmp27 = icmp ult i32 %26, 131072
  %div109 = lshr i32 %26, 1
  %spec.select = select i1 %cmp27, i32 %div109, i32 65536
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = ptrtoint ptr %stid_range to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stid_range, align 4
  %mul3.i = add i32 %28, %26
  %add4.i = add i32 %mul3.i, %spec.select
  %add3.i = shl i32 %add4.i, 3
  %call.i.i5.i = call noalias ptr @kvmalloc_node(i32 noundef %add3.i, i32 noundef 3520, i32 noundef -1) #20
  %31 = ptrtoint ptr %tid_maps to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i5.i, ptr %tid_maps, align 128
  %tobool.not.i = icmp eq ptr %call.i.i5.i, null
  br i1 %tobool.not.i, label %out_free_l2t, label %if.end.i

if.end.i:                                         ; preds = %if.end26
  %arrayidx.i = getelementptr %struct.t3c_tid_entry, ptr %call.i.i5.i, i32 %26
  %stid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i, ptr %stid_tab.i, align 4
  %arrayidx7.i = getelementptr %union.listen_entry, ptr %arrayidx.i, i32 %28
  %atid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 6
  %33 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx7.i, ptr %atid_tab.i, align 8
  %ntids8.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %ntids8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %ntids8.i, align 4
  %nstids9.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 4
  %35 = ptrtoint ptr %nstids9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %28, ptr %nstids9.i, align 16
  %stid_base10.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 5
  %36 = ptrtoint ptr %stid_base10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %30, ptr %stid_base10.i, align 4
  %sfree.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 15
  %37 = ptrtoint ptr %sfree.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %sfree.i, align 4
  %natids11.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 7
  %38 = ptrtoint ptr %natids11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %natids11.i, align 4
  %atid_base12.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 8
  %39 = ptrtoint ptr %atid_base12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %atid_base12.i, align 32
  %afree.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 11
  %40 = ptrtoint ptr %afree.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %afree.i, align 4
  %atids_in_use.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 12
  %41 = ptrtoint ptr %atids_in_use.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %atids_in_use.i, align 16
  %stids_in_use.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 16
  %42 = ptrtoint ptr %stids_in_use.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %stids_in_use.i, align 16
  %tids_in_use.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use.i, i32 noundef 4) #15
  %43 = ptrtoint ptr %tids_in_use.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %tids_in_use.i, align 8
  %stid_lock.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 14
  call void @__raw_spin_lock_init(ptr noundef %stid_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_tid_tabs.__key, i16 noundef signext 3) #15
  %atid_lock.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 7, i32 10
  call void @__raw_spin_lock_init(ptr noundef %atid_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_tid_tabs.__key.12, i16 noundef signext 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not.i = icmp eq i32 %28, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end27.i_crit_edge, label %while.cond.preheader.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %dec6.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i)
  %tobool20.not7.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool20.not7.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec9.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec6.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %nstids.addr.08.i = phi i32 [ %dec9.i, %while.body.i.while.body.i_crit_edge ], [ %28, %while.cond.preheader.i.while.body.i_crit_edge ]
  %44 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx22.i = getelementptr %union.listen_entry, ptr %45, i32 %dec9.i
  %sub.i = add i32 %nstids.addr.08.i, -2
  %arrayidx24.i = getelementptr %union.listen_entry, ptr %45, i32 %sub.i
  %46 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx22.i, ptr %arrayidx24.i, align 4
  %dec.i = add i32 %dec9.i, -1
  %tobool20.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool20.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %47 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stid_tab.i, align 4
  %49 = ptrtoint ptr %sfree.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %sfree.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %while.end.i, %if.end.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool28.not.i = icmp eq i32 %spec.select, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end33_crit_edge, label %while.cond30.preheader.i

if.end27.i.if.end33_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

while.cond30.preheader.i:                         ; preds = %if.end27.i
  %dec3110.i = add nsw i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3110.i)
  %tobool32.not11.i = icmp eq i32 %dec3110.i, 0
  br i1 %tobool32.not11.i, label %while.cond30.preheader.i.while.end39.i_crit_edge, label %while.cond30.preheader.i.while.body33.i_crit_edge

while.cond30.preheader.i.while.body33.i_crit_edge: ; preds = %while.cond30.preheader.i
  br label %while.body33.i

while.cond30.preheader.i.while.end39.i_crit_edge: ; preds = %while.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end39.i

while.body33.i:                                   ; preds = %while.body33.i.while.body33.i_crit_edge, %while.cond30.preheader.i.while.body33.i_crit_edge
  %dec3113.i = phi i32 [ %dec31.i, %while.body33.i.while.body33.i_crit_edge ], [ %dec3110.i, %while.cond30.preheader.i.while.body33.i_crit_edge ]
  %natids.addr.012.i = phi i32 [ %dec3113.i, %while.body33.i.while.body33.i_crit_edge ], [ %spec.select, %while.cond30.preheader.i.while.body33.i_crit_edge ]
  %50 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %atid_tab.i, align 8
  %arrayidx35.i = getelementptr %union.active_open_entry, ptr %51, i32 %dec3113.i
  %sub37.i = add i32 %natids.addr.012.i, -2
  %arrayidx38.i = getelementptr %union.active_open_entry, ptr %51, i32 %sub37.i
  %52 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx35.i, ptr %arrayidx38.i, align 4
  %dec31.i = add i32 %dec3113.i, -1
  %tobool32.not.i = icmp eq i32 %dec31.i, 0
  br i1 %tobool32.not.i, label %while.body33.i.while.end39.i_crit_edge, label %while.body33.i.while.body33.i_crit_edge

while.body33.i.while.body33.i_crit_edge:          ; preds = %while.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body33.i

while.body33.i.while.end39.i_crit_edge:           ; preds = %while.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end39.i

while.end39.i:                                    ; preds = %while.body33.i.while.end39.i_crit_edge, %while.cond30.preheader.i.while.end39.i_crit_edge
  %53 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %atid_tab.i, align 8
  %55 = ptrtoint ptr %afree.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %afree.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %while.end39.i, %if.end27.i.if.end33_crit_edge
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 4
  %mtus34 = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %mtus34 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %mtus34, align 8
  %59 = ptrtoint ptr %mtutab to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mtutab, align 4
  %nmtus = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %nmtus to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %nmtus, align 4
  %tid_release_task = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 10
  call void @__init_work(ptr noundef %tid_release_task, i32 noundef 0) #15
  %62 = ptrtoint ptr %tid_release_task to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %tid_release_task, align 16
  %lockdep_map = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @cxgb3_offload_activate.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry38 = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry38, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 10, i32 2
  %65 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @t3_process_tid_release_list, ptr %func, align 4
  %tid_release_lock = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %tid_release_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cxgb3_offload_activate.__key.4, i16 noundef signext 3) #15
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i110 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %prev.i110, align 4
  %dev44 = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %adapter, ptr %dev44, align 8
  %l2opt = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 10
  %69 = ptrtoint ptr %l2opt to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call23, ptr %l2opt, align 4
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 12
  %70 = ptrtoint ptr %l4opt to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %l4opt, align 4
  %recv = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 6
  %71 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @process_rx, ptr %recv, align 4
  %neigh_update = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 8
  %72 = ptrtoint ptr %neigh_update to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @t3_l2t_update, ptr %neigh_update, align 4
  %73 = load volatile ptr, ptr @adapter_list, align 4
  %cmp.i.not = icmp eq ptr %73, @adapter_list
  br i1 %cmp.i.not, label %if.then59, label %if.end33.if.end61_crit_edge

if.end33.if.end61_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then59:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %call60 = call i32 @register_netevent_notifier(ptr noundef nonnull @nb) #15
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end33.if.end61_crit_edge
  %call.i = call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %nofail_skb = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 11
  %74 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %nofail_skb, align 4
  %release_list_incomplete = getelementptr inbounds %struct.t3c_data, ptr %call7.i.i, i32 0, i32 12
  %75 = ptrtoint ptr %release_list_incomplete to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %release_list_incomplete, align 32
  call fastcc void @add_adapter(ptr noundef %adapter)
  br label %cleanup

out_free_l2t:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void @kvfree(ptr noundef nonnull %call23) #15
  br label %out_free

out_free:                                         ; preds = %out_free_l2t, %if.end22.out_free_crit_edge, %lor.lhs.false17.out_free_crit_edge, %lor.lhs.false13.out_free_crit_edge, %lor.lhs.false9.out_free_crit_edge, %lor.lhs.false5.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ -95, %if.end.out_free_crit_edge ], [ -95, %lor.lhs.false.out_free_crit_edge ], [ -95, %lor.lhs.false5.out_free_crit_edge ], [ -95, %lor.lhs.false9.out_free_crit_edge ], [ -95, %lor.lhs.false13.out_free_crit_edge ], [ -95, %lor.lhs.false17.out_free_crit_edge ], [ -12, %out_free_l2t ], [ -12, %if.end22.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l2t_capacity) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mtutab) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tid_range) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stid_range) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_init_l2t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t3_process_tid_release_list(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tid_release_lock = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_release_lock) #15
  %tid_release_list = getelementptr i8, ptr %work, i32 -48
  %2 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tid_release_list, align 128
  %tobool.not69 = icmp eq ptr %3, null
  br i1 %tobool.not69, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nofail_skb = getelementptr i8, ptr %work, i32 44
  %tid_maps = getelementptr i8, ptr %work, i32 -432
  %send.i = getelementptr inbounds %struct.t3cdev, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %31, %cleanup.while.body_crit_edge ]
  %ctx = getelementptr inbounds %struct.t3c_tid_entry, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %7 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tid_release_list, align 128
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_release_lock) #15
  %call.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nofail_skb, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %cleanup.thread, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_release_lock) #15
  %10 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tid_release_list, align 128
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ctx, align 4
  store ptr %4, ptr %tid_release_list, align 128
  br label %while.end

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %while.body.if.end11_crit_edge
  %skb.060 = phi ptr [ %9, %if.end.if.end11_crit_edge ], [ %call.i, %while.body.if.end11_crit_edge ]
  %13 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tid_maps, align 128
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %priority.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i, label %mk_tid_release.exit, label %do.body3.i.i, !prof !173

do.body3.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !179
  unreachable

mk_tid_release.exit:                              ; preds = %if.end11
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 16
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 6
  %20 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %21, 16
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16777216, ptr %19, align 4
  %or.i = or i32 %sub.ptr.div, 436207616
  %ot.i = getelementptr inbounds %struct.cpl_tid_release, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %ot.i, align 4
  tail call fastcc void @local_bh_disable() #15
  %24 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send.i, align 4
  %call.i55 = tail call i32 %25(ptr noundef %1, ptr noundef nonnull %skb.060) #15
  tail call fastcc void @local_bh_enable() #15
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ctx, align 4
  %27 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nofail_skb, align 4
  %cmp = icmp eq ptr %skb.060, %28
  br i1 %cmp, label %if.then15, label %mk_tid_release.exit.cleanup_crit_edge

mk_tid_release.exit.cleanup_crit_edge:            ; preds = %mk_tid_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %mk_tid_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i56 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %29 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i56, ptr %nofail_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %mk_tid_release.exit.cleanup_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_release_lock) #15
  %30 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tid_release_list, align 128
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %32 = ptrtoint ptr %tid_release_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tid_release_list, align 128
  %cmp21 = icmp ne ptr %33, null
  %cond = zext i1 %cmp21 to i32
  %release_list_incomplete = getelementptr i8, ptr %work, i32 48
  %34 = ptrtoint ptr %release_list_incomplete to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %release_list_incomplete, align 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_release_lock) #15
  %nofail_skb23 = getelementptr i8, ptr %work, i32 44
  %35 = ptrtoint ptr %nofail_skb23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nofail_skb23, align 4
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %if.then25, label %while.end.if.end28_crit_edge

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i57 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %37 = ptrtoint ptr %nofail_skb23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i57, ptr %nofail_skb23, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %while.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_rx(ptr noundef %dev, ptr nocapture noundef readonly %skbs, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not17 = icmp eq i32 %n, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry.while.body_crit_edge
  %dec19.in = phi i32 [ %dec19, %if.end9.while.body_crit_edge ], [ %n, %entry.while.body_crit_edge ]
  %skbs.addr.018 = phi ptr [ %incdec.ptr, %if.end9.while.body_crit_edge ], [ %skbs, %entry.while.body_crit_edge ]
  %dec19 = add i32 %dec19.in, -1
  %incdec.ptr = getelementptr ptr, ptr %skbs.addr.018, i32 1
  %0 = ptrtoint ptr %skbs.addr.018 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skbs.addr.018, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shr.i = lshr i32 %4, 24
  %arrayidx = getelementptr [166 x ptr], ptr @cpl_handlers, i32 0, i32 %shr.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 %6(ptr noundef %dev, ptr noundef %1) #15
  %and = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and4 = and i32 %10, 16777215
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %dev, i32 noundef %shr.i, i32 noundef %and4) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %and6 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_l2t_update(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_adapter(ptr noundef %adap) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %adapter_list = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %adapter_list, ptr noundef %0, ptr noundef nonnull @adapter_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %adapter_list, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %adapter_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @adapter_list, ptr %adapter_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %adapter_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_offload_deactivate(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %adapter_list.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %adapter_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.remove_adapter.exit_crit_edge

entry.remove_adapter.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %remove_adapter.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %adapter_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %remove_adapter.exit

remove_adapter.exit:                              ; preds = %if.end.i.i.i, %entry.remove_adapter.exit_crit_edge
  %8 = ptrtoint ptr %adapter_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %adapter_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %10 = load volatile ptr, ptr @adapter_list, align 4
  %cmp.i.not = icmp eq ptr %10, @adapter_list
  br i1 %cmp.i.not, label %if.then, label %remove_adapter.exit.if.end_crit_edge

remove_adapter.exit.if.end_crit_edge:             ; preds = %remove_adapter.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %remove_adapter.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @unregister_netevent_notifier(ptr noundef nonnull @nb) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %remove_adapter.exit.if.end_crit_edge
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tid_maps, align 128
  tail call void @kvfree(ptr noundef %12) #15
  %13 = ptrtoint ptr %l4opt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %l4opt, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !182
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %l2opt = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 10
  %18 = ptrtoint ptr %l2opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %l2opt, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @cxgb3_offload_deactivate.__warned, align 1
  br i1 %.b35, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cxgb3_offload_deactivate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1301, ptr noundef nonnull @.str.6) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i36, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %do.end14
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !183
  %20 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i43 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %24 = ptrtoint ptr %l2opt to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr null, ptr %l2opt, align 4
  %callback_head = getelementptr inbounds %struct.l2t_data, ptr %19, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @clean_l2_data) #15
  %nofail_skb = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nofail_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clean_l2_data(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -56
  tail call void @kvfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_adapter_ofld(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ofld_dev_list = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %ofld_dev_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ofld_dev_list, ptr %ofld_dev_list, align 4
  %prev.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ofld_dev_list, ptr %prev.i, align 4
  %recv.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 6
  %2 = ptrtoint ptr %recv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rx_offload_blackhole, ptr %recv.i, align 4
  %neigh_update.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 8
  %3 = ptrtoint ptr %neigh_update.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dummy_neigh_update, ptr %neigh_update.i, align 4
  %send = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @t3_offload_tx, ptr %send, align 4
  %ctl = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 7
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cxgb_offload_ctl, ptr %ctl, align 4
  %rev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %6 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.adap2type.exit_crit_edge

entry.adap2type.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %adap2type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cxgb3_adapter_ofld, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %adap2type.exit

adap2type.exit:                                   ; preds = %switch.lookup, %entry.adap2type.exit_crit_edge
  %type.0.i = phi i32 [ 0, %entry.adap2type.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %type = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type.0.i, ptr %type, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %11 = load i32, ptr @register_tdev.unit, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr @register_tdev.unit, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %11) #15
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ofld_dev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ofld_dev_list, ptr noundef %12, ptr noundef nonnull @ofld_dev_list) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %adap2type.exit.register_tdev.exit_crit_edge

adap2type.exit.register_tdev.exit_crit_edge:      ; preds = %adap2type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %register_tdev.exit

if.end.i.i.i:                                     ; preds = %adap2type.exit
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %ofld_dev_list, ptr getelementptr inbounds (%struct.list_head, ptr @ofld_dev_list, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %ofld_dev_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ofld_dev_list, ptr %ofld_dev_list, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ofld_dev_list, ptr %12, align 4
  br label %register_tdev.exit

register_tdev.exit:                               ; preds = %if.end.i.i.i, %adap2type.exit.register_tdev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_offload_tx(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_offload_ctl(ptr noundef %tdev, i32 noundef %req, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %req, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb13
    i32 5, label %sw.bb31
    i32 6, label %sw.bb32
    i32 8, label %sw.bb35
    i32 9, label %sw.bb37
    i32 10, label %sw.bb41
    i32 11, label %entry.sw.bb48_crit_edge
    i32 12, label %entry.sw.bb48_crit_edge173
    i32 13, label %entry.sw.bb51_crit_edge
    i32 14, label %entry.sw.bb51_crit_edge174
    i32 15, label %entry.sw.bb51_crit_edge175
    i32 16, label %entry.sw.bb51_crit_edge176
    i32 17, label %entry.sw.bb51_crit_edge177
    i32 18, label %entry.sw.bb51_crit_edge178
    i32 19, label %entry.sw.bb51_crit_edge179
    i32 50, label %sw.bb57
    i32 51, label %sw.bb59
    i32 70, label %sw.bb62
  ]

entry.sw.bb51_crit_edge179:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge178:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge177:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge176:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge175:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge174:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

entry.sw.bb48_crit_edge173:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb48

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %data, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %data, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048576, ptr %data, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tcam_size.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %tcam_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcam_size.i, align 4
  %nroutes = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 3
  %6 = ptrtoint ptr %nroutes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nroutes, align 4
  %nfilters = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 2
  %8 = ptrtoint ptr %nfilters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nfilters, align 4
  %nservers = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 1
  %10 = ptrtoint ptr %nservers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nservers, align 4
  %12 = add i32 %7, %9
  %13 = add i32 %12, %11
  %sub12 = sub i32 %5, %13
  %num = getelementptr inbounds %struct.tid_range, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub12, ptr %num, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %nservers16 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 1
  %16 = ptrtoint ptr %nservers16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nservers16, align 4
  %num17 = getelementptr inbounds %struct.tid_range, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %num17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num17, align 4
  %tcam_size.i131 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %tcam_size.i131 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tcam_size.i131, align 4
  %nfilters24 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 2
  %21 = ptrtoint ptr %nfilters24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nfilters24, align 4
  %nroutes28 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 1, i32 3
  %23 = ptrtoint ptr %nroutes28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nroutes28, align 4
  %25 = add i32 %17, %22
  %26 = add i32 %25, %24
  %sub29 = sub i32 %20, %26
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub29, ptr %data, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2048, ptr %data, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %data, align 4
  %mtus = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 6
  %mtus34 = getelementptr inbounds %struct.mtutab, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %mtus34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mtus, ptr %mtus34, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %vlan_tag = getelementptr inbounds %struct.iff_mac, ptr %data, i32 0, i32 2
  %31 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_tag, align 4
  %33 = and i16 %32, 4095
  %and = zext i16 %33 to i32
  %nports.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 9
  %34 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp32.not.i = icmp eq i32 %35, 0
  br i1 %cmp32.not.i, label %sw.bb35.get_iff_from_mac.exit_crit_edge, label %for.body.lr.ph.i

sw.bb35.get_iff_from_mac.exit_crit_edge:          ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_iff_from_mac.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb35
  %mac_addr = getelementptr inbounds %struct.iff_mac, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mac_addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %tdev, i32 0, i32 21, i32 %i.033.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i, align 64
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %xor.i.i = xor i32 %47, %39
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %49, %41
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !182
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %54 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and, label %if.then2.i [
    i32 0, label %rcu_read_lock.exit.i.if.else.i_crit_edge
    i32 4095, label %rcu_read_lock.exit.i.if.else.i_crit_edge180
  ]

rcu_read_lock.exit.i.if.else.i_crit_edge180:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

rcu_read_lock.exit.i.if.else.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then2.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %43, i16 noundef zeroext -32512, i16 noundef zeroext %33) #15
  br label %if.end8.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i.if.else.i_crit_edge, %rcu_read_lock.exit.i.if.else.i_crit_edge180
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i20.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i20.i, label %if.else.i.if.end8.i_crit_edge, label %netif_is_bond_slave.exit.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

netif_is_bond_slave.exit.i:                       ; preds = %if.else.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 15
  %57 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %58, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.if.end8.i_crit_edge, label %netif_is_bond_slave.exit.i.while.cond.i_crit_edge

netif_is_bond_slave.exit.i.while.cond.i_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  br label %while.cond.i

netif_is_bond_slave.exit.i.if.end8.i_crit_edge:   ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %netif_is_bond_slave.exit.i.while.cond.i_crit_edge
  %dev.0.i = phi ptr [ %call6.i, %while.cond.i.while.cond.i_crit_edge ], [ %43, %netif_is_bond_slave.exit.i.while.cond.i_crit_edge ]
  %call6.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %dev.0.i) #15
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %while.cond.i.if.end8.i_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.cond.i.if.end8.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %while.cond.i.if.end8.i_crit_edge, %netif_is_bond_slave.exit.i.if.end8.i_crit_edge, %if.else.i.if.end8.i_crit_edge, %if.then2.i
  %dev.1.i = phi ptr [ %call3.i, %if.then2.i ], [ %43, %netif_is_bond_slave.exit.i.if.end8.i_crit_edge ], [ %43, %if.else.i.if.end8.i_crit_edge ], [ %dev.0.i, %while.cond.i.if.end8.i_crit_edge ]
  %call.i21.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i21.i, label %if.end8.i.cleanup.i_crit_edge, label %land.lhs.true.i24.i

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

land.lhs.true.i24.i:                              ; preds = %if.end8.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool.not.i23.i, label %land.lhs.true.i24.i.cleanup.i_crit_edge, label %land.lhs.true2.i26.i

land.lhs.true.i24.i.cleanup.i_crit_edge:          ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

land.lhs.true2.i26.i:                             ; preds = %land.lhs.true.i24.i
  %.b4.i25.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25.i, label %land.lhs.true2.i26.i.cleanup.i_crit_edge, label %if.then.i27.i

land.lhs.true2.i26.i.cleanup.i_crit_edge:         ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i27.i:                                    ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i27.i, %land.lhs.true2.i26.i.cleanup.i_crit_edge, %land.lhs.true.i24.i.cleanup.i_crit_edge, %if.end8.i.cleanup.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !183
  %59 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i28.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %sub.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i29.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %get_iff_from_mac.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.033.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not, label %for.inc.i.get_iff_from_mac.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.get_iff_from_mac.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_iff_from_mac.exit

get_iff_from_mac.exit:                            ; preds = %for.inc.i.get_iff_from_mac.exit_crit_edge, %cleanup.i, %sw.bb35.get_iff_from_mac.exit_crit_edge
  %retval.2.i = phi ptr [ null, %sw.bb35.get_iff_from_mac.exit_crit_edge ], [ %dev.1.i, %cleanup.i ], [ null, %for.inc.i.get_iff_from_mac.exit_crit_edge ]
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %retval.2.i, ptr %data, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %regs.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 2
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 1308
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !184
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %68 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %data, align 4
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %70, i32 1312
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #15, !srcloc !184
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %ulimit = getelementptr inbounds %struct.ddp_params, ptr %data, i32 0, i32 1
  %73 = ptrtoint ptr %ulimit to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ulimit, align 4
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %75, i32 1316
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #15, !srcloc !184
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %tag_mask = getelementptr inbounds %struct.ddp_params, ptr %data, i32 0, i32 2
  %78 = ptrtoint ptr %tag_mask to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %tag_mask, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 9
  %79 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nports, align 4
  %81 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %data, align 4
  %82 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp166.not = icmp eq i32 %82, 0
  br i1 %cmp166.not, label %sw.bb41.cleanup_crit_edge, label %sw.bb41.for.body_crit_edge

sw.bb41.for.body_crit_edge:                       ; preds = %sw.bb41
  br label %for.body

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb41.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb41.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %tdev, i32 0, i32 21, i32 %i.0167
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx, align 4
  %arrayidx47 = getelementptr %struct.adap_ports, ptr %data, i32 0, i32 1, i32 %i.0167
  %85 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %arrayidx47, align 4
  %inc = add nuw i32 %i.0167, 1
  %86 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge173
  %open_device_map.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 5
  %88 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %open_device_map.i, align 4
  %90 = and i32 %89, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not = icmp eq i32 %90, 0
  br i1 %tobool.not, label %sw.bb48.cleanup_crit_edge, label %if.end

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb48
  %91 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %req, label %if.end.cleanup_crit_edge [
    i32 11, label %sw.bb.i
    i32 12, label %sw.bb58.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 3
  %92 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev.i, align 8
  %pdev1.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 7
  %94 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %pdev1.i, align 4
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 2
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %96, i32 1292
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #15, !srcloc !184
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %llimit.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 1
  %99 = ptrtoint ptr %llimit.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %llimit.i, align 4
  %100 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %101, i32 1296
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #15, !srcloc !184
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %ulimit.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 2
  %104 = ptrtoint ptr %ulimit.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ulimit.i, align 4
  %105 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %106, i32 1300
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164.i) #15, !srcloc !184
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %tagmask.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 3
  %109 = ptrtoint ptr %tagmask.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %tagmask.i, align 4
  %110 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %111, i32 1304
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166.i) #15, !srcloc !184
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %conv.i = trunc i32 %113 to i8
  %arrayidx.i138 = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 0
  %114 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv.i, ptr %arrayidx.i138, align 1
  %shr.i = lshr i32 %113, 8
  %conv.1.i = trunc i32 %shr.i to i8
  %arrayidx.1.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.1.i, ptr %arrayidx.1.i, align 1
  %shr.1.i = lshr i32 %113, 16
  %conv.2.i = trunc i32 %shr.1.i to i8
  %arrayidx.2.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 2
  %116 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.2.i, ptr %arrayidx.2.i, align 1
  %shr.2.i = lshr i32 %113, 24
  %conv.3.i = trunc i32 %shr.2.i to i8
  %arrayidx.3.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 3
  %117 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.3.i, ptr %arrayidx.3.i, align 1
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %119, i32 892
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168.i) #15, !srcloc !184
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %and7.i = and i32 %121, 65535
  %shr8.i = lshr i32 %121, 16
  %122 = tail call i32 @llvm.umin.i32(i32 %and7.i, i32 %shr8.i) #15
  %max_rxsz.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 5
  %123 = ptrtoint ptr %max_rxsz.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %max_rxsz.i, align 4
  %max_txsz.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 6
  %124 = ptrtoint ptr %max_txsz.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %max_txsz.i, align 4
  %tx_pg_size.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 2, i32 7
  %125 = ptrtoint ptr %tx_pg_size.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_pg_size.i, align 4
  %127 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %128, i32 1504
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #15, !srcloc !184
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %shr13.i = lshr i32 %130, 17
  %131 = tail call i32 @llvm.umin.i32(i32 %126, i32 %shr13.i) #15
  %132 = ptrtoint ptr %max_txsz.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max_txsz.i, align 4
  %134 = tail call i32 @llvm.umin.i32(i32 %131, i32 %133) #15
  %135 = ptrtoint ptr %max_txsz.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %max_txsz.i, align 4
  %136 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %137, i32 872
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172.i) #15, !srcloc !184
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %shr31.mask.i = and i32 %139, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1063256064, i32 %shr31.mask.i)
  %cmp32.not.i139 = icmp eq i32 %shr31.mask.i, 1063256064
  br i1 %cmp32.not.i139, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i140

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i140:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %and34.i = and i32 %139, 65535
  %or.i = or i32 %and34.i, 1063256064
  %name.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 7
  %140 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name.i, align 8
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %141, i32 noundef %or.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %143 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %144, i32 872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 %142) #15, !srcloc !187
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i140, %sw.bb.i.if.end.i_crit_edge
  %rx_pg_size.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 2, i32 6
  %145 = ptrtoint ptr %rx_pg_size.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_pg_size.i, align 4
  %147 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %148, i32 872
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176.i) #15, !srcloc !184
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %shr40.i = lshr i32 %150, 16
  %151 = tail call i32 @llvm.umin.i32(i32 %146, i32 %shr40.i) #15
  %152 = ptrtoint ptr %max_rxsz.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max_rxsz.i, align 4
  %154 = tail call i32 @llvm.umin.i32(i32 %151, i32 %153) #15
  %155 = ptrtoint ptr %max_rxsz.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %max_rxsz.i, align 4
  br label %cleanup

sw.bb58.i:                                        ; preds = %if.end
  %tagmask59.i = getelementptr inbounds %struct.ulp_iscsi_info, ptr %data, i32 0, i32 3
  %156 = ptrtoint ptr %tagmask59.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tagmask59.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #15
  %regs.i177.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 2
  %159 = ptrtoint ptr %regs.i177.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i177.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %160, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %158) #15, !srcloc !187
  %arrayidx65.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 0
  %161 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx65.i, align 1
  %163 = and i8 %162, 15
  %and67.i = zext i8 %163 to i32
  %arrayidx65.1.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 1
  %164 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx65.1.i, align 1
  %166 = and i8 %165, 15
  %and67.1.i = zext i8 %166 to i32
  %shl.1.i = shl nuw nsw i32 %and67.1.i, 8
  %or68.1.i = or i32 %shl.1.i, %and67.i
  %arrayidx65.2.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 2
  %167 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx65.2.i, align 1
  %169 = and i8 %168, 15
  %and67.2.i = zext i8 %169 to i32
  %shl.2.i = shl nuw nsw i32 %and67.2.i, 16
  %or68.2.i = or i32 %shl.2.i, %or68.1.i
  %arrayidx65.3.i = getelementptr %struct.ulp_iscsi_info, ptr %data, i32 0, i32 4, i32 3
  %170 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx65.3.i, align 1
  %172 = and i8 %171, 15
  %and67.3.i = zext i8 %172 to i32
  %shl.3.i = shl nuw nsw i32 %and67.3.i, 24
  %or68.3.i = or i32 %shl.3.i, %or68.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or68.3.i)
  %tobool.not.i = icmp eq i32 %or68.3.i, 0
  br i1 %tobool.not.i, label %sw.bb58.i.cleanup_crit_edge, label %land.lhs.true.i

sw.bb58.i.cleanup_crit_edge:                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb58.i
  %173 = ptrtoint ptr %regs.i177.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i177.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %174, i32 1304
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #15, !srcloc !184
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  call void @__sanitizer_cov_trace_cmp4(i32 %or68.3.i, i32 %176)
  %cmp73.not.i = icmp eq i32 %or68.3.i, %176
  br i1 %cmp73.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.end78.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end78.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %name80.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 7
  %177 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name80.i, align 8
  %179 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx65.i, align 4
  %conv83.i = zext i8 %180 to i32
  %181 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx65.1.i, align 1
  %conv86.i = zext i8 %182 to i32
  %183 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx65.2.i, align 2
  %conv89.i = zext i8 %184 to i32
  %185 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx65.3.i, align 1
  %conv92.i = zext i8 %186 to i32
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %178, i32 noundef %or68.3.i, i32 noundef %conv83.i, i32 noundef %conv86.i, i32 noundef %conv89.i, i32 noundef %conv92.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %187 = tail call i32 @llvm.bswap.i32(i32 %or68.3.i) #15
  %188 = ptrtoint ptr %regs.i177.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i177.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %189, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %187) #15, !srcloc !187
  br label %cleanup

sw.bb51:                                          ; preds = %entry.sw.bb51_crit_edge, %entry.sw.bb51_crit_edge174, %entry.sw.bb51_crit_edge175, %entry.sw.bb51_crit_edge176, %entry.sw.bb51_crit_edge177, %entry.sw.bb51_crit_edge178, %entry.sw.bb51_crit_edge179
  %open_device_map.i141 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 5
  %190 = ptrtoint ptr %open_device_map.i141 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %open_device_map.i141, align 4
  %192 = and i32 %191, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool53.not = icmp eq i32 %192, 0
  br i1 %tobool53.not, label %sw.bb51.cleanup_crit_edge, label %if.end55

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end55:                                         ; preds = %sw.bb51
  %193 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %req, label %if.end55.sw.epilog.i_crit_edge [
    i32 13, label %sw.bb.i147
    i32 14, label %sw.bb16.i
    i32 18, label %sw.bb27.i
    i32 15, label %sw.bb54.i
    i32 16, label %sw.bb64.i
    i32 17, label %sw.bb70.i
    i32 19, label %sw.bb80.i
  ]

if.end55.sw.epilog.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.i147:                                       ; preds = %if.end55
  %pdev1.i144 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 3
  %194 = ptrtoint ptr %pdev1.i144 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdev1.i144, align 8
  %arrayidx.i145 = getelementptr %struct.pci_dev, ptr %195, i32 0, i32 47, i32 2
  %196 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i145, align 8
  %udbell_physbase.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 7
  %198 = ptrtoint ptr %udbell_physbase.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %udbell_physbase.i, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %195, i32 0, i32 47, i32 2, i32 1
  %199 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp.i146 = icmp eq i32 %200, 0
  br i1 %cmp.i146, label %sw.bb.i147.cond.end.i_crit_edge, label %cond.false.i

sw.bb.i147.cond.end.i_crit_edge:                  ; preds = %sw.bb.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb.i147
  call void @__sanitizer_cov_trace_pc() #17
  %201 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i145, align 8
  %sub.i = add i32 %200, 1
  %add.i = sub i32 %sub.i, %202
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %sw.bb.i147.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %sw.bb.i147.cond.end.i_crit_edge ]
  %udbell_len.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 6
  %203 = ptrtoint ptr %udbell_len.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %cond.i, ptr %udbell_len.i, align 4
  %regs.i.i148 = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 2
  %204 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %205, i32 1420
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i149) #15, !srcloc !184
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %208 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %data, align 4
  %209 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %210, i32 1424
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.i) #15, !srcloc !184
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %tpt_top.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 1
  %213 = ptrtoint ptr %tpt_top.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %tpt_top.i, align 4
  %214 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %215, i32 1428
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152.i) #15, !srcloc !184
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %pbl_base.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 2
  %218 = ptrtoint ptr %pbl_base.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %pbl_base.i, align 4
  %219 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %220, i32 1432
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154.i) #15, !srcloc !184
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %pbl_top.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 3
  %223 = ptrtoint ptr %pbl_top.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %pbl_top.i, align 4
  %224 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %225, i32 1332
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156.i) #15, !srcloc !184
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %rqt_base.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 4
  %228 = ptrtoint ptr %rqt_base.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %rqt_base.i, align 4
  %229 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %230, i32 1336
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i) #15, !srcloc !184
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  %rqt_top.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 5
  %233 = ptrtoint ptr %rqt_top.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %rqt_top.i, align 4
  %234 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i150 = getelementptr i8, ptr %235, i32 4
  %kdb_addr.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 8
  %236 = ptrtoint ptr %kdb_addr.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %add.ptr.i150, ptr %kdb_addr.i, align 4
  %pdev15.i = getelementptr inbounds %struct.rdma_info, ptr %data, i32 0, i32 9
  %237 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %195, ptr %pdev15.i, align 4
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %reg_lock.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 16, i32 1
  %call21.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #15
  %238 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %data, align 4
  %op.i = getelementptr inbounds %struct.rdma_cq_op, ptr %data, i32 0, i32 1
  %240 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %op.i, align 4
  %credits.i = getelementptr inbounds %struct.rdma_cq_op, ptr %data, i32 0, i32 2
  %242 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %credits.i, align 4
  %call24.i = tail call i32 @t3_sge_cqcntxt_op(ptr noundef %tdev, i32 noundef %239, i32 noundef %241, i32 noundef %243) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call21.i) #15
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end55
  %addr.i = getelementptr inbounds %struct.ch_mem_range, ptr %data, i32 0, i32 2
  %244 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %245, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i151 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i151, label %lor.lhs.false.i, label %sw.bb27.i.cleanup_crit_edge

sw.bb27.i.cleanup_crit_edge:                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb27.i
  %len.i = getelementptr inbounds %struct.ch_mem_range, ptr %data, i32 0, i32 3
  %246 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %len.i, align 4
  %and28.i = and i32 %247, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end.i152, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i152:                                      ; preds = %lor.lhs.false.i
  %mem_id.i = getelementptr inbounds %struct.ch_mem_range, ptr %data, i32 0, i32 1
  %248 = ptrtoint ptr %mem_id.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %mem_id.i, align 4
  %250 = zext i32 %249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %249, label %if.end.i152.cleanup_crit_edge [
    i32 0, label %if.then32.i
    i32 1, label %if.then36.i
    i32 2, label %if.then41.i
  ]

if.end.i152.cleanup_crit_edge:                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then32.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #17
  %cm.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 19
  br label %cleanup.i153

if.then36.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #17
  %pmrx.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 17
  br label %cleanup.i153

if.then41.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #17
  %pmtx.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 18
  br label %cleanup.i153

cleanup.i153:                                     ; preds = %if.then41.i, %if.then36.i, %if.then32.i
  %mem.0.i = phi ptr [ %cm.i, %if.then32.i ], [ %pmrx.i, %if.then36.i ], [ %pmtx.i, %if.then41.i ]
  %div146.i = lshr i32 %245, 3
  %div48147.i = lshr i32 %247, 3
  %buf.i = getelementptr inbounds %struct.ch_mem_range, ptr %data, i32 0, i32 5
  %call49.i = tail call i32 @t3_mc7_bd_read(ptr noundef %mem.0.i, i32 noundef %div146.i, i32 noundef %div48147.i, ptr noundef %buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %cleanup.i153.sw.epilog.i_crit_edge, label %cleanup.i153.cleanup_crit_edge

cleanup.i153.cleanup_crit_edge:                   ; preds = %cleanup.i153
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.i153.sw.epilog.i_crit_edge:               ; preds = %cleanup.i153
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %reg_lock57.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 16, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock57.i) #15
  %251 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %data, align 8
  %base_addr.i = getelementptr inbounds %struct.rdma_cq_setup, ptr %data, i32 0, i32 1
  %253 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %base_addr.i, align 8
  %size.i = getelementptr inbounds %struct.rdma_cq_setup, ptr %data, i32 0, i32 2
  %255 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %size.i, align 8
  %ovfl_mode.i = getelementptr inbounds %struct.rdma_cq_setup, ptr %data, i32 0, i32 5
  %257 = ptrtoint ptr %ovfl_mode.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %ovfl_mode.i, align 4
  %credits59.i = getelementptr inbounds %struct.rdma_cq_setup, ptr %data, i32 0, i32 3
  %259 = ptrtoint ptr %credits59.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %credits59.i, align 4
  %credit_thres.i = getelementptr inbounds %struct.rdma_cq_setup, ptr %data, i32 0, i32 4
  %261 = ptrtoint ptr %credit_thres.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %credit_thres.i, align 8
  %call60.i = tail call i32 @t3_sge_init_cqcntxt(ptr noundef %tdev, i32 noundef %252, i64 noundef %254, i32 noundef %256, i32 noundef 0, i32 noundef %258, i32 noundef %260, i32 noundef %262) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock57.i) #15
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %reg_lock66.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 16, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock66.i) #15
  %263 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %data, align 4
  %call67.i = tail call i32 @t3_sge_disable_cqcntxt(ptr noundef %tdev, i32 noundef %264) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock66.i) #15
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %reg_lock73.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 16, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock73.i) #15
  %265 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %data, align 8
  %size75.i = getelementptr inbounds %struct.rdma_ctrlqp_setup, ptr %data, i32 0, i32 1
  %267 = ptrtoint ptr %size75.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %size75.i, align 8
  %call76.i = tail call i32 @t3_sge_init_ecntxt(ptr noundef %tdev, i32 noundef 65527, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %266, i32 noundef %268, i32 noundef 65552, i32 noundef 1, i32 noundef 0) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock73.i) #15
  br label %sw.epilog.i

sw.bb80.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %stats_lock.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i) #15
  tail call void @t3_tp_get_mib_stats(ptr noundef %tdev, ptr noundef %data) #15
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb80.i, %sw.bb70.i, %sw.bb64.i, %sw.bb54.i, %cleanup.i153.sw.epilog.i_crit_edge, %sw.bb16.i, %cond.end.i, %if.end55.sw.epilog.i_crit_edge
  %ret.1.i = phi i32 [ 0, %sw.bb80.i ], [ %call76.i, %sw.bb70.i ], [ %call67.i, %sw.bb64.i ], [ %call60.i, %sw.bb54.i ], [ 0, %cleanup.i153.sw.epilog.i_crit_edge ], [ %call24.i, %sw.bb16.i ], [ 0, %cond.end.i ], [ -95, %if.end55.sw.epilog.i_crit_edge ]
  br label %cleanup

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_pg_size = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 2, i32 6
  %269 = ptrtoint ptr %rx_pg_size to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %rx_pg_size, align 4
  %271 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %data, align 4
  %rx_num_pgs = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 10, i32 2, i32 8
  %272 = ptrtoint ptr %rx_num_pgs to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %rx_num_pgs, align 4
  %num58 = getelementptr inbounds %struct.ofld_page_info, ptr %data, i32 0, i32 1
  %274 = ptrtoint ptr %num58 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %num58, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %275 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %data, align 4
  %iscsi_ipv4addr = getelementptr i8, ptr %276, i32 6124
  %277 = ptrtoint ptr %iscsi_ipv4addr to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %iscsi_ipv4addr, align 4
  %ipv4addr = getelementptr inbounds %struct.iscsi_ipv4addr, ptr %data, i32 0, i32 1
  %279 = ptrtoint ptr %ipv4addr to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %ipv4addr, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #15
  %call63 = tail call i32 @t3_get_fw_version(ptr noundef %tdev, ptr noundef %data) #15
  %tp_vers = getelementptr inbounds %struct.ch_embedded_info, ptr %data, i32 0, i32 1
  %call64 = tail call i32 @t3_get_tp_version(ptr noundef %tdev, ptr noundef %tp_vers) #15
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb62, %sw.bb59, %sw.bb57, %sw.epilog.i, %cleanup.i153.cleanup_crit_edge, %if.end.i152.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb27.i.cleanup_crit_edge, %sw.bb51.cleanup_crit_edge, %do.end78.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb58.i.cleanup_crit_edge, %if.end.i, %if.end.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %for.body.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %sw.bb37, %get_iff_from_mac.exit, %sw.bb32, %sw.bb31, %sw.bb13, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %sw.bb48.cleanup_crit_edge ], [ -11, %sw.bb51.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb62 ], [ 0, %sw.bb59 ], [ 0, %sw.bb57 ], [ 0, %sw.bb37 ], [ 0, %get_iff_from_mac.exit ], [ 0, %sw.bb32 ], [ 0, %sw.bb31 ], [ 0, %sw.bb13 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ 0, %do.end78.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %sw.bb58.i.cleanup_crit_edge ], [ 0, %if.end.i ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.1.i, %sw.epilog.i ], [ %call49.i, %cleanup.i153.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %sw.bb27.i.cleanup_crit_edge ], [ -22, %if.end.i152.cleanup_crit_edge ], [ 0, %sw.bb41.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb3_adapter_unofld(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %recv = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %recv, align 4
  %neigh_update = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 8
  %1 = ptrtoint ptr %neigh_update to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %neigh_update, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cxgb3_db_lock, i32 noundef 0) #15
  %ofld_dev_list.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ofld_dev_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.unregister_tdev.exit_crit_edge

entry.unregister_tdev.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unregister_tdev.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %ofld_dev_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ofld_dev_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %unregister_tdev.exit

unregister_tdev.exit:                             ; preds = %if.end.i.i.i, %entry.unregister_tdev.exit_crit_edge
  %8 = ptrtoint ptr %ofld_dev_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %ofld_dev_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.t3cdev, ptr %adapter, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cxgb3_db_lock) #15
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @cxgb3_offload_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [166 x ptr], ptr @cpl_handlers, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @do_bad_cpl, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 166
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  store ptr @do_smt_write_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 46), align 4
  store ptr @do_l2t_write_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 35), align 4
  store ptr @do_rte_write_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 40), align 4
  store ptr @do_stid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 65), align 4
  store ptr @do_stid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 32), align 4
  store ptr @do_cr, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 112), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 81), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 49), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 11), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 44), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 57), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 47), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 160), align 4
  store ptr @do_act_open_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 64), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 38), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 50), align 4
  store ptr @do_abort_req_rss, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 48), align 4
  store ptr @do_act_establish, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 80), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 45), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 34), align 4
  store ptr @do_term, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 162), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 165), align 4
  store ptr @do_trace, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 163), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 66), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 41), align 4
  store ptr @do_hwtid_rpl, ptr getelementptr inbounds ([166 x ptr], ptr @cpl_handlers, i32 0, i32 51), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_smt_write_rpl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %status = getelementptr inbounds %struct.cpl_smt_write_rpl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %and) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_l2t_write_rpl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %status = getelementptr inbounds %struct.cpl_l2t_write_rpl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %and) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_rte_write_rpl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %status = getelementptr inbounds %struct.cpl_rte_write_rpl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %and) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_stid_rpl(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l4opt, align 4
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7
  %stid_base.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stid_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.i = icmp ult i32 %and, %7
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %nstids.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nstids.i, align 16
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and)
  %cmp2.not.i = icmp ugt i32 %add.i, %and
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %stid_tab.i.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %stid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stid_tab.i.i, align 4
  %sub.i.i = sub i32 %and, %7
  %arrayidx.i.i = getelementptr %union.listen_entry, ptr %11, i32 %sub.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tid_maps, align 128
  %cmp3.not.i = icmp ult ptr %13, %15
  br i1 %cmp3.not.i, label %lookup_stid.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %atid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atid_tab.i, align 8
  %natids.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 7
  %18 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %natids.i, align 4
  %arrayidx.i = getelementptr %union.active_open_entry, ptr %17, i32 %19
  %cmp4.i = icmp ult ptr %13, %arrayidx.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool.not, %cmp4.i
  br i1 %or.cond, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lookup_stid.exit:                                 ; preds = %if.end.i
  %tobool.not.old = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.old, label %lookup_stid.exit.do.end_crit_edge, label %lookup_stid.exit.land.lhs.true_crit_edge

lookup_stid.exit.land.lhs.true_crit_edge:         ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lookup_stid.exit.do.end_crit_edge:                ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %lookup_stid.exit.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge
  %ctx = getelementptr inbounds %struct.t3c_tid_entry, ptr %arrayidx.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %tobool2.not = icmp eq ptr %21, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handlers, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 4
  %idxprom = zext i8 %27 to i32
  %arrayidx = getelementptr ptr, ptr %25, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %29(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %21) #15
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true5.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lookup_stid.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 4
  %conv = zext i8 %31 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call14, %if.then ], [ 3, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_cr(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l4opt, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and1 = and i32 %5, 16777215
  %ntids = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %7)
  %cmp.not = icmp ult i32 %and1, %7
  br i1 %cmp.not, label %if.end, label %do.end, !prof !173

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %dev, i32 noundef %and1) #18
  tail call void @t3_fatal_err(ptr noundef %dev) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7
  %tos_tid = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %tos_tid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tos_tid, align 4
  %and = and i32 %9, 16777215
  %stid_base.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stid_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp.i = icmp ult i32 %and, %11
  br i1 %cmp.i, label %if.end.do.end22_crit_edge, label %lor.lhs.false.i

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

lor.lhs.false.i:                                  ; preds = %if.end
  %nstids.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nstids.i, align 16
  %add.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and)
  %cmp2.not.i = icmp ugt i32 %add.i, %and
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end22_crit_edge

lor.lhs.false.i.do.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

if.end.i:                                         ; preds = %lor.lhs.false.i
  %stid_tab.i.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %stid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stid_tab.i.i, align 4
  %sub.i.i = sub i32 %and, %11
  %arrayidx.i.i = getelementptr %union.listen_entry, ptr %15, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tid_maps, align 128
  %cmp3.not.i = icmp ult ptr %17, %19
  br i1 %cmp3.not.i, label %lookup_stid.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %atid_tab.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %atid_tab.i, align 8
  %natids.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %natids.i, align 4
  %arrayidx.i = getelementptr %union.active_open_entry, ptr %21, i32 %23
  %cmp4.i = icmp ult ptr %17, %arrayidx.i
  %tobool6.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool6.not, %cmp4.i
  br i1 %or.cond, label %land.lhs.true.i.do.end22_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

land.lhs.true.i.do.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

lookup_stid.exit:                                 ; preds = %if.end.i
  %tobool6.not.old = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool6.not.old, label %lookup_stid.exit.do.end22_crit_edge, label %lookup_stid.exit.land.lhs.true_crit_edge

lookup_stid.exit.land.lhs.true_crit_edge:         ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lookup_stid.exit.do.end22_crit_edge:              ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true:                                    ; preds = %lookup_stid.exit.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge
  %ctx = getelementptr inbounds %struct.t3c_tid_entry, ptr %arrayidx.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true8

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true8:                                   ; preds = %land.lhs.true
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handlers, align 4
  %tobool9.not = icmp eq ptr %29, null
  br i1 %tobool9.not, label %land.lhs.true8.do.end22_crit_edge, label %land.lhs.true10

land.lhs.true8.do.end22_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %arrayidx = getelementptr ptr, ptr %29, i32 112
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %31, null
  br i1 %tobool13.not, label %land.lhs.true10.do.end22_crit_edge, label %if.then14

land.lhs.true10.do.end22_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 %31(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %25) #15
  br label %cleanup

do.end22:                                         ; preds = %land.lhs.true10.do.end22_crit_edge, %land.lhs.true8.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %lookup_stid.exit.do.end22_crit_edge, %land.lhs.true.i.do.end22_crit_edge, %lor.lhs.false.i.do.end22_crit_edge, %if.end.do.end22_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef 112) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then14, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %call19, %if.then14 ], [ 3, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_hwtid_rpl(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l4opt, align 4
  %ntids.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp.i = icmp ugt i32 %7, %and
  br i1 %cmp.i, label %cond.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

cond.end.i:                                       ; preds = %entry
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tid_maps, align 128
  %arrayidx.i = getelementptr %struct.t3c_tid_entry, ptr %9, i32 %and
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %cond.end.i.do.end_crit_edge, label %land.lhs.true.i

cond.end.i.do.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true.i:                                  ; preds = %cond.end.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %ctx = getelementptr %struct.t3c_tid_entry, ptr %9, i32 %and, i32 1
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handlers, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 4
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr ptr, ptr %17, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %21(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %13) #15
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true5.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %cond.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 4
  %conv = zext i8 %23 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call14, %if.then ], [ 3, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_act_open_rpl(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %atid1 = getelementptr inbounds %struct.cpl_act_open_rpl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %atid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atid1, align 4
  %and = and i32 %3, 16777215
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l4opt, align 4
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7
  %atid_base.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %atid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atid_base.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.i = icmp ult i32 %and, %7
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %natids.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 7
  %8 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %natids.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and)
  %cmp2.not.i = icmp ugt i32 %add.i, %and
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %atid_tab.i.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 6
  %10 = ptrtoint ptr %atid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atid_tab.i.i, align 8
  %sub.i.i = sub i32 %and, %7
  %arrayidx.i.i = getelementptr %union.active_open_entry, ptr %11, i32 %sub.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tid_maps, align 128
  %cmp3.not.i = icmp uge ptr %13, %15
  %arrayidx.i = getelementptr %union.active_open_entry, ptr %11, i32 %9
  %cmp5.i = icmp ult ptr %13, %arrayidx.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp5.i, i1 false
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool.not, %or.cond.i
  br i1 %or.cond, label %if.end.i.do.end_crit_edge, label %land.lhs.true

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %if.end.i
  %ctx = getelementptr inbounds %struct.t3c_tid_entry, ptr %arrayidx.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handlers, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %land.lhs.true6.do.end_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %arrayidx = getelementptr ptr, ptr %21, i32 64
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %land.lhs.true9.do.end_crit_edge, label %if.then

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 %23(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %17) #15
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true9.do.end_crit_edge, %land.lhs.true6.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef 64) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call17, %if.then ], [ 3, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_abort_req_rss(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l4opt, align 4
  %ntids.i = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp.i = icmp ugt i32 %7, %and
  br i1 %cmp.i, label %cond.end.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

cond.end.i:                                       ; preds = %entry
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tid_maps, align 128
  %arrayidx.i = getelementptr %struct.t3c_tid_entry, ptr %9, i32 %and
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %cond.end.i.if.else_crit_edge, label %land.lhs.true.i

cond.end.i.if.else_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true.i:                                  ; preds = %cond.end.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %ctx = getelementptr %struct.t3c_tid_entry, ptr %9, i32 %and, i32 1
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handlers, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %land.lhs.true3.if.else_crit_edge, label %land.lhs.true5

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 4
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr ptr, ptr %17, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %land.lhs.true5.if.else_crit_edge, label %if.then

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %21(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %13) #15
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %cond.end.i.if.else_crit_edge, %entry.if.else_crit_edge
  %status = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status, align 1
  %.off = add i8 %23, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.else
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %24 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.do.body.i_crit_edge, label %skb_cloned.exit.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

skb_cloned.exit.i:                                ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %25 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #15
  %27 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.do.body.i_crit_edge, label %if.else.i, !prof !173

skb_cloned.exit.i.do.body.i_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i:                                        ; preds = %skb_cloned.exit.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %len4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %30)
  %cmp.i63 = icmp ult i32 %30, 24
  br i1 %cmp.i63, label %do.body12.i, label %do.end15.i, !prof !178

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 833, 0\0A.popsection", ""() #15, !srcloc !188
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !173

do.end.i.i.i:                                     ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 2789, i32 noundef 9, ptr noundef null) #15
  br label %__skb_trim.exit.i

if.end21.critedge.i.i.i:                          ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 24, ptr %len4.i, align 4
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %35, i32 24
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__skb_trim.exit.i

__skb_trim.exit.i:                                ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #15, !srcloc !189
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !178

__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %__skb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__skb_trim.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cxgb3_get_cpl_reply_skb.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cxgb3_get_cpl_reply_skb.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cxgb3_get_cpl_reply_skb.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %cxgb3_get_cpl_reply_skb.exit

if.else.i:                                        ; preds = %skb_cloned.exit.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %if.else.i.do.end_crit_edge, label %if.then19.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then19.i:                                      ; preds = %if.else.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %cxgb3_get_cpl_reply_skb.exit.thread69, label %do.body3.i.i, !prof !173

do.body3.i.i:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !179
  unreachable

cxgb3_get_cpl_reply_skb.exit.thread69:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 24
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %44, 24
  store i32 %add.i.i, ptr %len9.i.i, align 4
  br label %if.end28

cxgb3_get_cpl_reply_skb.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cxgb3_get_cpl_reply_skb.exit_crit_edge
  %tobool25.not = icmp eq ptr %skb, null
  br i1 %tobool25.not, label %cxgb3_get_cpl_reply_skb.exit.do.end_crit_edge, label %cxgb3_get_cpl_reply_skb.exit.if.end28_crit_edge

cxgb3_get_cpl_reply_skb.exit.if.end28_crit_edge:  ; preds = %cxgb3_get_cpl_reply_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

cxgb3_get_cpl_reply_skb.exit.do.end_crit_edge:    ; preds = %cxgb3_get_cpl_reply_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %cxgb3_get_cpl_reply_skb.exit.do.end_crit_edge, %if.else.i.do.end_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #18
  br label %cleanup

if.end28:                                         ; preds = %cxgb3_get_cpl_reply_skb.exit.if.end28_crit_edge, %cxgb3_get_cpl_reply_skb.exit.thread69
  %skb.addr.0.i72 = phi ptr [ %call.i.i, %cxgb3_get_cpl_reply_skb.exit.thread69 ], [ %skb, %cxgb3_get_cpl_reply_skb.exit.if.end28_crit_edge ]
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 15, i32 0, i32 6
  %45 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %priority, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !173

do.body3.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #15, !srcloc !179
  unreachable

__skb_put.exit:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 24
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 6
  %50 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %51, 24
  store i32 %add.i, ptr %len9.i, align 4
  %data.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 19
  %52 = ptrtoint ptr %data.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i64, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 251658240, ptr %53, align 4
  %shl = shl i32 %3, 8
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl, ptr %wr_lo, align 4
  %or = or i32 %and, 184549376
  %ot32 = getelementptr inbounds %struct.cpl_abort_rpl, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %ot32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or, ptr %ot32, align 4
  %cmd33 = getelementptr inbounds %struct.cpl_abort_rpl, ptr %53, i32 0, i32 4
  %57 = ptrtoint ptr %cmd33 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %23, ptr %cmd33, align 1
  tail call fastcc void @local_bh_disable() #15
  %send.i = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 5
  %58 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %59(ptr noundef %dev, ptr noundef nonnull %skb.addr.0.i72) #15
  tail call fastcc void @local_bh_enable() #15
  br label %cleanup

cleanup:                                          ; preds = %__skb_put.exit, %do.end, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call14, %if.then ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %__skb_put.exit ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_act_establish(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l4opt, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and1 = and i32 %5, 16777215
  %ntids = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %7)
  %cmp.not = icmp ult i32 %and1, %7
  br i1 %cmp.not, label %if.end, label %do.end, !prof !173

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %dev, i32 noundef %and1) #18
  tail call void @t3_fatal_err(ptr noundef %dev) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7
  %tos_tid = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %tos_tid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tos_tid, align 4
  %and = and i32 %9, 16777215
  %atid_base.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %atid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %atid_base.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp.i = icmp ult i32 %and, %11
  br i1 %cmp.i, label %if.end.do.end22_crit_edge, label %lor.lhs.false.i

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

lor.lhs.false.i:                                  ; preds = %if.end
  %natids.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 7
  %12 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %natids.i, align 4
  %add.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and)
  %cmp2.not.i = icmp ugt i32 %add.i, %and
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end22_crit_edge

lor.lhs.false.i.do.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

if.end.i:                                         ; preds = %lor.lhs.false.i
  %atid_tab.i.i = getelementptr inbounds %struct.t3c_data, ptr %3, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %atid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atid_tab.i.i, align 8
  %sub.i.i = sub i32 %and, %11
  %arrayidx.i.i = getelementptr %union.active_open_entry, ptr %15, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tid_maps, align 128
  %cmp3.not.i = icmp uge ptr %17, %19
  %arrayidx.i = getelementptr %union.active_open_entry, ptr %15, i32 %13
  %cmp5.i = icmp ult ptr %17, %arrayidx.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp5.i, i1 false
  %tobool6.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool6.not, %or.cond.i
  br i1 %or.cond, label %if.end.i.do.end22_crit_edge, label %land.lhs.true

if.end.i.do.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true:                                    ; preds = %if.end.i
  %ctx = getelementptr inbounds %struct.t3c_tid_entry, ptr %arrayidx.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true8

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true8:                                   ; preds = %land.lhs.true
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handlers, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %land.lhs.true8.do.end22_crit_edge, label %land.lhs.true10

land.lhs.true8.do.end22_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %arrayidx = getelementptr ptr, ptr %25, i32 80
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %27, null
  br i1 %tobool13.not, label %land.lhs.true10.do.end22_crit_edge, label %if.then14

land.lhs.true10.do.end22_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 %27(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %21) #15
  br label %cleanup

do.end22:                                         ; preds = %land.lhs.true10.do.end22_crit_edge, %land.lhs.true8.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %if.end.i.do.end22_crit_edge, %lor.lhs.false.i.do.end22_crit_edge, %if.end.do.end22_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef 80) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then14, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %call19, %if.then14 ], [ 3, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_term(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority.i, align 4
  %shr.i = lshr i32 %1, 8
  %and.i = and i32 %shr.i, 1048575
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shr.i31 = lshr i32 %4, 24
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l4opt, align 4
  %ntids.i = getelementptr inbounds %struct.t3c_data, ptr %6, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ntids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and.i)
  %cmp.i = icmp ugt i32 %8, %and.i
  br i1 %cmp.i, label %cond.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

cond.end.i:                                       ; preds = %entry
  %tid_maps = getelementptr inbounds %struct.t3c_data, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %tid_maps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tid_maps, align 128
  %arrayidx.i = getelementptr %struct.t3c_tid_entry, ptr %10, i32 %and.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %cond.end.i.do.end_crit_edge, label %land.lhs.true.i

cond.end.i.do.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true.i:                                  ; preds = %cond.end.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %ctx = getelementptr %struct.t3c_tid_entry, ptr %10, i32 %and.i, i32 1
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %handlers = getelementptr inbounds %struct.cxgb3_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handlers, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %arrayidx = getelementptr ptr, ptr %18, i32 %shr.i31
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %20(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %14) #15
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true6.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %cond.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef %shr.i31) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call14, %if.then ], [ 3, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_trace(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %protocol, align 8
  %lldev = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldev, align 4
  %3 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %3, align 8
  %call1 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #15
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call2 = tail call i32 @netif_receive_skb(ptr noundef %skb) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nb_callback(ptr nocapture noundef readnone %self, i32 noundef %event, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %new = getelementptr inbounds %struct.netevent_redirect, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %new, align 4
  %neigh = getelementptr inbounds %struct.netevent_redirect, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %neigh, align 4
  %daddr = getelementptr inbounds %struct.netevent_redirect, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %daddr, align 4
  %dev1.i = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %.pn19.i.i = load ptr, ptr @adapter_list, align 4
  %cmp.not20.i.i = icmp eq ptr %.pn19.i.i, @adapter_list
  br i1 %cmp.not20.i.i, label %sw.bb1.is_offloading.exit.thread.i_crit_edge, label %sw.bb1.for.cond1.preheader.i.i_crit_edge

sw.bb1.for.cond1.preheader.i.i_crit_edge:         ; preds = %sw.bb1
  br label %for.cond1.preheader.i.i

sw.bb1.is_offloading.exit.thread.i_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_offloading.exit.thread.i

for.cond.loopexit.i.i:                            ; preds = %for.cond1.i.i.for.cond.loopexit.i.i_crit_edge, %for.cond1.preheader.i.i.for.cond.loopexit.i.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn21.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @adapter_list
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.is_offloading.exit.thread.i_crit_edge, label %for.cond.loopexit.i.i.for.cond1.preheader.i.i_crit_edge

for.cond.loopexit.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i.i

for.cond.loopexit.i.i.is_offloading.exit.thread.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_offloading.exit.thread.i

for.cond1.preheader.i.i:                          ; preds = %for.cond.loopexit.i.i.for.cond1.preheader.i.i_crit_edge, %sw.bb1.for.cond1.preheader.i.i_crit_edge
  %.pn21.i.i = phi ptr [ %.pn.i.i, %for.cond.loopexit.i.i.for.cond1.preheader.i.i_crit_edge ], [ %.pn19.i.i, %sw.bb1.for.cond1.preheader.i.i_crit_edge ]
  %nports.i.i = getelementptr i8, ptr %.pn21.i.i, i32 648
  %12 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp217.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp217.not.i.i, label %for.cond1.preheader.i.i.for.cond.loopexit.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.cond.loopexit.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %port.i.i = getelementptr i8, ptr %.pn21.i.i, i32 12488
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %for.body3.i.i
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.cond1.i.i.for.cond.loopexit.i.i_crit_edge, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.i.i

for.cond1.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %i.018.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [2 x ptr], ptr %port.i.i, i32 0, i32 %i.018.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.i.i = icmp eq ptr %15, %10
  br i1 %cmp4.i.i, label %if.end.i, label %for.cond1.i.i

is_offloading.exit.thread.i:                      ; preds = %for.cond.loopexit.i.i.is_offloading.exit.thread.i_crit_edge, %sw.bb1.is_offloading.exit.thread.i_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  br label %cxgb_redirect.exit

if.end.i:                                         ; preds = %for.body3.i.i
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 2304
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %do.body8.i, label %do.end14.i, !prof !178

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #15, !srcloc !190
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  %call15.i = tail call ptr @t3_l2t_get(ptr noundef nonnull %17, ptr noundef %4, ptr noundef %10, ptr noundef %8) #15
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #18
  br label %cxgb_redirect.exit

if.end22.i:                                       ; preds = %do.end14.i
  %l4opt.i = getelementptr inbounds %struct.t3cdev, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %l4opt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l4opt.i, align 4
  %tid_maps.i = getelementptr inbounds %struct.t3c_data, ptr %19, i32 0, i32 7
  %ntids.i = getelementptr inbounds %struct.t3c_data, ptr %19, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ntids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp138.not.i = icmp eq i32 %21, 0
  br i1 %cmp138.not.i, label %if.end22.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %l2opt.i = getelementptr inbounds %struct.t3cdev, ptr %17, i32 0, i32 10
  %refcnt.i.i = getelementptr inbounds %struct.l2t_entry, ptr %call15.i, i32 0, i32 11
  %idx.i.i = getelementptr inbounds %struct.l2t_entry, ptr %call15.i, i32 0, i32 1
  %send.i.i = getelementptr inbounds %struct.t3cdev, ptr %17, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tid.0139.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ntids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %tid.0139.i)
  %cmp.i.i = icmp ugt i32 %23, %tid.0139.i
  br i1 %cmp.i.i, label %cond.end.i.i, label %for.body.i.do.body35.i_crit_edge

for.body.i.do.body35.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body35.i

cond.end.i.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %tid_maps.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tid_maps.i, align 128
  %arrayidx.i108.i = getelementptr %struct.t3c_tid_entry, ptr %25, i32 %tid.0139.i
  %tobool.not.i109.i = icmp eq ptr %arrayidx.i108.i, null
  br i1 %tobool.not.i109.i, label %cond.end.i.i.do.body35.i_crit_edge, label %land.lhs.true.i110.i

cond.end.i.i.do.body35.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body35.i

land.lhs.true.i110.i:                             ; preds = %cond.end.i.i
  %26 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i108.i, align 4
  %tobool1.not.i.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i110.i.do.body35.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i110.i.do.body35.i_crit_edge:       ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body35.i

do.body35.i:                                      ; preds = %land.lhs.true.i110.i.do.body35.i_crit_edge, %cond.end.i.i.do.body35.i_crit_edge, %for.body.i.do.body35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1140, 0\0A.popsection", ""() #15, !srcloc !191
  unreachable

land.lhs.true.i:                                  ; preds = %land.lhs.true.i110.i
  %ctx.i = getelementptr %struct.t3c_tid_entry, ptr %25, i32 %tid.0139.i, i32 1
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i, align 4
  %tobool45.not.i = icmp eq ptr %29, null
  br i1 %tobool45.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true48.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true48.i:                                ; preds = %land.lhs.true.i
  %redirect.i = getelementptr inbounds %struct.cxgb3_client, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %redirect.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %redirect.i, align 4
  %tobool50.not.i = icmp eq ptr %31, null
  br i1 %tobool50.not.i, label %land.lhs.true48.i.for.inc.i_crit_edge, label %if.then51.i

land.lhs.true48.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then51.i:                                      ; preds = %land.lhs.true48.i
  %call55.i = tail call i32 %31(ptr noundef nonnull %29, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %call15.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.then51.i.for.inc.i_crit_edge, label %if.then57.i

if.then51.i.for.inc.i_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then57.i:                                      ; preds = %if.then51.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !182
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.then57.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then57.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then57.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then57.i.rcu_read_lock.exit.i_crit_edge
  %36 = ptrtoint ptr %l2opt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %l2opt.i, align 4
  %call63.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true65.i, label %rcu_read_lock.exit.i.do.end73.i_crit_edge

rcu_read_lock.exit.i.do.end73.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end73.i

land.lhs.true65.i:                                ; preds = %rcu_read_lock.exit.i
  %call66.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %land.lhs.true65.i.do.end73.i_crit_edge, label %land.lhs.true68.i

land.lhs.true65.i.do.end73.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end73.i

land.lhs.true68.i:                                ; preds = %land.lhs.true65.i
  %.b107.i = load i1, ptr @cxgb_redirect.__warned, align 1
  br i1 %.b107.i, label %land.lhs.true68.i.do.end73.i_crit_edge, label %if.then70.i

land.lhs.true68.i.do.end73.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end73.i

if.then70.i:                                      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cxgb_redirect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1145, ptr noundef nonnull @.str.6) #15
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.then70.i, %land.lhs.true68.i.do.end73.i_crit_edge, %land.lhs.true65.i.do.end73.i_crit_edge, %rcu_read_lock.exit.i.do.end73.i_crit_edge
  %tobool.not.i111.i = icmp eq ptr %37, null
  br i1 %tobool.not.i111.i, label %do.end73.i.l2t_hold.exit.i_crit_edge, label %land.lhs.true.i113.i

do.end73.i.l2t_hold.exit.i_crit_edge:             ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %l2t_hold.exit.i

land.lhs.true.i113.i:                             ; preds = %do.end73.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #15
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #15, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i112.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i112.i, label %if.then.i114.i, label %land.lhs.true.i113.i.l2t_hold.exit.i_crit_edge

land.lhs.true.i113.i.l2t_hold.exit.i_crit_edge:   ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %l2t_hold.exit.i

if.then.i114.i:                                   ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #17
  %nfree.i.i = getelementptr inbounds %struct.l2t_data, ptr %37, i32 0, i32 2
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nfree.i.i, i32 1, i32 3, i32 1) #15
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i.i, ptr %nfree.i.i, i32 1, ptr elementtype(i32) %nfree.i.i) #15, !srcloc !180
  br label %l2t_hold.exit.i

l2t_hold.exit.i:                                  ; preds = %if.then.i114.i, %land.lhs.true.i113.i.l2t_hold.exit.i_crit_edge, %do.end73.i.l2t_hold.exit.i_crit_edge
  %call.i115.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i115.i, label %l2t_hold.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i118.i

l2t_hold.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %l2t_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i118.i:                             ; preds = %l2t_hold.exit.i
  %call1.i116.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call1.i116.i, 0
  br i1 %tobool.not.i117.i, label %land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i120.i

land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i118.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i120.i:                            ; preds = %land.lhs.true.i118.i
  %.b4.i119.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i119.i, label %land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i121.i

land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i120.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i121.i:                                   ; preds = %land.lhs.true2.i120.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i121.i, %land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge, %l2t_hold.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !183
  %40 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i122.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i122.i to ptr
  %preempt_count.i.i.i.i123.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i123.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i123.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i124.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i124.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #18
  br label %for.inc.i

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %44 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %priority.i.i, align 4
  %call2.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 32) #15
  %45 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16777216, ptr %call2.i.i, align 8
  %or.i.i = or i32 %tid.0139.i, 83886080
  %ot.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %call2.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %ot.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i, ptr %ot.i.i, align 8
  %reply.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %call2.i.i, i32 0, i32 2
  %mask.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %call2.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %reply.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %reply.i.i, align 4
  %48 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 262016, ptr %mask.i.i, align 8
  %49 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %idx.i.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 7
  %51 = zext i32 %shl.i.i to i64
  %val.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %call2.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %val.i.i, align 8
  %53 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %send.i.i, align 4
  %call4.i.i = tail call i32 %54(ptr noundef nonnull %17, ptr noundef nonnull %call.i.i.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %do.end.i.i, %if.then51.i.for.inc.i_crit_edge, %land.lhs.true48.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %tid.0139.i, 1
  %55 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ntids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %56
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %57 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !182
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i126.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i126.i, label %for.end.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.end.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.end.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %for.end.i.rcu_read_lock.exit.i.i_crit_edge
  %l2opt.i.i = getelementptr inbounds %struct.t3cdev, ptr %17, i32 0, i32 10
  %61 = ptrtoint ptr %l2opt.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %l2opt.i.i, align 4
  %call.i127.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i128.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i128.i, label %land.lhs.true.i130.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i

land.lhs.true.i130.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call2.i129.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i129.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i129.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i130.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i130.i.do.end7.i.i_crit_edge:       ; preds = %land.lhs.true.i130.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i130.i
  %.b16.i.i = load i1, ptr @l2t_release.__warned, align 1
  br i1 %.b16.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i131.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i.i

if.then.i131.i:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @l2t_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 134, ptr noundef nonnull @.str.6) #15
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i131.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i130.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %refcnt.i132.i = getelementptr inbounds %struct.l2t_entry, ptr %call15.i, i32 0, i32 11
  %call.i.i.i133.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i132.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %refcnt.i132.i, i32 1, i32 3, i32 1) #15
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i132.i, ptr %refcnt.i132.i, i32 1, ptr elementtype(i32) %refcnt.i132.i) #15, !srcloc !196
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  %tobool11.not.i.i = icmp eq ptr %62, null
  %or.cond.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool11.not.i.i
  br i1 %or.cond.i.i, label %do.end7.i.i.if.end13.i.i_crit_edge, label %if.then12.i.i

do.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @t3_l2e_free(ptr noundef nonnull %62, ptr noundef nonnull %call15.i) #15
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then12.i.i, %do.end7.i.i.if.end13.i.i_crit_edge
  %call.i17.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i17.i.i, label %if.end13.i.i.l2t_release.exit.i_crit_edge, label %land.lhs.true.i20.i.i

if.end13.i.i.l2t_release.exit.i_crit_edge:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %l2t_release.exit.i

land.lhs.true.i20.i.i:                            ; preds = %if.end13.i.i
  %call1.i18.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i)
  %tobool.not.i19.i.i = icmp eq i32 %call1.i18.i.i, 0
  br i1 %tobool.not.i19.i.i, label %land.lhs.true.i20.i.i.l2t_release.exit.i_crit_edge, label %land.lhs.true2.i22.i.i

land.lhs.true.i20.i.i.l2t_release.exit.i_crit_edge: ; preds = %land.lhs.true.i20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %l2t_release.exit.i

land.lhs.true2.i22.i.i:                           ; preds = %land.lhs.true.i20.i.i
  %.b4.i21.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i.i, label %land.lhs.true2.i22.i.i.l2t_release.exit.i_crit_edge, label %if.then.i23.i.i

land.lhs.true2.i22.i.i.l2t_release.exit.i_crit_edge: ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %l2t_release.exit.i

if.then.i23.i.i:                                  ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #15
  br label %l2t_release.exit.i

l2t_release.exit.i:                               ; preds = %if.then.i23.i.i, %land.lhs.true2.i22.i.i.l2t_release.exit.i_crit_edge, %land.lhs.true.i20.i.i.l2t_release.exit.i_crit_edge, %if.end13.i.i.l2t_release.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !183
  %64 = tail call i32 @llvm.read_register.i32(metadata !162) #15
  %and.i.i.i.i.i24.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i24.i.i to ptr
  %preempt_count.i.i.i.i25.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i, align 4
  %sub.i.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i25.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cxgb_redirect.exit

cxgb_redirect.exit:                               ; preds = %l2t_release.exit.i, %do.end20.i, %is_offloading.exit.thread.i
  %68 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %neigh, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cxgb_redirect.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %69, %cxgb_redirect.exit ], [ %ctx, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @cxgb_neigh_update(ptr noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb_neigh_update(ptr noundef %neigh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %neigh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %.pn19.i = load ptr, ptr @adapter_list, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, @adapter_list
  br i1 %cmp.not20.i, label %land.lhs.true.is_offloading.exit.thread_crit_edge, label %land.lhs.true.for.cond1.preheader.i_crit_edge

land.lhs.true.for.cond1.preheader.i_crit_edge:    ; preds = %land.lhs.true
  br label %for.cond1.preheader.i

land.lhs.true.is_offloading.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_offloading.exit.thread

for.cond.loopexit.i:                              ; preds = %for.cond1.i.for.cond.loopexit.i_crit_edge, %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge
  %2 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @adapter_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.is_offloading.exit.thread_crit_edge, label %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge

for.cond.loopexit.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i

for.cond.loopexit.i.is_offloading.exit.thread_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_offloading.exit.thread

for.cond1.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge, %land.lhs.true.for.cond1.preheader.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge ], [ %.pn19.i, %land.lhs.true.for.cond1.preheader.i_crit_edge ]
  %nports.i = getelementptr i8, ptr %.pn21.i, i32 648
  %3 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp217.not.i = icmp eq i32 %4, 0
  br i1 %cmp217.not.i, label %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %port.i = getelementptr i8, ptr %.pn21.i, i32 12488
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.cond1.i.for.cond.loopexit.i_crit_edge, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.i

for.cond1.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.cond1.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %port.i, i32 0, i32 %i.018.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %6, %1
  br i1 %cmp4.i, label %if.then4, label %for.cond1.i

is_offloading.exit.thread:                        ; preds = %for.cond.loopexit.i.is_offloading.exit.thread_crit_edge, %land.lhs.true.is_offloading.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  br label %cleanup

if.then4:                                         ; preds = %for.body3.i
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @adapter_list_lock) #15
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %do.body11, label %do.end17, !prof !178

do.body11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1083, 0\0A.popsection", ""() #15, !srcloc !198
  unreachable

do.end17:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @t3_l2t_update(ptr noundef nonnull %8, ptr noundef nonnull %neigh) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %is_offloading.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_l2t_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_l2e_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_get_tp_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vlan_find_dev_deep_rcu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_cqcntxt_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mc7_bd_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_init_cqcntxt(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_disable_cqcntxt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_init_ecntxt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_tp_get_mib_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_fatal_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !160, !161}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__ksymtab_cxgb3_register_client, !1, !"__ksymtab_cxgb3_register_client", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 100, i32 1}
!2 = !{ptr @__ksymtab_cxgb3_unregister_client, !3, !"__ksymtab_cxgb3_unregister_client", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 125, i32 1}
!4 = !{ptr @__ksymtab_cxgb3_free_atid, !5, !"__ksymtab_cxgb3_free_atid", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 516, i32 1}
!6 = !{ptr @__ksymtab_cxgb3_free_stid, !7, !"__ksymtab_cxgb3_free_stid", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 533, i32 1}
!8 = !{ptr @__ksymtab_cxgb3_insert_tid, !9, !"__ksymtab_cxgb3_insert_tid", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 545, i32 1}
!10 = !{ptr @__ksymtab_cxgb3_queue_tid_release, !11, !"__ksymtab_cxgb3_queue_tid_release", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 618, i32 1}
!12 = !{ptr @__ksymtab_cxgb3_remove_tid, !13, !"__ksymtab_cxgb3_remove_tid", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 648, i32 1}
!14 = !{ptr @__ksymtab_cxgb3_alloc_atid, !15, !"__ksymtab_cxgb3_alloc_atid", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 672, i32 1}
!16 = !{ptr @__ksymtab_cxgb3_alloc_stid, !17, !"__ksymtab_cxgb3_alloc_stid", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 694, i32 1}
!18 = !{ptr @__ksymtab_dev2t3cdev, !19, !"__ksymtab_dev2t3cdev", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 704, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1010, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @t3_register_cpl_handler._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @t3_register_cpl_handler._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_t3_register_cpl_handler, !27, !"__ksymtab_t3_register_cpl_handler", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1014, i32 1}
!28 = !{ptr @__ksymtab_cxgb3_ofld_send, !29, !"__ksymtab_cxgb3_ofld_send", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1053, i32 1}
!30 = !{ptr @cxgb3_offload_activate.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1254, i32 2}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cxgb3_offload_activate.__key.4, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1255, i32 2}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1301, i32 6}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cpl_handlers, !40, !"cpl_handlers", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 999, i32 25}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 58, i32 8}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cxgb3_db_lock, !42, !"cxgb3_db_lock", i1 false, i1 false}
!45 = !{ptr @client_list, !46, !"client_list", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 56, i32 8}
!47 = !{ptr @ofld_dev_list, !48, !"ofld_dev_list", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 57, i32 8}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 992, i32 2}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @do_bad_cpl._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_bad_cpl._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_tid_tabs.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1179, i32 2}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @init_tid_tabs.__key.12, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1180, i32 2}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1030, i32 4}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @process_rx._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @process_rx._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @adapter_list, !66, !"adapter_list", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 61, i32 8}
!67 = !{ptr @nb, !68, !"nb", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 983, i32 30}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 60, i32 8}
!71 = !{ptr @adapter_list_lock, !70, !"adapter_list_lock", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1132, i32 3}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cxgb_redirect._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cxgb_redirect._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1145, i32 14}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1095, i32 3}
!81 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @set_l2t_ix._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @set_l2t_ix._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.h", i32 134, i32 6}
!86 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!89 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!93 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 239, i32 4}
!96 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cxgb_ulp_iscsi_ctl._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cxgb_ulp_iscsi_ctl._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 259, i32 4}
!101 = !{ptr @cxgb_ulp_iscsi_ctl._entry.27, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cxgb_ulp_iscsi_ctl._entry_ptr.29, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @register_tdev.unit, !104, !"unit", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1311, i32 13}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 1314, i32 43}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 711, i32 3}
!109 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @do_smt_write_rpl._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @do_smt_write_rpl._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 722, i32 3}
!114 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @do_l2t_write_rpl._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @do_l2t_write_rpl._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 733, i32 3}
!119 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @do_rte_write_rpl._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @do_rte_write_rpl._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 771, i32 3}
!124 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @do_stid_rpl._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @do_stid_rpl._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 804, i32 3}
!129 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @do_cr._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @do_cr._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @do_cr._entry.41, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 816, i32 3}
!134 = !{ptr @do_cr._entry_ptr.42, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 789, i32 3}
!137 = !{ptr @do_hwtid_rpl._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @do_hwtid_rpl._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 753, i32 3}
!141 = !{ptr @do_act_open_rpl._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @do_act_open_rpl._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 872, i32 4}
!145 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @do_abort_req_rss._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @do_abort_req_rss._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 898, i32 3}
!152 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @do_act_establish._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @do_act_establish._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @do_act_establish._entry.50, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 910, i32 3}
!157 = !{ptr @do_act_establish._entry_ptr.51, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c", i32 956, i32 3}
!160 = !{ptr @do_term._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @do_term._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148615748, i64 2148615774, i64 2148615803, i64 2148615837, i64 2148615868, i64 2148615891}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2159512790, i64 2159513305, i64 2159512827, i64 2159512883, i64 2159512917, i64 2159512941, i64 2159512982, i64 2159513003, i64 2159513031, i64 2159513065}
!175 = !{i64 2159515054}
!176 = !{i64 1125240, i64 1125261, i64 1125284, i64 1125303, i64 1125322}
!177 = !{i64 2159515467}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2154627694, i64 2154628182, i64 2154627731, i64 2154627787, i64 2154627821, i64 2154627845, i64 2154627886, i64 2154627907, i64 2154627935, i64 2154627969}
!180 = !{i64 2148618213, i64 2148618239, i64 2148618268, i64 2148618302, i64 2148618333, i64 2148618356}
!181 = !{!"auto-init"}
!182 = !{i64 2149952619}
!183 = !{i64 2149952885}
!184 = !{i64 6135948}
!185 = !{i64 2156950530}
!186 = !{i64 2156950920}
!187 = !{i64 6135530}
!188 = !{i64 2159539578, i64 2159540093, i64 2159539615, i64 2159539671, i64 2159539705, i64 2159539729, i64 2159539770, i64 2159539791, i64 2159539819, i64 2159539853}
!189 = !{i64 2148617278, i64 2148617310, i64 2148617339, i64 2148617373, i64 2148617404, i64 2148617427}
!190 = !{i64 2159572558, i64 2159573074, i64 2159572595, i64 2159572651, i64 2159572685, i64 2159572709, i64 2159572750, i64 2159572771, i64 2159572799, i64 2159572833}
!191 = !{i64 2159576041, i64 2159576557, i64 2159576078, i64 2159576134, i64 2159576168, i64 2159576192, i64 2159576233, i64 2159576254, i64 2159576282, i64 2159576316}
!192 = !{i64 2148701183}
!193 = !{i64 2148616468, i64 2148616500, i64 2148616529, i64 2148616563, i64 2148616594, i64 2148616617}
!194 = !{i64 2148701412}
!195 = !{i64 2148704224}
!196 = !{i64 2148618933, i64 2148618965, i64 2148618994, i64 2148619028, i64 2148619059, i64 2148619082}
!197 = !{i64 2148704453}
!198 = !{i64 2159568331, i64 2159568847, i64 2159568368, i64 2159568424, i64 2159568458, i64 2159568482, i64 2159568523, i64 2159568544, i64 2159568572, i64 2159568606}
