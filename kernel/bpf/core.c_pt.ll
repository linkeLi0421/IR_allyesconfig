; ModuleID = '/llk/IR_all_yes/kernel/bpf/core.c_pt.bc'
source_filename = "../kernel/bpf/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bpf_prog_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_prog_alloc\09\09\09\09"
module asm "\09.long\09__crc_bpf_prog_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__bpf_call_base\22, \22a\22\09"
module asm "\09.weak\09__crc___bpf_call_base\09\09\09\09"
module asm "\09.long\09__crc___bpf_call_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bpf_call_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__bpf_call_base\22\09\09\09\09\09"
module asm "__kstrtabns___bpf_call_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_prog_select_runtime\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_prog_select_runtime\09\09\09\09"
module asm "\09.long\09__crc_bpf_prog_select_runtime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_select_runtime:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_select_runtime\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_select_runtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_prog_free\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_prog_free\09\09\09\09"
module asm "\09.long\09__crc_bpf_prog_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_free\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_event_output\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_event_output\09\09\09\09"
module asm "\09.long\09__crc_bpf_event_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_event_output:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_event_output\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_event_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bpf_stats_enabled_key\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_stats_enabled_key\09\09\09\09"
module asm "\09.long\09__crc_bpf_stats_enabled_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_stats_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_stats_enabled_key\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_stats_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_xdp_exception\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_xdp_exception\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_xdp_exception\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_xdp_exception\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_xdp_exception\09\09\09\09"
module asm "\09.long\09__crc___traceiter_xdp_exception\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_xdp_exception\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_xdp_exception\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_xdp_exception\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_xdp_bulk_tx\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_xdp_bulk_tx\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_xdp_bulk_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_xdp_bulk_tx\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_xdp_bulk_tx\09\09\09\09"
module asm "\09.long\09__crc___traceiter_xdp_bulk_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_xdp_bulk_tx\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_xdp_bulk_tx\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_xdp_bulk_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.latch_tree_root = type { %struct.seqcount_latch_t, [2 x %struct.rb_root] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.atomic_t = type { i32 }
%struct.anon.201 = type { %struct.bpf_prog_array, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_prog_array_item = type { ptr, %union.anon.109 }
%union.anon.109 = type { i64 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.86, %union.anon.88, ptr, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { i32, i32, i32, i32, i32 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.203 }
%union.anon.203 = type { %struct.anon.204 }
%struct.anon.204 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.205, %struct.trace_event, ptr, ptr, %union.anon.206, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.205 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.206 = type { ptr }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.208 = type { %struct.bpf_raw_event_map }
%union.anon.209 = type { %struct.bpf_raw_event_map }
%union.anon.210 = type { %struct.bpf_raw_event_map }
%union.anon.211 = type { %struct.bpf_raw_event_map }
%union.anon.212 = type { %struct.bpf_raw_event_map }
%union.anon.213 = type { %struct.bpf_raw_event_map }
%union.anon.214 = type { %struct.bpf_raw_event_map }
%union.anon.215 = type { %struct.bpf_raw_event_map }
%union.anon.216 = type { %struct.bpf_raw_event_map }
%union.anon.217 = type { %struct.bpf_raw_event_map }
%union.anon.218 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.anon.106, [0 x %struct.sock_filter] }
%struct.anon.106 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.104 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.103 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.103 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_func_info = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_jit_poke_descriptor = type { ptr, ptr, ptr, ptr, %union.anon.58, i8, i8, i16, i32 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32 }
%struct.bpf_binary_header = type { i32, [4 x i8], [0 x i8] }
%struct.bpf_array = type { %struct.bpf_map, i32, i32, ptr, [4 x i8], %union.anon.200, [112 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%union.anon.200 = type { [0 x ptr] }
%struct.anon.199 = type { %struct.spinlock, i32, i8 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btf_mod_pair = type { ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_xdp_exception = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.trace_event_raw_xdp_bulk_tx = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_redirect_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_cpumap_kthread = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xdp_cpumap_stats = type { i32, i32, i32 }
%struct.trace_event_raw_xdp_cpumap_enqueue = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_devmap_xmit = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mem_disconnect = type { %struct.trace_entry, ptr, i32, i32, ptr, [0 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_mem_allocator = type { %struct.xdp_mem_info, %union.anon.202, %struct.rhash_head, %struct.callback_head }
%union.anon.202 = type { ptr }
%struct.rhash_head = type { ptr }
%struct.trace_event_raw_mem_connect = type { %struct.trace_entry, ptr, i32, i32, ptr, ptr, i32, [0 x i8] }
%struct.trace_event_raw_mem_return_failed = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@bpf_prog_alloc_no_stats.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&fp->aux->used_maps_mutex\00", [38 x i8] zeroinitializer }, align 32
@bpf_prog_alloc_no_stats.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fp->aux->dst_mutex\00", [44 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bpf_prog_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&pstats->syncp)->seq\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_prog_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_alloc to i32), ptr @__kstrtab_bpf_prog_alloc, ptr @__kstrtabns_bpf_prog_alloc }, section "___ksymtab_gpl+bpf_prog_alloc", align 4
@bpf_remove_insns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/bpf/core.c\00", [46 x i8] zeroinitializer }, align 32
@bpf_jit_enable = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@bpf_jit_kallsyms = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@bpf_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.8 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bpf_ksym_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_kallsyms = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bpf_kallsyms, ptr @bpf_kallsyms }, [24 x i8] zeroinitializer }, align 32
@bpf_tree = internal global %struct.latch_tree_root zeroinitializer, section ".data..cacheline_aligned", align 128
@bpf_get_kallsym.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__initcall__kmod_core__404_834_bpf_jit_charge_init0 = internal global ptr @bpf_jit_charge_init, section ".initcall0.init", align 4
@bpf_jit_current = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@bpf_jit_limit = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@bpf_jit_binary_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_jit_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___bpf_call_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___bpf_call_base = external dso_local constant [0 x i8], align 1
@__ksymtab___bpf_call_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bpf_call_base to i32), ptr @__kstrtab___bpf_call_base, ptr @__kstrtabns___bpf_call_base }, section "___ksymtab_gpl+__bpf_call_base", align 4
@bpf_opcode_in_insntable.public_insntable = internal constant { <{ [223 x i8], [33 x i8] }>, [64 x i8] } { <{ [223 x i8], [33 x i8] }> <{ [223 x i8] c"\00\00\00\00\01\01\00\01\00\00\00\00\01\00\00\01\00\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\00\00\00\01\01\00\01\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\01\00\00\00\00\01\00\00\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\00\00\00\00\01\01\01\01", [33 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_prog_select_runtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_select_runtime = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_select_runtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_select_runtime to i32), ptr @__kstrtab_bpf_prog_select_runtime, ptr @__kstrtabns_bpf_prog_select_runtime }, section "___ksymtab_gpl+bpf_prog_select_runtime", align 4
@empty_prog_array = internal global { %struct.anon.201, [16 x i8] } zeroinitializer, align 32
@bpf_prog_free.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&aux->work)\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_prog_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_free to i32), ptr @__kstrtab_bpf_prog_free, ptr @__kstrtabns_bpf_prog_free }, section "___ksymtab_gpl+bpf_prog_free", align 4
@bpf_user_rnd_init_once.___done = internal global i8 0, section ".data.once", align 1
@bpf_user_rnd_init_once.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@bpf_user_rnd_state = weak dso_local global %struct.rnd_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_bpf_event_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_event_output = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_event_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_event_output to i32), ptr @__kstrtab_bpf_event_output, ptr @__kstrtabns_bpf_event_output }, section "___ksymtab_gpl+bpf_event_output", align 4
@bpf_tail_call_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr null, i8 0, i8 0, i32 1, %union.anon.86 { %struct.anon.87 { i32 9, i32 1, i32 10, i32 0, i32 0 } }, %union.anon.88 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_bpf_stats_enabled_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_stats_enabled_key = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_stats_enabled_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_stats_enabled_key to i32), ptr @__kstrtab_bpf_stats_enabled_key, ptr @__kstrtabns_bpf_stats_enabled_key }, section "___ksymtab+bpf_stats_enabled_key", align 4
@__tpstrtab_xdp_exception = internal constant [14 x i8] c"xdp_exception\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_exception = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_exception }, align 4
@__tracepoint_xdp_exception = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_exception, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_exception, ptr null, ptr @__traceiter_xdp_exception, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_exception = internal constant ptr @__tracepoint_xdp_exception, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_bulk_tx = internal constant [12 x i8] c"xdp_bulk_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_bulk_tx = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_bulk_tx }, align 4
@__tracepoint_xdp_bulk_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_bulk_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_bulk_tx, ptr null, ptr @__traceiter_xdp_bulk_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_bulk_tx = internal constant ptr @__tracepoint_xdp_bulk_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect = internal constant [13 x i8] c"xdp_redirect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect }, align 4
@__tracepoint_xdp_redirect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_redirect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_redirect, ptr null, ptr @__traceiter_xdp_redirect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect = internal constant ptr @__tracepoint_xdp_redirect, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_err = internal constant [17 x i8] c"xdp_redirect_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_err = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_err }, align 4
@__tracepoint_xdp_redirect_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_redirect_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_err, ptr null, ptr @__traceiter_xdp_redirect_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_err = internal constant ptr @__tracepoint_xdp_redirect_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_map = internal constant [17 x i8] c"xdp_redirect_map\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_map = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_map }, align 4
@__tracepoint_xdp_redirect_map = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_redirect_map, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_map, ptr null, ptr @__traceiter_xdp_redirect_map, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_map = internal constant ptr @__tracepoint_xdp_redirect_map, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_map_err = internal constant [21 x i8] c"xdp_redirect_map_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_map_err = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_map_err }, align 4
@__tracepoint_xdp_redirect_map_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_redirect_map_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_map_err, ptr null, ptr @__traceiter_xdp_redirect_map_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_map_err = internal constant ptr @__tracepoint_xdp_redirect_map_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_cpumap_kthread = internal constant [19 x i8] c"xdp_cpumap_kthread\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_cpumap_kthread = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_cpumap_kthread }, align 4
@__tracepoint_xdp_cpumap_kthread = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_cpumap_kthread, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_cpumap_kthread, ptr null, ptr @__traceiter_xdp_cpumap_kthread, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_cpumap_kthread = internal constant ptr @__tracepoint_xdp_cpumap_kthread, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_cpumap_enqueue = internal constant [19 x i8] c"xdp_cpumap_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_cpumap_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_cpumap_enqueue }, align 4
@__tracepoint_xdp_cpumap_enqueue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_cpumap_enqueue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_cpumap_enqueue, ptr null, ptr @__traceiter_xdp_cpumap_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_cpumap_enqueue = internal constant ptr @__tracepoint_xdp_cpumap_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_devmap_xmit = internal constant [16 x i8] c"xdp_devmap_xmit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_devmap_xmit = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_devmap_xmit }, align 4
@__tracepoint_xdp_devmap_xmit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xdp_devmap_xmit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xdp_devmap_xmit, ptr null, ptr @__traceiter_xdp_devmap_xmit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_devmap_xmit = internal constant ptr @__tracepoint_xdp_devmap_xmit, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_disconnect = internal constant [15 x i8] c"mem_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_mem_disconnect }, align 4
@__tracepoint_mem_disconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mem_disconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mem_disconnect, ptr null, ptr @__traceiter_mem_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_disconnect = internal constant ptr @__tracepoint_mem_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_connect = internal constant [12 x i8] c"mem_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_connect = dso_local global %struct.static_call_key { ptr @__traceiter_mem_connect }, align 4
@__tracepoint_mem_connect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mem_connect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mem_connect, ptr null, ptr @__traceiter_mem_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_connect = internal constant ptr @__tracepoint_mem_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_return_failed = internal constant [18 x i8] c"mem_return_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_return_failed = dso_local global %struct.static_call_key { ptr @__traceiter_mem_return_failed }, align 4
@__tracepoint_mem_return_failed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mem_return_failed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mem_return_failed, ptr null, ptr @__traceiter_mem_return_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_return_failed = internal constant ptr @__tracepoint_mem_return_failed, section "__tracepoints_ptrs", align 4
@str__xdp__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xdp\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XDP_ABORTED\00", [20 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_XDP_ABORTED = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_ABORTED = internal global ptr @__TRACE_SYSTEM_XDP_ABORTED, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XDP_DROP\00", [23 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_XDP_DROP = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.8, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_DROP = internal global ptr @__TRACE_SYSTEM_XDP_DROP, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XDP_PASS\00", [23 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_XDP_PASS = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.9, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_PASS = internal global ptr @__TRACE_SYSTEM_XDP_PASS, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XDP_TX\00", [25 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_XDP_TX = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.10, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_TX = internal global ptr @__TRACE_SYSTEM_XDP_TX, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XDP_REDIRECT\00", [19 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_XDP_REDIRECT = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.11, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_REDIRECT = internal global ptr @__TRACE_SYSTEM_XDP_REDIRECT, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MEM_TYPE_PAGE_SHARED\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MEM_TYPE_PAGE_ORDER0\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0 = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0 = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MEM_TYPE_PAGE_POOL\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_POOL = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MEM_TYPE_XSK_BUFF_POOL\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, section "_ftrace_eval_map", align 4
@trace_event_fields_xdp_exception = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xdp_exception = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_exception, ptr @perf_trace_xdp_exception, ptr @trace_event_reg, ptr @trace_event_fields_xdp_exception, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_exception, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_exception, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_exception = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_exception, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_exception = internal global { [231 x i8], [57 x i8] } { [231 x i8] c"\22prog_id=%d action=%s ifindex=%d\22, REC->prog_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->ifindex\00", [57 x i8] zeroinitializer }, align 32
@event_xdp_exception = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_exception, %union.anon.205 { ptr @__tracepoint_xdp_exception }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_exception }, ptr @print_fmt_xdp_exception, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_exception = internal global ptr @event_xdp_exception, section "_ftrace_events", align 4
@trace_event_fields_xdp_bulk_tx = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xdp_bulk_tx = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_bulk_tx, ptr @perf_trace_xdp_bulk_tx, ptr @trace_event_reg, ptr @trace_event_fields_xdp_bulk_tx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_bulk_tx, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_bulk_tx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_bulk_tx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_bulk_tx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_bulk_tx = internal global { [263 x i8], [89 x i8] } { [263 x i8] c"\22ifindex=%d action=%s sent=%d drops=%d err=%d\22, REC->ifindex, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->sent, REC->drops, REC->err\00", [89 x i8] zeroinitializer }, align 32
@event_xdp_bulk_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_bulk_tx, %union.anon.205 { ptr @__tracepoint_xdp_bulk_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_bulk_tx }, ptr @print_fmt_xdp_bulk_tx, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_bulk_tx = internal global ptr @event_xdp_bulk_tx, section "_ftrace_events", align 4
@trace_event_fields_xdp_redirect_template = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xdp_redirect_template = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_redirect_template, ptr @perf_trace_xdp_redirect_template, ptr @trace_event_reg, ptr @trace_event_fields_xdp_redirect_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_redirect_template, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_redirect_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_redirect_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_redirect_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_redirect_template = internal global { [331 x i8], [85 x i8] } { [331 x i8] c"\22prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d map_id=%d map_index=%d\22, REC->prog_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->ifindex, REC->to_ifindex, REC->err, REC->map_id, REC->map_index\00", [85 x i8] zeroinitializer }, align 32
@event_xdp_redirect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.205 { ptr @__tracepoint_xdp_redirect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_redirect = internal global ptr @event_xdp_redirect, section "_ftrace_events", align 4
@event_xdp_redirect_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.205 { ptr @__tracepoint_xdp_redirect_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_redirect_err = internal global ptr @event_xdp_redirect_err, section "_ftrace_events", align 4
@event_xdp_redirect_map = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.205 { ptr @__tracepoint_xdp_redirect_map }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_redirect_map = internal global ptr @event_xdp_redirect_map, section "_ftrace_events", align 4
@event_xdp_redirect_map_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.205 { ptr @__tracepoint_xdp_redirect_map_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_redirect_map_err = internal global ptr @event_xdp_redirect_map_err, section "_ftrace_events", align 4
@trace_event_fields_xdp_cpumap_kthread = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.48, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xdp_cpumap_kthread = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_cpumap_kthread, ptr @perf_trace_xdp_cpumap_kthread, ptr @trace_event_reg, ptr @trace_event_fields_xdp_cpumap_kthread, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_cpumap_kthread, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_cpumap_kthread, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_cpumap_kthread = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_cpumap_kthread, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_cpumap_kthread = internal global { [389 x i8], [123 x i8] } { [389 x i8] c"\22kthread cpu=%d map_id=%d action=%s processed=%u drops=%u sched=%d xdp_pass=%u xdp_drop=%u xdp_redirect=%u\22, REC->cpu, REC->map_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->processed, REC->drops, REC->sched, REC->xdp_pass, REC->xdp_drop, REC->xdp_redirect\00", [123 x i8] zeroinitializer }, align 32
@event_xdp_cpumap_kthread = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_cpumap_kthread, %union.anon.205 { ptr @__tracepoint_xdp_cpumap_kthread }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_cpumap_kthread }, ptr @print_fmt_xdp_cpumap_kthread, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_cpumap_kthread = internal global ptr @event_xdp_cpumap_kthread, section "_ftrace_events", align 4
@trace_event_fields_xdp_cpumap_enqueue = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.203 { %struct.anon.204 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.53, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_xdp_cpumap_enqueue = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_cpumap_enqueue, ptr @perf_trace_xdp_cpumap_enqueue, ptr @trace_event_reg, ptr @trace_event_fields_xdp_cpumap_enqueue, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_cpumap_enqueue, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_cpumap_enqueue, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_cpumap_enqueue = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_cpumap_enqueue, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_cpumap_enqueue = internal global { [302 x i8], [82 x i8] } { [302 x i8] c"\22enqueue cpu=%d map_id=%d action=%s processed=%u drops=%u to_cpu=%d\22, REC->cpu, REC->map_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->processed, REC->drops, REC->to_cpu\00", [82 x i8] zeroinitializer }, align 32
@event_xdp_cpumap_enqueue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_cpumap_enqueue, %union.anon.205 { ptr @__tracepoint_xdp_cpumap_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_cpumap_enqueue }, ptr @print_fmt_xdp_cpumap_enqueue, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_cpumap_enqueue = internal global ptr @event_xdp_cpumap_enqueue, section "_ftrace_events", align 4
@trace_event_fields_xdp_devmap_xmit = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_xdp_devmap_xmit = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_devmap_xmit, ptr @perf_trace_xdp_devmap_xmit, ptr @trace_event_reg, ptr @trace_event_fields_xdp_devmap_xmit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_devmap_xmit, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_devmap_xmit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_devmap_xmit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xdp_devmap_xmit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xdp_devmap_xmit = internal global { [317 x i8], [67 x i8] } { [317 x i8] c"\22ndo_xdp_xmit from_ifindex=%d to_ifindex=%d action=%s sent=%d drops=%d err=%d\22, REC->from_ifindex, REC->to_ifindex, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->sent, REC->drops, REC->err\00", [67 x i8] zeroinitializer }, align 32
@event_xdp_devmap_xmit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_devmap_xmit, %union.anon.205 { ptr @__tracepoint_xdp_devmap_xmit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_devmap_xmit }, ptr @print_fmt_xdp_devmap_xmit, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xdp_devmap_xmit = internal global ptr @event_xdp_devmap_xmit, section "_ftrace_events", align 4
@trace_event_fields_mem_disconnect = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.57, %union.anon.203 { %struct.anon.204 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon.203 { %struct.anon.204 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mem_disconnect = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_disconnect, ptr @perf_trace_mem_disconnect, ptr @trace_event_reg, ptr @trace_event_fields_mem_disconnect, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_disconnect, i64 24), ptr getelementptr (i8, ptr @event_class_mem_disconnect, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_disconnect = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mem_disconnect, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mem_disconnect = internal global { [274 x i8], [78 x i8] } { [274 x i8] c"\22mem_id=%d mem_type=%s allocator=%p\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->allocator\00", [78 x i8] zeroinitializer }, align 32
@event_mem_disconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_disconnect, %union.anon.205 { ptr @__tracepoint_mem_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_disconnect }, ptr @print_fmt_mem_disconnect, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mem_disconnect = internal global ptr @event_mem_disconnect, section "_ftrace_events", align 4
@trace_event_fields_mem_connect = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.57, %union.anon.203 { %struct.anon.204 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon.203 { %struct.anon.204 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.203 { %struct.anon.204 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.203 { %struct.anon.204 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mem_connect = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_connect, ptr @perf_trace_mem_connect, ptr @trace_event_reg, ptr @trace_event_fields_mem_connect, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_connect, i64 24), ptr getelementptr (i8, ptr @event_class_mem_connect, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_connect = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mem_connect, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mem_connect = internal global { [299 x i8], [85 x i8] } { [299 x i8] c"\22mem_id=%d mem_type=%s allocator=%p ifindex=%d\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->allocator, REC->ifindex\00", [85 x i8] zeroinitializer }, align 32
@event_mem_connect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_connect, %union.anon.205 { ptr @__tracepoint_mem_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_connect }, ptr @print_fmt_mem_connect, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mem_connect = internal global ptr @event_mem_connect, section "_ftrace_events", align 4
@trace_event_fields_mem_return_failed = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.71, %union.anon.203 { %struct.anon.204 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.203 { %struct.anon.204 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mem_return_failed = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_return_failed, ptr @perf_trace_mem_return_failed, ptr @trace_event_reg, ptr @trace_event_fields_mem_return_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_return_failed, i64 24), ptr getelementptr (i8, ptr @event_class_mem_return_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_return_failed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mem_return_failed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mem_return_failed = internal global { [264 x i8], [88 x i8] } { [264 x i8] c"\22mem_id=%d mem_type=%s page=%p\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->page\00", [88 x i8] zeroinitializer }, align 32
@event_mem_return_failed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_return_failed, %union.anon.205 { ptr @__tracepoint_mem_return_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_return_failed }, ptr @print_fmt_mem_return_failed, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mem_return_failed = internal global ptr @event_mem_return_failed, section "_ftrace_events", align 4
@__bpf_trace_tp_map_xdp_exception = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_exception, ptr @__bpf_trace_xdp_exception, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_bulk_tx = internal global %union.anon.208 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_bulk_tx, ptr @__bpf_trace_xdp_bulk_tx, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_redirect = internal global %union.anon.209 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_redirect, ptr @__bpf_trace_xdp_redirect_template, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_redirect_err = internal global %union.anon.210 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_redirect_err, ptr @__bpf_trace_xdp_redirect_template, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_redirect_map = internal global %union.anon.211 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_redirect_map, ptr @__bpf_trace_xdp_redirect_template, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_redirect_map_err = internal global %union.anon.212 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_redirect_map_err, ptr @__bpf_trace_xdp_redirect_template, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_cpumap_kthread = internal global %union.anon.213 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_cpumap_kthread, ptr @__bpf_trace_xdp_cpumap_kthread, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_cpumap_enqueue = internal global %union.anon.214 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_cpumap_enqueue, ptr @__bpf_trace_xdp_cpumap_enqueue, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xdp_devmap_xmit = internal global %union.anon.215 { %struct.bpf_raw_event_map { ptr @__tracepoint_xdp_devmap_xmit, ptr @__bpf_trace_xdp_devmap_xmit, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mem_disconnect = internal global %union.anon.216 { %struct.bpf_raw_event_map { ptr @__tracepoint_mem_disconnect, ptr @__bpf_trace_mem_disconnect, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mem_connect = internal global %union.anon.217 { %struct.bpf_raw_event_map { ptr @__tracepoint_mem_connect, ptr @__bpf_trace_mem_connect, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mem_return_failed = internal global %union.anon.218 { %struct.bpf_raw_event_map { ptr @__tracepoint_mem_return_failed, ptr @__bpf_trace_mem_return_failed, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xdp_exception to i32), ptr @__kstrtab___tracepoint_xdp_exception, ptr @__kstrtabns___tracepoint_xdp_exception }, section "___ksymtab_gpl+__tracepoint_xdp_exception", align 4
@__kstrtab___traceiter_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xdp_exception to i32), ptr @__kstrtab___traceiter_xdp_exception, ptr @__kstrtabns___traceiter_xdp_exception }, section "___ksymtab_gpl+__traceiter_xdp_exception", align 4
@__kstrtab___SCK__tp_func_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xdp_exception to i32), ptr @__kstrtab___SCK__tp_func_xdp_exception, ptr @__kstrtabns___SCK__tp_func_xdp_exception }, section "___ksymtab_gpl+__SCK__tp_func_xdp_exception", align 4
@__kstrtab___tracepoint_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xdp_bulk_tx to i32), ptr @__kstrtab___tracepoint_xdp_bulk_tx, ptr @__kstrtabns___tracepoint_xdp_bulk_tx }, section "___ksymtab_gpl+__tracepoint_xdp_bulk_tx", align 4
@__kstrtab___traceiter_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xdp_bulk_tx to i32), ptr @__kstrtab___traceiter_xdp_bulk_tx, ptr @__kstrtabns___traceiter_xdp_bulk_tx }, section "___ksymtab_gpl+__traceiter_xdp_bulk_tx", align 4
@__kstrtab___SCK__tp_func_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xdp_bulk_tx to i32), ptr @__kstrtab___SCK__tp_func_xdp_bulk_tx, ptr @__kstrtabns___SCK__tp_func_xdp_bulk_tx }, section "___ksymtab_gpl+__SCK__tp_func_xdp_bulk_tx", align 4
@bpf_jit_harden = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@bpf_jit_limit_max = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__pcpu_unique_bpf_user_rnd_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bpf_map_lookup_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_update_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_delete_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_push_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_pop_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_peek_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_spin_lock_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_spin_unlock_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_jiffies64_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_prandom_u32_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_smp_processor_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_numa_node_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_boot_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_coarse_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_pid_tgid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_uid_gid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_comm_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_cgroup_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_ancestor_cgroup_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_local_storage_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_ns_current_pid_tgid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_snprintf_btf_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_seq_printf_btf_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpf_lock\00", [23 x i8] zeroinitializer }, align 32
@bpf_prog_ksym_set_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bpf_prog_\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_%s\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__bpf_prog_ret0_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dummy_bpf_prog = internal global { { { i16, i8, i8, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.104 } }, [48 x i8] } { { { i16, i8, i8, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.104 } } { { i16, i8, i8, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.104 } { i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, [8 x i8] zeroinitializer, ptr null, ptr null, ptr @__bpf_prog_ret1, ptr null, ptr null, %union.anon.104 zeroinitializer } }, [48 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prog_id\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"act\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifindex\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"prog_id=%d action=%s ifindex=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_exception.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ABORTED\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DROP\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PASS\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REDIRECT\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"drops\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sent\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ifindex=%d action=%s sent=%d drops=%d err=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_bulk_tx.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"to_ifindex\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"map_id\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map_index\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d map_id=%d map_index=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_redirect_template.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"processed\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sched\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xdp_pass\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xdp_drop\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xdp_redirect\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"kthread cpu=%d map_id=%d action=%s processed=%u drops=%u sched=%d xdp_pass=%u xdp_drop=%u xdp_redirect=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_cpumap_kthread.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"to_cpu\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"enqueue cpu=%d map_id=%d action=%s processed=%u drops=%u to_cpu=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_cpumap_enqueue.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"from_ifindex\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ndo_xdp_xmit from_ifindex=%d to_ifindex=%d action=%s sent=%d drops=%d err=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@trace_raw_output_xdp_devmap_xmit.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.32 }, %struct.trace_print_flags { i32 1, ptr @.str.33 }, %struct.trace_print_flags { i32 2, ptr @.str.34 }, %struct.trace_print_flags { i32 3, ptr @.str.35 }, %struct.trace_print_flags { i32 4, ptr @.str.36 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct xdp_mem_allocator *\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xa\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mem_id\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mem_type\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"allocator\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mem_id=%d mem_type=%s allocator=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@trace_raw_output_mem_disconnect.symbols = internal constant { [6 x %struct.trace_print_flags], [48 x i8] } { [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.64 }, %struct.trace_print_flags { i32 1, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 3, ptr @.str.67 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PAGE_SHARED\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PAGE_ORDER0\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAGE_POOL\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XSK_BUFF_POOL\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"const struct xdp_rxq_info *\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rxq\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mem_id=%d mem_type=%s allocator=%p ifindex=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@trace_raw_output_mem_connect.symbols = internal constant { [6 x %struct.trace_print_flags], [48 x i8] } { [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.64 }, %struct.trace_print_flags { i32 1, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 3, ptr @.str.67 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"const struct page *\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mem_id=%d mem_type=%s page=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_raw_output_mem_return_failed.symbols = internal constant { [6 x %struct.trace_print_flags], [48 x i8] } { [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.64 }, %struct.trace_print_flags { i32 1, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 3, ptr @.str.67 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 144]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 180, i64 183]
@__sancov_gen_cov_switch_values.76 = internal global [48 x i64] [i64 46, i64 8, i64 0, i64 4, i64 7, i64 20, i64 21, i64 22, i64 23, i64 24, i64 36, i64 37, i64 38, i64 39, i64 52, i64 53, i64 54, i64 55, i64 68, i64 69, i64 70, i64 71, i64 84, i64 85, i64 86, i64 87, i64 98, i64 101, i64 102, i64 106, i64 114, i64 117, i64 118, i64 122, i64 148, i64 151, i64 164, i64 165, i64 166, i64 167, i64 180, i64 181, i64 182, i64 183, i64 197, i64 198, i64 213, i64 214]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 14, i64 25]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 14, i64 25]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 110, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 111, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 138, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 512, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"bpf_lock\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"bpf_kallsyms\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 618, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 760, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"bpf_jit_current\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 811, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"public_insntable\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1350, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"empty_prog_array\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1980, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2310, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2320, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"bpf_tail_call_proto\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2393, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"bpf_stats_enabled_key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2456, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"str__xdp__trace_system_name\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 36, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 26, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 318, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [33 x i8] c"trace_event_fields_xdp_exception\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_xdp_exception\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"print_fmt_xdp_exception\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"event_xdp_exception\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"trace_event_fields_xdp_bulk_tx\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_xdp_bulk_tx\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"print_fmt_xdp_bulk_tx\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"event_xdp_bulk_tx\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [41 x i8] c"trace_event_fields_xdp_redirect_template\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_xdp_redirect_template\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [32 x i8] c"print_fmt_xdp_redirect_template\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"event_xdp_redirect\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 140, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [23 x i8] c"event_xdp_redirect_err\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 149, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"event_xdp_redirect_map\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 171, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"event_xdp_redirect_map_err\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 180, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [38 x i8] c"trace_event_fields_xdp_cpumap_kthread\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_xdp_cpumap_kthread\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [29 x i8] c"print_fmt_xdp_cpumap_kthread\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [25 x i8] c"event_xdp_cpumap_kthread\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [38 x i8] c"trace_event_fields_xdp_cpumap_enqueue\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_xdp_cpumap_enqueue\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"print_fmt_xdp_cpumap_enqueue\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"event_xdp_cpumap_enqueue\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [35 x i8] c"trace_event_fields_xdp_devmap_xmit\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_xdp_devmap_xmit\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"print_fmt_xdp_devmap_xmit\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [22 x i8] c"event_xdp_devmap_xmit\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [34 x i8] c"trace_event_fields_mem_disconnect\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_mem_disconnect\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [25 x i8] c"print_fmt_mem_disconnect\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [21 x i8] c"event_mem_disconnect\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [31 x i8] c"trace_event_fields_mem_connect\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_mem_connect\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"print_fmt_mem_connect\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"event_mem_connect\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [37 x i8] c"trace_event_fields_mem_return_failed\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_mem_return_failed\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"print_fmt_mem_return_failed\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [24 x i8] c"event_mem_return_failed\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 617, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 568, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 576, i32 38 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 695, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 723, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [15 x i8] c"dummy_bpf_prog\00", align 1
@___asan_gen_.299 = private constant [21 x i8] c"../kernel/bpf/core.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1965, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 230, i32 6 }
@___asan_gen_.305 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 214, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 174, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 28, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 53, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 89, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 189, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 232, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 267, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 320, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 347, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 381, i32 1 }
@llvm.compiler.used = appending global [222 x ptr] [ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, ptr @TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, ptr @TRACE_SYSTEM_XDP_ABORTED, ptr @TRACE_SYSTEM_XDP_DROP, ptr @TRACE_SYSTEM_XDP_PASS, ptr @TRACE_SYSTEM_XDP_REDIRECT, ptr @TRACE_SYSTEM_XDP_TX, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, ptr @__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, ptr @__TRACE_SYSTEM_XDP_ABORTED, ptr @__TRACE_SYSTEM_XDP_DROP, ptr @__TRACE_SYSTEM_XDP_PASS, ptr @__TRACE_SYSTEM_XDP_REDIRECT, ptr @__TRACE_SYSTEM_XDP_TX, ptr @__bpf_trace_tp_map_mem_connect, ptr @__bpf_trace_tp_map_mem_disconnect, ptr @__bpf_trace_tp_map_mem_return_failed, ptr @__bpf_trace_tp_map_xdp_bulk_tx, ptr @__bpf_trace_tp_map_xdp_cpumap_enqueue, ptr @__bpf_trace_tp_map_xdp_cpumap_kthread, ptr @__bpf_trace_tp_map_xdp_devmap_xmit, ptr @__bpf_trace_tp_map_xdp_exception, ptr @__bpf_trace_tp_map_xdp_redirect, ptr @__bpf_trace_tp_map_xdp_redirect_err, ptr @__bpf_trace_tp_map_xdp_redirect_map, ptr @__bpf_trace_tp_map_xdp_redirect_map_err, ptr @__event_mem_connect, ptr @__event_mem_disconnect, ptr @__event_mem_return_failed, ptr @__event_xdp_bulk_tx, ptr @__event_xdp_cpumap_enqueue, ptr @__event_xdp_cpumap_kthread, ptr @__event_xdp_devmap_xmit, ptr @__event_xdp_exception, ptr @__event_xdp_redirect, ptr @__event_xdp_redirect_err, ptr @__event_xdp_redirect_map, ptr @__event_xdp_redirect_map_err, ptr @__initcall__kmod_core__404_834_bpf_jit_charge_init0, ptr @__ksymtab___SCK__tp_func_xdp_bulk_tx, ptr @__ksymtab___SCK__tp_func_xdp_exception, ptr @__ksymtab___bpf_call_base, ptr @__ksymtab___traceiter_xdp_bulk_tx, ptr @__ksymtab___traceiter_xdp_exception, ptr @__ksymtab___tracepoint_xdp_bulk_tx, ptr @__ksymtab___tracepoint_xdp_exception, ptr @__ksymtab_bpf_event_output, ptr @__ksymtab_bpf_prog_alloc, ptr @__ksymtab_bpf_prog_free, ptr @__ksymtab_bpf_prog_select_runtime, ptr @__ksymtab_bpf_stats_enabled_key, ptr @__tracepoint_mem_connect, ptr @__tracepoint_mem_disconnect, ptr @__tracepoint_mem_return_failed, ptr @__tracepoint_ptr_mem_connect, ptr @__tracepoint_ptr_mem_disconnect, ptr @__tracepoint_ptr_mem_return_failed, ptr @__tracepoint_ptr_xdp_bulk_tx, ptr @__tracepoint_ptr_xdp_cpumap_enqueue, ptr @__tracepoint_ptr_xdp_cpumap_kthread, ptr @__tracepoint_ptr_xdp_devmap_xmit, ptr @__tracepoint_ptr_xdp_exception, ptr @__tracepoint_ptr_xdp_redirect, ptr @__tracepoint_ptr_xdp_redirect_err, ptr @__tracepoint_ptr_xdp_redirect_map, ptr @__tracepoint_ptr_xdp_redirect_map_err, ptr @__tracepoint_xdp_bulk_tx, ptr @__tracepoint_xdp_cpumap_enqueue, ptr @__tracepoint_xdp_cpumap_kthread, ptr @__tracepoint_xdp_devmap_xmit, ptr @__tracepoint_xdp_exception, ptr @__tracepoint_xdp_redirect, ptr @__tracepoint_xdp_redirect_err, ptr @__tracepoint_xdp_redirect_map, ptr @__tracepoint_xdp_redirect_map_err, ptr @event_class_mem_connect, ptr @event_class_mem_disconnect, ptr @event_class_mem_return_failed, ptr @event_class_xdp_bulk_tx, ptr @event_class_xdp_cpumap_enqueue, ptr @event_class_xdp_cpumap_kthread, ptr @event_class_xdp_devmap_xmit, ptr @event_class_xdp_exception, ptr @event_class_xdp_redirect_template, ptr @event_mem_connect, ptr @event_mem_disconnect, ptr @event_mem_return_failed, ptr @event_xdp_bulk_tx, ptr @event_xdp_cpumap_enqueue, ptr @event_xdp_cpumap_kthread, ptr @event_xdp_devmap_xmit, ptr @event_xdp_exception, ptr @event_xdp_redirect, ptr @event_xdp_redirect_err, ptr @event_xdp_redirect_map, ptr @event_xdp_redirect_map_err, ptr @bpf_prog_alloc_no_stats.__key, ptr @.str, ptr @bpf_prog_alloc_no_stats.__key.1, ptr @.str.2, ptr @bpf_prog_alloc.__key, ptr @.str.3, ptr @.str.4, ptr @bpf_lock, ptr @bpf_kallsyms, ptr @.str.5, ptr @bpf_jit_current, ptr @bpf_opcode_in_insntable.public_insntable, ptr @empty_prog_array, ptr @bpf_prog_free.__key, ptr @.str.6, ptr @bpf_user_rnd_init_once.___once_key, ptr @bpf_tail_call_proto, ptr @bpf_stats_enabled_key, ptr @str__xdp__trace_system_name, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @trace_event_fields_xdp_exception, ptr @trace_event_type_funcs_xdp_exception, ptr @print_fmt_xdp_exception, ptr @trace_event_fields_xdp_bulk_tx, ptr @trace_event_type_funcs_xdp_bulk_tx, ptr @print_fmt_xdp_bulk_tx, ptr @trace_event_fields_xdp_redirect_template, ptr @trace_event_type_funcs_xdp_redirect_template, ptr @print_fmt_xdp_redirect_template, ptr @trace_event_fields_xdp_cpumap_kthread, ptr @trace_event_type_funcs_xdp_cpumap_kthread, ptr @print_fmt_xdp_cpumap_kthread, ptr @trace_event_fields_xdp_cpumap_enqueue, ptr @trace_event_type_funcs_xdp_cpumap_enqueue, ptr @print_fmt_xdp_cpumap_enqueue, ptr @trace_event_fields_xdp_devmap_xmit, ptr @trace_event_type_funcs_xdp_devmap_xmit, ptr @print_fmt_xdp_devmap_xmit, ptr @trace_event_fields_mem_disconnect, ptr @trace_event_type_funcs_mem_disconnect, ptr @print_fmt_mem_disconnect, ptr @trace_event_fields_mem_connect, ptr @trace_event_type_funcs_mem_connect, ptr @print_fmt_mem_connect, ptr @trace_event_fields_mem_return_failed, ptr @trace_event_type_funcs_mem_return_failed, ptr @print_fmt_mem_return_failed, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dummy_bpf_prog, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @trace_raw_output_xdp_exception.symbols, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @trace_raw_output_xdp_bulk_tx.symbols, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @trace_raw_output_xdp_redirect_template.symbols, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @trace_raw_output_xdp_cpumap_kthread.symbols, ptr @.str.53, ptr @.str.54, ptr @trace_raw_output_xdp_cpumap_enqueue.symbols, ptr @.str.55, ptr @.str.56, ptr @trace_raw_output_xdp_devmap_xmit.symbols, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @trace_raw_output_mem_disconnect.symbols, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @trace_raw_output_mem_connect.symbols, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @trace_raw_output_mem_return_failed.symbols], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_alloc_no_stats.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_alloc_no_stats.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_kallsyms to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_jit_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_opcode_in_insntable.public_insntable to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_prog_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_free.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_user_rnd_init_once.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_tail_call_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_stats_enabled_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__xdp__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_exception to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_exception to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_exception to i32), i32 231, i32 288, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_exception to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_bulk_tx to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_bulk_tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_bulk_tx to i32), i32 263, i32 352, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_bulk_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_redirect_template to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_redirect_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_redirect_template to i32), i32 331, i32 416, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_redirect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_redirect_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_redirect_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_redirect_map_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_cpumap_kthread to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_cpumap_kthread to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_cpumap_kthread to i32), i32 389, i32 512, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_cpumap_kthread to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_cpumap_enqueue to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_cpumap_enqueue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_cpumap_enqueue to i32), i32 302, i32 384, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_cpumap_enqueue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xdp_devmap_xmit to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xdp_devmap_xmit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xdp_devmap_xmit to i32), i32 317, i32 384, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xdp_devmap_xmit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mem_disconnect to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mem_disconnect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mem_disconnect to i32), i32 274, i32 352, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mem_disconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mem_connect to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mem_connect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mem_connect to i32), i32 299, i32 384, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mem_connect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mem_return_failed to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mem_return_failed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mem_return_failed to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mem_return_failed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_bpf_prog to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_exception.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_bulk_tx.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_redirect_template.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_cpumap_kthread.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_cpumap_enqueue.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xdp_devmap_xmit.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mem_disconnect.symbols to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mem_connect.symbols to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mem_return_failed.symbols to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bpf_internal_load_pointer_neg_helper(ptr nocapture noundef readonly %skb, i32 noundef %k, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %k)
  %cmp = icmp sgt i32 %k, -1048577
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %k
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 1048576
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097153, i32 %k)
  %cmp2 = icmp ugt i32 %k, -2097153
  br i1 %cmp2, label %if.then3, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  %head.i22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i22, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i, align 2
  %conv.i23 = zext i16 %7 to i32
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 %conv.i23
  %add.ptr5 = getelementptr i8, ptr %add.ptr.i24, i32 %k
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 2097152
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else.if.end7_crit_edge, %if.then
  %ptr.0 = phi ptr [ %add.ptr1, %if.then ], [ %add.ptr6, %if.then3 ], [ null, %if.else.if.end7_crit_edge ]
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head, align 8
  %cmp8.not = icmp ult ptr %ptr.0, %9
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %add.ptr9 = getelementptr i8, ptr %ptr.0, i32 %size
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %cmp11.not = icmp ugt ptr %add.ptr9, %11
  br i1 %cmp11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end13 ], [ %ptr.0, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_alloc_no_stats(i32 noundef %size, i32 noundef %gfp_extra_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %gfp_extra_flags, 4197824
  %sub = add i32 %size, -1
  %or1 = or i32 %sub, 4095
  %add = add i32 %or1, 1
  %call = tail call noalias ptr @__vmalloc(i32 noundef %add, i32 noundef %or) #26
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2.i.i.i = and i32 %gfp_extra_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and6.i.i.i = and i32 %gfp_extra_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  %retval.0.i21.i.i = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 3
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 10
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or, i32 noundef 640) #27
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @vfree(ptr noundef nonnull %call) #23
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %or2 = or i32 %gfp_extra_flags, 4197568
  %call8 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %or2) #26
  %active = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %active, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @vfree(ptr noundef nonnull %call) #23
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #23
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #25
  %div43 = lshr exact i32 %add, 12
  %conv = trunc i32 %div43 to i16
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %call, align 4
  %aux12 = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %aux12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %aux12, align 4
  %prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %call7.i.i, i32 0, i32 41
  %5 = ptrtoint ptr %prog to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %prog, align 4
  %6 = load i32, ptr @bpf_jit_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.not = icmp eq i32 %6, 0
  %jit_requested = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %jit_requested to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %jit_requested, align 2
  %bf.shl = select i1 %tobool.not.i.not, i16 0, i16 16384
  %bf.clear = and i16 %bf.load, -16385
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %jit_requested, align 2
  %lnode = getelementptr inbounds %struct.bpf_prog_aux, ptr %call7.i.i, i32 0, i32 36, i32 3
  %8 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lnode, ptr %lnode, align 8
  %prev.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %call7.i.i, i32 0, i32 36, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %lnode, ptr %prev.i, align 4
  %used_maps_mutex = getelementptr inbounds %struct.bpf_prog_aux, ptr %call7.i.i, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %used_maps_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @bpf_prog_alloc_no_stats.__key) #23
  %10 = ptrtoint ptr %aux12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aux12, align 4
  %dst_mutex = getelementptr inbounds %struct.bpf_prog_aux, ptr %11, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %dst_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @bpf_prog_alloc_no_stats.__key.1) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ %call, %if.end11 ], [ null, %if.then10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_alloc(i32 noundef %size, i32 noundef %gfp_extra_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_prog_alloc_no_stats(i32 noundef %size, i32 noundef %gfp_extra_flags)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %gfp_extra_flags, 4197824
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 16, i32 noundef %or) #26
  %stats = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %stats, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call624 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call624, i32 %1)
  %cmp25 = icmp ult i32 %call624, %1
  br i1 %cmp25, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %active = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 4
  tail call void @free_percpu(ptr noundef %3) #23
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  tail call void @kfree(ptr noundef %5) #23
  tail call void @vfree(ptr noundef nonnull %call) #23
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call626 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call624, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call626
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3
  %dep_map.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @bpf_prog_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %12 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %syncp, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call626, ptr noundef nonnull @__cpu_possible_mask) #28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then4, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_alloc_jited_linfo(ptr nocapture noundef readonly %prog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %nr_linfo = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %nr_linfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_linfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %jit_requested = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %4 = ptrtoint ptr %jit_requested to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %jit_requested, align 2
  %5 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #23
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.kvcalloc.exit_crit_edge, label %if.end.i.i, !prof !386

if.end.kvcalloc.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %kvcalloc.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %8 = extractvalue { i32, i1 } %6, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %8, i32 noundef 4206016, i32 noundef -1) #26
  br label %kvcalloc.exit

kvcalloc.exit:                                    ; preds = %if.end.i.i, %if.end.kvcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i.i, %if.end.i.i ], [ null, %if.end.kvcalloc.exit_crit_edge ]
  %9 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aux, align 4
  %jited_linfo = getelementptr inbounds %struct.bpf_prog_aux, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %jited_linfo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.i, ptr %jited_linfo, align 4
  %12 = load ptr, ptr %aux, align 4
  %jited_linfo6 = getelementptr inbounds %struct.bpf_prog_aux, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %jited_linfo6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jited_linfo6, align 4
  %tobool7.not = icmp eq ptr %14, null
  %. = select i1 %tobool7.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %kvcalloc.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %., %kvcalloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_jit_attempt_done(ptr nocapture noundef readonly %prog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %jited_linfo = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %jited_linfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jited_linfo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %jited = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %4 = ptrtoint ptr %jited to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %jited, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @kvfree(ptr noundef nonnull %3) #23
  %7 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aux, align 4
  %jited_linfo8 = getelementptr inbounds %struct.bpf_prog_aux, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %jited_linfo8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %jited_linfo8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aux, align 4
  %kfunc_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %kfunc_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kfunc_tab, align 4
  tail call void @kfree(ptr noundef %13) #23
  %14 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux, align 4
  %kfunc_tab11 = getelementptr inbounds %struct.bpf_prog_aux, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %kfunc_tab11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %kfunc_tab11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_fill_jited_linfo(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %insn_to_jit_off) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %jited_linfo1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %jited_linfo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jited_linfo1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %linfo_idx3 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %linfo_idx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %linfo_idx3, align 8
  %linfo5 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 52
  %6 = ptrtoint ptr %linfo5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %linfo5, align 8
  %arrayidx = getelementptr %struct.bpf_line_info, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add i32 %11, %9
  %arrayidx9 = getelementptr ptr, ptr %3, i32 %5
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %12 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bpf_func, align 4
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx9, align 4
  %15 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux, align 4
  %nr_linfo12 = getelementptr inbounds %struct.bpf_prog_aux, ptr %16, i32 0, i32 55
  %17 = ptrtoint ptr %nr_linfo12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_linfo12, align 4
  %sub = sub i32 %18, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp47 = icmp ugt i32 %sub, 1
  br i1 %cmp47, label %land.rhs.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %19 = xor i32 %9, -1
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.048 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %arrayidx13 = getelementptr %struct.bpf_line_info, ptr %arrayidx, i32 %i.048
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add)
  %cmp15 = icmp ult i32 %21, %add
  br i1 %cmp15, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %22 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bpf_func, align 4
  %sub20 = add i32 %21, %19
  %arrayidx21 = getelementptr i32, ptr %insn_to_jit_off, i32 %sub20
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %arrayidx22 = getelementptr ptr, ptr %arrayidx9, i32 %i.048
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %arrayidx22, align 4
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %land.rhs

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_realloc(ptr noundef %fp_old, i32 noundef %size, i32 noundef %gfp_extra_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, -1
  %or1 = or i32 %sub, 4095
  %add = add i32 %or1, 1
  %div28 = lshr exact i32 %add, 12
  %0 = ptrtoint ptr %fp_old to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fp_old, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div28, i32 %conv)
  %cmp.not = icmp ugt i32 %div28, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %gfp_extra_flags, 4197824
  %call = tail call noalias ptr @__vmalloc(i32 noundef %add, i32 noundef %or) #26
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %2 = ptrtoint ptr %fp_old to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fp_old, align 4
  %conv6 = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv6, 12
  %4 = call ptr @memcpy(ptr %call, ptr %fp_old, i32 %mul)
  %conv7 = trunc i32 %div28 to i16
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv7, ptr %call, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %prog to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %prog, align 4
  %aux9 = getelementptr inbounds %struct.bpf_prog, ptr %fp_old, i32 0, i32 10
  %9 = ptrtoint ptr %aux9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %aux9, align 4
  %stats = getelementptr inbounds %struct.bpf_prog, ptr %fp_old, i32 0, i32 7
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stats, align 4
  %active = getelementptr inbounds %struct.bpf_prog, ptr %fp_old, i32 0, i32 8
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %active, align 4
  tail call void @__bpf_prog_free(ptr noundef %fp_old)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fp_old, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_prog_free(ptr noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %used_maps_mutex = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 39
  tail call void @mutex_destroy(ptr noundef %used_maps_mutex) #23
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %dst_mutex = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %dst_mutex) #23
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  %poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %poke_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poke_tab, align 8
  tail call void @kfree(ptr noundef %7) #23
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux, align 4
  tail call void @kfree(ptr noundef %9) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 7
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats, align 4
  tail call void @free_percpu(ptr noundef %11) #23
  %active = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 8
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active, align 4
  tail call void @free_percpu(ptr noundef %13) #23
  tail call void @vfree(ptr noundef %fp) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_calc_tag(ptr nocapture noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  %digest = alloca [5 x i32], align 8
  %ws = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 4
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %mul.i.i = shl i32 %1, 3
  %add.i = add i32 %mul.i.i, 8
  %or.i = or i32 %add.i, 63
  %add2.i = add i32 %or.i, 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digest) #23
  %2 = call ptr @memset(ptr %digest, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ws) #23
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %add2.i) #26
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @sha1_init(ptr noundef nonnull %digest) #23
  %3 = call ptr @memset(ptr %ws, i32 0, i32 64)
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp151.not = icmp eq i32 %5, 0
  br i1 %cmp151.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %was_ld_map.0.off0154 = phi i1 [ false, %for.body.lr.ph ], [ %was_ld_map.1, %for.inc.for.body_crit_edge ]
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bpf_insn, ptr %call1, i32 %i.0152
  %arrayidx3 = getelementptr [0 x %struct.bpf_insn], ptr %insnsi, i32 0, i32 %i.0152
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %arrayidx, align 4
  %9 = load i8, ptr %arrayidx, align 4
  br i1 %was_ld_map.0.off0154, label %land.lhs.true24.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %9)
  %cmp6 = icmp eq i8 %9, 24
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true
  %src_reg = getelementptr %struct.bpf_insn, ptr %call1, i32 %i.0152, i32 1
  %10 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.clear.off = add nsw i8 %bf.clear, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.off)
  %switch = icmp ult i8 %bf.clear.off, 2
  br i1 %switch, label %land.lhs.true8.for.inc.sink.split_crit_edge, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

land.lhs.true8.for.inc.sink.split_crit_edge:      ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.sink.split

land.lhs.true24.critedge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp28 = icmp eq i8 %9, 0
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true24.critedge.for.inc_crit_edge

land.lhs.true24.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true24.critedge
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true24.critedge
  %dst_reg = getelementptr %struct.bpf_insn, ptr %call1, i32 %i.0152, i32 1
  %11 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load32 = load i8, ptr %dst_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load32)
  %12 = icmp eq i8 %bf.load32, 0
  br i1 %12, label %land.lhs.true44, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

land.lhs.true44:                                  ; preds = %land.lhs.true30
  %off = getelementptr %struct.bpf_insn, ptr %call1, i32 %i.0152, i32 2
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp47 = icmp eq i16 %14, 0
  br i1 %cmp47, label %land.lhs.true44.for.inc.sink.split_crit_edge, label %land.lhs.true44.for.inc_crit_edge

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

land.lhs.true44.for.inc.sink.split_crit_edge:     ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %land.lhs.true44.for.inc.sink.split_crit_edge, %land.lhs.true8.for.inc.sink.split_crit_edge
  %15 = xor i1 %was_ld_map.0.off0154, true
  %imm = getelementptr %struct.bpf_insn, ptr %call1, i32 %i.0152, i32 3
  %16 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %imm, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true44.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge, %land.lhs.true24.critedge.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %was_ld_map.1 = phi i1 [ false, %land.lhs.true.for.inc_crit_edge ], [ false, %land.lhs.true8.for.inc_crit_edge ], [ false, %land.lhs.true44.for.inc_crit_edge ], [ false, %land.lhs.true30.for.inc_crit_edge ], [ false, %land.lhs.true24.critedge.for.inc_crit_edge ], [ %15, %for.inc.sink.split ]
  %inc = add nuw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %mul.i = shl i32 %5, 3
  %arrayidx56 = getelementptr i8, ptr %call1, i32 %mul.i
  %sub = sub i32 %add2.i, %mul.i
  %17 = call ptr @memset(ptr %arrayidx56, i32 0, i32 %sub)
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %arrayidx56, align 1
  %or = or i32 %mul.i, 63
  %add = add i32 %or, 1
  %div149 = lshr exact i32 %add, 6
  %sub60 = sub i32 %or, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub60)
  %cmp61.not = icmp eq i32 %sub60, 7
  %add.ptr = getelementptr i8, ptr %call1, i32 %add
  %bits.0.v = select i1 %cmp61.not, i32 56, i32 -8
  %bits.0 = getelementptr i8, ptr %add.ptr, i32 %bits.0.v
  %shl = shl i32 %5, 6
  %conv71 = zext i32 %shl to i64
  %19 = ptrtoint ptr %bits.0 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv71, ptr %bits.0, align 8
  %inc68 = zext i1 %cmp61.not to i32
  %spec.select = add nuw nsw i32 %div149, %inc68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool72.not155 = icmp eq i32 %spec.select, 0
  br i1 %tobool72.not155, label %for.end.for.cond77.preheader_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.for.cond77.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %while.body.for.cond77.preheader_crit_edge, %for.end.for.cond77.preheader_crit_edge
  %tag = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 6
  %20 = ptrtoint ptr %digest to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %digest, align 8
  %22 = ptrtoint ptr %tag to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %tag, align 4
  call void @vfree(ptr noundef nonnull %call1) #23
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %todo.0157 = phi ptr [ %add.ptr75, %while.body.while.body_crit_edge ], [ %call1, %for.end.while.body_crit_edge ]
  %blocks.1156 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %spec.select, %for.end.while.body_crit_edge ]
  %dec = add nsw i32 %blocks.1156, -1
  call void @sha1_transform(ptr noundef nonnull %digest, ptr noundef %todo.0157, ptr noundef nonnull %ws) #23
  %add.ptr75 = getelementptr i8, ptr %todo.0157, i32 64
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %while.body.for.cond77.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body

while.body.for.cond77.preheader_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.cond77.preheader

cleanup:                                          ; preds = %for.cond77.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond77.preheader ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ws) #23
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digest) #23
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_patch_insn_single(ptr noundef %prog, i32 noundef %off, ptr nocapture noundef readonly %patch, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %add.ptr = getelementptr %struct.bpf_insn, ptr %insnsi, i32 %off
  %0 = ptrtoint ptr %patch to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %patch, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %add.ptr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 4
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  %add = add i32 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp2 = icmp ugt i32 %add, 32767
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %add3 = add i32 %off, 1
  %add4 = add i32 %len, %off
  %call = tail call fastcc i32 @bpf_adj_branches(ptr noundef %prog, i32 noundef %off, i32 noundef %add3, i32 noundef %add4, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  %5 = inttoptr i32 %call to ptr
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = shl i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49, i32 %6)
  %cmp.i = icmp ugt i32 %6, -49
  %.op = add i32 %6, 47
  %.op.op = or i32 %.op, 4095
  %.op.op.op = add i32 %.op.op, 1
  %add.i = select i1 %cmp.i, i32 4096, i32 %.op.op.op
  %div28.i = lshr exact i32 %add.i, 12
  %7 = ptrtoint ptr %prog to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prog, align 4
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div28.i, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %div28.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %bpf_prog_realloc.exit

if.end.i:                                         ; preds = %if.end7
  %call.i = tail call noalias ptr @__vmalloc(i32 noundef %add.i, i32 noundef 5246400) #26
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %bpf_prog_realloc.exit.thread86

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

bpf_prog_realloc.exit.thread86:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %9 = ptrtoint ptr %prog to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prog, align 4
  %conv6.i = zext i16 %10 to i32
  %mul.i = shl nuw nsw i32 %conv6.i, 12
  %11 = call ptr @memcpy(ptr %call.i, ptr %prog, i32 %mul.i)
  %conv7.i = trunc i32 %div28.i to i16
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv7.i, ptr %call.i, align 4
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aux.i, align 4
  %prog.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %14, i32 0, i32 41
  %15 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %prog.i, align 4
  %aux9.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %16 = ptrtoint ptr %aux9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %aux9.i, align 4
  %stats.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %stats.i, align 4
  %active.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 8
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %active.i, align 4
  tail call void @__bpf_prog_free(ptr noundef %prog) #23
  br label %if.end13

bpf_prog_realloc.exit:                            ; preds = %if.end7
  %tobool10.not = icmp eq ptr %prog, null
  br i1 %tobool10.not, label %bpf_prog_realloc.exit.cleanup_crit_edge, label %bpf_prog_realloc.exit.if.end13_crit_edge

bpf_prog_realloc.exit.if.end13_crit_edge:         ; preds = %bpf_prog_realloc.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end13

bpf_prog_realloc.exit.cleanup_crit_edge:          ; preds = %bpf_prog_realloc.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end13:                                         ; preds = %bpf_prog_realloc.exit.if.end13_crit_edge, %bpf_prog_realloc.exit.thread86
  %retval.0.i89 = phi ptr [ %call.i, %bpf_prog_realloc.exit.thread86 ], [ %prog, %bpf_prog_realloc.exit.if.end13_crit_edge ]
  %len14 = getelementptr inbounds %struct.bpf_prog, ptr %retval.0.i89, i32 0, i32 4
  %19 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %len14, align 4
  %20 = add i32 %len, %off
  %sub16 = sub i32 %add, %20
  %insnsi17 = getelementptr inbounds %struct.bpf_prog, ptr %retval.0.i89, i32 1
  %add.ptr19 = getelementptr %struct.bpf_insn, ptr %insnsi17, i32 %off
  %add.ptr20 = getelementptr %struct.bpf_insn, ptr %add.ptr19, i32 %len
  %add.ptr24 = getelementptr %struct.bpf_insn, ptr %add.ptr19, i32 1
  %mul = shl i32 %sub16, 3
  %21 = call ptr @memmove(ptr %add.ptr20, ptr %add.ptr24, i32 %mul)
  %mul28 = shl i32 %len, 3
  %22 = call ptr @memcpy(ptr %add.ptr19, ptr %patch, i32 %mul28)
  %add29 = add i32 %off, 1
  %call31 = tail call fastcc i32 @bpf_adj_branches(ptr noundef nonnull %retval.0.i89, i32 noundef %off, i32 noundef %add29, i32 noundef %20, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end42, label %do.body36, !prof !387

do.body36:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #25
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 496, 0\0A.popsection", ""() #23, !srcloc !388
  unreachable

do.end42:                                         ; preds = %if.end13
  %aux.i81 = getelementptr inbounds %struct.bpf_prog, ptr %retval.0.i89, i32 0, i32 10
  %23 = ptrtoint ptr %aux.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux.i81, align 4
  %nr_linfo1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %24, i32 0, i32 55
  %25 = ptrtoint ptr %nr_linfo1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_linfo1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i82 = icmp eq i32 %26, 0
  br i1 %tobool.not.i82, label %do.end42.cleanup_crit_edge, label %for.body.preheader.i

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.body.preheader.i:                             ; preds = %do.end42
  %linfo4.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %24, i32 0, i32 52
  %27 = ptrtoint ptr %linfo4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %linfo4.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.bpf_line_info, ptr %28, i32 %i.029.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %off)
  %cmp5.i = icmp ugt i32 %30, %off
  br i1 %cmp5.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.029.i, i32 %26)
  %cmp931.i = icmp ult i32 %i.029.i, %26
  br i1 %cmp931.i, label %for.end.i.for.body10.i_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.end.i.for.body10.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.end.i.for.body10.i_crit_edge
  %i.132.i = phi i32 [ %inc14.i, %for.body10.i.for.body10.i_crit_edge ], [ %i.029.i, %for.end.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.bpf_line_info, ptr %28, i32 %i.132.i
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11.i, align 4
  %add.i83 = add i32 %32, %sub
  store i32 %add.i83, ptr %arrayidx11.i, align 4
  %inc14.i = add nuw i32 %i.132.i, 1
  %exitcond33.not.i = icmp eq i32 %inc14.i, %26
  br i1 %exitcond33.not.i, label %for.body10.i.cleanup_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body10.i

for.body10.i.cleanup_crit_edge:                   ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

cleanup:                                          ; preds = %for.body10.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %bpf_prog_realloc.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi ptr [ %prog, %if.then ], [ %5, %if.then5 ], [ inttoptr (i32 -12 to ptr), %bpf_prog_realloc.exit.cleanup_crit_edge ], [ %retval.0.i89, %do.end42.cleanup_crit_edge ], [ %retval.0.i89, %for.end.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ %retval.0.i89, %for.body10.i.cleanup_crit_edge ], [ %retval.0.i89, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_adj_branches(ptr nocapture noundef %prog, i32 noundef %pos, i32 noundef %end_old, i32 noundef %end_new, i1 noundef zeroext %probe_pass) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = sub i32 %end_new, %end_old
  %spec.select = select i1 %probe_pass, i32 %sub, i32 0
  %add = add i32 %1, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp152.not = icmp eq i32 %add, 0
  br i1 %cmp152.not, label %entry.cleanup44_crit_edge, label %for.body.lr.ph

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %add.ptr = getelementptr %struct.bpf_insn, ptr %insnsi, i32 %end_old
  %conv5.i91 = sext i32 %end_old to i64
  %conv8.i94 = sext i32 %sub to i64
  %conv16.i102 = sext i32 %end_new to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %insn.0154 = phi ptr [ %insnsi, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0153, i32 %pos)
  %cmp2 = icmp eq i32 %i.0153, %pos
  %or.cond = select i1 %probe_pass, i1 %cmp2, i1 false
  %i.1 = select i1 %or.cond, i32 %end_new, i32 %i.0153
  %insn.1 = select i1 %or.cond, ptr %add.ptr, ptr %insn.0154
  %2 = ptrtoint ptr %insn.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %insn.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %3)
  %cmp.i = icmp eq i8 %3, 24
  br i1 %cmp.i, label %bpf_pseudo_func.exit, label %if.end11

bpf_pseudo_func.exit:                             ; preds = %for.body
  %src_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.1, i32 0, i32 1
  %4 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %src_reg.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i)
  %cmp3.i = icmp eq i8 %bf.clear.i, 4
  br i1 %cmp3.i, label %if.then5, label %bpf_pseudo_func.exit.for.inc_crit_edge

bpf_pseudo_func.exit.for.inc_crit_edge:           ; preds = %bpf_pseudo_func.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.then5:                                         ; preds = %bpf_pseudo_func.exit
  %imm1.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.1, i32 0, i32 3
  %5 = ptrtoint ptr %imm1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %imm1.i, align 4
  %conv.i = sext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %pos)
  %cmp.i83 = icmp ult i32 %i.1, %pos
  br i1 %cmp.i83, label %land.lhs.true.i, label %if.then5.if.else.i_crit_edge

if.then5.if.else.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then5
  %conv3.i = sext i32 %i.1 to i64
  %add.i = add nsw i64 %conv.i, 1
  %add4.i = add nsw i64 %add.i, %conv3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i, i64 %conv5.i91)
  %cmp6.not.i = icmp slt i64 %add4.i, %conv5.i91
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  %add9.i = add nsw i64 %conv.i, %conv8.i94
  br label %if.end22.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then5.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %end_new)
  %cmp10.not.i = icmp slt i32 %i.1, %end_new
  br i1 %cmp10.not.i, label %if.else.i.if.end22.i_crit_edge, label %land.lhs.true12.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end22.i

land.lhs.true12.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #25
  %conv13.i = sext i32 %i.1 to i64
  %add14.i = add nsw i64 %conv.i, 1
  %add15.i = add nsw i64 %add14.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %conv16.i102)
  %cmp17.i = icmp slt i64 %add15.i, %conv16.i102
  %sub21.i = select i1 %cmp17.i, i64 %conv8.i94, i64 0
  %spec.select155 = sub nsw i64 %conv.i, %sub21.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true12.i, %if.else.i.if.end22.i_crit_edge, %if.then.i
  %imm.0.i = phi i64 [ %add9.i, %if.then.i ], [ %conv.i, %if.else.i.if.end22.i_crit_edge ], [ %spec.select155, %land.lhs.true12.i ]
  %7 = add nsw i64 %imm.0.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %7)
  %8 = icmp ult i64 %7, -4294967296
  %brmerge.i = or i1 %8, %probe_pass
  br i1 %brmerge.i, label %bpf_adj_delta_to_imm.exit, label %bpf_adj_delta_to_imm.exit.thread

bpf_adj_delta_to_imm.exit.thread:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #25
  %conv30.i = trunc i64 %imm.0.i to i32
  %9 = ptrtoint ptr %imm1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv30.i, ptr %imm1.i, align 4
  br label %for.inc

bpf_adj_delta_to_imm.exit:                        ; preds = %if.end22.i
  br i1 %8, label %bpf_adj_delta_to_imm.exit.cleanup44_crit_edge, label %bpf_adj_delta_to_imm.exit.for.inc_crit_edge

bpf_adj_delta_to_imm.exit.for.inc_crit_edge:      ; preds = %bpf_adj_delta_to_imm.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

bpf_adj_delta_to_imm.exit.cleanup44_crit_edge:    ; preds = %bpf_adj_delta_to_imm.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup44

if.end11:                                         ; preds = %for.body
  %10 = and i8 %3, 7
  %and = zext i8 %10 to i32
  %and.off = add nsw i32 %and, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %lor.lhs.false, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end11
  %and21 = and i8 %3, -16
  %11 = zext i8 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %and21, label %if.else [
    i8 -112, label %lor.lhs.false.for.inc_crit_edge
    i8 -128, label %if.then30
  ]

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.then30:                                        ; preds = %lor.lhs.false
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %insn.1, i32 0, i32 1
  %12 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp32.not = icmp eq i8 %bf.clear, 1
  br i1 %cmp32.not, label %if.end35, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end35:                                         ; preds = %if.then30
  %imm1.i85 = getelementptr inbounds %struct.bpf_insn, ptr %insn.1, i32 0, i32 3
  %13 = ptrtoint ptr %imm1.i85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %imm1.i85, align 4
  %conv.i86 = sext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %pos)
  %cmp.i87 = icmp ult i32 %i.1, %pos
  br i1 %cmp.i87, label %land.lhs.true.i93, label %if.end35.if.else.i98_crit_edge

if.end35.if.else.i98_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i98

land.lhs.true.i93:                                ; preds = %if.end35
  %conv3.i88 = sext i32 %i.1 to i64
  %add.i89 = add nsw i64 %conv.i86, 1
  %add4.i90 = add nsw i64 %add.i89, %conv3.i88
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i90, i64 %conv5.i91)
  %cmp6.not.i92 = icmp slt i64 %add4.i90, %conv5.i91
  br i1 %cmp6.not.i92, label %land.lhs.true.i93.if.else.i98_crit_edge, label %if.then.i96

land.lhs.true.i93.if.else.i98_crit_edge:          ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i98

if.then.i96:                                      ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #25
  %add9.i95 = add nsw i64 %conv.i86, %conv8.i94
  br label %if.end22.i111

if.else.i98:                                      ; preds = %land.lhs.true.i93.if.else.i98_crit_edge, %if.end35.if.else.i98_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %end_new)
  %cmp10.not.i97 = icmp slt i32 %i.1, %end_new
  br i1 %cmp10.not.i97, label %if.else.i98.if.end22.i111_crit_edge, label %land.lhs.true12.i104

if.else.i98.if.end22.i111_crit_edge:              ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end22.i111

land.lhs.true12.i104:                             ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #25
  %conv13.i99 = sext i32 %i.1 to i64
  %add14.i100 = add nsw i64 %conv.i86, 1
  %add15.i101 = add nsw i64 %add14.i100, %conv13.i99
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i101, i64 %conv16.i102)
  %cmp17.i103 = icmp slt i64 %add15.i101, %conv16.i102
  %sub21.i106 = select i1 %cmp17.i103, i64 %conv8.i94, i64 0
  %spec.select156 = sub nsw i64 %conv.i86, %sub21.i106
  br label %if.end22.i111

if.end22.i111:                                    ; preds = %land.lhs.true12.i104, %if.else.i98.if.end22.i111_crit_edge, %if.then.i96
  %imm.0.i108 = phi i64 [ %add9.i95, %if.then.i96 ], [ %conv.i86, %if.else.i98.if.end22.i111_crit_edge ], [ %spec.select156, %land.lhs.true12.i104 ]
  %15 = add nsw i64 %imm.0.i108, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %15)
  %16 = icmp ult i64 %15, -4294967296
  %brmerge.i109 = or i1 %16, %probe_pass
  %.mux.i110 = select i1 %16, i32 -34, i32 0
  br i1 %brmerge.i109, label %if.end22.i111.if.end40_crit_edge, label %if.then29.i113

if.end22.i111.if.end40_crit_edge:                 ; preds = %if.end22.i111
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end40

if.then29.i113:                                   ; preds = %if.end22.i111
  call void @__sanitizer_cov_trace_pc() #25
  %conv30.i112 = trunc i64 %imm.0.i108 to i32
  %17 = ptrtoint ptr %imm1.i85 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv30.i112, ptr %imm1.i85, align 4
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  %off1.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.1, i32 0, i32 2
  %18 = ptrtoint ptr %off1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %off1.i, align 2
  %conv.i117 = sext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %pos)
  %cmp.i118 = icmp ult i32 %i.1, %pos
  br i1 %cmp.i118, label %land.lhs.true.i120, label %if.else.if.else.i122_crit_edge

if.else.if.else.i122_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i122

land.lhs.true.i120:                               ; preds = %if.else
  %add.i119 = add nuw i32 %i.1, 1
  %add3.i = add i32 %add.i119, %conv.i117
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %end_old)
  %cmp4.not.i = icmp slt i32 %add3.i, %end_old
  br i1 %cmp4.not.i, label %land.lhs.true.i120.if.else.i122_crit_edge, label %if.then.i121

land.lhs.true.i120.if.else.i122_crit_edge:        ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else.i122

if.then.i121:                                     ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #25
  %add6.i = add i32 %sub, %conv.i117
  br label %if.end16.i

if.else.i122:                                     ; preds = %land.lhs.true.i120.if.else.i122_crit_edge, %if.else.if.else.i122_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %end_new)
  %cmp7.not.i = icmp slt i32 %i.1, %end_new
  br i1 %cmp7.not.i, label %if.else.i122.if.end16.i_crit_edge, label %land.lhs.true9.i

if.else.i122.if.end16.i_crit_edge:                ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end16.i

land.lhs.true9.i:                                 ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #25
  %add10.i = add i32 %i.1, 1
  %add11.i = add i32 %add10.i, %conv.i117
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %end_new)
  %cmp12.i = icmp slt i32 %add11.i, %end_new
  %sub15.i = select i1 %cmp12.i, i32 %sub, i32 0
  %spec.select.i = sub i32 %conv.i117, %sub15.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true9.i, %if.else.i122.if.end16.i_crit_edge, %if.then.i121
  %off.0.i = phi i32 [ %add6.i, %if.then.i121 ], [ %conv.i117, %if.else.i122.if.end16.i_crit_edge ], [ %spec.select.i, %land.lhs.true9.i ]
  %20 = add i32 %off.0.i, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %20)
  %21 = icmp ult i32 %20, -65536
  %brmerge.i123 = or i1 %21, %probe_pass
  %.mux.i124 = select i1 %21, i32 -34, i32 0
  br i1 %brmerge.i123, label %if.end16.i.if.end40_crit_edge, label %if.then23.i

if.end16.i.if.end40_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end40

if.then23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #25
  %conv24.i = trunc i32 %off.0.i to i16
  %22 = ptrtoint ptr %off1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv24.i, ptr %off1.i, align 2
  br label %for.inc

if.end40:                                         ; preds = %if.end16.i.if.end40_crit_edge, %if.end22.i111.if.end40_crit_edge
  %ret.1 = phi i32 [ %.mux.i110, %if.end22.i111.if.end40_crit_edge ], [ %.mux.i124, %if.end16.i.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool41.not = icmp eq i32 %ret.1, 0
  br i1 %tobool41.not, label %if.end40.for.inc_crit_edge, label %if.end40.cleanup44_crit_edge

if.end40.cleanup44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup44

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

for.inc:                                          ; preds = %if.end40.for.inc_crit_edge, %if.then23.i, %if.then29.i113, %if.then30.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %bpf_adj_delta_to_imm.exit.for.inc_crit_edge, %bpf_adj_delta_to_imm.exit.thread, %bpf_pseudo_func.exit.for.inc_crit_edge
  %inc = add i32 %i.1, 1
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn.1, i32 1
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup44_crit_edge

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup44

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

cleanup44:                                        ; preds = %for.inc.cleanup44_crit_edge, %if.end40.cleanup44_crit_edge, %bpf_adj_delta_to_imm.exit.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup44_crit_edge ], [ 0, %for.inc.cleanup44_crit_edge ], [ %ret.1, %if.end40.cleanup44_crit_edge ], [ -34, %bpf_adj_delta_to_imm.exit.cleanup44_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_remove_insns(ptr nocapture noundef %prog, i32 noundef %off, i32 noundef %cnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %add.ptr = getelementptr %struct.bpf_insn, ptr %insnsi, i32 %off
  %add.ptr4 = getelementptr %struct.bpf_insn, ptr %add.ptr, i32 %cnt
  %len = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = add i32 %cnt, %off
  %sub5 = sub i32 %1, %2
  %mul = shl i32 %sub5, 3
  %3 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr4, i32 %mul)
  %4 = load i32, ptr %len, align 4
  %sub7 = sub i32 %4, %cnt
  store i32 %sub7, ptr %len, align 4
  %call = tail call fastcc i32 @bpf_adj_branches(ptr noundef %prog, i32 noundef %off, i32 noundef %2, i32 noundef %off, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @bpf_remove_insns.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end35_crit_edge, label %if.then, !prof !387

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end35

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_remove_insns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 512, i32 noundef 9, ptr noundef null) #23
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  %lnot.ext41 = zext i1 %tobool to i32
  ret i32 %lnot.ext41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_kallsyms_del_all(ptr nocapture noundef readonly %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %0 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux.i, align 4
  %func_cnt5.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %func_cnt5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func_cnt5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %entry.bpf_prog_kallsyms_del_subprogs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bpf_prog_kallsyms_del_subprogs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del_subprogs.exit

for.body.i:                                       ; preds = %bpf_prog_kallsyms_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi ptr [ %15, %bpf_prog_kallsyms_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc.i, %bpf_prog_kallsyms_del.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %func.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 30
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.07.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %jited.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %jited.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i.i = load i16, ptr %jited.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i16 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %for.body.i.bpf_prog_kallsyms_del.exit.i_crit_edge, label %bpf_prog_kallsyms_candidate.exit.i.i

for.body.i.bpf_prog_kallsyms_del.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del.exit.i

bpf_prog_kallsyms_candidate.exit.i.i:             ; preds = %for.body.i
  %type.i.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.not.i.i, label %bpf_prog_kallsyms_candidate.exit.i.i.bpf_prog_kallsyms_del.exit.i_crit_edge, label %if.end.i.i

bpf_prog_kallsyms_candidate.exit.i.i.bpf_prog_kallsyms_del.exit.i_crit_edge: ; preds = %bpf_prog_kallsyms_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del.exit.i

if.end.i.i:                                       ; preds = %bpf_prog_kallsyms_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %aux.i.i = getelementptr inbounds %struct.bpf_prog, ptr %8, i32 0, i32 10
  %12 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux.i.i, align 4
  %ksym.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %13, i32 0, i32 36
  tail call void @bpf_ksym_del(ptr noundef %ksym.i.i) #23
  br label %bpf_prog_kallsyms_del.exit.i

bpf_prog_kallsyms_del.exit.i:                     ; preds = %if.end.i.i, %bpf_prog_kallsyms_candidate.exit.i.i.bpf_prog_kallsyms_del.exit.i_crit_edge, %for.body.i.bpf_prog_kallsyms_del.exit.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %14 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux.i, align 4
  %func_cnt.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %func_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %func_cnt.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %bpf_prog_kallsyms_del.exit.i.for.body.i_crit_edge, label %bpf_prog_kallsyms_del.exit.i.bpf_prog_kallsyms_del_subprogs.exit_crit_edge

bpf_prog_kallsyms_del.exit.i.bpf_prog_kallsyms_del_subprogs.exit_crit_edge: ; preds = %bpf_prog_kallsyms_del.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del_subprogs.exit

bpf_prog_kallsyms_del.exit.i.for.body.i_crit_edge: ; preds = %bpf_prog_kallsyms_del.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

bpf_prog_kallsyms_del_subprogs.exit:              ; preds = %bpf_prog_kallsyms_del.exit.i.bpf_prog_kallsyms_del_subprogs.exit_crit_edge, %entry.bpf_prog_kallsyms_del_subprogs.exit_crit_edge
  %jited.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %18 = ptrtoint ptr %jited.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %jited.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %bpf_prog_kallsyms_del_subprogs.exit.bpf_prog_kallsyms_del.exit_crit_edge, label %bpf_prog_kallsyms_candidate.exit.i

bpf_prog_kallsyms_del_subprogs.exit.bpf_prog_kallsyms_del.exit_crit_edge: ; preds = %bpf_prog_kallsyms_del_subprogs.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del.exit

bpf_prog_kallsyms_candidate.exit.i:               ; preds = %bpf_prog_kallsyms_del_subprogs.exit
  %type.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 2
  %19 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.not.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.not.i, label %bpf_prog_kallsyms_candidate.exit.i.bpf_prog_kallsyms_del.exit_crit_edge, label %if.end.i

bpf_prog_kallsyms_candidate.exit.i.bpf_prog_kallsyms_del.exit_crit_edge: ; preds = %bpf_prog_kallsyms_candidate.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_kallsyms_del.exit

if.end.i:                                         ; preds = %bpf_prog_kallsyms_candidate.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  %21 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux.i, align 4
  %ksym.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 36
  tail call void @bpf_ksym_del(ptr noundef %ksym.i) #23
  br label %bpf_prog_kallsyms_del.exit

bpf_prog_kallsyms_del.exit:                       ; preds = %if.end.i, %bpf_prog_kallsyms_candidate.exit.i.bpf_prog_kallsyms_del.exit_crit_edge, %bpf_prog_kallsyms_del_subprogs.exit.bpf_prog_kallsyms_del.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_kallsyms_del(ptr nocapture noundef readonly %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %jited.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %jited.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %jited.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %bpf_prog_kallsyms_candidate.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

bpf_prog_kallsyms_candidate.exit:                 ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 2
  %1 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.i.not, label %bpf_prog_kallsyms_candidate.exit.return_crit_edge, label %if.end

bpf_prog_kallsyms_candidate.exit.return_crit_edge: ; preds = %bpf_prog_kallsyms_candidate.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

if.end:                                           ; preds = %bpf_prog_kallsyms_candidate.exit
  call void @__sanitizer_cov_trace_pc() #25
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %3 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux, align 4
  %ksym = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 36
  tail call void @bpf_ksym_del(ptr noundef %ksym)
  br label %return

return:                                           ; preds = %if.end, %bpf_prog_kallsyms_candidate.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_ksym_add(ptr noundef %ksym) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bpf_lock) #23
  %lnode = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 3
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lnode, align 4
  %cmp.i.not = icmp eq ptr %1, %lnode
  br i1 %cmp.i.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @bpf_ksym_add.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !387

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_ksym_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 624, i32 noundef 9, ptr noundef null) #23
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bpf_kallsyms, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lnode, ptr noundef %2, ptr noundef nonnull @bpf_kallsyms) #23
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add_tail_rcu.exit_crit_edge

if.end29.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #25
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #25
  %3 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bpf_kallsyms, ptr %lnode, align 4
  %prev2.i.i = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !389
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lnode, ptr %2, align 4
  store ptr %lnode, ptr getelementptr inbounds (%struct.list_head, ptr @bpf_kallsyms, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end29.list_add_tail_rcu.exit_crit_edge
  %tnode = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !390
  %6 = load i32, ptr @bpf_tree, align 128
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, ptr @bpf_tree, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !391
  %7 = load ptr, ptr getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 0), align 32
  %tobool.not1.i.i = icmp eq ptr %7, null
  br i1 %tobool.not1.i.i, label %list_add_tail_rcu.exit.__lt_insert.exit.i_crit_edge, label %while.body.lr.ph.i.i

list_add_tail_rcu.exit.__lt_insert.exit.i_crit_edge: ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_insert.exit.i

while.body.lr.ph.i.i:                             ; preds = %list_add_tail_rcu.exit
  %8 = ptrtoint ptr %ksym to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ksym, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %10 = phi ptr [ %7, %while.body.lr.ph.i.i ], [ %14, %while.body.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %10, i32 -144
  %11 = ptrtoint ptr %add.ptr.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp.i.i.i = icmp ult i32 %9, %12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %link.1.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %13 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %phi.cast.le.i.i = ptrtoint ptr %10 to i32
  br label %__lt_insert.exit.i

__lt_insert.exit.i:                               ; preds = %while.cond.while.end_crit_edge.i.i, %list_add_tail_rcu.exit.__lt_insert.exit.i_crit_edge
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 0), %list_add_tail_rcu.exit.__lt_insert.exit.i_crit_edge ]
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %list_add_tail_rcu.exit.__lt_insert.exit.i_crit_edge ]
  %15 = ptrtoint ptr %tnode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.0.lcssa.i.i, ptr %tnode, align 4
  %rb_right.i.i.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !392
  %18 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tnode, ptr %link.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %tnode, ptr noundef getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 0)) #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !390
  %19 = load i32, ptr @bpf_tree, align 128
  %inc.i18.i = add i32 %19, 1
  store i32 %inc.i18.i, ptr @bpf_tree, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !391
  %20 = load ptr, ptr getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 1), align 4
  %tobool.not1.i1.i = icmp eq ptr %20, null
  br i1 %tobool.not1.i1.i, label %__lt_insert.exit.i.latch_tree_insert.exit_crit_edge, label %while.body.lr.ph.i3.i

__lt_insert.exit.i.latch_tree_insert.exit_crit_edge: ; preds = %__lt_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %latch_tree_insert.exit

while.body.lr.ph.i3.i:                            ; preds = %__lt_insert.exit.i
  %21 = ptrtoint ptr %ksym to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ksym, align 4
  br label %while.body.i10.i

while.body.i10.i:                                 ; preds = %while.body.i10.i.while.body.i10.i_crit_edge, %while.body.lr.ph.i3.i
  %23 = phi ptr [ %20, %while.body.lr.ph.i3.i ], [ %27, %while.body.i10.i.while.body.i10.i_crit_edge ]
  %add.ptr.i2.i.i4.i = getelementptr i8, ptr %23, i32 -156
  %24 = ptrtoint ptr %add.ptr.i2.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i2.i.i4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %25)
  %cmp.i.i5.i = icmp ult i32 %22, %25
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  %rb_right.i7.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  %link.1.i8.i = select i1 %cmp.i.i5.i, ptr %rb_left.i6.i, ptr %rb_right.i7.i
  %26 = ptrtoint ptr %link.1.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.1.i8.i, align 4
  %tobool.not.i9.i = icmp eq ptr %27, null
  br i1 %tobool.not.i9.i, label %while.cond.while.end_crit_edge.i12.i, label %while.body.i10.i.while.body.i10.i_crit_edge

while.body.i10.i.while.body.i10.i_crit_edge:      ; preds = %while.body.i10.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body.i10.i

while.cond.while.end_crit_edge.i12.i:             ; preds = %while.body.i10.i
  call void @__sanitizer_cov_trace_pc() #25
  %phi.cast.le.i11.i = ptrtoint ptr %23 to i32
  br label %latch_tree_insert.exit

latch_tree_insert.exit:                           ; preds = %while.cond.while.end_crit_edge.i12.i, %__lt_insert.exit.i.latch_tree_insert.exit_crit_edge
  %link.0.lcssa.i13.i = phi ptr [ %link.1.i8.i, %while.cond.while.end_crit_edge.i12.i ], [ getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 1), %__lt_insert.exit.i.latch_tree_insert.exit_crit_edge ]
  %parent.0.lcssa.i14.i = phi i32 [ %phi.cast.le.i11.i, %while.cond.while.end_crit_edge.i12.i ], [ 0, %__lt_insert.exit.i.latch_tree_insert.exit_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %parent.0.lcssa.i14.i, ptr %arrayidx2.i.i, align 4
  %rb_right.i.i15.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %rb_right.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i.i15.i, align 4
  %rb_left.i.i16.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %rb_left.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i.i16.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !392
  %31 = ptrtoint ptr %link.0.lcssa.i13.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx2.i.i, ptr %link.0.lcssa.i13.i, align 4
  tail call void @rb_insert_color(ptr noundef %arrayidx2.i.i, ptr noundef getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 1)) #23
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bpf_lock) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_ksym_del(ptr noundef %ksym) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bpf_lock) #23
  %lnode.i = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 3
  %0 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lnode.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %lnode.i
  br i1 %cmp.i.not.i, label %entry.__bpf_ksym_del.exit_crit_edge, label %if.end.i

entry.__bpf_ksym_del.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %__bpf_ksym_del.exit

if.end.i:                                         ; preds = %entry
  %tnode.i = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !390
  %2 = load i32, ptr @bpf_tree, align 128
  %inc.i.i.i = add i32 %2, 1
  store i32 %inc.i.i.i, ptr @bpf_tree, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !391
  tail call void @rb_erase(ptr noundef %tnode.i, ptr noundef getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 0)) #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !390
  %3 = load i32, ptr @bpf_tree, align 128
  %inc.i1.i.i = add i32 %3, 1
  store i32 %inc.i1.i.i, ptr @bpf_tree, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !391
  %arrayidx.i.i.i = getelementptr %struct.bpf_ksym, ptr %ksym, i32 0, i32 4, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %arrayidx.i.i.i, ptr noundef getelementptr inbounds (%struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 1)) #23
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lnode.i) #23
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_rcu.exit.i_crit_edge

if.end.i.list_del_rcu.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %prev.i.i.i = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lnode.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %__bpf_ksym_del.exit

__bpf_ksym_del.exit:                              ; preds = %list_del_rcu.exit.i, %entry.__bpf_ksym_del.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bpf_lock) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_kallsyms_add(ptr noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %jited.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %jited.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %jited.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %bpf_prog_kallsyms_candidate.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

bpf_prog_kallsyms_candidate.exit:                 ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 2
  %1 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.i.not, label %bpf_prog_kallsyms_candidate.exit.return_crit_edge, label %lor.lhs.false

bpf_prog_kallsyms_candidate.exit.return_crit_edge: ; preds = %bpf_prog_kallsyms_candidate.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

lor.lhs.false:                                    ; preds = %bpf_prog_kallsyms_candidate.exit
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #23
  br i1 %call.i, label %lor.lhs.false.if.end_crit_edge, label %bpf_capable.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

bpf_capable.exit:                                 ; preds = %lor.lhs.false
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #23
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.return_crit_edge

bpf_capable.exit.return_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 9
  %3 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpf_func.i.i, align 4
  %5 = ptrtoint ptr %jited.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i.i = load i16, ptr %jited.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp slt i16 %bf.load.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.bpf_prog_ksym_set_addr.exit_crit_edge, label %land.rhs.i8

if.end.bpf_prog_ksym_set_addr.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_ksym_set_addr.exit

land.rhs.i8:                                      ; preds = %if.end
  %.b46.i = load i1, ptr @bpf_prog_ksym_set_addr.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i8.bpf_prog_ksym_set_addr.exit_crit_edge, label %if.then.i, !prof !387

land.rhs.i8.bpf_prog_ksym_set_addr.exit_crit_edge: ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_ksym_set_addr.exit

if.then.i:                                        ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_prog_ksym_set_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 543, i32 noundef 9, ptr noundef null) #23
  br label %bpf_prog_ksym_set_addr.exit

bpf_prog_ksym_set_addr.exit:                      ; preds = %if.then.i, %land.rhs.i8.bpf_prog_ksym_set_addr.exit_crit_edge, %if.end.bpf_prog_ksym_set_addr.exit_crit_edge
  %6 = ptrtoint ptr %4 to i32
  %and.i.i = and i32 %6, -4096
  %7 = inttoptr i32 %and.i.i to ptr
  %8 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpf_func.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %11 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux.i, align 4
  %ksym.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %ksym.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %ksym.i, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4096
  %mul.i = shl i32 %15, 12
  %add.i = add i32 %mul.i, %and.i.i
  %16 = load ptr, ptr %aux.i, align 4
  %end.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %16, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %end.i, align 4
  %18 = load ptr, ptr %aux.i, align 4
  %name.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %18, i32 0, i32 36, i32 2
  %add.ptr.i = getelementptr %struct.bpf_prog_aux, ptr %18, i32 0, i32 36, i32 3
  %19 = call ptr @memcpy(ptr %name.i, ptr @.str.17, i32 10)
  %add.ptr1.i = getelementptr %struct.bpf_prog_aux, ptr %18, i32 0, i32 36, i32 2, i32 9
  %tag.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 6
  %call3.i = tail call ptr @bin2hex(ptr noundef %add.ptr1.i, ptr noundef %tag.i, i32 noundef 8) #23
  %20 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux.i, align 4
  %func_info_cnt.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 54
  %22 = ptrtoint ptr %func_info_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %func_info_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i10 = icmp eq i32 %23, 0
  br i1 %tobool.not.i10, label %if.end.i, label %if.then.i11

if.then.i11:                                      ; preds = %bpf_prog_ksym_set_addr.exit
  call void @__sanitizer_cov_trace_pc() #25
  %btf.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 49
  %24 = ptrtoint ptr %btf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btf.i, align 4
  %func_info.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 50
  %26 = ptrtoint ptr %func_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func_info.i, align 8
  %func_idx.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 9
  %28 = ptrtoint ptr %func_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %func_idx.i, align 8
  %type_id.i = getelementptr %struct.bpf_func_info, ptr %27, i32 %29, i32 1
  %30 = ptrtoint ptr %type_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type_id.i, align 4
  %call8.i = tail call ptr @btf_type_by_id(ptr noundef %25, i32 noundef %31) #23
  %32 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aux.i, align 4
  %btf10.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %33, i32 0, i32 49
  %34 = ptrtoint ptr %btf10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btf10.i, align 4
  %36 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call8.i, align 4
  %call11.i = tail call ptr @btf_name_by_offset(ptr noundef %35, i32 noundef %37) #23
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call3.i, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.18, ptr noundef %call11.i) #23
  br label %bpf_prog_ksym_set_name.exit

if.end.i:                                         ; preds = %bpf_prog_ksym_set_addr.exit
  %name14.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 46
  %38 = ptrtoint ptr %name14.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %name14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool16.not.i = icmp eq i8 %39, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %sub.ptr.lhs.cast18.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast19.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub20.i = sub i32 %sub.ptr.lhs.cast18.i, %sub.ptr.rhs.cast19.i
  %call24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call3.i, i32 noundef %sub.ptr.sub20.i, ptr noundef nonnull @.str.18, ptr noundef %name14.i) #23
  br label %bpf_prog_ksym_set_name.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %40 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %call3.i, align 1
  br label %bpf_prog_ksym_set_name.exit

bpf_prog_ksym_set_name.exit:                      ; preds = %if.else.i, %if.then17.i, %if.then.i11
  %41 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aux.i, align 4
  %prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %42, i32 0, i32 36, i32 5
  %43 = ptrtoint ptr %prog to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %prog, align 8
  %44 = load ptr, ptr %aux.i, align 4
  %ksym3 = getelementptr inbounds %struct.bpf_prog_aux, ptr %44, i32 0, i32 36
  tail call void @bpf_ksym_add(ptr noundef %ksym3)
  br label %return

return:                                           ; preds = %bpf_prog_ksym_set_name.exit, %bpf_capable.exit.return_crit_edge, %bpf_prog_kallsyms_candidate.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__bpf_address_lookup(i32 noundef %addr, ptr noundef writeonly %size, ptr noundef writeonly %off, ptr noundef %sym) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !393
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #23
  %call.i = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i, label %entry.do.body.i.i.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.i.i.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.i.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.i.i.preheader_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.i.i.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #23
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.then.i, %land.lhs.true2.i.do.body.i.i.preheader_crit_edge, %land.lhs.true.i.do.body.i.i.preheader_crit_edge, %entry.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__lt_find.exit.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %4 = load volatile i32, ptr @bpf_tree, align 128
  %and.i.i = and i32 %4, 1
  %arrayidx.i.i.i = getelementptr %struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 %and.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.04.i.i.i = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not5.i.i.i = icmp eq ptr %node.04.i.i.i, null
  br i1 %tobool.not5.i.i.i, label %do.body.i.i.__lt_find.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

do.body.i.i.__lt_find.exit.i.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %do.body.i.i
  %.neg.i.i.i.i = mul nuw nsw i32 %and.i.i, -12
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end16.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %node.06.i.i.i = phi ptr [ %node.04.i.i.i, %while.body.lr.ph.i.i.i ], [ %node.0.i.i.i, %if.end16.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.06.i.i.i, i32 %.neg.i.i.i.i
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 -144
  %6 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp.i.i.i.i = icmp ugt i32 %7, %addr
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %bpf_tree_comp.exit.i.i.i

bpf_tree_comp.exit.i.i.i:                         ; preds = %while.body.i.i.i
  %end.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 -140
  %8 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp1.not.i.not.i.i.i = icmp ugt i32 %9, %addr
  br i1 %cmp1.not.i.not.i.i.i, label %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge, label %if.then9.i.i.i

bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge: ; preds = %bpf_tree_comp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i, i32 0, i32 2
  br label %if.end16.i.i.i

if.then9.i.i.i:                                   ; preds = %bpf_tree_comp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i, i32 0, i32 1
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.then.i.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then9.i.i.i ]
  %10 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.0.i.i.i = load volatile ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge, label %if.end16.i.i.i.while.body.i.i.i_crit_edge

if.end16.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body.i.i.i

if.end16.i.i.i.__lt_find.exit.i.i_crit_edge:      ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

__lt_find.exit.i.i:                               ; preds = %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge, %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge, %do.body.i.i.__lt_find.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %do.body.i.i.__lt_find.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge ], [ null, %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !394
  %11 = load volatile i32, ptr @bpf_tree, align 128
  %cmp.i.i.i.not.i.i = icmp eq i32 %11, %4
  br i1 %cmp.i.i.i.not.i.i, label %bpf_ksym_find.exit, label %__lt_find.exit.i.i.do.body.i.i_crit_edge

__lt_find.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__lt_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i

bpf_ksym_find.exit:                               ; preds = %__lt_find.exit.i.i
  %tobool.not.i17 = icmp eq ptr %retval.0.i.i.i, null
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 -144
  %tobool.not27 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i17, %tobool.not27
  br i1 %tobool.not, label %bpf_ksym_find.exit.if.end8_crit_edge, label %if.then

bpf_ksym_find.exit.if.end8_crit_edge:             ; preds = %bpf_ksym_find.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end8

if.then:                                          ; preds = %bpf_ksym_find.exit
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %end = getelementptr i8, ptr %retval.0.i.i.i, i32 -140
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  %name = getelementptr i8, ptr %retval.0.i.i.i, i32 -136
  %call1 = tail call ptr @strncpy(ptr noundef %sym, ptr noundef %name, i32 noundef 128)
  %tobool2.not = icmp eq ptr %size, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  %sub = sub i32 %15, %13
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %tobool4.not = icmp eq ptr %off, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %sub6 = sub i32 %addr, %13
  %17 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub6, ptr %off, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge, %bpf_ksym_find.exit.if.end8_crit_edge
  %ret.0 = phi ptr [ null, %bpf_ksym_find.exit.if.end8_crit_edge ], [ %sym, %if.then5 ], [ %sym, %if.end.if.end8_crit_edge ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i18, label %if.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end8
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #23
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !395
  %18 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i25 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #23
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #23
  ret ptr %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_bpf_text_address(i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !393
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #23
  %call.i = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i, label %entry.do.body.i.i.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.i.i.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.i.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.i.i.preheader_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.i.i.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #23
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.then.i, %land.lhs.true2.i.do.body.i.i.preheader_crit_edge, %land.lhs.true.i.do.body.i.i.preheader_crit_edge, %entry.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__lt_find.exit.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %4 = load volatile i32, ptr @bpf_tree, align 128
  %and.i.i = and i32 %4, 1
  %arrayidx.i.i.i = getelementptr %struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 %and.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.04.i.i.i = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not5.i.i.i = icmp eq ptr %node.04.i.i.i, null
  br i1 %tobool.not5.i.i.i, label %do.body.i.i.__lt_find.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

do.body.i.i.__lt_find.exit.i.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %do.body.i.i
  %.neg.i.i.i.i = mul nuw nsw i32 %and.i.i, -12
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end16.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %node.06.i.i.i = phi ptr [ %node.04.i.i.i, %while.body.lr.ph.i.i.i ], [ %node.0.i.i.i, %if.end16.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.06.i.i.i, i32 %.neg.i.i.i.i
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 -144
  %6 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp.i.i.i.i = icmp ugt i32 %7, %addr
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %bpf_tree_comp.exit.i.i.i

bpf_tree_comp.exit.i.i.i:                         ; preds = %while.body.i.i.i
  %end.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 -140
  %8 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp1.not.i.not.i.i.i = icmp ugt i32 %9, %addr
  br i1 %cmp1.not.i.not.i.i.i, label %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge, label %if.then9.i.i.i

bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge: ; preds = %bpf_tree_comp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i, i32 0, i32 2
  br label %if.end16.i.i.i

if.then9.i.i.i:                                   ; preds = %bpf_tree_comp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i, i32 0, i32 1
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.then.i.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then9.i.i.i ]
  %10 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.0.i.i.i = load volatile ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge, label %if.end16.i.i.i.while.body.i.i.i_crit_edge

if.end16.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body.i.i.i

if.end16.i.i.i.__lt_find.exit.i.i_crit_edge:      ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i

__lt_find.exit.i.i:                               ; preds = %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge, %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge, %do.body.i.i.__lt_find.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %do.body.i.i.__lt_find.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %bpf_tree_comp.exit.i.i.i.__lt_find.exit.i.i_crit_edge ], [ null, %if.end16.i.i.i.__lt_find.exit.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !394
  %11 = load volatile i32, ptr @bpf_tree, align 128
  %cmp.i.i.i.not.i.i = icmp eq i32 %11, %4
  br i1 %cmp.i.i.i.not.i.i, label %bpf_ksym_find.exit, label %__lt_find.exit.i.i.do.body.i.i_crit_edge

__lt_find.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__lt_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i

bpf_ksym_find.exit:                               ; preds = %__lt_find.exit.i.i
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i2, label %bpf_ksym_find.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

bpf_ksym_find.exit.rcu_read_unlock.exit_crit_edge: ; preds = %bpf_ksym_find.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %bpf_ksym_find.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #23
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %bpf_ksym_find.exit.rcu_read_unlock.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 -144
  %tobool.not.i1 = icmp ne ptr %retval.0.i.i.i, null
  %cmp11 = icmp ne ptr %add.ptr.i, null
  %cmp = and i1 %tobool.not.i1, %cmp11
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !395
  %12 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #23
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #23
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_bpf_extables(i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !393
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #23
  %call.i = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i, label %entry.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.i.i.i.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.i.i.i.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.i.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #23
  br label %do.body.i.i.i.preheader

do.body.i.i.i.preheader:                          ; preds = %if.then.i, %land.lhs.true2.i.do.body.i.i.i.preheader_crit_edge, %land.lhs.true.i.do.body.i.i.i.preheader_crit_edge, %entry.do.body.i.i.i.preheader_crit_edge
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %__lt_find.exit.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i.i.preheader
  %4 = load volatile i32, ptr @bpf_tree, align 128
  %and.i.i.i = and i32 %4, 1
  %arrayidx.i.i.i.i = getelementptr %struct.latch_tree_root, ptr @bpf_tree, i32 0, i32 1, i32 %and.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.04.i.i.i.i = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not5.i.i.i.i = icmp eq ptr %node.04.i.i.i.i, null
  br i1 %tobool.not5.i.i.i.i, label %do.body.i.i.i.__lt_find.exit.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i.i

do.body.i.i.i.__lt_find.exit.i.i.i_crit_edge:     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i.i

while.body.lr.ph.i.i.i.i:                         ; preds = %do.body.i.i.i
  %.neg.i.i.i.i.i = mul nuw nsw i32 %and.i.i.i, -12
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end16.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i
  %node.06.i.i.i.i = phi ptr [ %node.04.i.i.i.i, %while.body.lr.ph.i.i.i.i ], [ %node.0.i.i.i.i, %if.end16.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %node.06.i.i.i.i, i32 %.neg.i.i.i.i.i
  %add.ptr.i1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 -144
  %6 = ptrtoint ptr %add.ptr.i1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp.i.i.i.i.i = icmp ugt i32 %7, %addr
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %bpf_tree_comp.exit.i.i.i.i

bpf_tree_comp.exit.i.i.i.i:                       ; preds = %while.body.i.i.i.i
  %end.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 -140
  %8 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp1.not.i.not.i.i.i.i = icmp ugt i32 %9, %addr
  br i1 %cmp1.not.i.not.i.i.i.i, label %bpf_tree_comp.exit.i.i.i.i.__lt_find.exit.i.i.i_crit_edge, label %if.then9.i.i.i.i

bpf_tree_comp.exit.i.i.i.i.__lt_find.exit.i.i.i_crit_edge: ; preds = %bpf_tree_comp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i.i, i32 0, i32 2
  br label %if.end16.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %bpf_tree_comp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.06.i.i.i.i, i32 0, i32 1
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then9.i.i.i.i, %if.then.i.i.i.i
  %node.1.in.i.i.i.i = phi ptr [ %rb_left.i.i.i.i, %if.then.i.i.i.i ], [ %rb_right.i.i.i.i, %if.then9.i.i.i.i ]
  %10 = ptrtoint ptr %node.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.0.i.i.i.i = load volatile ptr, ptr %node.1.in.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %node.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end16.i.i.i.i.__lt_find.exit.i.i.i_crit_edge, label %if.end16.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end16.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %while.body.i.i.i.i

if.end16.i.i.i.i.__lt_find.exit.i.i.i_crit_edge:  ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %__lt_find.exit.i.i.i

__lt_find.exit.i.i.i:                             ; preds = %if.end16.i.i.i.i.__lt_find.exit.i.i.i_crit_edge, %bpf_tree_comp.exit.i.i.i.i.__lt_find.exit.i.i.i_crit_edge, %do.body.i.i.i.__lt_find.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %do.body.i.i.i.__lt_find.exit.i.i.i_crit_edge ], [ null, %if.end16.i.i.i.i.__lt_find.exit.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %bpf_tree_comp.exit.i.i.i.i.__lt_find.exit.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !394
  %11 = load volatile i32, ptr @bpf_tree, align 128
  %cmp.i.i.i.not.i.i.i = icmp eq i32 %11, %4
  br i1 %cmp.i.i.i.not.i.i.i, label %bpf_ksym_find.exit.i, label %__lt_find.exit.i.i.i.do.body.i.i.i_crit_edge

__lt_find.exit.i.i.i.do.body.i.i.i_crit_edge:     ; preds = %__lt_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body.i.i.i

bpf_ksym_find.exit.i:                             ; preds = %__lt_find.exit.i.i.i
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 -144
  %tobool.not5.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i12 = or i1 %tobool.not.i.i, %tobool.not5.i
  br i1 %tobool.not.i12, label %bpf_ksym_find.exit.i.out_crit_edge, label %land.lhs.true.i13

bpf_ksym_find.exit.i.out_crit_edge:               ; preds = %bpf_ksym_find.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %out

land.lhs.true.i13:                                ; preds = %bpf_ksym_find.exit.i
  %prog.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 24
  %12 = ptrtoint ptr %prog.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prog.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i13.out_crit_edge, label %bpf_prog_ksym_find.exit

land.lhs.true.i13.out_crit_edge:                  ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #25
  br label %out

bpf_prog_ksym_find.exit:                          ; preds = %land.lhs.true.i13
  %prog2.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 132
  %14 = ptrtoint ptr %prog2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prog2.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %bpf_prog_ksym_find.exit.out_crit_edge, label %if.end

bpf_prog_ksym_find.exit.out_crit_edge:            ; preds = %bpf_prog_ksym_find.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %out

if.end:                                           ; preds = %bpf_prog_ksym_find.exit
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aux, align 4
  %num_exentries = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 57
  %18 = ptrtoint ptr %num_exentries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_exentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not = icmp eq i32 %19, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %extable = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 58
  %20 = ptrtoint ptr %extable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extable, align 8
  %call7 = tail call ptr @search_extable(ptr noundef %21, i32 noundef %19, i32 noundef %addr) #23
  br label %out

out:                                              ; preds = %if.end3, %if.end.out_crit_edge, %bpf_prog_ksym_find.exit.out_crit_edge, %land.lhs.true.i13.out_crit_edge, %bpf_ksym_find.exit.i.out_crit_edge
  %e.0 = phi ptr [ %call7, %if.end3 ], [ null, %if.end.out_crit_edge ], [ null, %bpf_prog_ksym_find.exit.out_crit_edge ], [ null, %land.lhs.true.i13.out_crit_edge ], [ null, %bpf_ksym_find.exit.i.out_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i14, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %out
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #23
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !395
  %22 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i21 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #23
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #23
  ret ptr %e.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_extable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_get_kallsym(i32 noundef %symnum, ptr nocapture noundef writeonly %value, ptr nocapture noundef writeonly %type, ptr noundef %sym) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_jit_harden, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i31 = icmp eq i32 %0, 0
  br i1 %tobool.not.i31, label %bpf_jit_kallsyms_enabled.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

bpf_jit_kallsyms_enabled.exit:                    ; preds = %entry
  %1 = load i32, ptr @bpf_jit_kallsyms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %if.end, label %bpf_jit_kallsyms_enabled.exit.cleanup_crit_edge

bpf_jit_kallsyms_enabled.exit.cleanup_crit_edge:  ; preds = %bpf_jit_kallsyms_enabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %bpf_jit_kallsyms_enabled.exit
  %2 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !393
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #23
  %call.i = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #23
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @bpf_get_kallsym.__warned, align 1
  br i1 %.b30, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_get_kallsym.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 760, ptr noundef nonnull @.str.5) #23
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn44 = load volatile ptr, ptr @bpf_kallsyms, align 4
  %cmp.not45 = icmp eq ptr %.pn44, @bpf_kallsyms
  br i1 %cmp.not45, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add i32 %it.046, 1
  %6 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, @bpf_kallsyms
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn44, %do.end.for.body_crit_edge ]
  %it.046 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %it.046, i32 %symnum)
  %cmp12.not = icmp eq i32 %it.046, %symnum
  br i1 %cmp12.not, label %if.end14, label %for.cond

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  %ksym.0.le = getelementptr i8, ptr %.pn47, i32 -136
  %name = getelementptr i8, ptr %.pn47, i32 -128
  %call15 = tail call ptr @strncpy(ptr noundef %sym, ptr noundef %name, i32 noundef 128)
  %7 = ptrtoint ptr %ksym.0.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ksym.0.le, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 116, ptr %type, align 1
  br label %for.end

for.end:                                          ; preds = %if.end14, %for.cond.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14 ], [ -34, %do.end.for.end_crit_edge ], [ -34, %for.cond.for.end_crit_edge ]
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #23
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #25
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #23
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !395
  %11 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i.i39 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #23
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #23
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %bpf_jit_kallsyms_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -34, %bpf_jit_kallsyms_enabled.exit.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_jit_add_poke_descriptor(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %poke) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %poke_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poke_tab, align 8
  %size_poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %size_poke_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_poke_tab, align 4
  %add = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add)
  %cmp = icmp ugt i32 %add, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %poke to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poke, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tailcall_target_stable = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 5
  %8 = ptrtoint ptr %tailcall_target_stable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tailcall_target_stable, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tailcall_bypass = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 1
  %10 = ptrtoint ptr %tailcall_bypass to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tailcall_bypass, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %adj_off = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 6
  %12 = ptrtoint ptr %adj_off to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adj_off, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %bypass_addr = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 2
  %14 = ptrtoint ptr %bypass_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bypass_addr, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %reason = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 7
  %16 = ptrtoint ptr %reason to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cond = icmp eq i16 %17, 0
  br i1 %cond, label %sw.bb, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %18 = getelementptr inbounds %struct.bpf_jit_poke_descriptor, ptr %poke, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %sw.bb.cleanup_crit_edge, label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %mul = shl nuw nsw i32 %add, 5
  %call = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %mul, i32 noundef 3264) #29
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %sw.epilog.cleanup_crit_edge, label %if.end17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #25
  %arrayidx = getelementptr %struct.bpf_jit_poke_descriptor, ptr %call, i32 %5
  %21 = call ptr @memcpy(ptr %arrayidx, ptr %poke, i32 32)
  %22 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aux, align 4
  %size_poke_tab19 = getelementptr inbounds %struct.bpf_prog_aux, ptr %23, i32 0, i32 35
  %24 = ptrtoint ptr %size_poke_tab19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %size_poke_tab19, align 4
  %25 = load ptr, ptr %aux, align 4
  %poke_tab21 = getelementptr inbounds %struct.bpf_prog_aux, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %poke_tab21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %poke_tab21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end17 ], [ -28, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i64 @bpf_jit_alloc_exec_limit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 14680064
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_jit_charge_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @bpf_jit_alloc_exec_limit()
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr @bpf_jit_limit_max, align 4
  %shr = ashr i32 %conv, 2
  %sub = add nsw i32 %shr, -1
  %or = or i32 %sub, 4095
  %add = add nsw i32 %or, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %add, i32 2147483647)
  store i32 %0, ptr @bpf_jit_limit, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_jit_charge_modmem(i32 noundef %pages) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !397
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %pages, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !398
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #23, !srcloc !399
  %1 = load i32, ptr @bpf_jit_limit, align 4
  %shr = ashr i32 %1, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %shr)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, %shr
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #23
  br i1 %call.i, label %if.then.return_crit_edge, label %bpf_capable.exit

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

bpf_capable.exit:                                 ; preds = %if.then
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #23
  br i1 %call1.i, label %bpf_capable.exit.return_crit_edge, label %if.then2

bpf_capable.exit.return_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

if.then2:                                         ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #25
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %pages, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !400
  br label %return

return:                                           ; preds = %if.then2, %bpf_capable.exit.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then2 ], [ 0, %bpf_capable.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_jit_uncharge_modmem(i32 noundef %pages) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %pages, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !400
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @bpf_jit_alloc_exec(i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @module_alloc(i32 noundef %size) #23
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @module_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @bpf_jit_free_exec(ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_memfree(ptr noundef %addr) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_memfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_jit_binary_alloc(i32 noundef %proglen, ptr nocapture noundef writeonly %image_ptr, i32 noundef %alignment, ptr nocapture noundef readonly %bpf_fill_ill_insns) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alignment)
  %cmp.not.i = icmp eq i32 %alignment, 0
  br i1 %cmp.not.i, label %entry.land.rhs_crit_edge, label %is_power_of_2.exit

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %land.rhs

is_power_of_2.exit:                               ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %alignment) #23, !range !401
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %alignment)
  %cmp = icmp ugt i32 %alignment, 8
  %brmerge = or i1 %cmp, %cmp1.i
  br i1 %brmerge, label %is_power_of_2.exit.land.rhs_crit_edge, label %is_power_of_2.exit.if.end27_crit_edge

is_power_of_2.exit.if.end27_crit_edge:            ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end27

is_power_of_2.exit.land.rhs_crit_edge:            ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %land.rhs

land.rhs:                                         ; preds = %is_power_of_2.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b73 = load i1, ptr @bpf_jit_binary_alloc.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !387

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_jit_binary_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 873, i32 noundef 9, ptr noundef null) #23
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %is_power_of_2.exit.if.end27_crit_edge
  %sub = add i32 %proglen, 135
  %or = or i32 %sub, 4095
  %add36 = add i32 %or, 1
  %div72 = lshr exact i32 %add36, 12
  %call37 = tail call i32 @bpf_jit_charge_modmem(i32 noundef %div72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  %call41 = tail call ptr @bpf_jit_alloc_exec(i32 noundef %add36)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %div72, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !400
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #25
  tail call void %bpf_fill_ill_insns(ptr noundef nonnull %call41, i32 noundef %add36) #23
  %2 = ptrtoint ptr %call41 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div72, ptr %call41, align 8
  %3 = sub i32 %or, %proglen
  %sub47 = add i32 %3, -7
  %4 = tail call i32 @llvm.umin.i32(i32 %sub47, i32 4088)
  %call.i = tail call i32 @get_random_u32() #23
  %rem = urem i32 %call.i, %4
  %neg = sub i32 0, %alignment
  %and = and i32 %rem, %neg
  %arrayidx = getelementptr %struct.bpf_binary_header, ptr %call41, i32 0, i32 2, i32 %and
  %5 = ptrtoint ptr %image_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %image_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then43, %if.end27.cleanup_crit_edge
  %retval.0 = phi ptr [ %call41, %if.end44 ], [ null, %if.then43 ], [ null, %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_jit_binary_free(ptr noundef %hdr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 8
  tail call void @bpf_jit_free_exec(ptr noundef %hdr)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %1, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !400
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @bpf_jit_free(ptr noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %jited = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %jited to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %jited, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end39

if.then:                                          ; preds = %entry
  %bpf_func.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 9
  %1 = ptrtoint ptr %bpf_func.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bpf_func.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %and.i = and i32 %3, -4096
  %4 = inttoptr i32 %and.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4096
  tail call void @bpf_jit_free_exec(ptr noundef %4) #23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bpf_jit_current, i32 noundef 4) #23
  tail call void @llvm.prefetch.p0(ptr nonnull @bpf_jit_current, i32 1, i32 3, i32 1) #23
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bpf_jit_current, ptr nonnull @bpf_jit_current, i32 %6, ptr nonnull elementtype(i32) @bpf_jit_current) #23, !srcloc !400
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %8 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux.i, align 4
  %lnode.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %9, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %lnode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lnode.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %lnode.i
  br i1 %cmp.i.not.i, label %if.then.if.end39_crit_edge, label %bpf_prog_kallsyms_verify_off.exit

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end39

bpf_prog_kallsyms_verify_off.exit:                ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %9, i32 0, i32 36, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %13, inttoptr (i32 290 to ptr)
  br i1 %cmp.i, label %bpf_prog_kallsyms_verify_off.exit.if.end39_crit_edge, label %land.rhs

bpf_prog_kallsyms_verify_off.exit.if.end39_crit_edge: ; preds = %bpf_prog_kallsyms_verify_off.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end39

land.rhs:                                         ; preds = %bpf_prog_kallsyms_verify_off.exit
  %.b45 = load i1, ptr @bpf_jit_free.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.end39_crit_edge, label %if.then10, !prof !387

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end39

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @bpf_jit_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 923, i32 noundef 9, ptr noundef null) #23
  br label %if.end39

if.end39:                                         ; preds = %if.then10, %land.rhs.if.end39_crit_edge, %bpf_prog_kallsyms_verify_off.exit.if.end39_crit_edge, %if.then.if.end39_crit_edge, %entry.if.end39_crit_edge
  tail call void @__bpf_prog_free(ptr noundef %fp) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_jit_get_func_addr(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %insn, i1 noundef zeroext %extra_pass, ptr nocapture noundef writeonly %func_addr, ptr nocapture noundef writeonly %func_addr_fixed) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %off1 = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %0 = ptrtoint ptr %off1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %off1, align 2
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %2 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imm2, align 4
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp = icmp ne i8 %bf.clear, 1
  %frombool4 = zext i1 %cmp to i8
  %5 = ptrtoint ptr %func_addr_fixed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool4, ptr %func_addr_fixed, align 1
  br i1 %cmp, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  br i1 %extra_pass, label %if.else, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end22

if.else:                                          ; preds = %if.then
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %func = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %conv8 = sext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp9 = icmp sgt i16 %1, -1
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %func_cnt = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %func_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %func_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv8)
  %cmp14 = icmp ugt i32 %11, %conv8
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #25
  %arrayidx = getelementptr ptr, ptr %9, i32 %conv8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bpf_func, align 4
  br label %if.end22

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %add.ptr = getelementptr i8, ptr @__bpf_call_base, i32 %3
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then16, %if.then.if.end22_crit_edge
  %addr.0 = phi ptr [ %add.ptr, %if.else21 ], [ %15, %if.then16 ], [ null, %if.then.if.end22_crit_edge ]
  %16 = ptrtoint ptr %addr.0 to i32
  %conv23 = zext i32 %16 to i64
  %17 = ptrtoint ptr %func_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv23, ptr %func_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @__bpf_call_base(i64 %r1, i64 %r2, i64 %r3, i64 %r4, i64 %r5) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_jit_prog_release_other(ptr noundef %fp, ptr noundef %fp_other) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fp, ptr %prog, align 4
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %fp_other, i32 0, i32 10
  %3 = ptrtoint ptr %aux.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %aux.i, align 4
  %stats.i = getelementptr inbounds %struct.bpf_prog, ptr %fp_other, i32 0, i32 7
  %4 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stats.i, align 4
  %active.i = getelementptr inbounds %struct.bpf_prog, ptr %fp_other, i32 0, i32 8
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %active.i, align 4
  tail call void @__bpf_prog_free(ptr noundef %fp_other) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_jit_blind_constants(ptr noundef %prog) local_unnamed_addr #2 align 64 {
entry:
  %insn_buff = alloca [16 x %struct.bpf_insn], align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %insn_buff) #23
  %0 = call ptr @memset(ptr %insn_buff, i32 255, i32 128)
  %jit_requested.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %1 = ptrtoint ptr %jit_requested.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %jit_requested.i, align 2
  %2 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end2.i:                                        ; preds = %entry
  %3 = load i32, ptr @bpf_jit_harden, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %3, label %if.end2.i.lor.lhs.false_crit_edge [
    i32 0, label %if.end2.i.cleanup_crit_edge
    i32 1, label %land.lhs.true.i
  ]

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end2.i.lor.lhs.false_crit_edge:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %lor.lhs.false

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call6.i = tail call zeroext i1 @capable(i32 noundef 21) #23
  br i1 %call6.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.lor.lhs.false_crit_edge

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %lor.lhs.false

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i.lor.lhs.false_crit_edge, %if.end2.i.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %jit_requested.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %jit_requested.i, align 2
  %6 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %prog to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prog, align 4
  %conv.i = zext i16 %8 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %call.i = tail call noalias ptr @__vmalloc(i32 noundef %mul.i, i32 noundef 1052096) #26
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %prog to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prog, align 4
  %conv3.i = zext i16 %10 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 12
  %11 = call ptr @memcpy(ptr %call.i, ptr %prog, i32 %mul4.i)
  %len = getelementptr inbounds %struct.bpf_prog, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp79 = icmp sgt i32 %13, 0
  br i1 %cmp79, label %for.body.lr.ph, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %call.i, i32 1
  %incdec.ptr.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 1
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %insn_buff, i32 1
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %insn_buff, i32 2
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %insn_buff, i32 4
  %incdec.ptr406.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 2
  %.compoundliteral407.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 1, i32 1
  %.compoundliteral407.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 1, i32 2
  %.compoundliteral407.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 1, i32 3
  %incdec.ptr419.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 3
  %.compoundliteral420.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 2, i32 1
  %.compoundliteral420.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 2, i32 2
  %.compoundliteral420.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 2, i32 3
  %incdec.ptr307.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 4
  %.compoundliteral308.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 3, i32 1
  %.compoundliteral308.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 3, i32 2
  %.compoundliteral308.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.bpf_insn, ptr %insn_buff, i32 3, i32 3
  %sub.ptr.rhs.cast.i = ptrtoint ptr %insn_buff to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %insn.085 = phi ptr [ %insnsi, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %insn_cnt.084 = phi i32 [ %13, %for.body.lr.ph ], [ %insn_cnt.1, %for.inc.for.body_crit_edge ]
  %clone.083 = phi ptr [ %call.i, %for.body.lr.ph ], [ %clone.1, %for.inc.for.body_crit_edge ]
  %aux.sroa.4.082 = phi i8 [ -1, %for.body.lr.ph ], [ %aux.sroa.4.1, %for.inc.for.body_crit_edge ]
  %aux.sroa.8.081 = phi i32 [ -1, %for.body.lr.ph ], [ %aux.sroa.8.1, %for.inc.for.body_crit_edge ]
  %aux.sroa.13.080 = phi i32 [ -1, %for.body.lr.ph ], [ %aux.sroa.13.1, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %insn.085, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %15)
  %cmp8 = icmp eq i8 %15, 24
  br i1 %cmp8, label %land.lhs.true, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body
  %arrayidx10 = getelementptr %struct.bpf_insn, ptr %insn.085, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp13 = icmp eq i8 %17, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #25
  %aux.sroa.4.0.insn.0.sroa_idx = getelementptr inbounds i8, ptr %insn.085, i32 1
  %18 = ptrtoint ptr %aux.sroa.4.0.insn.0.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %aux.sroa.4.0.copyload = load i8, ptr %aux.sroa.4.0.insn.0.sroa_idx, align 1
  %aux.sroa.8.0.insn.0.sroa_idx = getelementptr inbounds i8, ptr %insn.085, i32 4
  %19 = ptrtoint ptr %aux.sroa.8.0.insn.0.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %aux.sroa.8.0.copyload = load i32, ptr %aux.sroa.8.0.insn.0.sroa_idx, align 4
  %aux.sroa.13.0.insn.0.sroa_idx = getelementptr inbounds i8, ptr %insn.085, i32 12
  %20 = ptrtoint ptr %aux.sroa.13.0.insn.0.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %aux.sroa.13.0.copyload = load i32, ptr %aux.sroa.13.0.insn.0.sroa_idx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %aux.sroa.13.1 = phi i32 [ %aux.sroa.13.0.copyload, %if.then15 ], [ %aux.sroa.13.080, %land.lhs.true.if.end17_crit_edge ], [ %aux.sroa.13.080, %for.body.if.end17_crit_edge ]
  %aux.sroa.8.1 = phi i32 [ %aux.sroa.8.0.copyload, %if.then15 ], [ %aux.sroa.8.081, %land.lhs.true.if.end17_crit_edge ], [ %aux.sroa.8.081, %for.body.if.end17_crit_edge ]
  %aux.sroa.4.1 = phi i8 [ %aux.sroa.4.0.copyload, %if.then15 ], [ %aux.sroa.4.082, %land.lhs.true.if.end17_crit_edge ], [ %aux.sroa.4.082, %for.body.if.end17_crit_edge ]
  %aux20 = getelementptr inbounds %struct.bpf_prog, ptr %clone.083, i32 0, i32 10
  %21 = ptrtoint ptr %aux20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux20, align 4
  %verifier_zext = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %verifier_zext to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %verifier_zext, align 8, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  %call.i.i = call i32 @get_random_u32() #23
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.085, i32 0, i32 1
  %25 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i73 = load i8, ptr %dst_reg.i, align 1
  %bf.lshr.mask.i = and i8 %bf.load.i73, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, -80
  %bf.clear.i = and i8 %bf.load.i73, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %bf.clear.i)
  %cmp7.i = icmp eq i8 %bf.clear.i, 11
  %or.cond.i = or i1 %cmp.i, %cmp7.i
  br i1 %or.cond.i, label %if.end17.for.inc_crit_edge, label %if.end.i

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end.i:                                         ; preds = %if.end17
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.085, i32 0, i32 3
  %26 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %insn.085, align 4
  br i1 %cmp9.i, label %land.lhs.true.i74, label %if.end.i.if.end37.i_crit_edge

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end37.i

land.lhs.true.i74:                                ; preds = %if.end.i
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %29, label %land.lhs.true.i74.if.end37.i_crit_edge [
    i8 -76, label %land.lhs.true.i74.if.then19.i_crit_edge
    i8 -73, label %land.lhs.true.i74.if.then19.i_crit_edge111
  ]

land.lhs.true.i74.if.then19.i_crit_edge111:       ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then19.i

land.lhs.true.i74.if.then19.i_crit_edge:          ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then19.i

land.lhs.true.i74.if.end37.i_crit_edge:           ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end37.i

if.then19.i:                                      ; preds = %land.lhs.true.i74.if.then19.i_crit_edge, %land.lhs.true.i74.if.then19.i_crit_edge111
  %bf.lshr24.i = lshr i8 %bf.load.i73, 4
  %bf.set34.i = or i8 %bf.lshr.mask.i, %bf.lshr24.i
  %31 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -81, ptr %insn_buff, align 4
  %32 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.set34.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

if.end37.i:                                       ; preds = %land.lhs.true.i74.if.end37.i_crit_edge, %if.end.i.if.end37.i_crit_edge
  %34 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %29, label %if.end37.i.for.inc_crit_edge [
    i8 4, label %if.end37.i.sw.bb.i_crit_edge
    i8 20, label %if.end37.i.sw.bb.i_crit_edge112
    i8 84, label %if.end37.i.sw.bb.i_crit_edge113
    i8 68, label %if.end37.i.sw.bb.i_crit_edge114
    i8 -92, label %if.end37.i.sw.bb.i_crit_edge115
    i8 36, label %if.end37.i.sw.bb.i_crit_edge116
    i8 -76, label %if.end37.i.sw.bb.i_crit_edge117
    i8 52, label %if.end37.i.sw.bb.i_crit_edge118
    i8 -108, label %if.end37.i.sw.bb.i_crit_edge119
    i8 7, label %if.end37.i.sw.bb89.i_crit_edge
    i8 23, label %if.end37.i.sw.bb89.i_crit_edge120
    i8 87, label %if.end37.i.sw.bb89.i_crit_edge121
    i8 71, label %if.end37.i.sw.bb89.i_crit_edge122
    i8 -89, label %if.end37.i.sw.bb89.i_crit_edge123
    i8 39, label %if.end37.i.sw.bb89.i_crit_edge124
    i8 -73, label %if.end37.i.sw.bb89.i_crit_edge125
    i8 55, label %if.end37.i.sw.bb89.i_crit_edge126
    i8 -105, label %if.end37.i.sw.bb89.i_crit_edge127
    i8 21, label %if.end37.i.sw.bb142.i_crit_edge
    i8 85, label %if.end37.i.sw.bb142.i_crit_edge128
    i8 37, label %if.end37.i.sw.bb142.i_crit_edge129
    i8 -91, label %if.end37.i.sw.bb142.i_crit_edge130
    i8 53, label %if.end37.i.sw.bb142.i_crit_edge131
    i8 -75, label %if.end37.i.sw.bb142.i_crit_edge132
    i8 101, label %if.end37.i.sw.bb142.i_crit_edge133
    i8 -59, label %if.end37.i.sw.bb142.i_crit_edge134
    i8 117, label %if.end37.i.sw.bb142.i_crit_edge135
    i8 -43, label %if.end37.i.sw.bb142.i_crit_edge136
    i8 69, label %if.end37.i.sw.bb142.i_crit_edge137
    i8 22, label %if.end37.i.sw.bb203.i_crit_edge
    i8 86, label %if.end37.i.sw.bb203.i_crit_edge138
    i8 38, label %if.end37.i.sw.bb203.i_crit_edge139
    i8 -90, label %if.end37.i.sw.bb203.i_crit_edge140
    i8 54, label %if.end37.i.sw.bb203.i_crit_edge141
    i8 -74, label %if.end37.i.sw.bb203.i_crit_edge142
    i8 102, label %if.end37.i.sw.bb203.i_crit_edge143
    i8 -58, label %if.end37.i.sw.bb203.i_crit_edge144
    i8 118, label %if.end37.i.sw.bb203.i_crit_edge145
    i8 -42, label %if.end37.i.sw.bb203.i_crit_edge146
    i8 70, label %if.end37.i.sw.bb203.i_crit_edge147
    i8 24, label %sw.bb265.i
    i8 0, label %sw.bb326.i
    i8 122, label %if.end37.i.sw.bb390.i_crit_edge
    i8 98, label %if.end37.i.sw.bb390.i_crit_edge148
    i8 106, label %if.end37.i.sw.bb390.i_crit_edge149
    i8 114, label %if.end37.i.sw.bb390.i_crit_edge150
  ]

if.end37.i.sw.bb390.i_crit_edge150:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb390.i

if.end37.i.sw.bb390.i_crit_edge149:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb390.i

if.end37.i.sw.bb390.i_crit_edge148:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb390.i

if.end37.i.sw.bb390.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb390.i

if.end37.i.sw.bb203.i_crit_edge147:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge146:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge145:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge144:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge143:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge142:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge141:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge140:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge139:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge138:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb203.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb203.i

if.end37.i.sw.bb142.i_crit_edge137:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge136:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge135:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge134:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge133:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge132:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge131:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge130:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge129:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge128:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb142.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb142.i

if.end37.i.sw.bb89.i_crit_edge127:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge126:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge125:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge124:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge123:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge122:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge121:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge120:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb89.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb89.i

if.end37.i.sw.bb.i_crit_edge119:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge118:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge117:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge116:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge115:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge114:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge113:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge112:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.sw.bb.i_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %sw.bb.i

if.end37.i.for.inc_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

sw.bb.i:                                          ; preds = %if.end37.i.sw.bb.i_crit_edge, %if.end37.i.sw.bb.i_crit_edge112, %if.end37.i.sw.bb.i_crit_edge113, %if.end37.i.sw.bb.i_crit_edge114, %if.end37.i.sw.bb.i_crit_edge115, %if.end37.i.sw.bb.i_crit_edge116, %if.end37.i.sw.bb.i_crit_edge117, %if.end37.i.sw.bb.i_crit_edge118, %if.end37.i.sw.bb.i_crit_edge119
  %xor.i = xor i32 %27, %call.i.i
  %35 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -76, ptr %insn_buff, align 4
  %36 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %38 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -92, ptr %incdec.ptr.i, align 4
  %40 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %41 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %42 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %43 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %insn.085, align 4
  %45 = and i8 %44, -16
  %46 = or i8 %45, 12
  %47 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load76.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr77.i = and i8 %bf.load76.i, -16
  %bf.set86.i = or i8 %bf.lshr77.i, 11
  %48 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %46, ptr %incdec.ptr406.i, align 4
  %49 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %bf.set86.i, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %50 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

sw.bb89.i:                                        ; preds = %if.end37.i.sw.bb89.i_crit_edge, %if.end37.i.sw.bb89.i_crit_edge120, %if.end37.i.sw.bb89.i_crit_edge121, %if.end37.i.sw.bb89.i_crit_edge122, %if.end37.i.sw.bb89.i_crit_edge123, %if.end37.i.sw.bb89.i_crit_edge124, %if.end37.i.sw.bb89.i_crit_edge125, %if.end37.i.sw.bb89.i_crit_edge126, %if.end37.i.sw.bb89.i_crit_edge127
  %xor104.i = xor i32 %27, %call.i.i
  %51 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -73, ptr %insn_buff, align 4
  %52 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %53 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %54 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %xor104.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %55 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -89, ptr %incdec.ptr.i, align 4
  %56 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %57 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %58 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %59 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %insn.085, align 4
  %61 = or i8 %60, 15
  %62 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load129.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr130.i = and i8 %bf.load129.i, -16
  %bf.set139.i = or i8 %bf.lshr130.i, 11
  %63 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %incdec.ptr406.i, align 4
  %64 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set139.i, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %65 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

sw.bb142.i:                                       ; preds = %if.end37.i.sw.bb142.i_crit_edge, %if.end37.i.sw.bb142.i_crit_edge128, %if.end37.i.sw.bb142.i_crit_edge129, %if.end37.i.sw.bb142.i_crit_edge130, %if.end37.i.sw.bb142.i_crit_edge131, %if.end37.i.sw.bb142.i_crit_edge132, %if.end37.i.sw.bb142.i_crit_edge133, %if.end37.i.sw.bb142.i_crit_edge134, %if.end37.i.sw.bb142.i_crit_edge135, %if.end37.i.sw.bb142.i_crit_edge136, %if.end37.i.sw.bb142.i_crit_edge137
  %off143.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.085, i32 0, i32 2
  %66 = ptrtoint ptr %off143.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %off143.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp145.i = icmp slt i16 %67, 0
  %sub.i = add i16 %67, -2
  %spec.select.i = select i1 %cmp145.i, i16 %sub.i, i16 %67
  %xor165.i = xor i32 %27, %call.i.i
  %68 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -73, ptr %insn_buff, align 4
  %69 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %70 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %71 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %xor165.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %72 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -89, ptr %incdec.ptr.i, align 4
  %73 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %74 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %75 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %76 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %insn.085, align 4
  %78 = and i8 %77, -16
  %79 = or i8 %78, 13
  %80 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load190.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr191.i = and i8 %bf.load190.i, -16
  %bf.set200.i = or i8 %bf.lshr191.i, 11
  %81 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %79, ptr %incdec.ptr406.i, align 4
  %82 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bf.set200.i, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %83 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %spec.select.i, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

sw.bb203.i:                                       ; preds = %if.end37.i.sw.bb203.i_crit_edge, %if.end37.i.sw.bb203.i_crit_edge138, %if.end37.i.sw.bb203.i_crit_edge139, %if.end37.i.sw.bb203.i_crit_edge140, %if.end37.i.sw.bb203.i_crit_edge141, %if.end37.i.sw.bb203.i_crit_edge142, %if.end37.i.sw.bb203.i_crit_edge143, %if.end37.i.sw.bb203.i_crit_edge144, %if.end37.i.sw.bb203.i_crit_edge145, %if.end37.i.sw.bb203.i_crit_edge146, %if.end37.i.sw.bb203.i_crit_edge147
  %off204.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.085, i32 0, i32 2
  %84 = ptrtoint ptr %off204.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %off204.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp206.i = icmp slt i16 %85, 0
  %sub210.i = add i16 %85, -2
  %spec.select515.i = select i1 %cmp206.i, i16 %sub210.i, i16 %85
  %xor227.i = xor i32 %27, %call.i.i
  %86 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -76, ptr %insn_buff, align 4
  %87 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %88 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %89 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %xor227.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %90 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -92, ptr %incdec.ptr.i, align 4
  %91 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %92 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %93 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %94 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %insn.085, align 4
  %96 = and i8 %95, -16
  %97 = or i8 %96, 14
  %98 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load252.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr253.i = and i8 %bf.load252.i, -16
  %bf.set262.i = or i8 %bf.lshr253.i, 11
  %99 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %97, ptr %incdec.ptr406.i, align 4
  %100 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %bf.set262.i, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %101 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %spec.select515.i, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

sw.bb265.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #25
  %xor280.i = xor i32 %call.i.i, %aux.sroa.13.1
  %102 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -73, ptr %insn_buff, align 4
  %103 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %104 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %105 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %xor280.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %106 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -89, ptr %incdec.ptr.i, align 4
  %107 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %108 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %109 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %110 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 103, ptr %incdec.ptr406.i, align 4
  %111 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -80, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %112 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  %113 = ptrtoint ptr %.compoundliteral420.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 32, ptr %.compoundliteral420.sroa.7.0..sroa_idx.i, align 4
  %bf.lshr314.i = and i8 %aux.sroa.4.1, -16
  %bf.set323.i = or i8 %bf.lshr314.i, 11
  %114 = ptrtoint ptr %incdec.ptr419.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -65, ptr %incdec.ptr419.i, align 4
  %115 = ptrtoint ptr %.compoundliteral308.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %bf.set323.i, ptr %.compoundliteral308.sroa.2.0..sroa_idx.i, align 1
  %116 = ptrtoint ptr %.compoundliteral308.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %.compoundliteral308.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

sw.bb326.i:                                       ; preds = %if.end37.i
  %xor342.i = xor i32 %call.i.i, %aux.sroa.8.1
  %117 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -76, ptr %insn_buff, align 4
  %118 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %119 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %120 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %xor342.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %121 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -92, ptr %incdec.ptr.i, align 4
  %122 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %123 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %124 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  br i1 %tobool21.not, label %sw.bb326.i.bpf_jit_blind_insn.exit_crit_edge, label %if.then356.i

sw.bb326.i.bpf_jit_blind_insn.exit_crit_edge:     ; preds = %sw.bb326.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_jit_blind_insn.exit

if.then356.i:                                     ; preds = %sw.bb326.i
  call void @__sanitizer_cov_trace_pc() #25
  %125 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -68, ptr %incdec.ptr406.i, align 4
  %126 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -69, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %127 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  %128 = ptrtoint ptr %.compoundliteral420.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %.compoundliteral420.sroa.7.0..sroa_idx.i, align 4
  br label %bpf_jit_blind_insn.exit

sw.bb390.i:                                       ; preds = %if.end37.i.sw.bb390.i_crit_edge, %if.end37.i.sw.bb390.i_crit_edge148, %if.end37.i.sw.bb390.i_crit_edge149, %if.end37.i.sw.bb390.i_crit_edge150
  %xor405.i = xor i32 %27, %call.i.i
  %129 = ptrtoint ptr %insn_buff to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -73, ptr %insn_buff, align 4
  %130 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -80, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %131 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 2
  %132 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %xor405.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %133 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -89, ptr %incdec.ptr.i, align 4
  %134 = ptrtoint ptr %.compoundliteral407.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -80, ptr %.compoundliteral407.sroa.2.0..sroa_idx.i, align 1
  %135 = ptrtoint ptr %.compoundliteral407.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %.compoundliteral407.sroa.6.0..sroa_idx.i, align 2
  %136 = ptrtoint ptr %.compoundliteral407.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call.i.i, ptr %.compoundliteral407.sroa.7.0..sroa_idx.i, align 4
  %137 = ptrtoint ptr %insn.085 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %insn.085, align 4
  %139 = and i8 %138, 24
  %140 = or i8 %139, 99
  %141 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load430.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr431.i = and i8 %bf.load430.i, -16
  %bf.set440.i = or i8 %bf.lshr431.i, 11
  %off442.i = getelementptr inbounds %struct.bpf_insn, ptr %insn.085, i32 0, i32 2
  %142 = ptrtoint ptr %off442.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %off442.i, align 2
  %144 = ptrtoint ptr %incdec.ptr406.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %140, ptr %incdec.ptr406.i, align 4
  %145 = ptrtoint ptr %.compoundliteral420.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %bf.set440.i, ptr %.compoundliteral420.sroa.2.0..sroa_idx.i, align 1
  %146 = ptrtoint ptr %.compoundliteral420.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %143, ptr %.compoundliteral420.sroa.6.0..sroa_idx.i, align 2
  br label %bpf_jit_blind_insn.exit.thread97

bpf_jit_blind_insn.exit.thread97:                 ; preds = %sw.bb390.i, %sw.bb265.i, %sw.bb203.i, %sw.bb142.i, %sw.bb89.i, %sw.bb.i, %if.then19.i
  %.compoundliteral68.sroa.7.0..sroa_idx.sink.i.ph = phi ptr [ %.compoundliteral.sroa.7.0..sroa_idx.i, %if.then19.i ], [ %.compoundliteral420.sroa.7.0..sroa_idx.i, %sw.bb390.i ], [ %.compoundliteral308.sroa.7.0..sroa_idx.i, %sw.bb265.i ], [ %.compoundliteral420.sroa.7.0..sroa_idx.i, %sw.bb203.i ], [ %.compoundliteral420.sroa.7.0..sroa_idx.i, %sw.bb142.i ], [ %.compoundliteral420.sroa.7.0..sroa_idx.i, %sw.bb89.i ], [ %.compoundliteral420.sroa.7.0..sroa_idx.i, %sw.bb.i ]
  %to.1.ph.i.ph = phi ptr [ %incdec.ptr.i, %if.then19.i ], [ %incdec.ptr419.i, %sw.bb390.i ], [ %incdec.ptr307.i, %sw.bb265.i ], [ %incdec.ptr419.i, %sw.bb203.i ], [ %incdec.ptr419.i, %sw.bb142.i ], [ %incdec.ptr419.i, %sw.bb89.i ], [ %incdec.ptr419.i, %sw.bb.i ]
  %147 = ptrtoint ptr %.compoundliteral68.sroa.7.0..sroa_idx.sink.i.ph to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %.compoundliteral68.sroa.7.0..sroa_idx.sink.i.ph, align 4
  br label %if.end25

bpf_jit_blind_insn.exit:                          ; preds = %if.then356.i, %sw.bb326.i.bpf_jit_blind_insn.exit_crit_edge
  %to.0.i = phi ptr [ %incdec.ptr419.i, %if.then356.i ], [ %incdec.ptr406.i, %sw.bb326.i.bpf_jit_blind_insn.exit_crit_edge ]
  %incdec.ptr371.i = getelementptr %struct.bpf_insn, ptr %to.0.i, i32 1
  %bf.lshr378.i = and i8 %aux.sroa.4.1, -16
  %bf.set387.i = or i8 %bf.lshr378.i, 11
  %148 = ptrtoint ptr %to.0.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 79, ptr %to.0.i, align 4
  %.compoundliteral372.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %to.0.i, i32 1
  %149 = ptrtoint ptr %.compoundliteral372.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %bf.set387.i, ptr %.compoundliteral372.sroa.2.0..sroa_idx.i, align 1
  %.compoundliteral372.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %to.0.i, i32 2
  %150 = ptrtoint ptr %.compoundliteral372.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %.compoundliteral372.sroa.6.0..sroa_idx.i, align 2
  %.compoundliteral372.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %to.0.i, i32 4
  %151 = ptrtoint ptr %.compoundliteral372.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %.compoundliteral372.sroa.7.0..sroa_idx.i, align 4
  %tobool23.not = icmp eq ptr %incdec.ptr371.i, %insn_buff
  br i1 %tobool23.not, label %bpf_jit_blind_insn.exit.for.inc_crit_edge, label %bpf_jit_blind_insn.exit.if.end25_crit_edge

bpf_jit_blind_insn.exit.if.end25_crit_edge:       ; preds = %bpf_jit_blind_insn.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end25

bpf_jit_blind_insn.exit.for.inc_crit_edge:        ; preds = %bpf_jit_blind_insn.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end25:                                         ; preds = %bpf_jit_blind_insn.exit.if.end25_crit_edge, %bpf_jit_blind_insn.exit.thread97
  %.pre100.pn.in = phi ptr [ %to.1.ph.i.ph, %bpf_jit_blind_insn.exit.thread97 ], [ %incdec.ptr371.i, %bpf_jit_blind_insn.exit.if.end25_crit_edge ]
  %.pre100.pn = ptrtoint ptr %.pre100.pn.in to i32
  %sub.ptr.div.i104.in = sub i32 %.pre100.pn, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i104 = ashr exact i32 %sub.ptr.div.i104.in, 3
  %call27 = call ptr @bpf_patch_insn_single(ptr noundef %clone.083, i32 noundef %i.089, ptr noundef nonnull %insn_buff, i32 noundef %sub.ptr.div.i104)
  %cmp.i75 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #25
  %aux20.le = getelementptr inbounds %struct.bpf_prog, ptr %clone.083, i32 0, i32 10
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %152 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %aux.i, align 4
  %prog.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %153, i32 0, i32 41
  %154 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %prog, ptr %prog.i, align 4
  %155 = ptrtoint ptr %aux20.le to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %aux20.le, align 4
  %stats.i.i = getelementptr inbounds %struct.bpf_prog, ptr %clone.083, i32 0, i32 7
  %156 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %stats.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.bpf_prog, ptr %clone.083, i32 0, i32 8
  %157 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %active.i.i, align 4
  call void @__bpf_prog_free(ptr noundef %clone.083) #23
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #25
  %sub = add nsw i32 %sub.ptr.div.i104, -1
  %insnsi31 = getelementptr inbounds %struct.bpf_prog, ptr %call27, i32 1
  %add.ptr = getelementptr %struct.bpf_insn, ptr %insnsi31, i32 %i.089
  %add.ptr33 = getelementptr %struct.bpf_insn, ptr %add.ptr, i32 %sub
  %add = add i32 %sub, %insn_cnt.084
  %add34 = add i32 %sub, %i.089
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %bpf_jit_blind_insn.exit.for.inc_crit_edge, %if.end37.i.for.inc_crit_edge, %if.end17.for.inc_crit_edge
  %clone.1 = phi ptr [ %call27, %if.end30 ], [ %clone.083, %bpf_jit_blind_insn.exit.for.inc_crit_edge ], [ %clone.083, %if.end17.for.inc_crit_edge ], [ %clone.083, %if.end37.i.for.inc_crit_edge ]
  %insn_cnt.1 = phi i32 [ %add, %if.end30 ], [ %insn_cnt.084, %bpf_jit_blind_insn.exit.for.inc_crit_edge ], [ %insn_cnt.084, %if.end17.for.inc_crit_edge ], [ %insn_cnt.084, %if.end37.i.for.inc_crit_edge ]
  %insn.1 = phi ptr [ %add.ptr33, %if.end30 ], [ %insn.085, %bpf_jit_blind_insn.exit.for.inc_crit_edge ], [ %insn.085, %if.end17.for.inc_crit_edge ], [ %insn.085, %if.end37.i.for.inc_crit_edge ]
  %i.1 = phi i32 [ %add34, %if.end30 ], [ %i.089, %bpf_jit_blind_insn.exit.for.inc_crit_edge ], [ %i.089, %if.end17.for.inc_crit_edge ], [ %i.089, %if.end37.i.for.inc_crit_edge ]
  %inc = add i32 %i.1, 1
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn.1, i32 1
  %cmp = icmp slt i32 %inc, %insn_cnt.1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %clone.0.lcssa = phi ptr [ %call.i, %if.end5.for.end_crit_edge ], [ %clone.1, %for.inc.for.end_crit_edge ]
  %blinded35 = getelementptr inbounds %struct.bpf_prog, ptr %clone.0.lcssa, i32 0, i32 1
  %158 = ptrtoint ptr %blinded35 to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load36 = load i16, ptr %blinded35, align 2
  %bf.set = or i16 %bf.load36, 1024
  store i16 %bf.set, ptr %blinded35, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then29, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call27, %if.then29 ], [ %clone.0.lcssa, %for.end ], [ %prog, %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %prog, %entry.cleanup_crit_edge ], [ %prog, %if.end2.i.cleanup_crit_edge ], [ %prog, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %insn_buff) #23
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_opcode_in_insntable(i8 noundef zeroext %code) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %code to i32
  %arrayidx = getelementptr [256 x i8], ptr @bpf_opcode_in_insntable.public_insntable, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_prog_array_compatible(ptr nocapture noundef readonly %array, ptr nocapture noundef readonly %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %kprobe_override = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %kprobe_override to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %kprobe_override, align 2
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.bpf_array, ptr %array, i32 0, i32 3
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 8
  tail call void @_raw_spin_lock(ptr noundef %3) #23
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 8
  %type = getelementptr inbounds %struct.anon.199, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %type5 = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 2
  %8 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type5, align 4
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type, align 4
  %11 = ptrtoint ptr %kprobe_override to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load9 = load i16, ptr %kprobe_override, align 2
  %12 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux, align 8
  %jited14 = getelementptr inbounds %struct.anon.199, ptr %13, i32 0, i32 2
  %bf.load9.lobit = lshr i16 %bf.load9, 15
  %14 = trunc i16 %bf.load9.lobit to i8
  %15 = ptrtoint ptr %jited14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %jited14, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.rhs, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end30

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  %jited21 = getelementptr inbounds %struct.anon.199, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %jited21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %jited21, align 4, !range !396
  %18 = ptrtoint ptr %kprobe_override to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load24 = load i16, ptr %kprobe_override, align 2
  %bf.lshr25 = lshr i16 %bf.load24, 15
  %19 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr25, i16 %19)
  %cmp27 = icmp eq i16 %bf.lshr25, %19
  br label %if.end30

if.end30:                                         ; preds = %land.rhs, %if.else.if.end30_crit_edge, %if.then4
  %ret.0.off0 = phi i1 [ true, %if.then4 ], [ false, %if.else.if.end30_crit_edge ], [ %cmp27, %land.rhs ]
  %20 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux, align 8
  tail call void @_raw_spin_unlock(ptr noundef %21) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %if.end30 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_select_runtime(ptr noundef %fp, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.finalize_crit_edge

entry.finalize_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %finalize

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bpf_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__bpf_prog_ret0_warn, ptr %bpf_func, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %3 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux, align 4
  %offload_requested.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %offload_requested.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offload_requested.i, align 1, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %nr_linfo.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 55
  %7 = ptrtoint ptr %nr_linfo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_linfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then1.if.end5_crit_edge, label %lor.lhs.false.i

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.then1
  %jit_requested.i = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 1
  %9 = ptrtoint ptr %jit_requested.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %jit_requested.i, align 2
  %10 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not.i = icmp eq i16 %10, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end5_crit_edge, label %if.end.i

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #23
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end.i.kvcalloc.exit.i_crit_edge, label %if.end.i.i.i, !prof !386

if.end.i.kvcalloc.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %kvcalloc.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %13 = extractvalue { i32, i1 } %11, 0
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 4206016, i32 noundef -1) #26
  br label %kvcalloc.exit.i

kvcalloc.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.kvcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i.i, %if.end.i.i.i ], [ null, %if.end.i.kvcalloc.exit.i_crit_edge ]
  %14 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux, align 4
  %jited_linfo.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %jited_linfo.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i.i, ptr %jited_linfo.i, align 4
  %17 = load ptr, ptr %aux, align 4
  %jited_linfo6.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %jited_linfo6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jited_linfo6.i, align 4
  %tobool7.not.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i, label %kvcalloc.exit.i.cleanup.sink.split_crit_edge, label %kvcalloc.exit.i.if.end5_crit_edge

kvcalloc.exit.i.if.end5_crit_edge:                ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end5

kvcalloc.exit.i.cleanup.sink.split_crit_edge:     ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup.sink.split

if.end5:                                          ; preds = %kvcalloc.exit.i.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %if.then1.if.end5_crit_edge
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %err, align 4
  %call6 = tail call ptr @bpf_int_jit_compile(ptr noundef %fp)
  %aux.i35 = getelementptr inbounds %struct.bpf_prog, ptr %call6, i32 0, i32 10
  %21 = ptrtoint ptr %aux.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux.i35, align 4
  %jited_linfo.i36 = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %jited_linfo.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %jited_linfo.i36, align 4
  %tobool.not.i37 = icmp eq ptr %24, null
  br i1 %tobool.not.i37, label %if.end5.bpf_prog_jit_attempt_done.exit_crit_edge, label %land.lhs.true.i

if.end5.bpf_prog_jit_attempt_done.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_jit_attempt_done.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %jited.i = getelementptr inbounds %struct.bpf_prog, ptr %call6, i32 0, i32 1
  %25 = ptrtoint ptr %jited.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i38 = load i16, ptr %jited.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38)
  %tobool1.not.i39 = icmp sgt i16 %bf.load.i38, -1
  br i1 %tobool1.not.i39, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i40

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then.i

lor.lhs.false.i40:                                ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i40.if.then.i_crit_edge, label %lor.lhs.false.i40.bpf_prog_jit_attempt_done.exit_crit_edge

lor.lhs.false.i40.bpf_prog_jit_attempt_done.exit_crit_edge: ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_jit_attempt_done.exit

lor.lhs.false.i40.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i40.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %24) #23
  %28 = ptrtoint ptr %aux.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aux.i35, align 4
  %jited_linfo8.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %jited_linfo8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %jited_linfo8.i, align 4
  br label %bpf_prog_jit_attempt_done.exit

bpf_prog_jit_attempt_done.exit:                   ; preds = %if.then.i, %lor.lhs.false.i40.bpf_prog_jit_attempt_done.exit_crit_edge, %if.end5.bpf_prog_jit_attempt_done.exit_crit_edge
  %31 = ptrtoint ptr %aux.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aux.i35, align 4
  %kfunc_tab.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %kfunc_tab.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kfunc_tab.i, align 4
  tail call void @kfree(ptr noundef %34) #23
  %35 = ptrtoint ptr %aux.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aux.i35, align 4
  %kfunc_tab11.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %kfunc_tab11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %kfunc_tab11.i, align 4
  %jited = getelementptr inbounds %struct.bpf_prog, ptr %call6, i32 0, i32 1
  %38 = ptrtoint ptr %jited to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %jited, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool7.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool7.not, label %bpf_prog_jit_attempt_done.exit.cleanup.sink.split_crit_edge, label %bpf_prog_jit_attempt_done.exit.finalize_crit_edge

bpf_prog_jit_attempt_done.exit.finalize_crit_edge: ; preds = %bpf_prog_jit_attempt_done.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %finalize

bpf_prog_jit_attempt_done.exit.cleanup.sink.split_crit_edge: ; preds = %bpf_prog_jit_attempt_done.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call11 = tail call i32 @bpf_prog_offload_compile(ptr noundef %fp) #23
  %39 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call11, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.finalize_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.else.finalize_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #25
  br label %finalize

finalize:                                         ; preds = %if.else.finalize_crit_edge, %bpf_prog_jit_attempt_done.exit.finalize_crit_edge, %entry.finalize_crit_edge
  %fp.addr.0 = phi ptr [ %fp, %entry.finalize_crit_edge ], [ %fp, %if.else.finalize_crit_edge ], [ %call6, %bpf_prog_jit_attempt_done.exit.finalize_crit_edge ]
  %aux1.i = getelementptr inbounds %struct.bpf_prog, ptr %fp.addr.0, i32 0, i32 10
  %40 = ptrtoint ptr %aux1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aux1.i, align 4
  %used_maps_mutex.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %41, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %used_maps_mutex.i, i32 noundef 0) #23
  %used_map_cnt.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %used_map_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used_map_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp28.not.i = icmp eq i32 %43, 0
  br i1 %cmp28.not.i, label %finalize.bpf_check_tail_call.exit_crit_edge, label %for.body.lr.ph.i

finalize.bpf_check_tail_call.exit_crit_edge:      ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_check_tail_call.exit

for.body.lr.ph.i:                                 ; preds = %finalize
  %used_maps.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %41, i32 0, i32 38
  %kprobe_override.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp.addr.0, i32 0, i32 1
  %type5.i.i = getelementptr inbounds %struct.bpf_prog, ptr %fp.addr.0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %used_maps.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %used_maps.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %45, i32 %i.029.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp2.not.i = icmp eq i32 %49, 3
  br i1 %cmp2.not.i, label %if.end.i42, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.end.i42:                                       ; preds = %for.body.i
  %50 = ptrtoint ptr %kprobe_override.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i = load i16, ptr %kprobe_override.i.i, align 2
  %51 = and i16 %bf.load.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i42.bpf_check_tail_call.exit_crit_edge

if.end.i42.bpf_check_tail_call.exit_crit_edge:    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_check_tail_call.exit

if.end.i.i:                                       ; preds = %if.end.i42
  %aux.i.i = getelementptr inbounds %struct.bpf_array, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aux.i.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %53) #23
  %54 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %aux.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.anon.199, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool3.not.i.i = icmp eq i32 %57, 0
  %58 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type5.i.i, align 4
  br i1 %tobool3.not.i.i, label %bpf_prog_array_compatible.exit.thread19.i, label %if.else.i.i

bpf_prog_array_compatible.exit.thread19.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %60 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %type.i.i, align 4
  %61 = ptrtoint ptr %kprobe_override.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load9.i.i = load i16, ptr %kprobe_override.i.i, align 2
  %62 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aux.i.i, align 8
  %jited14.i.i = getelementptr inbounds %struct.anon.199, ptr %63, i32 0, i32 2
  %bf.load9.lobit.i.i = lshr i16 %bf.load9.i.i, 15
  %64 = trunc i16 %bf.load9.lobit.i.i to i8
  %65 = ptrtoint ptr %jited14.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %jited14.i.i, align 4
  %66 = load ptr, ptr %aux.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %66) #23
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i.i = icmp eq i32 %57, %59
  br i1 %cmp.i.i, label %bpf_prog_array_compatible.exit.i, label %bpf_prog_array_compatible.exit.thread22.i

bpf_prog_array_compatible.exit.thread22.i:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @_raw_spin_unlock(ptr noundef %55) #23
  br label %bpf_check_tail_call.exit

bpf_prog_array_compatible.exit.i:                 ; preds = %if.else.i.i
  %jited21.i.i = getelementptr inbounds %struct.anon.199, ptr %55, i32 0, i32 2
  %67 = ptrtoint ptr %jited21.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %jited21.i.i, align 4, !range !396
  %69 = ptrtoint ptr %kprobe_override.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load24.i.i = load i16, ptr %kprobe_override.i.i, align 2
  %bf.lshr25.i.i = lshr i16 %bf.load24.i.i, 15
  %70 = zext i8 %68 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr25.i.i, i16 %70)
  %cmp27.i.i = icmp eq i16 %bf.lshr25.i.i, %70
  tail call void @_raw_spin_unlock(ptr noundef %55) #23
  br i1 %cmp27.i.i, label %bpf_prog_array_compatible.exit.i.for.inc.i_crit_edge, label %bpf_prog_array_compatible.exit.i.bpf_check_tail_call.exit_crit_edge

bpf_prog_array_compatible.exit.i.bpf_check_tail_call.exit_crit_edge: ; preds = %bpf_prog_array_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_check_tail_call.exit

bpf_prog_array_compatible.exit.i.for.inc.i_crit_edge: ; preds = %bpf_prog_array_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

for.inc.i:                                        ; preds = %bpf_prog_array_compatible.exit.i.for.inc.i_crit_edge, %bpf_prog_array_compatible.exit.thread19.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.029.i, 1
  %71 = ptrtoint ptr %used_map_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used_map_cnt.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %72
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bpf_check_tail_call.exit_crit_edge

for.inc.i.bpf_check_tail_call.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_check_tail_call.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

bpf_check_tail_call.exit:                         ; preds = %for.inc.i.bpf_check_tail_call.exit_crit_edge, %bpf_prog_array_compatible.exit.i.bpf_check_tail_call.exit_crit_edge, %bpf_prog_array_compatible.exit.thread22.i, %if.end.i42.bpf_check_tail_call.exit_crit_edge, %finalize.bpf_check_tail_call.exit_crit_edge
  %ret.2.i = phi i32 [ -22, %bpf_prog_array_compatible.exit.thread22.i ], [ 0, %finalize.bpf_check_tail_call.exit_crit_edge ], [ -22, %if.end.i42.bpf_check_tail_call.exit_crit_edge ], [ 0, %for.inc.i.bpf_check_tail_call.exit_crit_edge ], [ -22, %bpf_prog_array_compatible.exit.i.bpf_check_tail_call.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %used_maps_mutex.i) #23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bpf_check_tail_call.exit, %bpf_prog_jit_attempt_done.exit.cleanup.sink.split_crit_edge, %kvcalloc.exit.i.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %ret.2.i, %bpf_check_tail_call.exit ], [ -12, %kvcalloc.exit.i.cleanup.sink.split_crit_edge ], [ -524, %bpf_prog_jit_attempt_done.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %fp.addr.0, %bpf_check_tail_call.exit ], [ %fp, %kvcalloc.exit.i.cleanup.sink.split_crit_edge ], [ %call6, %bpf_prog_jit_attempt_done.exit.cleanup.sink.split_crit_edge ]
  %73 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ %fp, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @bpf_int_jit_compile(ptr noundef %prog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %prog
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_offload_compile(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_array_alloc(i32 noundef %prog_cnt, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prog_cnt)
  %tobool.not = icmp eq i32 %prog_cnt, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end8.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %return

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %or.i = or i32 %flags, 256
  %add = shl i32 %prog_cnt, 4
  %add1 = add i32 %add, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef %or.i) #26
  br label %return

return:                                           ; preds = %if.end8.i.i, %entry.return_crit_edge
  %retval.0 = phi ptr [ @empty_prog_array, %entry.return_crit_edge ], [ %call9.i.i, %if.end8.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_array_free(ptr noundef %progs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %progs, null
  %cmp = icmp eq ptr %progs, @empty_prog_array
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @kvfree_call_rcu(ptr noundef nonnull %progs, ptr noundef null) #23
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_length(ptr nocapture noundef readonly %array) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 8
  %tobool.not5 = icmp eq ptr %1, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cnt.07 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %item.06 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %items, %entry.for.body_crit_edge ]
  %cmp.not = icmp ne ptr %2, @dummy_bpf_prog
  %inc = zext i1 %cmp.not to i32
  %spec.select = add i32 %cnt.07, %inc
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %item.06, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  ret i32 %cnt.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_prog_array_is_empty(ptr nocapture noundef readonly %array) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %item.0 = phi ptr [ %items, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %item.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item.0, align 8
  %cmp.not.not = icmp eq ptr %1, @dummy_bpf_prog
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %item.0, i32 1
  br i1 %cmp.not.not, label %for.cond.for.cond_crit_edge, label %cleanup

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.cond

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #25
  %tobool.not = icmp eq ptr %1, null
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy_to_user(ptr nocapture noundef readonly %array, ptr noundef %prog_ids, i32 noundef %cnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cnt, i32 4) #23
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !386

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 1060288) #26
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %3 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %items.i, align 8
  %tobool.not17.i = icmp eq ptr %4, null
  br i1 %tobool.not17.i, label %if.end.bpf_prog_array_copy_core.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.bpf_prog_array_copy_core.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_copy_core.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %5 = phi ptr [ %12, %for.inc.i.for.body.i_crit_edge ], [ %4, %if.end.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %item.018.i = phi ptr [ %incdec.ptr6.i, %for.inc.i.for.body.i_crit_edge ], [ %items.i, %if.end.for.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %5, @dummy_bpf_prog
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %i.020.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.i, align 4
  %inc.i = add i32 %i.020.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %cnt)
  %cmp3.i = icmp eq i32 %inc.i, %cnt
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.018.i, i32 1
  br label %bpf_prog_array_copy_core.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.020.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end.i.for.inc.i_crit_edge ]
  %incdec.ptr6.i = getelementptr %struct.bpf_prog_array_item, ptr %item.018.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr6.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

for.inc.i.bpf_prog_array_copy_core.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_copy_core.exit

bpf_prog_array_copy_core.exit:                    ; preds = %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge, %if.then4.i, %if.end.bpf_prog_array_copy_core.exit_crit_edge
  %item.1.i = phi ptr [ %incdec.ptr.i, %if.then4.i ], [ %items.i, %if.end.bpf_prog_array_copy_core.exit_crit_edge ], [ %incdec.ptr6.i, %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge ]
  %13 = ptrtoint ptr %item.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %item.1.i, align 8
  %tobool8.i.not = icmp eq ptr %14, null
  %mul = shl i32 %cnt, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %bpf_prog_array_copy_core.exit
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !387

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 230, i32 noundef 9, ptr noundef null) #23
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %bpf_prog_array_copy_core.exit
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %mul, i1 noundef zeroext true) #23
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #23
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #23
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %prog_ids, i32 %mul, i32 -1226833920) #30, !srcloc !402
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i, i32 noundef %mul) #23
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %prog_ids, ptr noundef nonnull %call8.i.i, i32 noundef %mul) #23
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #23
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool3.not = icmp eq i32 %n.addr.0.i, 0
  %. = select i1 %tobool8.i.not, i32 0, i32 -28
  %spec.select = select i1 %tobool3.not, i32 %., i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %copy_to_user.exit.thread, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_array_delete_safe(ptr noundef %array, ptr noundef readnone %old_prog) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 8
  %tobool.not13 = icmp eq ptr %1, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %5, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %item.014 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %items, %entry.for.body_crit_edge ]
  %cmp = icmp eq ptr %2, %old_prog
  br i1 %cmp, label %do.body3, label %for.inc

do.body3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  %3 = ptrtoint ptr %item.014 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr @dummy_bpf_prog, ptr %item.014, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %item.014, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body3, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_delete_safe_at(ptr noundef %array, i32 noundef %index) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp.i = icmp slt i32 %index, 0
  br i1 %cmp.i, label %entry.bpf_prog_array_update_at.exit_crit_edge, label %if.end.i, !prof !386

entry.bpf_prog_array_update_at.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_update_at.exit

if.end.i:                                         ; preds = %entry
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %0 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items.i, align 8
  %tobool3.not24.i = icmp eq ptr %1, null
  br i1 %tobool3.not24.i, label %if.end.i.bpf_prog_array_update_at.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.bpf_prog_array_update_at.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_update_at.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %2 = phi ptr [ %5, %for.inc.i.for.body.i_crit_edge ], [ %1, %if.end.i.for.body.i_crit_edge ]
  %item.026.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %items.i, %if.end.i.for.body.i_crit_edge ]
  %index.addr.025.i = phi i32 [ %index.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %index, %if.end.i.for.body.i_crit_edge ]
  %cmp5.i = icmp eq ptr %2, @dummy_bpf_prog
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.025.i)
  %tobool8.not.i = icmp eq i32 %index.addr.025.i, 0
  br i1 %tobool8.not.i, label %do.body11.i, label %if.end17.i

do.body11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #25
  %3 = ptrtoint ptr %item.026.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr @dummy_bpf_prog, ptr %item.026.i, align 8
  br label %bpf_prog_array_update_at.exit

if.end17.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #25
  %dec.i = add i32 %index.addr.025.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %for.body.i.for.inc.i_crit_edge
  %index.addr.1.i = phi i32 [ %index.addr.025.i, %for.body.i.for.inc.i_crit_edge ], [ %dec.i, %if.end17.i ]
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.026.i, i32 1
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %for.inc.i.bpf_prog_array_update_at.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

for.inc.i.bpf_prog_array_update_at.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_update_at.exit

bpf_prog_array_update_at.exit:                    ; preds = %for.inc.i.bpf_prog_array_update_at.exit_crit_edge, %do.body11.i, %if.end.i.bpf_prog_array_update_at.exit_crit_edge, %entry.bpf_prog_array_update_at.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body11.i ], [ -22, %entry.bpf_prog_array_update_at.exit_crit_edge ], [ -2, %if.end.i.bpf_prog_array_update_at.exit_crit_edge ], [ -2, %for.inc.i.bpf_prog_array_update_at.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_update_at(ptr noundef %array, i32 noundef %index, ptr noundef %prog) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !386

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 8
  %tobool3.not24 = icmp eq ptr %1, null
  br i1 %tobool3.not24, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %2 = phi ptr [ %5, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %item.026 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %items, %if.end.for.body_crit_edge ]
  %index.addr.025 = phi i32 [ %index.addr.1, %for.inc.for.body_crit_edge ], [ %index, %if.end.for.body_crit_edge ]
  %cmp5 = icmp eq ptr %2, @dummy_bpf_prog
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.025)
  %tobool8.not = icmp eq i32 %index.addr.025, 0
  br i1 %tobool8.not, label %do.body11, label %if.end17

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #25
  %3 = ptrtoint ptr %item.026 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %prog, ptr %item.026, align 8
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #25
  %dec = add i32 %index.addr.025, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %index.addr.1 = phi i32 [ %index.addr.025, %for.body.for.inc_crit_edge ], [ %dec, %if.end17 ]
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %item.026, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy(ptr noundef readonly %old_array, ptr noundef readnone %exclude_prog, ptr noundef %include_prog, i64 noundef %bpf_cookie, ptr nocapture noundef writeonly %new_array) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_array, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end12

if.then:                                          ; preds = %entry
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %old_array, i32 0, i32 1
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 8
  %tobool1.not98 = icmp eq ptr %1, null
  br i1 %tobool1.not98, label %if.then.if.end12.loopexit_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end12.loopexit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end12.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %2 = phi ptr [ %4, %for.inc.for.body_crit_edge ], [ %1, %if.then.for.body_crit_edge ]
  %found_exclude.0101 = phi i8 [ %found_exclude.1, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %existing.0100 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %items, %if.then.for.body_crit_edge ]
  %carry_prog_cnt.099 = phi i32 [ %carry_prog_cnt.2, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %cmp = icmp eq ptr %2, %exclude_prog
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp5.not = icmp ne ptr %2, @dummy_bpf_prog
  %inc = zext i1 %cmp5.not to i32
  %spec.select = add i32 %carry_prog_cnt.099, %inc
  %cmp9 = icmp eq ptr %2, %include_prog
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %carry_prog_cnt.2 = phi i32 [ %spec.select, %if.end.for.inc_crit_edge ], [ %carry_prog_cnt.099, %for.body.for.inc_crit_edge ]
  %found_exclude.1 = phi i8 [ %found_exclude.0101, %if.end.for.inc_crit_edge ], [ 1, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %existing.0100, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %for.inc.if.end12.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.inc.if.end12.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end12.loopexit

if.end12.loopexit:                                ; preds = %for.inc.if.end12.loopexit_crit_edge, %if.then.if.end12.loopexit_crit_edge
  %found_exclude.0.lcssa = phi i8 [ 0, %if.then.if.end12.loopexit_crit_edge ], [ %found_exclude.1, %for.inc.if.end12.loopexit_crit_edge ]
  %carry_prog_cnt.0.lcssa = phi i32 [ 0, %if.then.if.end12.loopexit_crit_edge ], [ %carry_prog_cnt.2, %for.inc.if.end12.loopexit_crit_edge ]
  %5 = and i8 %found_exclude.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %extract.t.le = icmp ne i8 %5, 0
  br label %if.end12

if.end12:                                         ; preds = %if.end12.loopexit, %entry.if.end12_crit_edge
  %carry_prog_cnt.3 = phi i32 [ 0, %entry.if.end12_crit_edge ], [ %carry_prog_cnt.0.lcssa, %if.end12.loopexit ]
  %found_exclude.2.off0 = phi i1 [ false, %entry.if.end12_crit_edge ], [ %extract.t.le, %if.end12.loopexit ]
  %tobool13.not = icmp eq ptr %exclude_prog, null
  %brmerge = select i1 %tobool13.not, i1 true, i1 %found_exclude.2.off0
  br i1 %brmerge, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %tobool17.not = icmp eq ptr %include_prog, null
  %not.tobool17.not = xor i1 %tobool17.not, true
  %add = zext i1 %not.tobool17.not to i32
  %spec.select92 = add i32 %carry_prog_cnt.3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select92)
  %tobool20.not = icmp eq i32 %spec.select92, 0
  br i1 %tobool20.not, label %if.end16.cleanup.sink.split_crit_edge, label %if.end22

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end16
  %add23 = add i32 %spec.select92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add23)
  %tobool.not.i = icmp eq i32 %add23, 0
  br i1 %tobool.not.i, label %if.end22.if.end26_crit_edge, label %if.end8.i.i.i

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end26

if.end8.i.i.i:                                    ; preds = %if.end22
  %add.i = shl i32 %add23, 4
  %add1.i = add i32 %add.i, 24
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 3520) #26
  %tobool24.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool24.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.if.end26_crit_edge

if.end8.i.i.i.if.end26_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end26

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i.i.i.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %retval.0.i95 = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.if.end26_crit_edge ], [ @empty_prog_array, %if.end22.if.end26_crit_edge ]
  %items27 = getelementptr inbounds %struct.bpf_prog_array, ptr %retval.0.i95, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carry_prog_cnt.3)
  %tobool29.not = icmp eq i32 %carry_prog_cnt.3, 0
  br i1 %tobool29.not, label %if.end26.if.end49_crit_edge, label %if.then30

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end49

if.then30:                                        ; preds = %if.end26
  %items31 = getelementptr inbounds %struct.bpf_prog_array, ptr %old_array, i32 0, i32 1
  %6 = ptrtoint ptr %items31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %items31, align 8
  %tobool35.not103 = icmp eq ptr %7, null
  br i1 %tobool35.not103, label %if.then30.if.end49_crit_edge, label %if.then30.for.body36_crit_edge

if.then30.for.body36_crit_edge:                   ; preds = %if.then30
  br label %for.body36

if.then30.if.end49_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end49

for.body36:                                       ; preds = %for.inc46.for.body36_crit_edge, %if.then30.for.body36_crit_edge
  %8 = phi ptr [ %16, %for.inc46.for.body36_crit_edge ], [ %7, %if.then30.for.body36_crit_edge ]
  %new.0106 = phi ptr [ %new.1, %for.inc46.for.body36_crit_edge ], [ %items27, %if.then30.for.body36_crit_edge ]
  %existing.1104 = phi ptr [ %incdec.ptr47, %for.inc46.for.body36_crit_edge ], [ %items31, %if.then30.for.body36_crit_edge ]
  %cmp38 = icmp eq ptr %8, %exclude_prog
  %cmp40 = icmp eq ptr %8, @dummy_bpf_prog
  %or.cond = or i1 %cmp38, %cmp40
  br i1 %or.cond, label %for.body36.for.inc46_crit_edge, label %if.end42

for.body36.for.inc46_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc46

if.end42:                                         ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #25
  %9 = ptrtoint ptr %new.0106 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %new.0106, align 8
  %10 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %existing.1104, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %new.0106, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %13, align 8
  %incdec.ptr45 = getelementptr %struct.bpf_prog_array_item, ptr %new.0106, i32 1
  br label %for.inc46

for.inc46:                                        ; preds = %if.end42, %for.body36.for.inc46_crit_edge
  %new.1 = phi ptr [ %new.0106, %for.body36.for.inc46_crit_edge ], [ %incdec.ptr45, %if.end42 ]
  %incdec.ptr47 = getelementptr %struct.bpf_prog_array_item, ptr %existing.1104, i32 1
  %15 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr47, align 8
  %tobool35.not = icmp eq ptr %16, null
  br i1 %tobool35.not, label %for.inc46.if.end49_crit_edge, label %for.inc46.for.body36_crit_edge

for.inc46.for.body36_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body36

for.inc46.if.end49_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end49

if.end49:                                         ; preds = %for.inc46.if.end49_crit_edge, %if.then30.if.end49_crit_edge, %if.end26.if.end49_crit_edge
  %new.2 = phi ptr [ %items27, %if.end26.if.end49_crit_edge ], [ %items27, %if.then30.if.end49_crit_edge ], [ %new.1, %for.inc46.if.end49_crit_edge ]
  br i1 %tobool17.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #25
  %17 = ptrtoint ptr %new.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %include_prog, ptr %new.2, align 8
  %18 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %new.2, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %bpf_cookie, ptr %18, align 8
  %incdec.ptr53 = getelementptr %struct.bpf_prog_array_item, ptr %new.2, i32 1
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  %new.3 = phi ptr [ %incdec.ptr53, %if.then51 ], [ %new.2, %if.end49.if.end54_crit_edge ]
  %20 = ptrtoint ptr %new.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %new.3, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end54, %if.end16.cleanup.sink.split_crit_edge
  %retval.0.i95.sink = phi ptr [ %retval.0.i95, %if.end54 ], [ null, %if.end16.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %new_array to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i95.sink, ptr %new_array, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.i.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end12.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -17, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy_info(ptr noundef readonly %array, ptr nocapture noundef writeonly %prog_ids, i32 noundef %request_cnt, ptr nocapture noundef writeonly %prog_cnt) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.then

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end.thread

if.then:                                          ; preds = %entry
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array, i32 0, i32 1
  %0 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items.i, align 8
  %tobool.not5.i = icmp eq ptr %1, null
  br i1 %tobool.not5.i, label %if.then.if.end.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %2 = phi ptr [ %4, %for.body.i.for.body.i_crit_edge ], [ %1, %if.then.for.body.i_crit_edge ]
  %cnt.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %item.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %items.i, %if.then.for.body.i_crit_edge ]
  %cmp.not.i = icmp ne ptr %2, @dummy_bpf_prog
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add i32 %cnt.07.i, %inc.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.06.i, i32 1
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i

if.end.thread:                                    ; preds = %if.then.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %5 = ptrtoint ptr %prog_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %prog_cnt, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %6 = ptrtoint ptr %prog_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %prog_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_cnt)
  %tobool1.not = icmp eq i32 %request_cnt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool2.not = icmp eq i32 %spec.select.i, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %items.i, align 8
  %tobool.not17.i = icmp eq ptr %8, null
  br i1 %tobool.not17.i, label %if.end4.bpf_prog_array_copy_core.exit_crit_edge, label %if.end4.for.body.i11_crit_edge

if.end4.for.body.i11_crit_edge:                   ; preds = %if.end4
  br label %for.body.i11

if.end4.bpf_prog_array_copy_core.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_copy_core.exit

for.body.i11:                                     ; preds = %for.inc.i.for.body.i11_crit_edge, %if.end4.for.body.i11_crit_edge
  %9 = phi ptr [ %16, %for.inc.i.for.body.i11_crit_edge ], [ %8, %if.end4.for.body.i11_crit_edge ]
  %i.020.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i11_crit_edge ], [ 0, %if.end4.for.body.i11_crit_edge ]
  %item.018.i = phi ptr [ %incdec.ptr6.i, %for.inc.i.for.body.i11_crit_edge ], [ %items.i, %if.end4.for.body.i11_crit_edge ]
  %cmp.i = icmp eq ptr %9, @dummy_bpf_prog
  br i1 %cmp.i, label %for.body.i11.for.inc.i_crit_edge, label %if.end.i

for.body.i11.for.inc.i_crit_edge:                 ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i11
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aux.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr i32, ptr %prog_ids, i32 %i.020.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.i, align 4
  %inc.i12 = add i32 %i.020.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i12, i32 %request_cnt)
  %cmp3.i = icmp eq i32 %inc.i12, %request_cnt
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  %incdec.ptr.i13 = getelementptr %struct.bpf_prog_array_item, ptr %item.018.i, i32 1
  br label %bpf_prog_array_copy_core.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i11.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.020.i, %for.body.i11.for.inc.i_crit_edge ], [ %inc.i12, %if.end.i.for.inc.i_crit_edge ]
  %incdec.ptr6.i = getelementptr %struct.bpf_prog_array_item, ptr %item.018.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr6.i, align 8
  %tobool.not.i14 = icmp eq ptr %16, null
  br i1 %tobool.not.i14, label %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge, label %for.inc.i.for.body.i11_crit_edge

for.inc.i.for.body.i11_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i11

for.inc.i.bpf_prog_array_copy_core.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_prog_array_copy_core.exit

bpf_prog_array_copy_core.exit:                    ; preds = %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge, %if.then4.i, %if.end4.bpf_prog_array_copy_core.exit_crit_edge
  %item.1.i = phi ptr [ %incdec.ptr.i13, %if.then4.i ], [ %items.i, %if.end4.bpf_prog_array_copy_core.exit_crit_edge ], [ %incdec.ptr6.i, %for.inc.i.bpf_prog_array_copy_core.exit_crit_edge ]
  %17 = ptrtoint ptr %item.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %item.1.i, align 8
  %tobool8.i.not = icmp eq ptr %18, null
  %cond = select i1 %tobool8.i.not, i32 0, i32 -28
  br label %cleanup

cleanup:                                          ; preds = %bpf_prog_array_copy_core.exit, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %cond, %bpf_prog_array_copy_core.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_free_used_maps(ptr noundef %aux, ptr nocapture noundef readonly %used_maps, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp8.not = icmp eq i32 %len, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %used_maps, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %map_poke_untrack = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %map_poke_untrack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_poke_untrack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  tail call void %5(ptr noundef %1, ptr noundef %aux) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @bpf_map_put(ptr noundef %1) #23
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_free_used_btfs(ptr nocapture readnone %aux, ptr nocapture noundef readonly %used_btfs, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp6.not = icmp eq i32 %len, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.btf_mod_pair, ptr %used_btfs, i32 %i.07
  %module = getelementptr %struct.btf_mod_pair, ptr %used_btfs, i32 %i.07, i32 1
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @module_put(ptr noundef nonnull %1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @btf_put(ptr noundef %3) #23
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_free(ptr nocapture noundef readonly %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.bpf_prog, ptr %fp, i32 0, i32 10
  %0 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1, align 4
  %dst_prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dst_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_prog, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @bpf_prog_put(ptr noundef nonnull %3) #23
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %4 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 59
  tail call void @__init_work(ptr noundef %4, i32 noundef 0) #23
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %4, align 4
  %lockdep_map = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 59, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @bpf_prog_free.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %entry3 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 59, i32 0, i32 1
  %6 = ptrtoint ptr %entry3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry3, ptr %entry3, align 4
  %prev.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 59, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry3, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 59, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bpf_prog_free_deferred, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %4) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_prog_free_deferred(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -596
  %kfunc_btf_tab = getelementptr i8, ptr %work, i32 -380
  %0 = ptrtoint ptr %kfunc_btf_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfunc_btf_tab, align 8
  tail call void @bpf_free_kfunc_btf_tab(ptr noundef %1) #23
  %used_maps.i = getelementptr i8, ptr %work, i32 -196
  %2 = ptrtoint ptr %used_maps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_maps.i, align 8
  %used_map_cnt.i = getelementptr i8, ptr %work, i32 -588
  %4 = ptrtoint ptr %used_map_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used_map_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i.i, label %entry.bpf_free_used_maps.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bpf_free_used_maps.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_free_used_maps.exit

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 %i.09.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %map_poke_untrack.i.i = getelementptr inbounds %struct.bpf_map_ops, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %map_poke_untrack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_poke_untrack.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #25
  tail call void %11(ptr noundef %7, ptr noundef %add.ptr) #23
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  tail call void @bpf_map_put(ptr noundef %7) #23
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %if.end.i.i.bpf_free_used_maps.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i.i

if.end.i.i.bpf_free_used_maps.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_free_used_maps.exit

bpf_free_used_maps.exit:                          ; preds = %if.end.i.i.bpf_free_used_maps.exit_crit_edge, %entry.bpf_free_used_maps.exit_crit_edge
  %12 = ptrtoint ptr %used_maps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %used_maps.i, align 8
  tail call void @kfree(ptr noundef %13) #23
  %used_btfs.i = getelementptr i8, ptr %work, i32 -100
  %14 = ptrtoint ptr %used_btfs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %used_btfs.i, align 8
  %used_btf_cnt.i = getelementptr i8, ptr %work, i32 -584
  %16 = ptrtoint ptr %used_btf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used_btf_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp6.not.i.i, label %bpf_free_used_maps.exit.bpf_free_used_btfs.exit_crit_edge, label %bpf_free_used_maps.exit.for.body.i.i38_crit_edge

bpf_free_used_maps.exit.for.body.i.i38_crit_edge: ; preds = %bpf_free_used_maps.exit
  br label %for.body.i.i38

bpf_free_used_maps.exit.bpf_free_used_btfs.exit_crit_edge: ; preds = %bpf_free_used_maps.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_free_used_btfs.exit

for.body.i.i38:                                   ; preds = %if.end.i.i42.for.body.i.i38_crit_edge, %bpf_free_used_maps.exit.for.body.i.i38_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i40, %if.end.i.i42.for.body.i.i38_crit_edge ], [ 0, %bpf_free_used_maps.exit.for.body.i.i38_crit_edge ]
  %arrayidx.i.i36 = getelementptr %struct.btf_mod_pair, ptr %15, i32 %i.07.i.i
  %module.i.i = getelementptr %struct.btf_mod_pair, ptr %15, i32 %i.07.i.i, i32 1
  %18 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module.i.i, align 4
  %tobool.not.i.i37 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i37, label %for.body.i.i38.if.end.i.i42_crit_edge, label %if.then.i.i39

for.body.i.i38.if.end.i.i42_crit_edge:            ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end.i.i42

if.then.i.i39:                                    ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @module_put(ptr noundef nonnull %19) #23
  br label %if.end.i.i42

if.end.i.i42:                                     ; preds = %if.then.i.i39, %for.body.i.i38.if.end.i.i42_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i36, align 4
  tail call void @btf_put(ptr noundef %21) #23
  %inc.i.i40 = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i41 = icmp eq i32 %inc.i.i40, %17
  br i1 %exitcond.not.i.i41, label %if.end.i.i42.bpf_free_used_btfs.exit_crit_edge, label %if.end.i.i42.for.body.i.i38_crit_edge

if.end.i.i42.for.body.i.i38_crit_edge:            ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body.i.i38

if.end.i.i42.bpf_free_used_btfs.exit_crit_edge:   ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #25
  br label %bpf_free_used_btfs.exit

bpf_free_used_btfs.exit:                          ; preds = %if.end.i.i42.bpf_free_used_btfs.exit_crit_edge, %bpf_free_used_maps.exit.bpf_free_used_btfs.exit_crit_edge
  %22 = ptrtoint ptr %used_btfs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %used_btfs.i, align 8
  tail call void @kfree(ptr noundef %23) #23
  %offload_requested.i = getelementptr i8, ptr %work, i32 -419
  %24 = ptrtoint ptr %offload_requested.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %offload_requested.i, align 1, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i.not = icmp eq i8 %25, 0
  br i1 %tobool.i.not, label %bpf_free_used_btfs.exit.if.end_crit_edge, label %if.then

bpf_free_used_btfs.exit.if.end_crit_edge:         ; preds = %bpf_free_used_btfs.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then:                                          ; preds = %bpf_free_used_btfs.exit
  call void @__sanitizer_cov_trace_pc() #25
  %prog = getelementptr i8, ptr %work, i32 -96
  %26 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog, align 4
  tail call void @bpf_prog_offload_destroy(ptr noundef %27) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %bpf_free_used_btfs.exit.if.end_crit_edge
  %prog1 = getelementptr i8, ptr %work, i32 -96
  %28 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prog1, align 4
  %has_callchain_buf = getelementptr inbounds %struct.bpf_prog, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %has_callchain_buf to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %has_callchain_buf, align 2
  %31 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @put_callchain_buffers() #23
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %dst_trampoline = getelementptr i8, ptr %work, i32 -432
  %32 = ptrtoint ptr %dst_trampoline to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst_trampoline, align 4
  %tobool4.not = icmp eq ptr %33, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @bpf_trampoline_put(ptr noundef nonnull %33) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %func_cnt = getelementptr i8, ptr %work, i32 -560
  %34 = ptrtoint ptr %func_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %func_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp43.not = icmp eq i32 %35, 0
  br i1 %cmp43.not, label %if.end7.if.else_crit_edge, label %for.body.lr.ph

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else

for.body.lr.ph:                                   ; preds = %if.end7
  %func = getelementptr i8, ptr %work, i32 -396
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %36 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %func, align 8
  %arrayidx = getelementptr ptr, ptr %37, i32 %i.044
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %aux8 = getelementptr inbounds %struct.bpf_prog, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %aux8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aux8, align 4
  %poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %poke_tab to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %poke_tab, align 8
  %43 = load ptr, ptr %func, align 8
  %arrayidx10 = getelementptr ptr, ptr %43, i32 %i.044
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx10, align 4
  tail call void @bpf_jit_free(ptr noundef %45)
  %inc = add nuw i32 %i.044, 1
  %46 = ptrtoint ptr %func_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %func_cnt, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #25
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %phi.cmp = icmp eq i32 %47, 0
  br i1 %phi.cmp, label %for.end.if.else_crit_edge, label %if.then13

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.else

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #25
  %func14 = getelementptr i8, ptr %work, i32 -396
  %48 = ptrtoint ptr %func14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %func14, align 8
  tail call void @kfree(ptr noundef %49) #23
  %50 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prog1, align 4
  tail call void @__bpf_prog_free(ptr noundef %51) #23
  br label %if.end17

if.else:                                          ; preds = %for.end.if.else_crit_edge, %if.end7.if.else_crit_edge
  %52 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prog1, align 4
  tail call void @bpf_jit_free(ptr noundef %53)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_user_rnd_init_once() local_unnamed_addr #2 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_user_rnd_init_once.___once_key, ptr blockaddress(@bpf_user_rnd_init_once, %if.then)) #23
          to label %if.end13 [label %if.then], !srcloc !403

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #23
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !404
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @bpf_user_rnd_init_once.___done, ptr noundef nonnull %___flags) #23
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !386

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #25
  call void @prandom_seed_full_state(ptr noundef nonnull @bpf_user_rnd_state) #23
  call void @__do_once_done(ptr noundef nonnull @bpf_user_rnd_init_once.___done, ptr noundef nonnull @bpf_user_rnd_init_once.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #23
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #23
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_seed_full_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_user_rnd_u32(i64 noundef %__ur_1, i64 noundef %__ur_2, i64 noundef %__ur_3, i64 noundef %__ur_4, i64 noundef %__ur_5) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !405
  %4 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @bpf_user_rnd_state to i32)
  %10 = inttoptr i32 %add.i to ptr
  %call6.i = tail call i32 @prandom_u32_state(ptr noundef %10) #23
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !406
  %11 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i.i13.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i13.i to ptr
  %preempt_count.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i14.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i14.i, align 4
  %conv.i = zext i32 %call6.i to i64
  ret i64 %conv.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_raw_cpu_id(i64 noundef %__ur_1, i64 noundef %__ur_2, i64 noundef %__ur_3, i64 noundef %__ur_4, i64 noundef %__ur_5) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %conv.i = zext i32 %3 to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @bpf_get_trace_printk_proto() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @bpf_get_trace_vprintk_proto() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i64 @bpf_event_output(ptr noundef %map, i64 noundef %flags, ptr noundef %meta, i64 noundef %meta_size, ptr noundef %ctx, i64 noundef %ctx_size, ptr noundef %ctx_copy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @bpf_jit_compile(ptr noundef %prog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_helper_changes_pkt_data(ptr noundef %func) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_jit_needs_zext() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_jit_supports_kfunc_call() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset, ptr noundef %to, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @bpf_arch_text_poke(ptr noundef %ip, i32 noundef %t, ptr noundef %addr1, ptr noundef %addr2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_exception(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_bulk_tx(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_bulk_tx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_redirect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_err(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_redirect_err, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_map(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_redirect_map, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_map_err(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_redirect_map_err, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_cpumap_kthread(ptr nocapture readnone %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr noundef %xdp_stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_cpumap_kthread, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr noundef %xdp_stats) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_cpumap_enqueue(ptr nocapture readnone %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_cpumap_enqueue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_devmap_xmit(ptr nocapture readnone %__data, ptr noundef %from_dev, ptr noundef %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xdp_devmap_xmit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %from_dev, ptr noundef %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_disconnect(ptr nocapture readnone %__data, ptr noundef %xa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mem_disconnect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %xa) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_connect(ptr nocapture readnone %__data, ptr noundef %xa, ptr noundef %rxq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mem_connect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %xa, ptr noundef %rxq) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_return_failed(ptr nocapture readnone %__data, ptr noundef %mem, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mem_return_failed, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %mem, ptr noundef %page) #23
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_exception(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xdp, i32 noundef %act) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %xdp, i32 0, i32 10
  %3 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prog_id, align 4
  %act6 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %act6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %act, ptr %act6, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex, align 4
  %ifindex7 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %ifindex7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ifindex7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_exception(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xdp, i32 noundef %act) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %xdp, i32 0, i32 10
  %27 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %prog_id, align 4
  %act17 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %act17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %act, ptr %act17, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex, align 4
  %ifindex18 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %ifindex18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ifindex18, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_bulk_tx(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  %ifindex6 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ifindex6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ifindex6, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %act, align 4
  %drops7 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %drops7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %drops, ptr %drops7, align 4
  %sent8 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %sent8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sent, ptr %sent8, align 4
  %err9 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %err9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %err, ptr %err9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_bulk_tx(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %27 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex, align 4
  %ifindex17 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ifindex17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ifindex17, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %act, align 4
  %drops18 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %drops18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %drops, ptr %drops18, align 4
  %sent19 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %sent19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sent, ptr %sent19, align 4
  %err20 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %err20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %err, ptr %err20, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_redirect_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xdp, ptr noundef readonly %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = zext i32 %map_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %map_type, label %if.end5.if.end17_crit_edge [
    i32 14, label %if.end5.if.then7_crit_edge
    i32 25, label %if.end5.if.then7_crit_edge49
    i32 0, label %land.lhs.true
  ]

if.end5.if.then7_crit_edge49:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then7

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then7

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end17

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end5.if.then7_crit_edge49
  %tobool8.not = icmp eq ptr %tgt, null
  br i1 %tobool8.not, label %if.then7.if.end17_crit_edge, label %if.then9

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end17

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #25
  %4 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt, align 4
  %ifindex11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex11, align 4
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %map_id)
  %cmp14 = icmp eq i32 %map_id, 2147483647
  %spec.select = select i1 %cmp14, i32 %index, i32 0
  %spec.select47 = select i1 %cmp14, i32 0, i32 %index
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.then9, %if.then7.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %ifindex.0 = phi i32 [ %7, %if.then9 ], [ 0, %if.then7.if.end17_crit_edge ], [ 0, %if.end5.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  %map_index.0 = phi i32 [ %index, %if.then9 ], [ %index, %if.then7.if.end17_crit_edge ], [ %index, %if.end5.if.end17_crit_edge ], [ %spec.select47, %land.lhs.true ]
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %xdp, i32 0, i32 10
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %prog_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %act, align 4
  %ifindex18 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex18, align 4
  %ifindex19 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %ifindex19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ifindex19, align 4
  %err20 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %err20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %err, ptr %err20, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ifindex.0, ptr %to_ifindex, align 4
  %map_id21 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %map_id21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %map_id, ptr %map_id21, align 4
  %map_index22 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %map_index22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %map_index.0, ptr %map_index22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_redirect_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xdp, ptr noundef readonly %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = zext i32 %map_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %map_type, label %if.end16.if.end29_crit_edge [
    i32 14, label %if.end16.if.then18_crit_edge
    i32 25, label %if.end16.if.then18_crit_edge72
    i32 0, label %land.lhs.true25
  ]

if.end16.if.then18_crit_edge72:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then18

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.then18

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end29

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.if.then18_crit_edge72
  %tobool19.not = icmp eq ptr %tgt, null
  br i1 %tobool19.not, label %if.then18.if.end29_crit_edge, label %if.then20

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end29

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #25
  %28 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tgt, align 4
  %ifindex22 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %ifindex22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifindex22, align 4
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %map_id)
  %cmp26 = icmp eq i32 %map_id, 2147483647
  %spec.select = select i1 %cmp26, i32 %index, i32 0
  %spec.select71 = select i1 %cmp26, i32 0, i32 %index
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25, %if.then20, %if.then18.if.end29_crit_edge, %if.end16.if.end29_crit_edge
  %ifindex.0 = phi i32 [ %31, %if.then20 ], [ 0, %if.then18.if.end29_crit_edge ], [ 0, %if.end16.if.end29_crit_edge ], [ %spec.select, %land.lhs.true25 ]
  %map_index.0 = phi i32 [ %index, %if.then20 ], [ %index, %if.then18.if.end29_crit_edge ], [ %index, %if.end16.if.end29_crit_edge ], [ %spec.select71, %land.lhs.true25 ]
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %xdp, i32 0, i32 10
  %32 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 8
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %prog_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %act, align 4
  %ifindex30 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex30, align 4
  %ifindex31 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %ifindex31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ifindex31, align 4
  %err32 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %err32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %err, ptr %err32, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %ifindex.0, ptr %to_ifindex, align 4
  %map_id33 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %map_id33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %map_id, ptr %map_id33, align 4
  %map_index34 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %map_index34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %map_index.0, ptr %map_index34, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_cpumap_kthread(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr nocapture noundef readonly %xdp_stats) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %map_id6 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %map_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %map_id, ptr %map_id6, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %act, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i33 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i33 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %cpu8 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %cpu8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cpu8, align 4
  %drops9 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %drops9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %drops, ptr %drops9, align 4
  %processed10 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %processed10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %processed, ptr %processed10, align 4
  %sched11 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %sched11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sched, ptr %sched11, align 4
  %pass = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %xdp_stats, i32 0, i32 1
  %13 = ptrtoint ptr %pass to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pass, align 4
  %xdp_pass = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 7
  %15 = ptrtoint ptr %xdp_pass to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xdp_pass, align 4
  %drop = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %xdp_stats, i32 0, i32 2
  %16 = ptrtoint ptr %drop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %drop, align 4
  %xdp_drop = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 8
  %18 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %xdp_drop, align 4
  %19 = ptrtoint ptr %xdp_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xdp_stats, align 4
  %xdp_redirect = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call3, i32 0, i32 9
  %21 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %xdp_redirect, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_cpumap_kthread(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr nocapture noundef readonly %xdp_stats) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %map_id17 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %map_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %map_id, ptr %map_id17, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %act, align 4
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %cpu20 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %cpu20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cpu20, align 4
  %drops21 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %drops21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %drops, ptr %drops21, align 4
  %processed22 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %processed22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %processed, ptr %processed22, align 4
  %sched23 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 6
  %34 = ptrtoint ptr %sched23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sched, ptr %sched23, align 4
  %pass = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %xdp_stats, i32 0, i32 1
  %35 = ptrtoint ptr %pass to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pass, align 4
  %xdp_pass = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 7
  %37 = ptrtoint ptr %xdp_pass to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %xdp_pass, align 4
  %drop = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %xdp_stats, i32 0, i32 2
  %38 = ptrtoint ptr %drop to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %drop, align 4
  %xdp_drop = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 8
  %40 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %xdp_drop, align 4
  %41 = ptrtoint ptr %xdp_stats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xdp_stats, align 4
  %xdp_redirect = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %call13, i32 0, i32 9
  %43 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %xdp_redirect, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_cpumap_enqueue(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %map_id6 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %map_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %map_id, ptr %map_id6, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %act, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i27 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i27 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %cpu8 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %cpu8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cpu8, align 4
  %drops9 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %drops9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %drops, ptr %drops9, align 4
  %processed10 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %processed10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %processed, ptr %processed10, align 4
  %to_cpu11 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %to_cpu11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %to_cpu, ptr %to_cpu11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_cpumap_enqueue(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %map_id17 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %map_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %map_id, ptr %map_id17, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %act, align 4
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %cpu20 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %cpu20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cpu20, align 4
  %drops21 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %drops21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %drops, ptr %drops21, align 4
  %processed22 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %processed22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %processed, ptr %processed22, align 4
  %to_cpu23 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %call13, i32 0, i32 6
  %34 = ptrtoint ptr %to_cpu23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %to_cpu, ptr %to_cpu23, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_devmap_xmit(ptr noundef %__data, ptr nocapture noundef readonly %from_dev, ptr nocapture noundef readonly %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %ifindex = getelementptr inbounds %struct.net_device, ptr %from_dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  %from_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %from_ifindex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %from_ifindex, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %act, align 4
  %ifindex6 = getelementptr inbounds %struct.net_device, ptr %to_dev, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex6, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %to_ifindex, align 4
  %drops7 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %drops7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %drops, ptr %drops7, align 4
  %sent8 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %sent8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sent, ptr %sent8, align 4
  %err9 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %err9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %err, ptr %err9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xdp_devmap_xmit(ptr noundef %__data, ptr nocapture noundef readonly %from_dev, ptr nocapture noundef readonly %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %from_dev, i32 0, i32 17
  %27 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex, align 4
  %from_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %from_ifindex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %from_ifindex, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %act, align 4
  %ifindex17 = getelementptr inbounds %struct.net_device, ptr %to_dev, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex17, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %to_ifindex, align 4
  %drops18 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %drops18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %drops, ptr %drops18, align 4
  %sent19 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 5
  %35 = ptrtoint ptr %sent19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sent, ptr %sent19, align 4
  %err20 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %call13, i32 0, i32 6
  %36 = ptrtoint ptr %err20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %err, ptr %err20, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_disconnect(ptr noundef %__data, ptr noundef %xa) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %xa6 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xa6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xa, ptr %xa6, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %xa, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mem_id, align 4
  %7 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mem_type, align 4
  %10 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %xa, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %allocator to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %allocator, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mem_disconnect(ptr noundef %__data, ptr noundef %xa) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xa17 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xa17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %xa, ptr %xa17, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %xa, i32 0, i32 1
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mem_id, align 4
  %31 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xa, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mem_type, align 4
  %34 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %xa, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %allocator to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %allocator, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_connect(ptr noundef %__data, ptr noundef %xa, ptr noundef %rxq) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %xa6 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xa6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xa, ptr %xa6, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %xa, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mem_id, align 4
  %7 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mem_type, align 4
  %10 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %xa, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %allocator to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %allocator, align 4
  %rxq8 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %rxq8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rxq, ptr %rxq8, align 4
  %15 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxq, align 128
  %ifindex = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex, align 4
  %ifindex9 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %ifindex9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ifindex9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mem_connect(ptr noundef %__data, ptr noundef %xa, ptr noundef %rxq) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xa17 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xa17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %xa, ptr %xa17, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %xa, i32 0, i32 1
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mem_id, align 4
  %31 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xa, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mem_type, align 4
  %34 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %xa, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %allocator to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %allocator, align 4
  %rxq19 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %rxq19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rxq, ptr %rxq19, align 4
  %39 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rxq, align 128
  %ifindex = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex, align 4
  %ifindex20 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %ifindex20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ifindex20, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_return_failed(ptr noundef %__data, ptr nocapture noundef readonly %mem, ptr noundef %page) #2 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #23
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !387

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !386

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #23
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #23
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %page6 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %page6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %page, ptr %page6, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mem_id, align 4
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mem_type, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mem_return_failed(ptr noundef %__data, ptr nocapture noundef readonly %mem, ptr noundef %page) #2 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #23
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #23
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !404
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #23
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #23
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #25
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #23
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #23
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #23
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %page17 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %page17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %page, ptr %page17, align 4
  %id = getelementptr inbounds %struct.xdp_mem_info, ptr %mem, i32 0, i32 1
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %mem_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mem_id, align 4
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mem_type, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_exception(ptr noundef %__data, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %xdp to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %act to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_bulk_tx(ptr noundef %__data, ptr noundef %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %sent to i64
  %conv8 = zext i32 %drops to i64
  %conv12 = zext i32 %err to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_redirect_template(ptr noundef %__data, ptr noundef %dev, ptr noundef %xdp, ptr noundef %tgt, i32 noundef %err, i32 noundef %map_type, i32 noundef %map_id, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %xdp to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %tgt to i32
  %conv8 = zext i32 %2 to i64
  %conv12 = zext i32 %err to i64
  %conv16 = zext i32 %map_type to i64
  %conv20 = zext i32 %map_id to i64
  %conv24 = zext i32 %index to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_cpumap_kthread(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr noundef %xdp_stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %conv = zext i32 %map_id to i64
  %conv4 = zext i32 %processed to i64
  %conv8 = zext i32 %drops to i64
  %conv12 = zext i32 %sched to i64
  %0 = ptrtoint ptr %xdp_stats to i32
  %conv16 = zext i32 %0 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_cpumap_enqueue(ptr noundef %__data, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %conv = zext i32 %map_id to i64
  %conv4 = zext i32 %processed to i64
  %conv8 = zext i32 %drops to i64
  %conv12 = zext i32 %to_cpu to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xdp_devmap_xmit(ptr noundef %__data, ptr noundef %from_dev, ptr noundef %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %from_dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %to_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %sent to i64
  %conv12 = zext i32 %drops to i64
  %conv16 = zext i32 %err to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mem_disconnect(ptr noundef %__data, ptr noundef %xa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %xa to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mem_connect(ptr noundef %__data, ptr noundef %xa, ptr noundef %rxq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %xa to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %rxq to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mem_return_failed(ptr noundef %__data, ptr noundef %mem, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %0 = ptrtoint ptr %mem to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %page to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #23
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_name_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__bpf_prog_ret0_warn(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %insn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @__bpf_prog_ret0_warn.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !387

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  store i1 true, ptr @__bpf_prog_ret0_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1827, i32 noundef 9, ptr noundef null) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__bpf_prog_ret1(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %insn) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_free_kfunc_btf_tab(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_offload_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_callchain_buffers() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trampoline_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_exception(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prog_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_xdp_exception.symbols) #23
  %ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %3, ptr noundef %call1, i32 noundef %7) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_bulk_tx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_xdp_bulk_tx.symbols) #23
  %sent = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sent, align 4
  %drops = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drops, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, ptr noundef %call1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_redirect_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %prog_id = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prog_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_xdp_redirect_template.symbols) #23
  %ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_ifindex, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  %map_id = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_id, align 4
  %map_index = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %map_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %map_index, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef %call1, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_cpumap_kthread(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %map_id = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_xdp_cpumap_kthread.symbols) #23
  %processed = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %processed, align 4
  %drops = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drops, align 4
  %sched = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sched, align 4
  %xdp_pass = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %xdp_pass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xdp_pass, align 4
  %xdp_drop = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xdp_drop, align 4
  %xdp_redirect = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xdp_redirect, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.52, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_cpumap_enqueue(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %map_id = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_id, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_xdp_cpumap_enqueue.symbols) #23
  %processed = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %processed, align 4
  %drops = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drops, align 4
  %to_cpu = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %to_cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %to_cpu, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_devmap_xmit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %from_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %from_ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from_ifindex, align 4
  %to_ifindex = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %to_ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %to_ifindex, align 4
  %act = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %act, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_xdp_devmap_xmit.symbols) #23
  %sent = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sent, align 4
  %drops = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drops, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.56, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_disconnect(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_id, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_mem_disconnect.symbols) #23
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %allocator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %allocator, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.63, i32 noundef %3, ptr noundef %call1, ptr noundef %7) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_connect(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_id, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_mem_connect.symbols) #23
  %allocator = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %allocator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %allocator, align 4
  %ifindex = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.70, i32 noundef %3, ptr noundef %call1, ptr noundef %7, i32 noundef %9) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_return_failed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #25
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #25
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mem_id = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_id, align 4
  %mem_type = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_mem_return_failed.symbols) #23
  %page = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.73, i32 noundef %3, ptr noundef %call1, ptr noundef %7) #23
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #23

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #24 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #24 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nounwind readonly }
attributes #21 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #22 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #23 = { nounwind }
attributes #24 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #25 = { nomerge }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !250, !252, !254, !256, !258, !260, !261, !262, !264, !265, !267, !269, !271, !273, !274, !276, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!llvm.named.register.sp = !{!376}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @bpf_prog_alloc_no_stats.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/bpf/core.c", i32 110, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @bpf_prog_alloc_no_stats.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../kernel/bpf/core.c", i32 111, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bpf_prog_alloc.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../kernel/bpf/core.c", i32 138, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_bpf_prog_alloc, !10, !"__ksymtab_bpf_prog_alloc", i1 false, i1 false}
!10 = !{!"../kernel/bpf/core.c", i32 142, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/bpf/core.c", i32 512, i32 9}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bpf_jit_enable, !15, !"bpf_jit_enable", i1 false, i1 false}
!15 = !{!"../kernel/bpf/core.c", i32 531, i32 5}
!16 = !{ptr @bpf_jit_kallsyms, !17, !"bpf_jit_kallsyms", i1 false, i1 false}
!17 = !{!"../kernel/bpf/core.c", i32 532, i32 5}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/bpf/core.c", i32 624, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../kernel/bpf/core.c", i32 760, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"poke_tab_max", i1 false, i1 false}
!24 = !{!"../kernel/bpf/core.c", i32 781, i32 19}
!25 = !{ptr @__initcall__kmod_core__404_834_bpf_jit_charge_init0, !26, !"__initcall__kmod_core__404_834_bpf_jit_charge_init0", i1 false, i1 false}
!26 = !{!"../kernel/bpf/core.c", i32 834, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../kernel/bpf/core.c", i32 872, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../kernel/bpf/core.c", i32 923, i32 3}
!31 = !{ptr @__ksymtab___bpf_call_base, !32, !"__ksymtab___bpf_call_base", i1 false, i1 false}
!32 = !{!"../kernel/bpf/core.c", i32 1207, i32 1}
!33 = !{ptr @bpf_opcode_in_insntable.public_insntable, !34, !"public_insntable", i1 false, i1 false}
!34 = !{!"../kernel/bpf/core.c", i32 1350, i32 20}
!35 = !{ptr @__ksymtab_bpf_prog_select_runtime, !36, !"__ksymtab_bpf_prog_select_runtime", i1 false, i1 false}
!36 = !{!"../kernel/bpf/core.c", i32 1955, i32 1}
!37 = !{ptr @bpf_prog_free.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../kernel/bpf/core.c", i32 2310, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__ksymtab_bpf_prog_free, !41, !"__ksymtab_bpf_prog_free", i1 false, i1 false}
!41 = !{!"../kernel/bpf/core.c", i32 2313, i32 1}
!42 = !{ptr @bpf_user_rnd_init_once.___done, !43, !"___done", i1 false, i1 false}
!43 = !{!"../kernel/bpf/core.c", i32 2320, i32 2}
!44 = !{ptr @bpf_user_rnd_init_once.___once_key, !43, !"___once_key", i1 false, i1 false}
!45 = !{ptr @__ksymtab_bpf_event_output, !46, !"__ksymtab_bpf_event_output", i1 false, i1 false}
!46 = !{!"../kernel/bpf/core.c", i32 2390, i32 1}
!47 = !{ptr @bpf_tail_call_proto, !48, !"bpf_tail_call_proto", i1 false, i1 false}
!48 = !{!"../kernel/bpf/core.c", i32 2393, i32 29}
!49 = !{ptr @bpf_stats_enabled_key, !50, !"bpf_stats_enabled_key", i1 false, i1 false}
!50 = !{!"../kernel/bpf/core.c", i32 2456, i32 1}
!51 = !{ptr @__ksymtab_bpf_stats_enabled_key, !52, !"__ksymtab_bpf_stats_enabled_key", i1 false, i1 false}
!52 = !{!"../kernel/bpf/core.c", i32 2457, i32 1}
!53 = !{ptr @__tracepoint_xdp_exception, !54, !"__tracepoint_xdp_exception", i1 false, i1 false}
!54 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!55 = !{ptr @__tracepoint_ptr_xdp_exception, !54, !"__tracepoint_ptr_xdp_exception", i1 false, i1 false}
!56 = !{ptr @__SCK__tp_func_xdp_exception, !54, !"__SCK__tp_func_xdp_exception", i1 false, i1 false}
!57 = !{ptr @__tracepoint_xdp_bulk_tx, !58, !"__tracepoint_xdp_bulk_tx", i1 false, i1 false}
!58 = !{!"../include/trace/events/xdp.h", i32 53, i32 1}
!59 = !{ptr @__tracepoint_ptr_xdp_bulk_tx, !58, !"__tracepoint_ptr_xdp_bulk_tx", i1 false, i1 false}
!60 = !{ptr @__SCK__tp_func_xdp_bulk_tx, !58, !"__SCK__tp_func_xdp_bulk_tx", i1 false, i1 false}
!61 = !{ptr @__tracepoint_xdp_redirect, !62, !"__tracepoint_xdp_redirect", i1 false, i1 false}
!62 = !{!"../include/trace/events/xdp.h", i32 140, i32 1}
!63 = !{ptr @__tracepoint_ptr_xdp_redirect, !62, !"__tracepoint_ptr_xdp_redirect", i1 false, i1 false}
!64 = !{ptr @__SCK__tp_func_xdp_redirect, !62, !"__SCK__tp_func_xdp_redirect", i1 false, i1 false}
!65 = !{ptr @__tracepoint_xdp_redirect_err, !66, !"__tracepoint_xdp_redirect_err", i1 false, i1 false}
!66 = !{!"../include/trace/events/xdp.h", i32 149, i32 1}
!67 = !{ptr @__tracepoint_ptr_xdp_redirect_err, !66, !"__tracepoint_ptr_xdp_redirect_err", i1 false, i1 false}
!68 = !{ptr @__SCK__tp_func_xdp_redirect_err, !66, !"__SCK__tp_func_xdp_redirect_err", i1 false, i1 false}
!69 = !{ptr @__tracepoint_xdp_redirect_map, !70, !"__tracepoint_xdp_redirect_map", i1 false, i1 false}
!70 = !{!"../include/trace/events/xdp.h", i32 171, i32 1}
!71 = !{ptr @__tracepoint_ptr_xdp_redirect_map, !70, !"__tracepoint_ptr_xdp_redirect_map", i1 false, i1 false}
!72 = !{ptr @__SCK__tp_func_xdp_redirect_map, !70, !"__SCK__tp_func_xdp_redirect_map", i1 false, i1 false}
!73 = !{ptr @__tracepoint_xdp_redirect_map_err, !74, !"__tracepoint_xdp_redirect_map_err", i1 false, i1 false}
!74 = !{!"../include/trace/events/xdp.h", i32 180, i32 1}
!75 = !{ptr @__tracepoint_ptr_xdp_redirect_map_err, !74, !"__tracepoint_ptr_xdp_redirect_map_err", i1 false, i1 false}
!76 = !{ptr @__SCK__tp_func_xdp_redirect_map_err, !74, !"__SCK__tp_func_xdp_redirect_map_err", i1 false, i1 false}
!77 = !{ptr @__tracepoint_xdp_cpumap_kthread, !78, !"__tracepoint_xdp_cpumap_kthread", i1 false, i1 false}
!78 = !{!"../include/trace/events/xdp.h", i32 189, i32 1}
!79 = !{ptr @__tracepoint_ptr_xdp_cpumap_kthread, !78, !"__tracepoint_ptr_xdp_cpumap_kthread", i1 false, i1 false}
!80 = !{ptr @__SCK__tp_func_xdp_cpumap_kthread, !78, !"__SCK__tp_func_xdp_cpumap_kthread", i1 false, i1 false}
!81 = !{ptr @__tracepoint_xdp_cpumap_enqueue, !82, !"__tracepoint_xdp_cpumap_enqueue", i1 false, i1 false}
!82 = !{!"../include/trace/events/xdp.h", i32 232, i32 1}
!83 = !{ptr @__tracepoint_ptr_xdp_cpumap_enqueue, !82, !"__tracepoint_ptr_xdp_cpumap_enqueue", i1 false, i1 false}
!84 = !{ptr @__SCK__tp_func_xdp_cpumap_enqueue, !82, !"__SCK__tp_func_xdp_cpumap_enqueue", i1 false, i1 false}
!85 = !{ptr @__tracepoint_xdp_devmap_xmit, !86, !"__tracepoint_xdp_devmap_xmit", i1 false, i1 false}
!86 = !{!"../include/trace/events/xdp.h", i32 267, i32 1}
!87 = !{ptr @__tracepoint_ptr_xdp_devmap_xmit, !86, !"__tracepoint_ptr_xdp_devmap_xmit", i1 false, i1 false}
!88 = !{ptr @__SCK__tp_func_xdp_devmap_xmit, !86, !"__SCK__tp_func_xdp_devmap_xmit", i1 false, i1 false}
!89 = !{ptr @__tracepoint_mem_disconnect, !90, !"__tracepoint_mem_disconnect", i1 false, i1 false}
!90 = !{!"../include/trace/events/xdp.h", i32 320, i32 1}
!91 = !{ptr @__tracepoint_ptr_mem_disconnect, !90, !"__tracepoint_ptr_mem_disconnect", i1 false, i1 false}
!92 = !{ptr @__SCK__tp_func_mem_disconnect, !90, !"__SCK__tp_func_mem_disconnect", i1 false, i1 false}
!93 = !{ptr @__tracepoint_mem_connect, !94, !"__tracepoint_mem_connect", i1 false, i1 false}
!94 = !{!"../include/trace/events/xdp.h", i32 347, i32 1}
!95 = !{ptr @__tracepoint_ptr_mem_connect, !94, !"__tracepoint_ptr_mem_connect", i1 false, i1 false}
!96 = !{ptr @__SCK__tp_func_mem_connect, !94, !"__SCK__tp_func_mem_connect", i1 false, i1 false}
!97 = !{ptr @__tracepoint_mem_return_failed, !98, !"__tracepoint_mem_return_failed", i1 false, i1 false}
!98 = !{!"../include/trace/events/xdp.h", i32 381, i32 1}
!99 = !{ptr @__tracepoint_ptr_mem_return_failed, !98, !"__tracepoint_ptr_mem_return_failed", i1 false, i1 false}
!100 = !{ptr @__SCK__tp_func_mem_return_failed, !98, !"__SCK__tp_func_mem_return_failed", i1 false, i1 false}
!101 = !{ptr @.str.7, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/trace/events/xdp.h", i32 26, i32 1}
!103 = !{ptr @__TRACE_SYSTEM_XDP_ABORTED, !102, !"__TRACE_SYSTEM_XDP_ABORTED", i1 false, i1 false}
!104 = !{ptr @TRACE_SYSTEM_XDP_ABORTED, !102, !"TRACE_SYSTEM_XDP_ABORTED", i1 false, i1 false}
!105 = !{ptr @.str.8, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__TRACE_SYSTEM_XDP_DROP, !102, !"__TRACE_SYSTEM_XDP_DROP", i1 false, i1 false}
!107 = !{ptr @TRACE_SYSTEM_XDP_DROP, !102, !"TRACE_SYSTEM_XDP_DROP", i1 false, i1 false}
!108 = !{ptr @.str.9, !102, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__TRACE_SYSTEM_XDP_PASS, !102, !"__TRACE_SYSTEM_XDP_PASS", i1 false, i1 false}
!110 = !{ptr @TRACE_SYSTEM_XDP_PASS, !102, !"TRACE_SYSTEM_XDP_PASS", i1 false, i1 false}
!111 = !{ptr @.str.10, !102, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @__TRACE_SYSTEM_XDP_TX, !102, !"__TRACE_SYSTEM_XDP_TX", i1 false, i1 false}
!113 = !{ptr @TRACE_SYSTEM_XDP_TX, !102, !"TRACE_SYSTEM_XDP_TX", i1 false, i1 false}
!114 = !{ptr @.str.11, !102, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__TRACE_SYSTEM_XDP_REDIRECT, !102, !"__TRACE_SYSTEM_XDP_REDIRECT", i1 false, i1 false}
!116 = !{ptr @TRACE_SYSTEM_XDP_REDIRECT, !102, !"TRACE_SYSTEM_XDP_REDIRECT", i1 false, i1 false}
!117 = !{ptr @.str.12, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/trace/events/xdp.h", i32 318, i32 1}
!119 = !{ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, !118, !"__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED", i1 false, i1 false}
!120 = !{ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, !118, !"TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED", i1 false, i1 false}
!121 = !{ptr @.str.13, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, !118, !"__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0", i1 false, i1 false}
!123 = !{ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, !118, !"TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0", i1 false, i1 false}
!124 = !{ptr @.str.14, !118, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, !118, !"__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL", i1 false, i1 false}
!126 = !{ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, !118, !"TRACE_SYSTEM_MEM_TYPE_PAGE_POOL", i1 false, i1 false}
!127 = !{ptr @.str.15, !118, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, !118, !"__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL", i1 false, i1 false}
!129 = !{ptr @TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, !118, !"TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL", i1 false, i1 false}
!130 = !{ptr @event_class_xdp_exception, !54, !"event_class_xdp_exception", i1 false, i1 false}
!131 = !{ptr @event_xdp_exception, !54, !"event_xdp_exception", i1 false, i1 false}
!132 = !{ptr @__event_xdp_exception, !54, !"__event_xdp_exception", i1 false, i1 false}
!133 = !{ptr @event_class_xdp_bulk_tx, !58, !"event_class_xdp_bulk_tx", i1 false, i1 false}
!134 = !{ptr @event_xdp_bulk_tx, !58, !"event_xdp_bulk_tx", i1 false, i1 false}
!135 = !{ptr @__event_xdp_bulk_tx, !58, !"__event_xdp_bulk_tx", i1 false, i1 false}
!136 = !{ptr @event_class_xdp_redirect_template, !137, !"event_class_xdp_redirect_template", i1 false, i1 false}
!137 = !{!"../include/trace/events/xdp.h", i32 89, i32 1}
!138 = !{ptr @event_xdp_redirect, !62, !"event_xdp_redirect", i1 false, i1 false}
!139 = !{ptr @__event_xdp_redirect, !62, !"__event_xdp_redirect", i1 false, i1 false}
!140 = !{ptr @event_xdp_redirect_err, !66, !"event_xdp_redirect_err", i1 false, i1 false}
!141 = !{ptr @__event_xdp_redirect_err, !66, !"__event_xdp_redirect_err", i1 false, i1 false}
!142 = !{ptr @event_xdp_redirect_map, !70, !"event_xdp_redirect_map", i1 false, i1 false}
!143 = !{ptr @__event_xdp_redirect_map, !70, !"__event_xdp_redirect_map", i1 false, i1 false}
!144 = !{ptr @event_xdp_redirect_map_err, !74, !"event_xdp_redirect_map_err", i1 false, i1 false}
!145 = !{ptr @__event_xdp_redirect_map_err, !74, !"__event_xdp_redirect_map_err", i1 false, i1 false}
!146 = !{ptr @event_class_xdp_cpumap_kthread, !78, !"event_class_xdp_cpumap_kthread", i1 false, i1 false}
!147 = !{ptr @event_xdp_cpumap_kthread, !78, !"event_xdp_cpumap_kthread", i1 false, i1 false}
!148 = !{ptr @__event_xdp_cpumap_kthread, !78, !"__event_xdp_cpumap_kthread", i1 false, i1 false}
!149 = !{ptr @event_class_xdp_cpumap_enqueue, !82, !"event_class_xdp_cpumap_enqueue", i1 false, i1 false}
!150 = !{ptr @event_xdp_cpumap_enqueue, !82, !"event_xdp_cpumap_enqueue", i1 false, i1 false}
!151 = !{ptr @__event_xdp_cpumap_enqueue, !82, !"__event_xdp_cpumap_enqueue", i1 false, i1 false}
!152 = !{ptr @event_class_xdp_devmap_xmit, !86, !"event_class_xdp_devmap_xmit", i1 false, i1 false}
!153 = !{ptr @event_xdp_devmap_xmit, !86, !"event_xdp_devmap_xmit", i1 false, i1 false}
!154 = !{ptr @__event_xdp_devmap_xmit, !86, !"__event_xdp_devmap_xmit", i1 false, i1 false}
!155 = !{ptr @event_class_mem_disconnect, !90, !"event_class_mem_disconnect", i1 false, i1 false}
!156 = !{ptr @event_mem_disconnect, !90, !"event_mem_disconnect", i1 false, i1 false}
!157 = !{ptr @__event_mem_disconnect, !90, !"__event_mem_disconnect", i1 false, i1 false}
!158 = !{ptr @event_class_mem_connect, !94, !"event_class_mem_connect", i1 false, i1 false}
!159 = !{ptr @event_mem_connect, !94, !"event_mem_connect", i1 false, i1 false}
!160 = !{ptr @__event_mem_connect, !94, !"__event_mem_connect", i1 false, i1 false}
!161 = !{ptr @event_class_mem_return_failed, !98, !"event_class_mem_return_failed", i1 false, i1 false}
!162 = !{ptr @event_mem_return_failed, !98, !"event_mem_return_failed", i1 false, i1 false}
!163 = !{ptr @__event_mem_return_failed, !98, !"__event_mem_return_failed", i1 false, i1 false}
!164 = !{ptr @__bpf_trace_tp_map_xdp_exception, !54, !"__bpf_trace_tp_map_xdp_exception", i1 false, i1 false}
!165 = !{ptr @__bpf_trace_tp_map_xdp_bulk_tx, !58, !"__bpf_trace_tp_map_xdp_bulk_tx", i1 false, i1 false}
!166 = !{ptr @__bpf_trace_tp_map_xdp_redirect, !62, !"__bpf_trace_tp_map_xdp_redirect", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_xdp_redirect_err, !66, !"__bpf_trace_tp_map_xdp_redirect_err", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_xdp_redirect_map, !70, !"__bpf_trace_tp_map_xdp_redirect_map", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_xdp_redirect_map_err, !74, !"__bpf_trace_tp_map_xdp_redirect_map_err", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_xdp_cpumap_kthread, !78, !"__bpf_trace_tp_map_xdp_cpumap_kthread", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_xdp_cpumap_enqueue, !82, !"__bpf_trace_tp_map_xdp_cpumap_enqueue", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_xdp_devmap_xmit, !86, !"__bpf_trace_tp_map_xdp_devmap_xmit", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_mem_disconnect, !90, !"__bpf_trace_tp_map_mem_disconnect", i1 false, i1 false}
!174 = !{ptr @__bpf_trace_tp_map_mem_connect, !94, !"__bpf_trace_tp_map_mem_connect", i1 false, i1 false}
!175 = !{ptr @__bpf_trace_tp_map_mem_return_failed, !98, !"__bpf_trace_tp_map_mem_return_failed", i1 false, i1 false}
!176 = !{ptr @__ksymtab___tracepoint_xdp_exception, !177, !"__ksymtab___tracepoint_xdp_exception", i1 false, i1 false}
!177 = !{!"../kernel/bpf/core.c", i32 2463, i32 1}
!178 = !{ptr @__ksymtab___traceiter_xdp_exception, !177, !"__ksymtab___traceiter_xdp_exception", i1 false, i1 false}
!179 = !{ptr @__ksymtab___SCK__tp_func_xdp_exception, !177, !"__ksymtab___SCK__tp_func_xdp_exception", i1 false, i1 false}
!180 = !{ptr @__ksymtab___tracepoint_xdp_bulk_tx, !181, !"__ksymtab___tracepoint_xdp_bulk_tx", i1 false, i1 false}
!181 = !{!"../kernel/bpf/core.c", i32 2464, i32 1}
!182 = !{ptr @__ksymtab___traceiter_xdp_bulk_tx, !181, !"__ksymtab___traceiter_xdp_bulk_tx", i1 false, i1 false}
!183 = !{ptr @__ksymtab___SCK__tp_func_xdp_bulk_tx, !181, !"__ksymtab___SCK__tp_func_xdp_bulk_tx", i1 false, i1 false}
!184 = !{ptr @bpf_jit_harden, !185, !"bpf_jit_harden", i1 false, i1 false}
!185 = !{!"../kernel/bpf/core.c", i32 533, i32 5}
!186 = !{ptr @bpf_jit_limit, !187, !"bpf_jit_limit", i1 false, i1 false}
!187 = !{!"../kernel/bpf/core.c", i32 534, i32 6}
!188 = !{ptr @bpf_jit_limit_max, !189, !"bpf_jit_limit_max", i1 false, i1 false}
!189 = !{!"../kernel/bpf/core.c", i32 535, i32 6}
!190 = !{ptr @bpf_tree, !191, !"bpf_tree", i1 false, i1 false}
!191 = !{!"../kernel/bpf/core.c", i32 619, i32 31}
!192 = !{ptr @bpf_jit_current, !193, !"bpf_jit_current", i1 false, i1 false}
!193 = !{!"../kernel/bpf/core.c", i32 811, i32 22}
!194 = !{ptr @__pcpu_unique_bpf_user_rnd_state, !195, !"__pcpu_unique_bpf_user_rnd_state", i1 false, i1 false}
!195 = !{!"../kernel/bpf/core.c", i32 2316, i32 8}
!196 = !{ptr @bpf_user_rnd_state, !195, !"bpf_user_rnd_state", i1 false, i1 false}
!197 = !{ptr @bpf_map_lookup_elem_proto, !198, !"bpf_map_lookup_elem_proto", i1 false, i1 false}
!198 = !{!"../kernel/bpf/core.c", i32 2347, i32 29}
!199 = !{ptr @bpf_map_update_elem_proto, !200, !"bpf_map_update_elem_proto", i1 false, i1 false}
!200 = !{!"../kernel/bpf/core.c", i32 2348, i32 29}
!201 = !{ptr @bpf_map_delete_elem_proto, !202, !"bpf_map_delete_elem_proto", i1 false, i1 false}
!202 = !{!"../kernel/bpf/core.c", i32 2349, i32 29}
!203 = !{ptr @bpf_map_push_elem_proto, !204, !"bpf_map_push_elem_proto", i1 false, i1 false}
!204 = !{!"../kernel/bpf/core.c", i32 2350, i32 29}
!205 = !{ptr @bpf_map_pop_elem_proto, !206, !"bpf_map_pop_elem_proto", i1 false, i1 false}
!206 = !{!"../kernel/bpf/core.c", i32 2351, i32 29}
!207 = !{ptr @bpf_map_peek_elem_proto, !208, !"bpf_map_peek_elem_proto", i1 false, i1 false}
!208 = !{!"../kernel/bpf/core.c", i32 2352, i32 29}
!209 = !{ptr @bpf_spin_lock_proto, !210, !"bpf_spin_lock_proto", i1 false, i1 false}
!210 = !{!"../kernel/bpf/core.c", i32 2353, i32 29}
!211 = !{ptr @bpf_spin_unlock_proto, !212, !"bpf_spin_unlock_proto", i1 false, i1 false}
!212 = !{!"../kernel/bpf/core.c", i32 2354, i32 29}
!213 = !{ptr @bpf_jiffies64_proto, !214, !"bpf_jiffies64_proto", i1 false, i1 false}
!214 = !{!"../kernel/bpf/core.c", i32 2355, i32 29}
!215 = !{ptr @bpf_get_prandom_u32_proto, !216, !"bpf_get_prandom_u32_proto", i1 false, i1 false}
!216 = !{!"../kernel/bpf/core.c", i32 2357, i32 29}
!217 = !{ptr @bpf_get_smp_processor_id_proto, !218, !"bpf_get_smp_processor_id_proto", i1 false, i1 false}
!218 = !{!"../kernel/bpf/core.c", i32 2358, i32 29}
!219 = !{ptr @bpf_get_numa_node_id_proto, !220, !"bpf_get_numa_node_id_proto", i1 false, i1 false}
!220 = !{!"../kernel/bpf/core.c", i32 2359, i32 29}
!221 = !{ptr @bpf_ktime_get_ns_proto, !222, !"bpf_ktime_get_ns_proto", i1 false, i1 false}
!222 = !{!"../kernel/bpf/core.c", i32 2360, i32 29}
!223 = !{ptr @bpf_ktime_get_boot_ns_proto, !224, !"bpf_ktime_get_boot_ns_proto", i1 false, i1 false}
!224 = !{!"../kernel/bpf/core.c", i32 2361, i32 29}
!225 = !{ptr @bpf_ktime_get_coarse_ns_proto, !226, !"bpf_ktime_get_coarse_ns_proto", i1 false, i1 false}
!226 = !{!"../kernel/bpf/core.c", i32 2362, i32 29}
!227 = !{ptr @bpf_get_current_pid_tgid_proto, !228, !"bpf_get_current_pid_tgid_proto", i1 false, i1 false}
!228 = !{!"../kernel/bpf/core.c", i32 2364, i32 29}
!229 = !{ptr @bpf_get_current_uid_gid_proto, !230, !"bpf_get_current_uid_gid_proto", i1 false, i1 false}
!230 = !{!"../kernel/bpf/core.c", i32 2365, i32 29}
!231 = !{ptr @bpf_get_current_comm_proto, !232, !"bpf_get_current_comm_proto", i1 false, i1 false}
!232 = !{!"../kernel/bpf/core.c", i32 2366, i32 29}
!233 = !{ptr @bpf_get_current_cgroup_id_proto, !234, !"bpf_get_current_cgroup_id_proto", i1 false, i1 false}
!234 = !{!"../kernel/bpf/core.c", i32 2367, i32 29}
!235 = !{ptr @bpf_get_current_ancestor_cgroup_id_proto, !236, !"bpf_get_current_ancestor_cgroup_id_proto", i1 false, i1 false}
!236 = !{!"../kernel/bpf/core.c", i32 2368, i32 29}
!237 = !{ptr @bpf_get_local_storage_proto, !238, !"bpf_get_local_storage_proto", i1 false, i1 false}
!238 = !{!"../kernel/bpf/core.c", i32 2369, i32 29}
!239 = !{ptr @bpf_get_ns_current_pid_tgid_proto, !240, !"bpf_get_ns_current_pid_tgid_proto", i1 false, i1 false}
!240 = !{!"../kernel/bpf/core.c", i32 2370, i32 29}
!241 = !{ptr @bpf_snprintf_btf_proto, !242, !"bpf_snprintf_btf_proto", i1 false, i1 false}
!242 = !{!"../kernel/bpf/core.c", i32 2371, i32 29}
!243 = !{ptr @bpf_seq_printf_btf_proto, !244, !"bpf_seq_printf_btf_proto", i1 false, i1 false}
!244 = !{!"../kernel/bpf/core.c", i32 2372, i32 29}
!245 = !{ptr @.str.16, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../kernel/bpf/core.c", i32 617, i32 8}
!247 = !{ptr @bpf_lock, !246, !"bpf_lock", i1 false, i1 false}
!248 = !{ptr @bpf_kallsyms, !249, !"bpf_kallsyms", i1 false, i1 false}
!249 = !{!"../kernel/bpf/core.c", i32 618, i32 8}
!250 = distinct !{null, !251, !"bpf_tree_ops", i1 false, i1 false}
!251 = !{!"../kernel/bpf/core.c", i32 612, i32 36}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../kernel/bpf/core.c", i32 543, i32 2}
!254 = !{ptr @.str.17, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../kernel/bpf/core.c", i32 568, i32 38}
!256 = !{ptr @.str.18, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../kernel/bpf/core.c", i32 576, i32 38}
!258 = distinct !{null, !259, !"__warned", i1 false, i1 false}
!259 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!260 = !{ptr @.str.19, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.20, !259, !"<string literal>", i1 false, i1 false}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!264 = !{ptr @.str.21, !263, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../kernel/bpf/core.c", i32 1827, i32 2}
!267 = !{ptr @empty_prog_array, !268, !"empty_prog_array", i1 false, i1 false}
!268 = !{!"../kernel/bpf/core.c", i32 1980, i32 3}
!269 = !{ptr @dummy_bpf_prog, !270, !"dummy_bpf_prog", i1 false, i1 false}
!270 = !{!"../kernel/bpf/core.c", i32 1965, i32 3}
!271 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!272 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!273 = !{ptr @.str.23, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.24, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!276 = !{ptr @.str.25, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!278 = !{ptr @__tpstrtab_xdp_exception, !54, !"__tpstrtab_xdp_exception", i1 false, i1 false}
!279 = !{ptr @__tpstrtab_xdp_bulk_tx, !58, !"__tpstrtab_xdp_bulk_tx", i1 false, i1 false}
!280 = !{ptr @__tpstrtab_xdp_redirect, !62, !"__tpstrtab_xdp_redirect", i1 false, i1 false}
!281 = !{ptr @__tpstrtab_xdp_redirect_err, !66, !"__tpstrtab_xdp_redirect_err", i1 false, i1 false}
!282 = !{ptr @__tpstrtab_xdp_redirect_map, !70, !"__tpstrtab_xdp_redirect_map", i1 false, i1 false}
!283 = !{ptr @__tpstrtab_xdp_redirect_map_err, !74, !"__tpstrtab_xdp_redirect_map_err", i1 false, i1 false}
!284 = !{ptr @__tpstrtab_xdp_cpumap_kthread, !78, !"__tpstrtab_xdp_cpumap_kthread", i1 false, i1 false}
!285 = !{ptr @__tpstrtab_xdp_cpumap_enqueue, !82, !"__tpstrtab_xdp_cpumap_enqueue", i1 false, i1 false}
!286 = !{ptr @__tpstrtab_xdp_devmap_xmit, !86, !"__tpstrtab_xdp_devmap_xmit", i1 false, i1 false}
!287 = !{ptr @__tpstrtab_mem_disconnect, !90, !"__tpstrtab_mem_disconnect", i1 false, i1 false}
!288 = !{ptr @__tpstrtab_mem_connect, !94, !"__tpstrtab_mem_connect", i1 false, i1 false}
!289 = !{ptr @__tpstrtab_mem_return_failed, !98, !"__tpstrtab_mem_return_failed", i1 false, i1 false}
!290 = !{ptr @str__xdp__trace_system_name, !291, !"str__xdp__trace_system_name", i1 false, i1 false}
!291 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!292 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @trace_event_fields_xdp_exception, !54, !"trace_event_fields_xdp_exception", i1 false, i1 false}
!298 = !{ptr @trace_event_type_funcs_xdp_exception, !54, !"trace_event_type_funcs_xdp_exception", i1 false, i1 false}
!299 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @trace_raw_output_xdp_exception.symbols, !54, !"symbols", i1 false, i1 false}
!306 = !{ptr @print_fmt_xdp_exception, !54, !"print_fmt_xdp_exception", i1 false, i1 false}
!307 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @trace_event_fields_xdp_bulk_tx, !58, !"trace_event_fields_xdp_bulk_tx", i1 false, i1 false}
!311 = !{ptr @trace_event_type_funcs_xdp_bulk_tx, !58, !"trace_event_type_funcs_xdp_bulk_tx", i1 false, i1 false}
!312 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @trace_raw_output_xdp_bulk_tx.symbols, !58, !"symbols", i1 false, i1 false}
!314 = !{ptr @print_fmt_xdp_bulk_tx, !58, !"print_fmt_xdp_bulk_tx", i1 false, i1 false}
!315 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @trace_event_fields_xdp_redirect_template, !137, !"trace_event_fields_xdp_redirect_template", i1 false, i1 false}
!319 = !{ptr @trace_event_type_funcs_xdp_redirect_template, !137, !"trace_event_type_funcs_xdp_redirect_template", i1 false, i1 false}
!320 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @trace_raw_output_xdp_redirect_template.symbols, !137, !"symbols", i1 false, i1 false}
!322 = !{ptr @print_fmt_xdp_redirect_template, !137, !"print_fmt_xdp_redirect_template", i1 false, i1 false}
!323 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @trace_event_fields_xdp_cpumap_kthread, !78, !"trace_event_fields_xdp_cpumap_kthread", i1 false, i1 false}
!331 = !{ptr @trace_event_type_funcs_xdp_cpumap_kthread, !78, !"trace_event_type_funcs_xdp_cpumap_kthread", i1 false, i1 false}
!332 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @trace_raw_output_xdp_cpumap_kthread.symbols, !78, !"symbols", i1 false, i1 false}
!334 = !{ptr @print_fmt_xdp_cpumap_kthread, !78, !"print_fmt_xdp_cpumap_kthread", i1 false, i1 false}
!335 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @trace_event_fields_xdp_cpumap_enqueue, !82, !"trace_event_fields_xdp_cpumap_enqueue", i1 false, i1 false}
!337 = !{ptr @trace_event_type_funcs_xdp_cpumap_enqueue, !82, !"trace_event_type_funcs_xdp_cpumap_enqueue", i1 false, i1 false}
!338 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @trace_raw_output_xdp_cpumap_enqueue.symbols, !82, !"symbols", i1 false, i1 false}
!340 = !{ptr @print_fmt_xdp_cpumap_enqueue, !82, !"print_fmt_xdp_cpumap_enqueue", i1 false, i1 false}
!341 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @trace_event_fields_xdp_devmap_xmit, !86, !"trace_event_fields_xdp_devmap_xmit", i1 false, i1 false}
!343 = !{ptr @trace_event_type_funcs_xdp_devmap_xmit, !86, !"trace_event_type_funcs_xdp_devmap_xmit", i1 false, i1 false}
!344 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @trace_raw_output_xdp_devmap_xmit.symbols, !86, !"symbols", i1 false, i1 false}
!346 = !{ptr @print_fmt_xdp_devmap_xmit, !86, !"print_fmt_xdp_devmap_xmit", i1 false, i1 false}
!347 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.61, !90, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @trace_event_fields_mem_disconnect, !90, !"trace_event_fields_mem_disconnect", i1 false, i1 false}
!354 = !{ptr @trace_event_type_funcs_mem_disconnect, !90, !"trace_event_type_funcs_mem_disconnect", i1 false, i1 false}
!355 = !{ptr @.str.63, !90, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.64, !90, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.65, !90, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.66, !90, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.67, !90, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @trace_raw_output_mem_disconnect.symbols, !90, !"symbols", i1 false, i1 false}
!361 = !{ptr @print_fmt_mem_disconnect, !90, !"print_fmt_mem_disconnect", i1 false, i1 false}
!362 = !{ptr @.str.68, !94, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.69, !94, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @trace_event_fields_mem_connect, !94, !"trace_event_fields_mem_connect", i1 false, i1 false}
!365 = !{ptr @trace_event_type_funcs_mem_connect, !94, !"trace_event_type_funcs_mem_connect", i1 false, i1 false}
!366 = !{ptr @.str.70, !94, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @trace_raw_output_mem_connect.symbols, !94, !"symbols", i1 false, i1 false}
!368 = !{ptr @print_fmt_mem_connect, !94, !"print_fmt_mem_connect", i1 false, i1 false}
!369 = !{ptr @.str.71, !98, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.72, !98, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @trace_event_fields_mem_return_failed, !98, !"trace_event_fields_mem_return_failed", i1 false, i1 false}
!372 = !{ptr @trace_event_type_funcs_mem_return_failed, !98, !"trace_event_type_funcs_mem_return_failed", i1 false, i1 false}
!373 = !{ptr @.str.73, !98, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @trace_raw_output_mem_return_failed.symbols, !98, !"symbols", i1 false, i1 false}
!375 = !{ptr @print_fmt_mem_return_failed, !98, !"print_fmt_mem_return_failed", i1 false, i1 false}
!376 = !{!"sp"}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{!"branch_weights", i32 1, i32 2000}
!387 = !{!"branch_weights", i32 2000, i32 1}
!388 = !{i64 2157484798, i64 2157485280, i64 2157484835, i64 2157484891, i64 2157484925, i64 2157484949, i64 2157484990, i64 2157485011, i64 2157485039, i64 2157485073}
!389 = !{i64 2152352755}
!390 = !{i64 2150274103}
!391 = !{i64 2150274259}
!392 = !{i64 2149840668}
!393 = !{i64 2149787058}
!394 = !{i64 2150266964}
!395 = !{i64 2149787324}
!396 = !{i8 0, i8 2}
!397 = !{i64 2148315347}
!398 = !{i64 2148230656, i64 2148230688, i64 2148230717, i64 2148230751, i64 2148230782, i64 2148230805}
!399 = !{i64 2148315576}
!400 = !{i64 2148232401, i64 2148232427, i64 2148232456, i64 2148232490, i64 2148232521, i64 2148232544}
!401 = !{i32 0, i32 33}
!402 = !{i64 2153427365, i64 2153427390}
!403 = !{i64 2149357466, i64 2149357471, i64 2149357492, i64 2149357536, i64 2149357570, i64 2149357591}
!404 = !{!"auto-init"}
!405 = !{i64 2157597193}
!406 = !{i64 2157598361}
