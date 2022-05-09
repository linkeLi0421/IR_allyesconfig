; ModuleID = '/llk/IR_all_yes/mm/vmstat.c_pt.bc'
source_filename = "../mm/vmstat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vm_event_states\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_event_states\09\09\09\09"
module asm "\09.long\09__crc_vm_event_states\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_event_states:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_event_states\22\09\09\09\09\09"
module asm "__kstrtabns_vm_event_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+all_vm_events\22, \22a\22\09"
module asm "\09.weak\09__crc_all_vm_events\09\09\09\09"
module asm "\09.long\09__crc_all_vm_events\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_all_vm_events:\09\09\09\09\09"
module asm "\09.asciz \09\22all_vm_events\22\09\09\09\09\09"
module asm "__kstrtabns_all_vm_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_zone_stat\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_zone_stat\09\09\09\09"
module asm "\09.long\09__crc_vm_zone_stat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_zone_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_zone_stat\22\09\09\09\09\09"
module asm "__kstrtabns_vm_zone_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_node_stat\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_node_stat\09\09\09\09"
module asm "\09.long\09__crc_vm_node_stat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_node_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_node_stat\22\09\09\09\09\09"
module asm "__kstrtabns_vm_node_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mod_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___mod_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc___mod_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__mod_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mod_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___mod_node_page_state\09\09\09\09"
module asm "\09.long\09__crc___mod_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__mod_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__inc_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___inc_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc___inc_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__inc_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__inc_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___inc_node_page_state\09\09\09\09"
module asm "\09.long\09__crc___inc_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__inc_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dec_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___dec_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc___dec_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__dec_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dec_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc___dec_node_page_state\09\09\09\09"
module asm "\09.long\09__crc___dec_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__dec_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mod_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_mod_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc_mod_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inc_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_inc_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc_inc_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dec_zone_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_dec_zone_page_state\09\09\09\09"
module asm "\09.long\09__crc_dec_zone_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dec_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inc_node_state\22, \22a\22\09"
module asm "\09.weak\09__crc_inc_node_state\09\09\09\09"
module asm "\09.long\09__crc_inc_node_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_node_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_node_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_node_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mod_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_mod_node_page_state\09\09\09\09"
module asm "\09.long\09__crc_mod_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inc_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_inc_node_page_state\09\09\09\09"
module asm "\09.long\09__crc_inc_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dec_node_page_state\22, \22a\22\09"
module asm "\09.weak\09__crc_dec_node_page_state\09\09\09\09"
module asm "\09.long\09__crc_dec_node_page_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dec_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vm_event_state = type { [76 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.per_cpu_zonestat = type { [11 x i8], i8 }
%struct.per_cpu_nodestat = type { i8, [40 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@vm_event_states = weak dso_local global %struct.vm_event_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_vm_event_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_event_states = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_event_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_event_states to i32), ptr @__kstrtab_vm_event_states, ptr @__kstrtabns_vm_event_states }, section "___ksymtab+vm_event_states", align 4
@__kstrtab_all_vm_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_all_vm_events = external dso_local constant [0 x i8], align 1
@__ksymtab_all_vm_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @all_vm_events to i32), ptr @__kstrtab_all_vm_events, ptr @__kstrtabns_all_vm_events }, section "___ksymtab_gpl+all_vm_events", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vm_zone_stat = dso_local global [11 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 128
@__kstrtab_vm_zone_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_zone_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_zone_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_zone_stat to i32), ptr @__kstrtab_vm_zone_stat, ptr @__kstrtabns_vm_zone_stat }, section "___ksymtab+vm_zone_stat", align 4
@vm_node_stat = dso_local global [40 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 128
@__kstrtab_vm_node_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_node_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_node_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_node_stat to i32), ptr @__kstrtab_vm_node_stat, ptr @__kstrtabns_vm_node_stat }, section "___ksymtab+vm_node_stat", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab___mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___mod_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mod_zone_page_state to i32), ptr @__kstrtab___mod_zone_page_state, ptr @__kstrtabns___mod_zone_page_state }, section "___ksymtab+__mod_zone_page_state", align 4
@__mod_node_page_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm/vmstat.c\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab___mod_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___mod_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___mod_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mod_node_page_state to i32), ptr @__kstrtab___mod_node_page_state, ptr @__kstrtabns___mod_node_page_state }, section "___ksymtab+__mod_node_page_state", align 4
@__inc_node_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___inc_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inc_zone_page_state to i32), ptr @__kstrtab___inc_zone_page_state, ptr @__kstrtabns___inc_zone_page_state }, section "___ksymtab+__inc_zone_page_state", align 4
@__kstrtab___inc_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___inc_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___inc_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inc_node_page_state to i32), ptr @__kstrtab___inc_node_page_state, ptr @__kstrtabns___inc_node_page_state }, section "___ksymtab+__inc_node_page_state", align 4
@__dec_node_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___dec_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dec_zone_page_state to i32), ptr @__kstrtab___dec_zone_page_state, ptr @__kstrtabns___dec_zone_page_state }, section "___ksymtab+__dec_zone_page_state", align 4
@__kstrtab___dec_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___dec_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___dec_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dec_node_page_state to i32), ptr @__kstrtab___dec_node_page_state, ptr @__kstrtabns___dec_node_page_state }, section "___ksymtab+__dec_node_page_state", align 4
@__kstrtab_mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_zone_page_state to i32), ptr @__kstrtab_mod_zone_page_state, ptr @__kstrtabns_mod_zone_page_state }, section "___ksymtab+mod_zone_page_state", align 4
@__kstrtab_inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_zone_page_state to i32), ptr @__kstrtab_inc_zone_page_state, ptr @__kstrtabns_inc_zone_page_state }, section "___ksymtab+inc_zone_page_state", align 4
@__kstrtab_dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dec_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dec_zone_page_state to i32), ptr @__kstrtab_dec_zone_page_state, ptr @__kstrtabns_dec_zone_page_state }, section "___ksymtab+dec_zone_page_state", align 4
@__kstrtab_inc_node_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_node_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_node_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_node_state to i32), ptr @__kstrtab_inc_node_state, ptr @__kstrtabns_inc_node_state }, section "___ksymtab+inc_node_state", align 4
@__kstrtab_mod_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_node_page_state to i32), ptr @__kstrtab_mod_node_page_state, ptr @__kstrtabns_mod_node_page_state }, section "___ksymtab+mod_node_page_state", align 4
@__kstrtab_inc_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_node_page_state to i32), ptr @__kstrtab_inc_node_page_state, ptr @__kstrtabns_inc_node_page_state }, section "___ksymtab+inc_node_page_state", align 4
@__kstrtab_dec_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dec_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dec_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dec_node_page_state to i32), ptr @__kstrtab_dec_node_page_state, ptr @__kstrtabns_dec_node_page_state }, section "___ksymtab+dec_node_page_state", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_free_pages\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_zone_inactive_anon\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_zone_active_anon\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_zone_inactive_file\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_zone_active_file\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_zone_unevictable\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_zone_write_pending\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_mlock\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_bounce\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_zspages\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_free_cma\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_inactive_anon\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_active_anon\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_inactive_file\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_active_file\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_unevictable\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_slab_reclaimable\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_slab_unreclaimable\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_isolated_anon\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_isolated_file\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"workingset_nodes\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"workingset_refault_anon\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"workingset_refault_file\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"workingset_activate_anon\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"workingset_activate_file\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"workingset_restore_anon\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"workingset_restore_file\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"workingset_nodereclaim\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_anon_pages\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_mapped\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_file_pages\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_dirty\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_writeback\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_writeback_temp\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_shmem\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_shmem_hugepages\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_shmem_pmdmapped\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_file_hugepages\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_file_pmdmapped\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nr_anon_transparent_hugepages\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_vmscan_write\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nr_vmscan_immediate_reclaim\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_dirtied\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_written\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr_throttled_written\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nr_kernel_misc_reclaimable\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr_foll_pin_acquired\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr_foll_pin_released\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_kernel_stack\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_page_table_pages\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_swapcached\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_dirty_threshold\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nr_dirty_background_threshold\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pgpgin\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pgpgout\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pswpin\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pswpout\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pgalloc_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pgalloc_normal\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pgalloc_high\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pgalloc_movable\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allocstall_dma\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"allocstall_normal\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"allocstall_high\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"allocstall_movable\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pgskip_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pgskip_normal\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pgskip_high\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pgskip_movable\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pgfree\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pgactivate\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pgdeactivate\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pglazyfree\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pgfault\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pgmajfault\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pglazyfreed\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pgrefill\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pgreuse\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pgsteal_kswapd\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pgsteal_direct\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pgdemote_kswapd\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pgdemote_direct\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pgscan_kswapd\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pgscan_direct\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pgscan_direct_throttle\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pgscan_anon\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pgscan_file\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pgsteal_anon\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pgsteal_file\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pginodesteal\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slabs_scanned\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kswapd_inodesteal\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kswapd_low_wmark_hit_quickly\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kswapd_high_wmark_hit_quickly\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pageoutrun\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pgrotated\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drop_pagecache\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drop_slab\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oom_kill\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pgmigrate_success\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pgmigrate_fail\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"thp_migration_success\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thp_migration_fail\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thp_migration_split\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"compact_migrate_scanned\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"compact_free_scanned\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"compact_isolated\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compact_stall\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"compact_fail\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"compact_success\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"compact_daemon_wake\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"compact_daemon_migrate_scanned\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"compact_daemon_free_scanned\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cma_alloc_success\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cma_alloc_fail\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unevictable_pgs_culled\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unevictable_pgs_scanned\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unevictable_pgs_rescued\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unevictable_pgs_mlocked\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unevictable_pgs_munlocked\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unevictable_pgs_cleared\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unevictable_pgs_stranded\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"balloon_inflate\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"balloon_deflate\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"balloon_migrate\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vmacache_find_calls\00", [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vmacache_find_hits\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"swap_ra\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swap_ra_hit\00", [20 x i8] zeroinitializer }, align 32
@vmstat_text = dso_local constant { [129 x ptr], [156 x i8] } { [129 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], [156 x i8] zeroinitializer }, align 32
@sysctl_stat_interval = dso_local local_unnamed_addr global i32 100, section ".data..read_mostly", align 4
@vmstat_refresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014%s: %s %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vmstat_refresh\00", [17 x i8] zeroinitializer }, align 32
@vmstat_refresh._entry_ptr = internal global ptr @vmstat_refresh._entry, section ".printk_index", align 4
@vmstat_refresh._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vmstat_refresh._entry_ptr.136 = internal global ptr @vmstat_refresh._entry.135, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@vmstat_work = weak dso_local global %struct.delayed_work zeroinitializer, section ".data..percpu", align 4
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_percpu_wq\00", [19 x i8] zeroinitializer }, align 32
@mm_percpu_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/vmstat:dead\00", [17 x i8] zeroinitializer }, align 32
@init_mm_internals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013vmstat: failed to register 'dead' hotplug state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_mm_internals\00", [46 x i8] zeroinitializer }, align 32
@init_mm_internals._entry_ptr = internal global ptr @init_mm_internals._entry, section ".printk_index", align 4
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/vmstat:online\00", [47 x i8] zeroinitializer }, align 32
@init_mm_internals._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.2, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013vmstat: failed to register 'online' hotplug state\0A\00", [43 x i8] zeroinitializer }, align 32
@init_mm_internals._entry_ptr.144 = internal global ptr @init_mm_internals._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buddyinfo\00", [22 x i8] zeroinitializer }, align 32
@fragmentation_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @frag_show }, [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pagetypeinfo\00", [19 x i8] zeroinitializer }, align 32
@pagetypeinfo_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @pagetypeinfo_show }, [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmstat\00", [25 x i8] zeroinitializer }, align 32
@vmstat_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @vmstat_start, ptr @vmstat_stop, ptr @vmstat_next, ptr @vmstat_show }, [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zoneinfo\00", [23 x i8] zeroinitializer }, align 32
@zoneinfo_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @zoneinfo_show }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_vmstat__299_2239_extfrag_debug_init6 = internal global ptr @extfrag_debug_init, section ".initcall6.init", align 4
@__pcpu_scope_vm_event_states = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_vm_event_states = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@vm_numa_event = dso_local local_unnamed_addr global [0 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 128
@__pcpu_unique_vmstat_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.149 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__fragmentation_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@start_shepherd_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [338 x i8], [78 x i8] } { [338 x i8] c"(work_completion)(&(({ do { const void *__vpp_verify = (typeof((&vmstat_work) + 0))((void *)0); (void)__vpp_verify; } while (0); ({ unsigned long __ptr; __ptr = (unsigned long) ((typeof(*((&vmstat_work))) *)((&vmstat_work))); (typeof((typeof(*((&vmstat_work))) *)((&vmstat_work)))) (__ptr + (((__per_cpu_offset[(cpu)])))); }); }))->work)\00", [78 x i8] zeroinitializer }, align 32
@start_shepherd_timer.__key.151 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [320 x i8], [64 x i8] } { [320 x i8] c"&(({ do { const void *__vpp_verify = (typeof((&vmstat_work) + 0))((void *)0); (void)__vpp_verify; } while (0); ({ unsigned long __ptr; __ptr = (unsigned long) ((typeof(*((&vmstat_work))) *)((&vmstat_work))); (typeof((typeof(*((&vmstat_work))) *)((&vmstat_work)))) (__ptr + (((__per_cpu_offset[(cpu)])))); }); }))->timer\00", [64 x i8] zeroinitializer }, align 32
@shepherd = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @shepherd, i64 4), ptr getelementptr (i8, ptr @shepherd, i64 4) }, ptr @vmstat_shepherd, %struct.lockdep_map { ptr @shepherd, [2 x ptr] zeroinitializer, ptr @.str.153, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2621440, %struct.lockdep_map { ptr @.str.154, [2 x ptr] zeroinitializer, ptr @.str.154, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(shepherd).work\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/vmstat.c:1999\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Node %d, zone %8s \00", [45 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%6lu \00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Page block order: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pages per block:  %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-43s \00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Free pages count per migrate type at order\00", [53 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%6d \00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Node %4d, zone %8s, type %12s \00", [33 x i8] zeroinitializer }, align 32
@migratetype_names = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%6lu \00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A%-23s\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Number of blocks type \00", [41 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%12s \00", [26 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%12lu \00", [25 x i8] zeroinitializer }, align 32
@page_owner_inited = external dso_local global %struct.static_key_false, align 4
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Number of mixed blocks \00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.171 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_unstable 0\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Node %d, zone %8s\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A  per-node stats\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A      %-12s %lu\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [190 x i8], [34 x i8] } { [190 x i8] c"\0A  pages free     %lu\0A        boost    %lu\0A        min      %lu\0A        low      %lu\0A        high     %lu\0A        spanned  %lu\0A        present  %lu\0A        managed  %lu\0A        cma      %lu\00", [34 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A        protection: (%ld\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", %ld\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A  pagesets\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\0A    cpu: %i\0A              count: %i\0A              high:  %i\0A              batch: %i\00", [43 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A  vm stats threshold: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0A  node_unreclaimable:  %u\0A  start_pfn:           %lu\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extfrag\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unusable_index\00", [17 x i8] zeroinitializer }, align 32
@unusable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @unusable_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extfrag_index\00", [18 x i8] zeroinitializer }, align 32
@extfrag_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @extfrag_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@unusable_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @unusable_show }, [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%03d \00", [23 x i8] zeroinitializer }, align 32
@extfrag_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @extfrag_show }, [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%2d.%03d \00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 390, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1175, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1176, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1177, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1178, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1179, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1180, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1181, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1182, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1183, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1185, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1187, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1200, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1201, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1202, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1203, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1204, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1205, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1206, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1207, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1208, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1209, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1210, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1211, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1212, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1213, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1214, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1215, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1216, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1217, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1218, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1219, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1220, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1221, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1222, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1223, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1224, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1225, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1226, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1227, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1228, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1229, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1230, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1231, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1232, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1233, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1234, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1235, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1236, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1237, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1241, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1243, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1247, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1248, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1252, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1253, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1254, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1255, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1257, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1258, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1259, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1261, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1262, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1263, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1264, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1266, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1267, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1268, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1270, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1271, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1272, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1273, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1274, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1275, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1276, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1277, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1278, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1279, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1280, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1281, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1282, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1287, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1288, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1289, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1290, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1291, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1292, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1294, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1296, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1297, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1298, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1308, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1309, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1310, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1311, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1312, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1315, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1316, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1317, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1318, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1319, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1320, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1321, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1322, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1323, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1331, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1332, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1334, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1335, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1336, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1337, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1338, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1339, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1340, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1368, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1369, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1371, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1382, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1383, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1386, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1387, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [12 x i8] c"vmstat_text\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1173, i32 20 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1897, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1911, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2080, i32 33 }
@___asan_gen_.596 = private unnamed_addr constant [13 x i8] c"mm_percpu_wq\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2074, i32 26 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2083, i32 56 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2086, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2088, i32 55 }
@___asan_gen_.614 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2092, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2101, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"fragmentation_op\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1626, i32 36 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2102, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [16 x i8] c"pagetypeinfo_op\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1633, i32 36 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2103, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [10 x i8] c"vmstat_op\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1846, i32 36 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2104, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [12 x i8] c"zoneinfo_op\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1755, i32 36 }
@___asan_gen_.645 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1368, i32 10 }
@___asan_gen_.653 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2026, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant [9 x i8] c"shepherd\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1999, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1455, i32 16 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1461, i32 17 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1616, i32 16 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1617, i32 16 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1524, i32 16 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1524, i32 26 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1526, i32 17 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1481, i32 17 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1508, i32 18 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1508, i32 40 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1508, i32 46 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1570, i32 16 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1570, i32 27 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1572, i32 17 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1560, i32 17 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1594, i32 27 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1827, i32 25 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1835, i32 15 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1658, i32 16 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1660, i32 17 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1666, i32 18 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1671, i32 6 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1691, i32 6 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1694, i32 17 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1713, i32 16 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1720, i32 7 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1730, i32 17 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1735, i32 6 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2228, i32 42 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2230, i32 22 }
@___asan_gen_.758 = private unnamed_addr constant [14 x i8] c"unusable_fops\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2180, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2233, i32 22 }
@___asan_gen_.764 = private unnamed_addr constant [13 x i8] c"extfrag_fops\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2222, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant [14 x i8] c"unusable_sops\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2173, i32 36 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2145, i32 17 }
@___asan_gen_.773 = private unnamed_addr constant [13 x i8] c"extfrag_sops\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2215, i32 36 }
@___asan_gen_.776 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.777 = private constant [15 x i8] c"../mm/vmstat.c\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 2197, i32 17 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @__initcall__kmod_vmstat__299_2239_extfrag_debug_init6, ptr @__ksymtab___dec_node_page_state, ptr @__ksymtab___dec_zone_page_state, ptr @__ksymtab___inc_node_page_state, ptr @__ksymtab___inc_zone_page_state, ptr @__ksymtab___mod_node_page_state, ptr @__ksymtab___mod_zone_page_state, ptr @__ksymtab_all_vm_events, ptr @__ksymtab_dec_node_page_state, ptr @__ksymtab_dec_zone_page_state, ptr @__ksymtab_inc_node_page_state, ptr @__ksymtab_inc_node_state, ptr @__ksymtab_inc_zone_page_state, ptr @__ksymtab_mod_node_page_state, ptr @__ksymtab_mod_zone_page_state, ptr @__ksymtab_vm_event_states, ptr @__ksymtab_vm_node_stat, ptr @__ksymtab_vm_zone_stat, ptr @init_mm_internals._entry, ptr @init_mm_internals._entry.142, ptr @init_mm_internals._entry_ptr, ptr @init_mm_internals._entry_ptr.144, ptr @vmstat_refresh._entry, ptr @vmstat_refresh._entry.135, ptr @vmstat_refresh._entry_ptr, ptr @vmstat_refresh._entry_ptr.136, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @vmstat_text, ptr @.str.133, ptr @.str.134, ptr @.str.137, ptr @mm_percpu_wq, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @fragmentation_op, ptr @.str.146, ptr @pagetypeinfo_op, ptr @.str.147, ptr @vmstat_op, ptr @.str.148, ptr @zoneinfo_op, ptr @.str.149, ptr @start_shepherd_timer.__key, ptr @.str.150, ptr @start_shepherd_timer.__key.151, ptr @.str.152, ptr @shepherd, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @unusable_fops, ptr @.str.185, ptr @extfrag_fops, ptr @unusable_sops, ptr @.str.186, ptr @extfrag_sops, ptr @.str.187], section "llvm.metadata"
@0 = internal global [197 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmstat_text to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmstat_refresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmstat_refresh._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_percpu_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mm_internals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mm_internals._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fragmentation_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagetypeinfo_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmstat_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoneinfo_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_shepherd_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 338, i32 416, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_shepherd_timer.__key.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shepherd to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unusable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extfrag_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unusable_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extfrag_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @all_vm_events(ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #14
  %0 = call ptr @memset(ptr %ret, i32 0, i32 304)
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp17.i = icmp ult i32 %call16.i, %1
  br i1 %cmp17.i, label %for.body.i, label %sum_vm_events.exit

for.cond.loopexit.i:                              ; preds = %for.body4.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call18.i, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %2
  br i1 %cmp.i, label %for.body.i, label %sum_vm_events.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry
  %call18.i = phi i32 [ %call.i, %for.cond.loopexit.i ], [ %call16.i, %entry ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, ptrtoint (ptr @vm_event_states to i32)
  %5 = inttoptr i32 %add.i to ptr
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i, %for.body.i
  %i.015.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body4.i ]
  %arrayidx5.i = getelementptr [76 x i32], ptr %5, i32 0, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %ret, i32 %i.015.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %9, %7
  store i32 %add7.i, ptr %arrayidx6.i, align 4
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 76
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body4.i

sum_vm_events.exit:                               ; preds = %for.cond.loopexit.i, %entry
  tail call void @cpus_read_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_events_fold_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @vm_event_states to i32)
  %2 = inttoptr i32 %add to ptr
  br label %for.body

for.body:                                         ; preds = %count_vm_events.exit, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %count_vm_events.exit ]
  %arrayidx2 = getelementptr [76 x i32], ptr %2, i32 0, i32 %i.010
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %arrayidx.i = getelementptr [76 x i32], ptr @vm_event_states, i32 0, i32 %i.010
  %6 = ptrtoint ptr %arrayidx.i to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add14.i = add i32 %15, %4
  store i32 %add14.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i.i = and i32 %16, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %count_vm_events.exit, !prof !455

if.then.i:                                        ; preds = %for.body
  tail call void @warn_bogus_irq_restore() #14
  br label %count_vm_events.exit

count_vm_events.exit:                             ; preds = %if.then.i, %for.body
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #14, !srcloc !456
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 76
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %count_vm_events.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calculate_pressure_threshold(ptr nocapture noundef readonly %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i32], ptr %zone, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone, align 128
  %sub = sub i32 %1, %3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %div = udiv i32 %sub, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %div, i32 1)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 125)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calculate_normal_threshold(ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %managed_pages.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i, i32 noundef 4) #14
  %0 = ptrtoint ptr %managed_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %managed_pages.i, align 4
  %shr = lshr i32 %1, 15
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %tobool.not.i = icmp eq i32 %2, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 true) #14, !range !457
  %.neg = mul nsw i32 %3, -2
  %sub.i.op = add nsw i32 %.neg, 64
  %mul = select i1 %tobool.not.i, i32 0, i32 %sub.i.op
  %tobool.not.i8 = icmp ult i32 %1, 32768
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #14, !range !457
  %sub.i9.op = sub nuw nsw i32 33, %4
  %add = select i1 %tobool.not.i8, i32 1, i32 %sub.i9.op
  %mul4 = mul nuw nsw i32 %mul, %add
  %5 = tail call i32 @llvm.umin.i32(i32 %mul4, i32 125)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @refresh_zone_stat_thresholds() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @first_online_pgdat() #14
  %tobool.not106 = icmp eq ptr %call, null
  br i1 %tobool.not106, label %for.end6, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc, %entry
  %pgdat.0107 = phi ptr [ %call5, %for.inc ], [ %call, %entry ]
  %call2103 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp104 = icmp ult i32 %call2103, %0
  br i1 %cmp104, label %do.body.lr.ph, label %for.inc

do.body.lr.ph:                                    ; preds = %for.cond1.preheader
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat.0107, i32 0, i32 30
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.lr.ph
  %call2105 = phi i32 [ %call2103, %do.body.lr.ph ], [ %call2, %do.body ]
  %1 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %per_cpu_nodestats, align 128
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2105
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  %call2 = tail call i32 @cpumask_next(i32 noundef %call2105, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %8
  br i1 %cmp, label %do.body, label %for.inc

for.inc:                                          ; preds = %do.body, %for.cond1.preheader
  %call5 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.0107) #14
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.end6, label %for.cond1.preheader

for.end6:                                         ; preds = %for.inc, %entry
  %call7 = tail call ptr @first_online_pgdat() #14
  %tobool9.not112 = icmp eq ptr %call7, null
  br i1 %tobool9.not112, label %for.end74, label %for.body10

for.body10:                                       ; preds = %for.inc72, %for.end6
  %zone.0113 = phi ptr [ %call73, %for.inc72 ], [ %call7, %for.end6 ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 13
  %9 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %for.inc72, label %if.else

if.else:                                          ; preds = %for.body10
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 4
  %11 = ptrtoint ptr %zone_pgdat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zone_pgdat, align 4
  %managed_pages.i.i = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %managed_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %managed_pages.i.i, align 4
  %shr.i = lshr i32 %14, 15
  %call.i.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %15 = load volatile i32, ptr @__num_online_cpus, align 4
  %tobool.not.i.i = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #14, !range !457
  %.neg.i = mul nsw i32 %16, -2
  %sub.i.op.i = add nsw i32 %.neg.i, 64
  %mul.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i
  %tobool.not.i8.i = icmp ult i32 %14, 32768
  %17 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !457
  %sub.i9.op.i = sub nuw nsw i32 33, %17
  %add.i = select i1 %tobool.not.i8.i, i32 1, i32 %sub.i9.op.i
  %mul4.i = mul nuw nsw i32 %mul.i, %add.i
  %18 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 125) #14
  %call15109 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp16110 = icmp ult i32 %call15109, %19
  br i1 %cmp16110, label %for.body17.lr.ph, label %for.end55

for.body17.lr.ph:                                 ; preds = %if.else
  %conv = trunc i32 %18 to i8
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 6
  %per_cpu_nodestats34 = getelementptr inbounds %struct.pglist_data, ptr %12, i32 0, i32 30
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %call15111 = phi i32 [ %call15109, %for.body17.lr.ph ], [ %call15, %for.body17 ]
  %20 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %per_cpu_zonestats, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call15111
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %24, %22
  %25 = inttoptr i32 %add26 to ptr
  %stat_threshold27 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stat_threshold27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %stat_threshold27, align 1
  %27 = ptrtoint ptr %per_cpu_nodestats34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %per_cpu_nodestats34, align 128
  %29 = ptrtoint ptr %28 to i32
  %30 = load i32, ptr %arrayidx25, align 4
  %add37 = add i32 %30, %29
  %31 = inttoptr i32 %add37 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv39 = sext i8 %33 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %18, i32 %conv39)
  %conv43 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv43, ptr %31, align 1
  %call15 = tail call i32 @cpumask_next(i32 noundef %call15111, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call15, %36
  br i1 %cmp16, label %for.body17, label %for.end55

for.end55:                                        ; preds = %for.body17, %if.else
  %arrayidx56 = getelementptr [3 x i32], ptr %zone.0113, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx56, align 4
  %39 = ptrtoint ptr %zone.0113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %zone.0113, align 128
  %sub = sub i32 %38, %40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %41 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = mul i32 %41, %18
  %cmp63 = icmp ugt i32 %mul, %sub
  br i1 %cmp63, label %if.then65, label %for.inc72

if.then65:                                        ; preds = %for.end55
  %watermark_boost = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 1
  %arrayidx67 = getelementptr [3 x i32], ptr %zone.0113, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx67, align 8
  %44 = ptrtoint ptr %watermark_boost to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %watermark_boost, align 4
  %add69 = add i32 %43, %mul
  %add70 = add i32 %add69, %45
  %percpu_drift_mark = getelementptr inbounds %struct.zone, ptr %zone.0113, i32 0, i32 25
  %46 = ptrtoint ptr %percpu_drift_mark to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add70, ptr %percpu_drift_mark, align 128
  br label %for.inc72

for.inc72:                                        ; preds = %if.then65, %for.end55, %for.body10
  %call73 = tail call ptr @next_zone(ptr noundef nonnull %zone.0113) #14
  %tobool9.not = icmp eq ptr %call73, null
  br i1 %tobool9.not, label %for.end74, label %for.body10

for.end74:                                        ; preds = %for.inc72, %for.end6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_pgdat_percpu_threshold(ptr noundef %pgdat, ptr nocapture noundef readonly %calculate_pressure) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_zones = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 2
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 8
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %for.body, label %for.end7

for.body:                                         ; preds = %for.inc, %entry
  %i.019 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %percpu_drift_mark = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 %i.019, i32 25
  %2 = ptrtoint ptr %percpu_drift_mark to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %percpu_drift_mark, align 128
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 %i.019
  %call = tail call i32 %calculate_pressure(ptr noundef %arrayidx) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call215 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp316 = icmp ult i32 %call215, %4
  br i1 %cmp316, label %for.body4.lr.ph, label %for.inc

for.body4.lr.ph:                                  ; preds = %if.end
  %conv = trunc i32 %call to i8
  %per_cpu_zonestats = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 %i.019, i32 6
  br label %for.body4

for.body4:                                        ; preds = %for.body4, %for.body4.lr.ph
  %call217 = phi i32 [ %call215, %for.body4.lr.ph ], [ %call2, %for.body4 ]
  %5 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %per_cpu_zonestats, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx6 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call217
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stat_threshold to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %stat_threshold, align 1
  %call2 = tail call i32 @cpumask_next(i32 noundef %call217, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp3 = icmp ult i32 %call2, %4
  br i1 %cmp3, label %for.body4, label %for.inc

for.inc:                                          ; preds = %for.body4, %if.end, %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %12 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_zones, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body, label %for.end7

for.end7:                                         ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mod_zone_page_state(ptr noundef %zone, i32 noundef %item, i32 noundef %delta) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 6
  %0 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_zonestats, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %item
  %2 = ptrtoint ptr %add.ptr to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = sext i8 %11 to i32
  %add9 = add i32 %conv, %delta
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %stat_threshold to i32
  %add27 = add i32 %8, %12
  %13 = inttoptr i32 %add27 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv29 = sext i8 %15 to i32
  %16 = tail call i32 @llvm.abs.i32(i32 %add9, i1 false)
  %cmp32 = icmp sgt i32 %16, %conv29
  br i1 %cmp32, label %if.then, label %if.end, !prof !455

if.then:                                          ; preds = %entry
  tail call fastcc void @zone_page_state_add(i32 noundef %add9, ptr noundef %zone, i32 noundef %item)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %x.0 = phi i32 [ 0, %if.then ], [ %add9, %entry ]
  %conv41 = trunc i32 %x.0 to i8
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %20, %2
  %21 = inttoptr i32 %add52 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv41, ptr %21, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zone_page_state_add(i32 noundef %x, ptr noundef %zone, i32 noundef %item) unnamed_addr #4 align 64 {
entry:
  %arrayidx = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 %item
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %x, ptr elementtype(i32) %arrayidx) #14, !srcloc !458
  %arrayidx1 = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %item
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1, ptr %arrayidx1, i32 %x, ptr elementtype(i32) %arrayidx1) #14, !srcloc !458
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mod_node_page_state(ptr noundef %pgdat, i32 noundef %item, i32 noundef %delta) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 30
  %0 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_nodestats, align 128
  %vm_node_stat_diff = getelementptr inbounds %struct.per_cpu_nodestat, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %vm_node_stat_diff, i32 %item
  %2 = add i32 %item, -5
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %and = and i32 %delta, 4095
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end29, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %.b119 = load i1, ptr @__mod_node_page_state.__already_done, align 1
  br i1 %.b119, label %if.end29, label %if.then8, !prof !459

if.then8:                                         ; preds = %land.rhs
  store i1 true, ptr @__mod_node_page_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 390, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then8, %land.rhs, %if.then
  %shr = ashr i32 %delta, 12
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %entry
  %delta.addr.0 = phi i32 [ %shr, %if.end29 ], [ %delta, %entry ]
  %4 = ptrtoint ptr %add.ptr to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !443) #14
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = sext i8 %13 to i32
  %add51 = add i32 %delta.addr.0, %conv
  %14 = ptrtoint ptr %1 to i32
  %add69 = add i32 %10, %14
  %15 = inttoptr i32 %add69 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv71 = sext i8 %17 to i32
  %18 = tail call i32 @llvm.abs.i32(i32 %add51, i1 false)
  %cmp74 = icmp sgt i32 %18, %conv71
  br i1 %cmp74, label %if.then82, label %if.end83, !prof !455

if.then82:                                        ; preds = %if.end37
  tail call fastcc void @node_page_state_add(i32 noundef %add51, ptr noundef %pgdat, i32 noundef %item)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end37
  %x.0 = phi i32 [ 0, %if.then82 ], [ %add51, %if.end37 ]
  %conv90 = trunc i32 %x.0 to i8
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %22, %4
  %23 = inttoptr i32 %add101 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv90, ptr %23, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @node_page_state_add(i32 noundef %x, ptr noundef %pgdat, i32 noundef %item) unnamed_addr #4 align 64 {
entry:
  %arrayidx = getelementptr %struct.pglist_data, ptr %pgdat, i32 0, i32 31, i32 %item
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %x, ptr elementtype(i32) %arrayidx) #14, !srcloc !458
  %arrayidx1 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %item
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1, ptr %arrayidx1, i32 %x, ptr elementtype(i32) %arrayidx1) #14, !srcloc !458
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__inc_zone_state(ptr noundef %zone, i32 noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 6
  %0 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_zonestats, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %item
  %2 = ptrtoint ptr %add.ptr to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %add7 = add i8 %11, 1
  store i8 %add7, ptr %9, align 1
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %stat_threshold to i32
  %13 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %15, %12
  %16 = inttoptr i32 %add27 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %cmp = icmp sgt i8 %add7, %18
  br i1 %cmp, label %if.then, label %if.end, !prof !455

if.then:                                          ; preds = %entry
  %conv29 = sext i8 %add7 to i32
  %19 = ashr i8 %18, 1
  %conv36 = sext i8 %19 to i32
  %add37 = add nsw i32 %conv36, %conv29
  tail call fastcc void @zone_page_state_add(i32 noundef %add37, ptr noundef %zone, i32 noundef %item)
  %sub = sub nsw i8 0, %19
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx55 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %23, %2
  %24 = inttoptr i32 %add56 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sub, ptr %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__inc_node_state(ptr noundef %pgdat, i32 noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 30
  %0 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_nodestats, align 128
  %vm_node_stat_diff = getelementptr inbounds %struct.per_cpu_nodestat, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %vm_node_stat_diff, i32 %item
  %2 = add i32 %item, -5
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %land.rhs, label %if.end27

land.rhs:                                         ; preds = %entry
  %.b118 = load i1, ptr @__inc_node_state.__already_done, align 1
  br i1 %.b118, label %if.end27, label %if.then, !prof !459

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__inc_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 465, i32 noundef 9, ptr noundef null) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs, %entry
  %4 = ptrtoint ptr %add.ptr to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !443) #14
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %add46 = add i8 %13, 1
  store i8 %add46, ptr %11, align 1
  %14 = ptrtoint ptr %1 to i32
  %15 = load i32, ptr %cpu, align 4
  %arrayidx65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %17, %14
  %18 = inttoptr i32 %add66 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %cmp = icmp sgt i8 %add46, %20
  br i1 %cmp, label %if.then77, label %if.end106, !prof !455

if.then77:                                        ; preds = %if.end27
  %conv68 = sext i8 %add46 to i32
  %21 = ashr i8 %20, 1
  %conv81 = sext i8 %21 to i32
  %add82 = add nsw i32 %conv81, %conv68
  tail call fastcc void @node_page_state_add(i32 noundef %add82, ptr noundef %pgdat, i32 noundef %item)
  %sub = sub nsw i8 0, %21
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %25, %4
  %26 = inttoptr i32 %add101 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %sub, ptr %26, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then77, %if.end27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__inc_zone_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_zone.exit:                                   ; preds = %entry
  %shr.i.i = lshr i32 %1, 30
  %per_cpu_zonestats.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 6
  %2 = ptrtoint ptr %per_cpu_zonestats.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %per_cpu_zonestats.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %item
  %4 = ptrtoint ptr %add.ptr.i to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i1 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i1, align 4
  %add.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %add7.i = add i8 %13, 1
  store i8 %add7.i, ptr %11, align 1
  %stat_threshold.i = getelementptr inbounds %struct.per_cpu_zonestat, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %stat_threshold.i to i32
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx26.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26.i, align 4
  %add27.i = add i32 %17, %14
  %18 = inttoptr i32 %add27.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %cmp.i = icmp sgt i8 %add7.i, %20
  br i1 %cmp.i, label %if.then.i, label %__inc_zone_state.exit, !prof !455

if.then.i:                                        ; preds = %page_zone.exit
  %conv29.i = sext i8 %add7.i to i32
  %21 = ashr i8 %20, 1
  %conv36.i = sext i8 %21 to i32
  %add37.i = add nsw i32 %conv36.i, %conv29.i
  %arrayidx.i2 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 37, i32 %item
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i2, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i2, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i2, ptr %arrayidx.i2, i32 %add37.i, ptr elementtype(i32) %arrayidx.i2) #14, !srcloc !458
  %arrayidx1.i = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %item
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 %add37.i, ptr elementtype(i32) %arrayidx1.i) #14, !srcloc !458
  %sub.i = sub nsw i8 0, %21
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx55.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx55.i, align 4
  %add56.i = add i32 %27, %4
  %28 = inttoptr i32 %add56.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub.i, ptr %28, align 1
  br label %__inc_zone_state.exit

__inc_zone_state.exit:                            ; preds = %if.then.i, %page_zone.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__inc_node_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_pgdat.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_pgdat.exit:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30), align 128
  %vm_node_stat_diff.i = getelementptr inbounds %struct.per_cpu_nodestat, ptr %2, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %vm_node_stat_diff.i, i32 %item
  %3 = add i32 %item, -5
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %land.rhs.i, label %if.end27.i

land.rhs.i:                                       ; preds = %page_pgdat.exit
  %.b118.i = load i1, ptr @__inc_node_state.__already_done, align 1
  br i1 %.b118.i, label %if.end27.i, label %if.then.i, !prof !459

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__inc_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 465, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i, %page_pgdat.exit
  %5 = ptrtoint ptr %add.ptr.i to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %add46.i = add i8 %14, 1
  store i8 %add46.i, ptr %12, align 1
  %15 = ptrtoint ptr %2 to i32
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx65.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %18, %15
  %19 = inttoptr i32 %add66.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %cmp.i = icmp sgt i8 %add46.i, %21
  br i1 %cmp.i, label %if.then77.i, label %__inc_node_state.exit, !prof !455

if.then77.i:                                      ; preds = %if.end27.i
  %conv68.i = sext i8 %add46.i to i32
  %22 = ashr i8 %21, 1
  %conv81.i = sext i8 %22 to i32
  %add82.i = add nsw i32 %conv81.i, %conv68.i
  %arrayidx.i1 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 31, i32 %item
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i1, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i1, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i1, ptr %arrayidx.i1, i32 %add82.i, ptr elementtype(i32) %arrayidx.i1) #14, !srcloc !458
  %arrayidx1.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %item
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 %add82.i, ptr elementtype(i32) %arrayidx1.i) #14, !srcloc !458
  %sub.i = sub nsw i8 0, %22
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx100.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx100.i, align 4
  %add101.i = add i32 %28, %5
  %29 = inttoptr i32 %add101.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub.i, ptr %29, align 1
  br label %__inc_node_state.exit

__inc_node_state.exit:                            ; preds = %if.then77.i, %if.end27.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dec_zone_state(ptr noundef %zone, i32 noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 6
  %0 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_zonestats, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %item
  %2 = ptrtoint ptr %add.ptr to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %add7 = add i8 %11, -1
  store i8 %add7, ptr %9, align 1
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %stat_threshold to i32
  %13 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %15, %12
  %16 = inttoptr i32 %add27 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv29 = sext i8 %add7 to i32
  %conv30 = sext i8 %18 to i32
  %sub = sub nsw i32 0, %conv30
  %cmp = icmp slt i32 %conv29, %sub
  br i1 %cmp, label %if.then, label %if.end, !prof !455

if.then:                                          ; preds = %entry
  %shr = ashr i8 %18, 1
  %conv36 = sext i8 %shr to i32
  %sub37 = sub nsw i32 %conv29, %conv36
  tail call fastcc void @zone_page_state_add(i32 noundef %sub37, ptr noundef %zone, i32 noundef %item)
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx53 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %22, %2
  %23 = inttoptr i32 %add54 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %shr, ptr %23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dec_node_state(ptr noundef %pgdat, i32 noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 30
  %0 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %per_cpu_nodestats, align 128
  %vm_node_stat_diff = getelementptr inbounds %struct.per_cpu_nodestat, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %vm_node_stat_diff, i32 %item
  %2 = add i32 %item, -5
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %land.rhs, label %if.end27

land.rhs:                                         ; preds = %entry
  %.b116 = load i1, ptr @__dec_node_state.__already_done, align 1
  br i1 %.b116, label %if.end27, label %if.then, !prof !459

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__dec_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 525, i32 noundef 9, ptr noundef null) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs, %entry
  %4 = ptrtoint ptr %add.ptr to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !443) #14
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %add46 = add i8 %13, -1
  store i8 %add46, ptr %11, align 1
  %14 = ptrtoint ptr %1 to i32
  %15 = load i32, ptr %cpu, align 4
  %arrayidx65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %17, %14
  %18 = inttoptr i32 %add66 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv68 = sext i8 %add46 to i32
  %conv69 = sext i8 %20 to i32
  %sub = sub nsw i32 0, %conv69
  %cmp = icmp slt i32 %conv68, %sub
  br i1 %cmp, label %if.then77, label %if.end104, !prof !455

if.then77:                                        ; preds = %if.end27
  %shr = ashr i8 %20, 1
  %conv81 = sext i8 %shr to i32
  %sub82 = sub nsw i32 %conv68, %conv81
  tail call fastcc void @node_page_state_add(i32 noundef %sub82, ptr noundef %pgdat, i32 noundef %item)
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx98 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %24, %4
  %25 = inttoptr i32 %add99 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shr, ptr %25, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then77, %if.end27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dec_zone_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_zone.exit:                                   ; preds = %entry
  %shr.i.i = lshr i32 %1, 30
  %per_cpu_zonestats.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 6
  %2 = ptrtoint ptr %per_cpu_zonestats.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %per_cpu_zonestats.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %item
  %4 = ptrtoint ptr %add.ptr.i to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i1 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i1, align 4
  %add.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %add7.i = add i8 %13, -1
  store i8 %add7.i, ptr %11, align 1
  %stat_threshold.i = getelementptr inbounds %struct.per_cpu_zonestat, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %stat_threshold.i to i32
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx26.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26.i, align 4
  %add27.i = add i32 %17, %14
  %18 = inttoptr i32 %add27.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv29.i = sext i8 %add7.i to i32
  %conv30.i = sext i8 %20 to i32
  %sub.i = sub nsw i32 0, %conv30.i
  %cmp.i = icmp slt i32 %conv29.i, %sub.i
  br i1 %cmp.i, label %if.then.i, label %__dec_zone_state.exit, !prof !455

if.then.i:                                        ; preds = %page_zone.exit
  %shr.i = ashr i8 %20, 1
  %conv36.i = sext i8 %shr.i to i32
  %sub37.i = sub nsw i32 %conv29.i, %conv36.i
  %arrayidx.i2 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 37, i32 %item
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i2, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i2, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i2, ptr %arrayidx.i2, i32 %sub37.i, ptr elementtype(i32) %arrayidx.i2) #14, !srcloc !458
  %arrayidx1.i = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %item
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 %sub37.i, ptr elementtype(i32) %arrayidx1.i) #14, !srcloc !458
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx53.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx53.i, align 4
  %add54.i = add i32 %26, %4
  %27 = inttoptr i32 %add54.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %shr.i, ptr %27, align 1
  br label %__dec_zone_state.exit

__dec_zone_state.exit:                            ; preds = %if.then.i, %page_zone.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dec_node_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_pgdat.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_pgdat.exit:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30), align 128
  %vm_node_stat_diff.i = getelementptr inbounds %struct.per_cpu_nodestat, ptr %2, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %vm_node_stat_diff.i, i32 %item
  %3 = add i32 %item, -5
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %land.rhs.i, label %if.end27.i

land.rhs.i:                                       ; preds = %page_pgdat.exit
  %.b116.i = load i1, ptr @__dec_node_state.__already_done, align 1
  br i1 %.b116.i, label %if.end27.i, label %if.then.i, !prof !459

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__dec_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 525, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i, %page_pgdat.exit
  %5 = ptrtoint ptr %add.ptr.i to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %add46.i = add i8 %14, -1
  store i8 %add46.i, ptr %12, align 1
  %15 = ptrtoint ptr %2 to i32
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx65.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %18, %15
  %19 = inttoptr i32 %add66.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv68.i = sext i8 %add46.i to i32
  %conv69.i = sext i8 %21 to i32
  %sub.i = sub nsw i32 0, %conv69.i
  %cmp.i = icmp slt i32 %conv68.i, %sub.i
  br i1 %cmp.i, label %if.then77.i, label %__dec_node_state.exit, !prof !455

if.then77.i:                                      ; preds = %if.end27.i
  %shr.i = ashr i8 %21, 1
  %conv81.i = sext i8 %shr.i to i32
  %sub82.i = sub nsw i32 %conv68.i, %conv81.i
  %arrayidx.i1 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 31, i32 %item
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i1, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i1, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i1, ptr %arrayidx.i1, i32 %sub82.i, ptr elementtype(i32) %arrayidx.i1) #14, !srcloc !458
  %arrayidx1.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %item
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 %sub82.i, ptr elementtype(i32) %arrayidx1.i) #14, !srcloc !458
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx98.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx98.i, align 4
  %add99.i = add i32 %27, %5
  %28 = inttoptr i32 %add99.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %shr.i, ptr %28, align 1
  br label %__dec_node_state.exit

__dec_node_state.exit:                            ; preds = %if.then77.i, %if.end27.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_zone_page_state(ptr noundef %zone, i32 noundef %item, i32 noundef %delta) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %per_cpu_zonestats.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 6
  %1 = ptrtoint ptr %per_cpu_zonestats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %per_cpu_zonestats.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %item
  %3 = ptrtoint ptr %add.ptr.i to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !443) #14
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
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = sext i8 %12 to i32
  %add9.i = add i32 %conv.i, %delta
  %stat_threshold.i = getelementptr inbounds %struct.per_cpu_zonestat, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %stat_threshold.i to i32
  %add27.i = add i32 %9, %13
  %14 = inttoptr i32 %add27.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv29.i = sext i8 %16 to i32
  %17 = tail call i32 @llvm.abs.i32(i32 %add9.i, i1 false) #14
  %cmp32.i = icmp sgt i32 %17, %conv29.i
  br i1 %cmp32.i, label %if.then.i, label %__mod_zone_page_state.exit, !prof !455

if.then.i:                                        ; preds = %do.end11
  tail call fastcc void @zone_page_state_add(i32 noundef %add9.i, ptr noundef %zone, i32 noundef %item) #14
  br label %__mod_zone_page_state.exit

__mod_zone_page_state.exit:                       ; preds = %if.then.i, %do.end11
  %x.0.i = phi i32 [ 0, %if.then.i ], [ %add9.i, %do.end11 ]
  %conv41.i = trunc i32 %x.0.i to i8
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx51.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx51.i, align 4
  %add52.i = add i32 %21, %3
  %22 = inttoptr i32 %add52.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41.i, ptr %22, align 1
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %__mod_zone_page_state.exit
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__mod_zone_page_state.exit
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i47 = and i32 %24, 128
  %tobool32.not = icmp eq i32 %and.i.i47, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !456
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inc_zone_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_zone.exit:                                   ; preds = %entry
  %shr.i.i = lshr i32 %1, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %2, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %page_zone.exit
  tail call void @trace_hardirqs_off() #14
  br label %do.end11

do.end11:                                         ; preds = %if.then, %page_zone.exit
  %per_cpu_zonestats.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 6
  %3 = ptrtoint ptr %per_cpu_zonestats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %per_cpu_zonestats.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %item
  %5 = ptrtoint ptr %add.ptr.i to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i46, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %add7.i = add i8 %14, 1
  store i8 %add7.i, ptr %12, align 1
  %stat_threshold.i = getelementptr inbounds %struct.per_cpu_zonestat, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %stat_threshold.i to i32
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx26.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26.i, align 4
  %add27.i = add i32 %18, %15
  %19 = inttoptr i32 %add27.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %cmp.i = icmp sgt i8 %add7.i, %21
  br i1 %cmp.i, label %if.then.i, label %__inc_zone_state.exit, !prof !455

if.then.i:                                        ; preds = %do.end11
  %conv29.i = sext i8 %add7.i to i32
  %22 = ashr i8 %21, 1
  %conv36.i = sext i8 %22 to i32
  %add37.i = add nsw i32 %conv36.i, %conv29.i
  tail call fastcc void @zone_page_state_add(i32 noundef %add37.i, ptr noundef %arrayidx.i, i32 noundef %item) #14
  %sub.i = sub nsw i8 0, %22
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx55.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx55.i, align 4
  %add56.i = add i32 %26, %5
  %27 = inttoptr i32 %add56.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub.i, ptr %27, align 1
  br label %__inc_zone_state.exit

__inc_zone_state.exit:                            ; preds = %if.then.i, %do.end11
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %__inc_zone_state.exit
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__inc_zone_state.exit
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i48 = and i32 %29, 128
  %tobool32.not = icmp eq i32 %and.i.i48, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dec_zone_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  tail call void @__dec_zone_page_state(ptr noundef %page, i32 noundef %item)
  br label %do.body23

if.then21:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  tail call void @__dec_zone_page_state(ptr noundef %page, i32 noundef %item)
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i = and i32 %1, 128
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inc_node_state(ptr noundef %pgdat, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %per_cpu_nodestats.i = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 30
  %1 = ptrtoint ptr %per_cpu_nodestats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %per_cpu_nodestats.i, align 128
  %vm_node_stat_diff.i = getelementptr inbounds %struct.per_cpu_nodestat, ptr %2, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %vm_node_stat_diff.i, i32 %item
  %3 = add i32 %item, -5
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %land.rhs.i, label %if.end27.i

land.rhs.i:                                       ; preds = %do.end11
  %.b118.i = load i1, ptr @__inc_node_state.__already_done, align 1
  br i1 %.b118.i, label %if.end27.i, label %if.then.i, !prof !459

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__inc_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 465, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i, %do.end11
  %5 = ptrtoint ptr %add.ptr.i to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %add46.i = add i8 %14, 1
  store i8 %add46.i, ptr %12, align 1
  %15 = ptrtoint ptr %2 to i32
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx65.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %18, %15
  %19 = inttoptr i32 %add66.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %cmp.i = icmp sgt i8 %add46.i, %21
  br i1 %cmp.i, label %if.then77.i, label %__inc_node_state.exit, !prof !455

if.then77.i:                                      ; preds = %if.end27.i
  %conv68.i = sext i8 %add46.i to i32
  %22 = ashr i8 %21, 1
  %conv81.i = sext i8 %22 to i32
  %add82.i = add nsw i32 %conv81.i, %conv68.i
  tail call fastcc void @node_page_state_add(i32 noundef %add82.i, ptr noundef %pgdat, i32 noundef %item) #14
  %sub.i = sub nsw i8 0, %22
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx100.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx100.i, align 4
  %add101.i = add i32 %26, %5
  %27 = inttoptr i32 %add101.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub.i, ptr %27, align 1
  br label %__inc_node_state.exit

__inc_node_state.exit:                            ; preds = %if.then77.i, %if.end27.i
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %__inc_node_state.exit
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__inc_node_state.exit
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i47 = and i32 %29, 128
  %tobool32.not = icmp eq i32 %and.i.i47, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_node_page_state(ptr noundef %pgdat, i32 noundef %item, i32 noundef %delta) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %per_cpu_nodestats.i = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 30
  %1 = ptrtoint ptr %per_cpu_nodestats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %per_cpu_nodestats.i, align 128
  %vm_node_stat_diff.i = getelementptr inbounds %struct.per_cpu_nodestat, ptr %2, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %vm_node_stat_diff.i, i32 %item
  %3 = add i32 %item, -5
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %if.then.i, label %if.end37.i

if.then.i:                                        ; preds = %do.end11
  %and.i46 = and i32 %delta, 4095
  %tobool.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i, label %if.end29.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b119.i = load i1, ptr @__mod_node_page_state.__already_done, align 1
  br i1 %.b119.i, label %if.end29.i, label %if.then8.i, !prof !459

if.then8.i:                                       ; preds = %land.rhs.i
  store i1 true, ptr @__mod_node_page_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 390, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then8.i, %land.rhs.i, %if.then.i
  %shr.i = ashr i32 %delta, 12
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end29.i, %do.end11
  %delta.addr.0.i = phi i32 [ %shr.i, %if.end29.i ], [ %delta, %do.end11 ]
  %5 = ptrtoint ptr %add.ptr.i to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = sext i8 %14 to i32
  %add51.i = add i32 %delta.addr.0.i, %conv.i
  %15 = ptrtoint ptr %2 to i32
  %add69.i = add i32 %11, %15
  %16 = inttoptr i32 %add69.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv71.i = sext i8 %18 to i32
  %19 = tail call i32 @llvm.abs.i32(i32 %add51.i, i1 false) #14
  %cmp74.i = icmp sgt i32 %19, %conv71.i
  br i1 %cmp74.i, label %if.then82.i, label %__mod_node_page_state.exit, !prof !455

if.then82.i:                                      ; preds = %if.end37.i
  tail call fastcc void @node_page_state_add(i32 noundef %add51.i, ptr noundef %pgdat, i32 noundef %item) #14
  br label %__mod_node_page_state.exit

__mod_node_page_state.exit:                       ; preds = %if.then82.i, %if.end37.i
  %x.0.i = phi i32 [ 0, %if.then82.i ], [ %add51.i, %if.end37.i ]
  %conv90.i = trunc i32 %x.0.i to i8
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx100.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx100.i, align 4
  %add101.i = add i32 %23, %5
  %24 = inttoptr i32 %add101.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv90.i, ptr %24, align 1
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %__mod_node_page_state.exit
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__mod_node_page_state.exit
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i48 = and i32 %26, 128
  %tobool32.not = icmp eq i32 %and.i.i48, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inc_node_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_pgdat.exit, !prof !455

if.then.i.i:                                      ; preds = %entry
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_pgdat.exit:                                  ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %2, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %page_pgdat.exit
  tail call void @trace_hardirqs_off() #14
  br label %do.end11

do.end11:                                         ; preds = %if.then, %page_pgdat.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 30), align 128
  %vm_node_stat_diff.i = getelementptr inbounds %struct.per_cpu_nodestat, ptr %3, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %vm_node_stat_diff.i, i32 %item
  %4 = add i32 %item, -5
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %land.rhs.i, label %if.end27.i

land.rhs.i:                                       ; preds = %do.end11
  %.b118.i = load i1, ptr @__inc_node_state.__already_done, align 1
  br i1 %.b118.i, label %if.end27.i, label %if.then.i, !prof !459

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__inc_node_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 465, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i, %do.end11
  %6 = ptrtoint ptr %add.ptr.i to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %add46.i = add i8 %15, 1
  store i8 %add46.i, ptr %13, align 1
  %16 = ptrtoint ptr %3 to i32
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx65.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %19, %16
  %20 = inttoptr i32 %add66.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %cmp.i = icmp sgt i8 %add46.i, %22
  br i1 %cmp.i, label %if.then77.i, label %__inc_node_state.exit, !prof !455

if.then77.i:                                      ; preds = %if.end27.i
  %conv68.i = sext i8 %add46.i to i32
  %23 = ashr i8 %22, 1
  %conv81.i = sext i8 %23 to i32
  %add82.i = add nsw i32 %conv81.i, %conv68.i
  tail call fastcc void @node_page_state_add(i32 noundef %add82.i, ptr noundef nonnull @contig_page_data, i32 noundef %item) #14
  %sub.i = sub nsw i8 0, %23
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx100.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx100.i, align 4
  %add101.i = add i32 %27, %6
  %28 = inttoptr i32 %add101.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub.i, ptr %28, align 1
  br label %__inc_node_state.exit

__inc_node_state.exit:                            ; preds = %if.then77.i, %if.end27.i
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %__inc_node_state.exit
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__inc_node_state.exit
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i47 = and i32 %30, 128
  %tobool32.not = icmp eq i32 %and.i.i47, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dec_node_page_state(ptr noundef %page, i32 noundef %item) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  tail call void @__dec_node_page_state(ptr noundef %page, i32 noundef %item)
  br label %do.body23

if.then21:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  tail call void @__dec_node_page_state(ptr noundef %page, i32 noundef %item)
  tail call void @trace_hardirqs_on() #14
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i = and i32 %1, 128
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !455

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_vm_stats_fold(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %global_zone_diff = alloca [11 x i32], align 4
  %global_node_diff = alloca [40 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %global_zone_diff) #14
  %0 = call ptr @memset(ptr %global_zone_diff, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %global_node_diff) #14
  %1 = call ptr @memset(ptr %global_node_diff, i32 0, i32 160)
  %call = tail call ptr @first_online_pgdat() #14
  %tobool.not90 = icmp eq ptr %call, null
  br i1 %tobool.not90, label %for.end18, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %for.inc16, %for.body.lr.ph
  %zone.091 = phi ptr [ %call, %for.body.lr.ph ], [ %call17, %for.inc16 ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.091, i32 0, i32 13
  %2 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %for.inc16, label %if.else

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone.091, i32 0, i32 6
  %4 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %per_cpu_zonestats, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %if.else
  %i.088 = phi i32 [ 0, %if.else ], [ %inc, %for.inc ]
  %arrayidx5 = getelementptr [11 x i8], ptr %9, i32 0, i32 %i.088
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body4
  %conv = sext i8 %11 to i32
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx5, align 1
  %arrayidx12 = getelementptr %struct.zone, ptr %zone.091, i32 0, i32 37, i32 %i.088
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx12, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx12, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx12, ptr %arrayidx12, i32 %conv, ptr elementtype(i32) %arrayidx12) #14, !srcloc !458
  %arrayidx13 = getelementptr [11 x i32], ptr %global_zone_diff, i32 0, i32 %i.088
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %15, %conv
  store i32 %add14, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body4
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc16, label %for.body4

for.inc16:                                        ; preds = %for.inc, %for.body
  %call17 = tail call ptr @next_zone(ptr noundef nonnull %zone.091) #14
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %for.end18, label %for.body

for.end18:                                        ; preds = %for.inc16, %entry
  %call19 = tail call ptr @first_online_pgdat() #14
  %tobool21.not95 = icmp eq ptr %call19, null
  br i1 %tobool21.not95, label %for.body.i.preheader, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.end18
  %arrayidx30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body22

for.body22:                                       ; preds = %for.end52, %for.body22.lr.ph
  %pgdat.096 = phi ptr [ %call19, %for.body22.lr.ph ], [ %call54, %for.end52 ]
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat.096, i32 0, i32 30
  %16 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %per_cpu_nodestats, align 128
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %20, %18
  %21 = inttoptr i32 %add31 to ptr
  br label %for.body35

for.body35:                                       ; preds = %for.inc50, %for.body22
  %i.193 = phi i32 [ 0, %for.body22 ], [ %inc51, %for.inc50 ]
  %arrayidx36 = getelementptr %struct.per_cpu_nodestat, ptr %21, i32 0, i32 1, i32 %i.193
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx36, align 1
  %tobool37.not = icmp eq i8 %23, 0
  br i1 %tobool37.not, label %for.inc50, label %if.then38

if.then38:                                        ; preds = %for.body35
  %conv42 = sext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx46 = getelementptr %struct.pglist_data, ptr %pgdat.096, i32 0, i32 31, i32 %i.193
  %call.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx46, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx46, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx46, ptr %arrayidx46, i32 %conv42, ptr elementtype(i32) %arrayidx46) #14, !srcloc !458
  %arrayidx47 = getelementptr [40 x i32], ptr %global_node_diff, i32 0, i32 %i.193
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %27, %conv42
  store i32 %add48, ptr %arrayidx47, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %if.then38, %for.body35
  %inc51 = add nuw nsw i32 %i.193, 1
  %exitcond97.not = icmp eq i32 %inc51, 40
  br i1 %exitcond97.not, label %for.end52, label %for.body35

for.end52:                                        ; preds = %for.inc50
  %call54 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.096) #14
  %tobool21.not = icmp eq ptr %call54, null
  br i1 %tobool21.not, label %for.body.i.preheader, label %for.body22

for.body.i.preheader:                             ; preds = %for.end52, %for.end18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.preheader
  %i.032.i = phi i32 [ %inc3.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i32, ptr %global_zone_diff, i32 %i.032.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx2.i = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %i.032.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx2.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx2.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx2.i, ptr %arrayidx2.i, i32 %29, ptr elementtype(i32) %arrayidx2.i) #14, !srcloc !458
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc3.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, 11
  br i1 %exitcond.not.i, label %for.body6.i, label %for.body.i

for.body6.i:                                      ; preds = %for.inc14.i, %for.inc.i
  %i.135.i = phi i32 [ %inc15.i, %for.inc14.i ], [ 0, %for.inc.i ]
  %arrayidx7.i = getelementptr i32, ptr %global_node_diff, i32 %i.135.i
  %31 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq i32 %32, 0
  br i1 %tobool8.not.i, label %for.inc14.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body6.i
  %arrayidx11.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.135.i
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx11.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx11.i, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx11.i, ptr %arrayidx11.i, i32 %32, ptr elementtype(i32) %arrayidx11.i) #14, !srcloc !458
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %if.then9.i, %for.body6.i
  %inc15.i = add nuw nsw i32 %i.135.i, 1
  %exitcond38.not.i = icmp eq i32 %inc15.i, 40
  br i1 %exitcond38.not.i, label %fold_diff.exit, label %for.body6.i

fold_diff.exit:                                   ; preds = %for.inc14.i
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %global_node_diff) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %global_zone_diff) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drain_zonestat(ptr noundef %zone, ptr nocapture noundef %pzstats) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [11 x i8], ptr %pzstats, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %conv = sext i8 %1 to i32
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx.i = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 %i.012
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %conv, ptr elementtype(i32) %arrayidx.i) #14, !srcloc !458
  %arrayidx1.i = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %i.012
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 %conv, ptr elementtype(i32) %arrayidx1.i) #14, !srcloc !458
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extfrag_for_order(ptr nocapture noundef readonly %zone, i32 noundef %order) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_free.i = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 0, i32 1
  %0 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_free.i, align 4
  %nr_free.i.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 1, i32 1
  %2 = ptrtoint ptr %nr_free.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_free.i.1, align 4
  %shl.i.1 = shl i32 %3, 1
  %add4.i.1 = add i32 %shl.i.1, %1
  %nr_free.i.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 2, i32 1
  %4 = ptrtoint ptr %nr_free.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_free.i.2, align 4
  %shl.i.2 = shl i32 %5, 2
  %add4.i.2 = add i32 %shl.i.2, %add4.i.1
  %nr_free.i.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 3, i32 1
  %6 = ptrtoint ptr %nr_free.i.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_free.i.3, align 4
  %shl.i.3 = shl i32 %7, 3
  %add4.i.3 = add i32 %shl.i.3, %add4.i.2
  %nr_free.i.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 4, i32 1
  %8 = ptrtoint ptr %nr_free.i.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free.i.4, align 4
  %shl.i.4 = shl i32 %9, 4
  %add4.i.4 = add i32 %shl.i.4, %add4.i.3
  %nr_free.i.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 5, i32 1
  %10 = ptrtoint ptr %nr_free.i.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_free.i.5, align 4
  %shl.i.5 = shl i32 %11, 5
  %add4.i.5 = add i32 %shl.i.5, %add4.i.4
  %nr_free.i.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 6, i32 1
  %12 = ptrtoint ptr %nr_free.i.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_free.i.6, align 4
  %shl.i.6 = shl i32 %13, 6
  %add4.i.6 = add i32 %shl.i.6, %add4.i.5
  %nr_free.i.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 7, i32 1
  %14 = ptrtoint ptr %nr_free.i.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_free.i.7, align 4
  %shl.i.7 = shl i32 %15, 7
  %add4.i.7 = add i32 %shl.i.7, %add4.i.6
  %nr_free.i.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 8, i32 1
  %16 = ptrtoint ptr %nr_free.i.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_free.i.8, align 4
  %shl.i.8 = shl i32 %17, 8
  %add4.i.8 = add i32 %shl.i.8, %add4.i.7
  %nr_free.i.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 9, i32 1
  %18 = ptrtoint ptr %nr_free.i.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_free.i.9, align 4
  %shl.i.9 = shl i32 %19, 9
  %add4.i.9 = add i32 %shl.i.9, %add4.i.8
  %nr_free.i.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 10, i32 1
  %20 = ptrtoint ptr %nr_free.i.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_free.i.10, align 4
  %shl.i.10 = shl i32 %21, 10
  %add4.i.10 = add i32 %shl.i.10, %add4.i.9
  %nr_free.i.11 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 11, i32 1
  %22 = ptrtoint ptr %nr_free.i.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_free.i.11, align 4
  %shl.i.11 = shl i32 %23, 11
  %add4.i.11 = add i32 %shl.i.11, %add4.i.10
  %cmp = icmp eq i32 %add4.i.11, 0
  br i1 %cmp, label %cleanup, label %if.else162.i.i

if.else162.i.i:                                   ; preds = %entry
  %cmp5.not.i.11 = icmp ugt i32 %order, 11
  %sub.i.11 = sub i32 11, %order
  %shl6.i.11 = shl i32 %23, %sub.i.11
  %add8.i.11 = select i1 %cmp5.not.i.11, i32 0, i32 %shl6.i.11
  %cmp5.not.i.10 = icmp ugt i32 %order, 10
  %sub.i.10 = sub i32 10, %order
  %shl6.i.10 = shl i32 %21, %sub.i.10
  %add8.i.10 = select i1 %cmp5.not.i.10, i32 0, i32 %shl6.i.10
  %cmp5.not.i.9 = icmp ugt i32 %order, 9
  %sub.i.9 = sub i32 9, %order
  %shl6.i.9 = shl i32 %19, %sub.i.9
  %add8.i.9 = select i1 %cmp5.not.i.9, i32 0, i32 %shl6.i.9
  %cmp5.not.i.8 = icmp ugt i32 %order, 8
  %sub.i.8 = sub i32 8, %order
  %shl6.i.8 = shl i32 %17, %sub.i.8
  %add8.i.8 = select i1 %cmp5.not.i.8, i32 0, i32 %shl6.i.8
  %cmp5.not.i.7 = icmp ugt i32 %order, 7
  %sub.i.7 = sub i32 7, %order
  %shl6.i.7 = shl i32 %15, %sub.i.7
  %add8.i.7 = select i1 %cmp5.not.i.7, i32 0, i32 %shl6.i.7
  %cmp5.not.i.6 = icmp ugt i32 %order, 6
  %sub.i.6 = sub i32 6, %order
  %shl6.i.6 = shl i32 %13, %sub.i.6
  %add8.i.6 = select i1 %cmp5.not.i.6, i32 0, i32 %shl6.i.6
  %cmp5.not.i.5 = icmp ugt i32 %order, 5
  %sub.i.5 = sub i32 5, %order
  %shl6.i.5 = shl i32 %11, %sub.i.5
  %add8.i.5 = select i1 %cmp5.not.i.5, i32 0, i32 %shl6.i.5
  %cmp5.not.i.4 = icmp ugt i32 %order, 4
  %sub.i.4 = sub i32 4, %order
  %shl6.i.4 = shl i32 %9, %sub.i.4
  %add8.i.4 = select i1 %cmp5.not.i.4, i32 0, i32 %shl6.i.4
  %cmp5.not.i.3 = icmp ugt i32 %order, 3
  %sub.i.3 = sub i32 3, %order
  %shl6.i.3 = shl i32 %7, %sub.i.3
  %add8.i.3 = select i1 %cmp5.not.i.3, i32 0, i32 %shl6.i.3
  %cmp5.not.i.2 = icmp ugt i32 %order, 2
  %sub.i.2 = sub i32 2, %order
  %shl6.i.2 = shl i32 %5, %sub.i.2
  %add8.i.2 = select i1 %cmp5.not.i.2, i32 0, i32 %shl6.i.2
  %cmp5.not.i.1 = icmp ugt i32 %order, 1
  %sub.i.1 = sub i32 1, %order
  %shl6.i.1 = shl i32 %3, %sub.i.1
  %add8.i.1 = select i1 %cmp5.not.i.1, i32 0, i32 %shl6.i.1
  %cmp5.not.i.not = icmp eq i32 %order, 0
  %sub.i = sub i32 0, %order
  %shl6.i = shl i32 %1, %sub.i
  %add8.i = select i1 %cmp5.not.i.not, i32 %shl6.i, i32 0
  %info.sroa.11.1.1 = add i32 %add8.i.1, %add8.i
  %info.sroa.11.1.2 = add i32 %add8.i.2, %info.sroa.11.1.1
  %info.sroa.11.1.3 = add i32 %add8.i.3, %info.sroa.11.1.2
  %info.sroa.11.1.4 = add i32 %add8.i.4, %info.sroa.11.1.3
  %info.sroa.11.1.5 = add i32 %add8.i.5, %info.sroa.11.1.4
  %info.sroa.11.1.6 = add i32 %add8.i.6, %info.sroa.11.1.5
  %info.sroa.11.1.7 = add i32 %add8.i.7, %info.sroa.11.1.6
  %info.sroa.11.1.8 = add i32 %add8.i.8, %info.sroa.11.1.7
  %info.sroa.11.1.9 = add i32 %add8.i.9, %info.sroa.11.1.8
  %info.sroa.11.1.10 = add i32 %add8.i.10, %info.sroa.11.1.9
  %info.sroa.11.1.11 = add i32 %add8.i.11, %info.sroa.11.1.10
  %shl = shl i32 %info.sroa.11.1.11, %order
  %sub = sub i32 %add4.i.11, %shl
  %mul = mul i32 %sub, 100
  %div172.i.i = udiv i32 %mul, %add4.i.11
  br label %cleanup

cleanup:                                          ; preds = %if.else162.i.i, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %div172.i.i, %if.else162.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fragmentation_index(ptr nocapture noundef readonly %zone, i32 noundef %order) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_free.i = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 0, i32 1
  %0 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_free.i, align 4
  %cmp5.not.i.not = icmp eq i32 %order, 0
  %sub.i = sub i32 0, %order
  %shl6.i = shl i32 %1, %sub.i
  %add8.i = select i1 %cmp5.not.i.not, i32 %shl6.i, i32 0
  %nr_free.i.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 1, i32 1
  %2 = ptrtoint ptr %nr_free.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_free.i.1, align 4
  %add.i.1 = add i32 %3, %1
  %shl.i.1 = shl i32 %3, 1
  %add4.i.1 = add i32 %shl.i.1, %1
  %cmp5.not.i.1 = icmp ugt i32 %order, 1
  %sub.i.1 = sub i32 1, %order
  %shl6.i.1 = shl i32 %3, %sub.i.1
  %add8.i.1 = select i1 %cmp5.not.i.1, i32 0, i32 %shl6.i.1
  %info.sroa.12.1.1 = add i32 %add8.i.1, %add8.i
  %nr_free.i.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 2, i32 1
  %4 = ptrtoint ptr %nr_free.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_free.i.2, align 4
  %add.i.2 = add i32 %5, %add.i.1
  %shl.i.2 = shl i32 %5, 2
  %add4.i.2 = add i32 %shl.i.2, %add4.i.1
  %cmp5.not.i.2 = icmp ugt i32 %order, 2
  %sub.i.2 = sub i32 2, %order
  %shl6.i.2 = shl i32 %5, %sub.i.2
  %add8.i.2 = select i1 %cmp5.not.i.2, i32 0, i32 %shl6.i.2
  %info.sroa.12.1.2 = add i32 %add8.i.2, %info.sroa.12.1.1
  %nr_free.i.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 3, i32 1
  %6 = ptrtoint ptr %nr_free.i.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_free.i.3, align 4
  %add.i.3 = add i32 %7, %add.i.2
  %shl.i.3 = shl i32 %7, 3
  %add4.i.3 = add i32 %shl.i.3, %add4.i.2
  %cmp5.not.i.3 = icmp ugt i32 %order, 3
  %sub.i.3 = sub i32 3, %order
  %shl6.i.3 = shl i32 %7, %sub.i.3
  %add8.i.3 = select i1 %cmp5.not.i.3, i32 0, i32 %shl6.i.3
  %info.sroa.12.1.3 = add i32 %add8.i.3, %info.sroa.12.1.2
  %nr_free.i.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 4, i32 1
  %8 = ptrtoint ptr %nr_free.i.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free.i.4, align 4
  %add.i.4 = add i32 %9, %add.i.3
  %shl.i.4 = shl i32 %9, 4
  %add4.i.4 = add i32 %shl.i.4, %add4.i.3
  %cmp5.not.i.4 = icmp ugt i32 %order, 4
  %sub.i.4 = sub i32 4, %order
  %shl6.i.4 = shl i32 %9, %sub.i.4
  %add8.i.4 = select i1 %cmp5.not.i.4, i32 0, i32 %shl6.i.4
  %info.sroa.12.1.4 = add i32 %add8.i.4, %info.sroa.12.1.3
  %nr_free.i.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 5, i32 1
  %10 = ptrtoint ptr %nr_free.i.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_free.i.5, align 4
  %add.i.5 = add i32 %11, %add.i.4
  %shl.i.5 = shl i32 %11, 5
  %add4.i.5 = add i32 %shl.i.5, %add4.i.4
  %cmp5.not.i.5 = icmp ugt i32 %order, 5
  %sub.i.5 = sub i32 5, %order
  %shl6.i.5 = shl i32 %11, %sub.i.5
  %add8.i.5 = select i1 %cmp5.not.i.5, i32 0, i32 %shl6.i.5
  %info.sroa.12.1.5 = add i32 %add8.i.5, %info.sroa.12.1.4
  %nr_free.i.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 6, i32 1
  %12 = ptrtoint ptr %nr_free.i.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_free.i.6, align 4
  %add.i.6 = add i32 %13, %add.i.5
  %shl.i.6 = shl i32 %13, 6
  %add4.i.6 = add i32 %shl.i.6, %add4.i.5
  %cmp5.not.i.6 = icmp ugt i32 %order, 6
  %sub.i.6 = sub i32 6, %order
  %shl6.i.6 = shl i32 %13, %sub.i.6
  %add8.i.6 = select i1 %cmp5.not.i.6, i32 0, i32 %shl6.i.6
  %info.sroa.12.1.6 = add i32 %add8.i.6, %info.sroa.12.1.5
  %nr_free.i.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 7, i32 1
  %14 = ptrtoint ptr %nr_free.i.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_free.i.7, align 4
  %add.i.7 = add i32 %15, %add.i.6
  %shl.i.7 = shl i32 %15, 7
  %add4.i.7 = add i32 %shl.i.7, %add4.i.6
  %cmp5.not.i.7 = icmp ugt i32 %order, 7
  %sub.i.7 = sub i32 7, %order
  %shl6.i.7 = shl i32 %15, %sub.i.7
  %add8.i.7 = select i1 %cmp5.not.i.7, i32 0, i32 %shl6.i.7
  %info.sroa.12.1.7 = add i32 %add8.i.7, %info.sroa.12.1.6
  %nr_free.i.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 8, i32 1
  %16 = ptrtoint ptr %nr_free.i.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_free.i.8, align 4
  %add.i.8 = add i32 %17, %add.i.7
  %shl.i.8 = shl i32 %17, 8
  %add4.i.8 = add i32 %shl.i.8, %add4.i.7
  %cmp5.not.i.8 = icmp ugt i32 %order, 8
  %sub.i.8 = sub i32 8, %order
  %shl6.i.8 = shl i32 %17, %sub.i.8
  %add8.i.8 = select i1 %cmp5.not.i.8, i32 0, i32 %shl6.i.8
  %info.sroa.12.1.8 = add i32 %add8.i.8, %info.sroa.12.1.7
  %nr_free.i.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 9, i32 1
  %18 = ptrtoint ptr %nr_free.i.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_free.i.9, align 4
  %add.i.9 = add i32 %19, %add.i.8
  %shl.i.9 = shl i32 %19, 9
  %add4.i.9 = add i32 %shl.i.9, %add4.i.8
  %cmp5.not.i.9 = icmp ugt i32 %order, 9
  %sub.i.9 = sub i32 9, %order
  %shl6.i.9 = shl i32 %19, %sub.i.9
  %add8.i.9 = select i1 %cmp5.not.i.9, i32 0, i32 %shl6.i.9
  %info.sroa.12.1.9 = add i32 %add8.i.9, %info.sroa.12.1.8
  %nr_free.i.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 10, i32 1
  %20 = ptrtoint ptr %nr_free.i.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_free.i.10, align 4
  %add.i.10 = add i32 %21, %add.i.9
  %shl.i.10 = shl i32 %21, 10
  %add4.i.10 = add i32 %shl.i.10, %add4.i.9
  %cmp5.not.i.10 = icmp ugt i32 %order, 10
  %sub.i.10 = sub i32 10, %order
  %shl6.i.10 = shl i32 %21, %sub.i.10
  %add8.i.10 = select i1 %cmp5.not.i.10, i32 0, i32 %shl6.i.10
  %info.sroa.12.1.10 = add i32 %add8.i.10, %info.sroa.12.1.9
  %nr_free.i.11 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 11, i32 1
  %22 = ptrtoint ptr %nr_free.i.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_free.i.11, align 4
  %add.i.11 = add i32 %23, %add.i.10
  %shl.i.11 = shl i32 %23, 11
  %add4.i.11 = add i32 %shl.i.11, %add4.i.10
  %cmp5.not.i.11 = icmp ugt i32 %order, 11
  %sub.i.11 = sub i32 11, %order
  %shl6.i.11 = shl i32 %23, %sub.i.11
  %add8.i.11 = select i1 %cmp5.not.i.11, i32 0, i32 %shl6.i.11
  %shl.i2 = shl nuw i32 1, %order
  br i1 %cmp5.not.i.11, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %entry
  %.b53.i = load i1, ptr @__fragmentation_index.__already_done, align 1
  br i1 %.b53.i, label %__fragmentation_index.exit, label %if.then.i3, !prof !459

if.then.i3:                                       ; preds = %land.rhs.i
  store i1 true, ptr @__fragmentation_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1103, i32 noundef 9, ptr noundef null) #14
  br label %__fragmentation_index.exit

if.end37.i:                                       ; preds = %entry
  %tobool38.not.i = icmp eq i32 %add.i.11, 0
  br i1 %tobool38.not.i, label %__fragmentation_index.exit, label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i
  %info.sroa.12.1.11 = sub i32 0, %info.sroa.12.1.10
  %tobool41.not.i = icmp eq i32 %add8.i.11, %info.sroa.12.1.11
  br i1 %tobool41.not.i, label %if.end43.i, label %__fragmentation_index.exit

if.end43.i:                                       ; preds = %if.end40.i
  %conv.i = zext i32 %add4.i.11 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !459

if.then168.i.i.i:                                 ; preds = %if.end43.i
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i96.i = lshr i32 %conv169.i.i.i, %order
  %conv173.i.i.i = zext i32 %div172.i.i96.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end43.i
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i2, i64 %mul.i) #17, !srcloc !461
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %24, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %add.i6 = add i64 %dividend.addr.0.i.i.i, 1000
  %cmp164.i.i83.i = icmp ult i64 %add.i6, 4294967296
  br i1 %cmp164.i.i83.i, label %if.then168.i.i88.i, label %if.else174.i.i90.i, !prof !459

if.then168.i.i88.i:                               ; preds = %div_u64.exit.i
  %conv169.i.i85.i = trunc i64 %add.i6 to i32
  %div172.i.i86.i = udiv i32 %conv169.i.i85.i, %add.i.11
  br label %div_u64.exit92.i

if.else174.i.i90.i:                               ; preds = %div_u64.exit.i
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.11, i64 %add.i6) #17, !srcloc !461
  %asmresult1.i.i.i89.i = extractvalue { i64, i64 } %25, 1
  %extract.t94.i = trunc i64 %asmresult1.i.i.i89.i to i32
  br label %div_u64.exit92.i

div_u64.exit92.i:                                 ; preds = %if.else174.i.i90.i, %if.then168.i.i88.i
  %dividend.addr.0.i.i91.off0.i = phi i32 [ %div172.i.i86.i, %if.then168.i.i88.i ], [ %extract.t94.i, %if.else174.i.i90.i ]
  %conv46.i = sub i32 1000, %dividend.addr.0.i.i91.off0.i
  br label %__fragmentation_index.exit

__fragmentation_index.exit:                       ; preds = %div_u64.exit92.i, %if.end40.i, %if.end37.i, %if.then.i3, %land.rhs.i
  %retval.0.i = phi i32 [ %conv46.i, %div_u64.exit92.i ], [ 0, %if.then.i3 ], [ 0, %if.end37.i ], [ -1000, %if.end40.i ], [ 0, %land.rhs.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmstat_refresh(ptr nocapture noundef readnone %table, i32 noundef %write, ptr nocapture noundef readnone %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @schedule_on_each_cpu(ptr noundef nonnull @refresh_vm_stats) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body, label %cleanup

for.body:                                         ; preds = %for.inc, %entry
  %i.047 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  switch i32 %i.047, label %sw.epilog [
    i32 6, label %for.inc
    i32 10, label %for.inc
  ]

sw.epilog:                                        ; preds = %for.body
  %arrayidx = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %i.047
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %do.end, label %for.inc

do.end:                                           ; preds = %sw.epilog
  %arrayidx.i = getelementptr [0 x ptr], ptr @vmstat_text, i32 0, i32 %i.047
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, ptr noundef %3, i32 noundef %1) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end, %sw.epilog, %for.body, %for.body
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.body9, label %for.body

for.body9:                                        ; preds = %for.inc23, %for.inc
  %i.149 = phi i32 [ %inc24, %for.inc23 ], [ 0, %for.inc ]
  %cond = icmp eq i32 %i.149, 21
  br i1 %cond, label %for.inc23, label %sw.epilog11

sw.epilog11:                                      ; preds = %for.body9
  %arrayidx12 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.149
  %call.i.i45 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx12, i32 noundef 4) #14
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx12, align 4
  %cmp14 = icmp slt i32 %5, 0
  br i1 %cmp14, label %do.end18, label %for.inc23

do.end18:                                         ; preds = %sw.epilog11
  %add.i = add nuw nsw i32 %i.149, 11
  %arrayidx.i46 = getelementptr [0 x ptr], ptr @vmstat_text, i32 0, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i46, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, ptr noundef %7, i32 noundef %5) #18
  br label %for.inc23

for.inc23:                                        ; preds = %do.end18, %sw.epilog11, %for.body9
  %inc24 = add nuw nsw i32 %i.149, 1
  %exitcond51.not = icmp eq i32 %inc24, 40
  br i1 %exitcond51.not, label %for.end25, label %for.body9

for.end25:                                        ; preds = %for.inc23
  %tobool26.not = icmp eq i32 %write, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %for.end25
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lenp, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ppos, align 8
  %add = add i64 %11, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

if.else:                                          ; preds = %for.end25
  %12 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.else ], [ 0, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @refresh_vm_stats(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call fastcc i32 @refresh_cpu_vm_stats()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @quiet_vmstat() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  %cmp.not = icmp eq i32 %0, 3
  br i1 %cmp.not, label %do.body, label %return

do.body:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @vmstat_work to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and1.i = and i32 %9, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %return, label %if.end4

if.end4:                                          ; preds = %do.body
  %call7 = tail call fastcc zeroext i1 @need_update(i32 noundef %4)
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.end4
  %10 = tail call fastcc i32 @refresh_cpu_vm_stats()
  br label %return

return:                                           ; preds = %if.end9, %if.end4, %do.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @need_update(i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @first_online_pgdat() #14
  %tobool.not39 = icmp eq ptr %call, null
  br i1 %tobool.not39, label %cleanup28, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %last_pgdat.042 = phi ptr [ null, %for.body.lr.ph ], [ %last_pgdat.2, %for.inc ]
  %zone.040 = phi ptr [ %call, %for.body.lr.ph ], [ %call27, %for.inc ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.040, i32 0, i32 13
  %0 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone.040, i32 0, i32 6
  %2 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %per_cpu_zonestats, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %call4 = tail call ptr @memchr_inv(ptr noundef %7, i32 noundef 0, i32 noundef 11) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end, label %cleanup28

if.end:                                           ; preds = %if.else
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %zone.040, i32 0, i32 4
  %8 = ptrtoint ptr %zone_pgdat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone_pgdat, align 4
  %cmp = icmp eq ptr %last_pgdat.042, %9
  br i1 %cmp, label %for.inc, label %if.end8

if.end8:                                          ; preds = %if.end
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %per_cpu_nodestats, align 128
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add19 = add i32 %14, %12
  %15 = inttoptr i32 %add19 to ptr
  %vm_node_stat_diff = getelementptr inbounds %struct.per_cpu_nodestat, ptr %15, i32 0, i32 1
  %call21 = tail call ptr @memchr_inv(ptr noundef %vm_node_stat_diff, i32 noundef 0, i32 noundef 40) #14
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.inc, label %cleanup28

for.inc:                                          ; preds = %if.end8, %if.end, %for.body
  %last_pgdat.2 = phi ptr [ %last_pgdat.042, %for.body ], [ %last_pgdat.042, %if.end ], [ %9, %if.end8 ]
  %call27 = tail call ptr @next_zone(ptr noundef nonnull %zone.040) #14
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %cleanup28, label %for.body

cleanup28:                                        ; preds = %for.inc, %if.end8, %if.else, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ true, %if.end8 ], [ true, %if.else ], [ false, %for.inc ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @refresh_cpu_vm_stats() unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %global_zone_diff = alloca [11 x i32], align 4
  %global_node_diff = alloca [40 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %global_zone_diff) #14
  %0 = call ptr @memset(ptr %global_zone_diff, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %global_node_diff) #14
  %1 = call ptr @memset(ptr %global_node_diff, i32 0, i32 160)
  %call = tail call ptr @first_online_pgdat() #14
  %tobool.not6 = icmp eq ptr %call, null
  br i1 %tobool.not6, label %for.end48, label %for.body

for.body:                                         ; preds = %for.inc46, %entry
  %zone.07 = phi ptr [ %call47, %for.inc46 ], [ %call, %entry ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.07, i32 0, i32 13
  %2 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %for.inc46, label %if.else

if.else:                                          ; preds = %for.body
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone.07, i32 0, i32 6
  %4 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %per_cpu_zonestats, align 4
  br label %for.body3

for.body3:                                        ; preds = %if.end44, %if.else
  %i.04 = phi i32 [ 0, %if.else ], [ %inc, %if.end44 ]
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %arrayidx = getelementptr [11 x i8], ptr %5, i32 0, i32 %i.04
  %7 = ptrtoint ptr %arrayidx to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  store i8 0, ptr %14, align 1
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i = and i32 %17, 128
  %tobool27.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool27.not, label %if.then31, label %do.end33, !prof !455

if.then31:                                        ; preds = %for.body3
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end33

do.end33:                                         ; preds = %if.then31, %for.body3
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !456
  %tobool39.not = icmp eq i8 %16, 0
  br i1 %tobool39.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %do.end33
  %conv38 = sext i8 %16 to i32
  %arrayidx41 = getelementptr %struct.zone, ptr %zone.07, i32 0, i32 37, i32 %i.04
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx41, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx41, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx41, ptr %arrayidx41, i32 %conv38, ptr elementtype(i32) %arrayidx41) #14, !srcloc !458
  %arrayidx42 = getelementptr [11 x i32], ptr %global_zone_diff, i32 0, i32 %i.04
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %20, %conv38
  store i32 %add43, ptr %arrayidx42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.end33
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc46, label %for.body3

for.inc46:                                        ; preds = %if.end44, %for.body
  %call47 = tail call ptr @next_zone(ptr noundef nonnull %zone.07) #14
  %tobool.not = icmp eq ptr %call47, null
  br i1 %tobool.not, label %for.end48, label %for.body

for.end48:                                        ; preds = %for.inc46, %entry
  %call49 = tail call ptr @first_online_pgdat() #14
  %tobool51.not11 = icmp eq ptr %call49, null
  br i1 %tobool51.not11, label %for.body.i.preheader, label %for.body52

for.body52:                                       ; preds = %for.end124, %for.end48
  %pgdat.012 = phi ptr [ %call126, %for.end124 ], [ %call49, %for.end48 ]
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, ptr %pgdat.012, i32 0, i32 30
  %21 = ptrtoint ptr %per_cpu_nodestats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %per_cpu_nodestats, align 128
  br label %for.body56

for.body56:                                       ; preds = %if.end121, %for.body52
  %i.19 = phi i32 [ 0, %for.body52 ], [ %inc123, %if.end121 ]
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !453
  %arrayidx81 = getelementptr %struct.per_cpu_nodestat, ptr %22, i32 0, i32 1, i32 %i.19
  %24 = ptrtoint ptr %arrayidx81 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i2 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i2 to ptr
  %cpu84 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu84, align 4
  %arrayidx85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %30, %24
  %31 = inttoptr i32 %add86 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  store i8 0, ptr %31, align 1
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !454
  %and.i.i3 = and i32 %34, 128
  %tobool97.not = icmp eq i32 %and.i.i3, 0
  br i1 %tobool97.not, label %if.then106, label %do.end109, !prof !455

if.then106:                                       ; preds = %for.body56
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %for.body56
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #14, !srcloc !456
  %tobool115.not = icmp eq i8 %33, 0
  br i1 %tobool115.not, label %if.end121, label %if.then116

if.then116:                                       ; preds = %do.end109
  %conv114 = sext i8 %33 to i32
  %arrayidx118 = getelementptr %struct.pglist_data, ptr %pgdat.012, i32 0, i32 31, i32 %i.19
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx118, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx118, i32 1, i32 3, i32 1) #14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx118, ptr %arrayidx118, i32 %conv114, ptr elementtype(i32) %arrayidx118) #14, !srcloc !458
  %arrayidx119 = getelementptr [40 x i32], ptr %global_node_diff, i32 0, i32 %i.19
  %36 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %37, %conv114
  store i32 %add120, ptr %arrayidx119, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %do.end109
  %inc123 = add nuw nsw i32 %i.19, 1
  %exitcond13.not = icmp eq i32 %inc123, 40
  br i1 %exitcond13.not, label %for.end124, label %for.body56

for.end124:                                       ; preds = %if.end121
  %call126 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.012) #14
  %tobool51.not = icmp eq ptr %call126, null
  br i1 %tobool51.not, label %for.body.i.preheader, label %for.body52

for.body.i.preheader:                             ; preds = %for.end124, %for.end48
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.preheader
  %changes.034.i = phi i32 [ %changes.1.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %i.032.i = phi i32 [ %inc3.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i32, ptr %global_zone_diff, i32 %i.032.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx2.i = getelementptr [11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %i.032.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx2.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx2.i, i32 1, i32 3, i32 1) #14
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx2.i, ptr %arrayidx2.i, i32 %39, ptr elementtype(i32) %arrayidx2.i) #14, !srcloc !458
  %inc.i = add i32 %changes.034.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %changes.1.i = phi i32 [ %inc.i, %if.then.i ], [ %changes.034.i, %for.body.i ]
  %inc3.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, 11
  br i1 %exitcond.not.i, label %for.body6.i, label %for.body.i

for.body6.i:                                      ; preds = %for.inc14.i, %for.inc.i
  %changes.237.i = phi i32 [ %changes.3.i, %for.inc14.i ], [ %changes.1.i, %for.inc.i ]
  %i.135.i = phi i32 [ %inc15.i, %for.inc14.i ], [ 0, %for.inc.i ]
  %arrayidx7.i = getelementptr i32, ptr %global_node_diff, i32 %i.135.i
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq i32 %42, 0
  br i1 %tobool8.not.i, label %for.inc14.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body6.i
  %arrayidx11.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.135.i
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx11.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx11.i, i32 1, i32 3, i32 1) #14
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx11.i, ptr %arrayidx11.i, i32 %42, ptr elementtype(i32) %arrayidx11.i) #14, !srcloc !458
  %inc12.i = add i32 %changes.237.i, 1
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %if.then9.i, %for.body6.i
  %changes.3.i = phi i32 [ %inc12.i, %if.then9.i ], [ %changes.237.i, %for.body6.i ]
  %inc15.i = add nuw nsw i32 %i.135.i, 1
  %exitcond38.not.i = icmp eq i32 %inc15.i, 40
  br i1 %exitcond38.not.i, label %fold_diff.exit, label %for.body6.i

fold_diff.exit:                                   ; preds = %for.inc14.i
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %global_node_diff) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %global_zone_diff) #14
  ret i32 %changes.3.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mm_internals() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.137, i32 noundef 8, i32 noundef 0) #14
  store ptr %call, ptr @mm_percpu_wq, align 4
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 15, ptr noundef nonnull @.str.138, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @vmstat_cpu_dead, i1 noundef zeroext false) #14
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call.i17 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.141, i1 noundef zeroext false, ptr noundef nonnull @vmstat_cpu_online, ptr noundef nonnull @vmstat_cpu_down_prep, i1 noundef zeroext false) #14
  %cmp4 = icmp slt i32 %call.i17, 0
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #18
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end
  tail call void @cpus_read_lock() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #14
  tail call void @cpus_read_unlock() #14
  tail call fastcc void @start_shepherd_timer() #19
  %call12 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.145, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @fragmentation_op, i32 noundef 0, ptr noundef null) #14
  %call13 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.146, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @pagetypeinfo_op, i32 noundef 0, ptr noundef null) #14
  %call14 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.147, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @vmstat_op, i32 noundef 0, ptr noundef null) #14
  %call15 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.148, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @zoneinfo_op, i32 noundef 0, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_dead(i32 noundef %cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @refresh_zone_stat_thresholds()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_online(i32 noundef %cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @refresh_zone_stat_thresholds()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_down_prep(i32 noundef %cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @vmstat_work to i32)
  %2 = inttoptr i32 %add to ptr
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #14
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_shepherd_timer() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call70 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp71 = icmp ult i32 %call70, %0
  br i1 %cmp71, label %do.body2, label %for.end

do.body2:                                         ; preds = %do.body2, %entry
  %call72 = phi i32 [ %call, %do.body2 ], [ %call70, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call72
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @vmstat_work to i32)
  %3 = inttoptr i32 %add to ptr
  tail call void @__init_work(ptr noundef %3, i32 noundef 0) #14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add12 = add i32 %5, ptrtoint (ptr @vmstat_work to i32)
  %6 = inttoptr i32 %add12 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %6, align 4
  %8 = load i32, ptr %arrayidx, align 4
  %add22 = add i32 %8, ptrtoint (ptr @vmstat_work to i32)
  %9 = inttoptr i32 %add22 to ptr
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.150, ptr noundef nonnull @start_shepherd_timer.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add32 = add i32 %11, ptrtoint (ptr @vmstat_work to i32)
  %12 = inttoptr i32 %add32 to ptr
  %entry34 = getelementptr inbounds %struct.work_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %12, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry34, ptr %prev.i, align 4
  %15 = load i32, ptr %arrayidx, align 4
  %add43 = add i32 %15, ptrtoint (ptr @vmstat_work to i32)
  %16 = inttoptr i32 %add43 to ptr
  %func = getelementptr inbounds %struct.work_struct, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vmstat_update, ptr %func, align 4
  %18 = load i32, ptr %arrayidx, align 4
  %add56 = add i32 %18, ptrtoint (ptr @vmstat_work to i32)
  %19 = inttoptr i32 %add56 to ptr
  %timer = getelementptr inbounds %struct.delayed_work, ptr %19, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.152, ptr noundef nonnull @start_shepherd_timer.__key.151) #14
  %call = tail call i32 @cpumask_next(i32 noundef %call72, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %20
  br i1 %cmp, label %do.body2, label %for.end

for.end:                                          ; preds = %do.body2, %entry
  %21 = load i32, ptr @sysctl_stat_interval, align 4
  %call61 = tail call i32 @round_jiffies_relative(i32 noundef %21) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef nonnull @shepherd, i32 noundef %call61) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @extfrag_debug_init() #7 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.183, ptr noundef null) #14
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.184, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @unusable_fops) #14
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.185, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @extfrag_fops) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmstat_update(ptr nocapture noundef readnone %w) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @refresh_cpu_vm_stats()
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !443) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = load ptr, ptr @mm_percpu_wq, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @vmstat_work to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = load i32, ptr @sysctl_stat_interval, align 4
  %call5 = tail call i32 @round_jiffies_relative(i32 noundef %8) #14
  %call6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %3, ptr noundef %4, ptr noundef %7, i32 noundef %call5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmstat_shepherd(ptr nocapture noundef readnone %w) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #14
  %call14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %0
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %entry
  %call16 = phi i32 [ %call, %if.end ], [ %call14, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @vmstat_work to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i = and i32 %5, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call fastcc zeroext i1 @need_update(i32 noundef %call16)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr @mm_percpu_wq, align 4
  %call4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %call16, ptr noundef %6, ptr noundef %3, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2013, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %call = tail call i32 @cpumask_next(i32 noundef %call16, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  tail call void @cpus_read_unlock() #14
  %8 = load i32, ptr @sysctl_stat_interval, align 4
  %call7 = tail call i32 @round_jiffies_relative(i32 noundef %8) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull @shepherd, i32 noundef %call7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @frag_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @first_online_pgdat() #14
  %tobool.not6 = icmp eq ptr %call, null
  %tobool1.not7 = icmp eq i64 %1, 0
  %or.cond8 = select i1 %tobool.not6, i1 true, i1 %tobool1.not7
  br i1 %or.cond8, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %node.010 = phi i64 [ %dec, %for.body ], [ %1, %entry ]
  %pgdat.09 = phi ptr [ %call2, %for.body ], [ %call, %entry ]
  %dec = add i64 %node.010, -1
  %call2 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.09) #14
  %tobool.not = icmp eq ptr %call2, null
  %tobool1.not = icmp eq i64 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %pgdat.0.lcssa = phi ptr [ %call, %entry ], [ %call2, %for.body ]
  ret ptr %pgdat.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @frag_stop(ptr nocapture noundef %m, ptr nocapture noundef %arg) #11 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @frag_next(ptr nocapture noundef readnone %m, ptr noundef %arg, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call ptr @next_online_pgdat(ptr noundef %arg) #14
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frag_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %arg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @frag_show_print)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %pgdat, i1 noundef zeroext %assert_populated, i1 noundef zeroext %nolock, ptr nocapture noundef readonly %print) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %assert_populated, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %pgdat, i32 0, i32 13
  %0 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %for.inc.thread, label %if.end

for.inc.thread:                                   ; preds = %land.lhs.true
  %incdec.ptr29 = getelementptr %struct.zone, ptr %pgdat, i32 1
  br label %land.lhs.true.1

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 %nolock, label %if.end11.thread, label %if.then13

if.end11.thread:                                  ; preds = %if.end
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %pgdat) #14
  br label %for.inc

if.then13:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.zone, ptr %pgdat, i32 0, i32 22
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %pgdat) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end11.thread
  %incdec.ptr = getelementptr %struct.zone, ptr %pgdat, i32 1
  br i1 %assert_populated, label %land.lhs.true.1, label %if.end.1

land.lhs.true.1:                                  ; preds = %for.inc, %for.inc.thread
  %incdec.ptr31 = phi ptr [ %incdec.ptr29, %for.inc.thread ], [ %incdec.ptr, %for.inc ]
  %present_pages.i.1 = getelementptr %struct.zone, ptr %pgdat, i32 1, i32 13
  %2 = ptrtoint ptr %present_pages.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present_pages.i.1, align 8
  %tobool.i.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.i.not.1, label %for.inc.1.thread, label %if.end.1

for.inc.1.thread:                                 ; preds = %land.lhs.true.1
  %incdec.ptr.132 = getelementptr %struct.zone, ptr %pgdat, i32 2
  br label %land.lhs.true.2

if.end.1:                                         ; preds = %land.lhs.true.1, %for.inc
  %incdec.ptr30 = phi ptr [ %incdec.ptr31, %land.lhs.true.1 ], [ %incdec.ptr, %for.inc ]
  br i1 %nolock, label %if.end11.thread.1, label %if.then13.1

if.then13.1:                                      ; preds = %if.end.1
  %lock.1 = getelementptr %struct.zone, ptr %pgdat, i32 1, i32 22
  %call8.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.1) #14
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr30) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.1, i32 noundef %call8.1) #14
  br label %for.inc.1

if.end11.thread.1:                                ; preds = %if.end.1
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr30) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end11.thread.1, %if.then13.1
  %incdec.ptr.1 = getelementptr %struct.zone, ptr %pgdat, i32 2
  br i1 %assert_populated, label %land.lhs.true.2, label %if.end.2

land.lhs.true.2:                                  ; preds = %for.inc.1, %for.inc.1.thread
  %incdec.ptr.134 = phi ptr [ %incdec.ptr.132, %for.inc.1.thread ], [ %incdec.ptr.1, %for.inc.1 ]
  %present_pages.i.2 = getelementptr %struct.zone, ptr %pgdat, i32 2, i32 13
  %4 = ptrtoint ptr %present_pages.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present_pages.i.2, align 8
  %tobool.i.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.i.not.2, label %for.inc.2.thread, label %if.end.2

for.inc.2.thread:                                 ; preds = %land.lhs.true.2
  %incdec.ptr.235 = getelementptr %struct.zone, ptr %pgdat, i32 3
  br label %land.lhs.true.3

if.end.2:                                         ; preds = %land.lhs.true.2, %for.inc.1
  %incdec.ptr.133 = phi ptr [ %incdec.ptr.134, %land.lhs.true.2 ], [ %incdec.ptr.1, %for.inc.1 ]
  br i1 %nolock, label %if.end11.thread.2, label %if.then13.2

if.then13.2:                                      ; preds = %if.end.2
  %lock.2 = getelementptr %struct.zone, ptr %pgdat, i32 2, i32 22
  %call8.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.2) #14
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.133) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.2, i32 noundef %call8.2) #14
  br label %for.inc.2

if.end11.thread.2:                                ; preds = %if.end.2
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.133) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end11.thread.2, %if.then13.2
  %incdec.ptr.2 = getelementptr %struct.zone, ptr %pgdat, i32 3
  br i1 %assert_populated, label %land.lhs.true.3, label %if.end.3

land.lhs.true.3:                                  ; preds = %for.inc.2, %for.inc.2.thread
  %incdec.ptr.237 = phi ptr [ %incdec.ptr.235, %for.inc.2.thread ], [ %incdec.ptr.2, %for.inc.2 ]
  %present_pages.i.3 = getelementptr %struct.zone, ptr %pgdat, i32 3, i32 13
  %6 = ptrtoint ptr %present_pages.i.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present_pages.i.3, align 8
  %tobool.i.not.3 = icmp eq i32 %7, 0
  br i1 %tobool.i.not.3, label %for.inc.3, label %if.end.3

if.end.3:                                         ; preds = %land.lhs.true.3, %for.inc.2
  %incdec.ptr.236 = phi ptr [ %incdec.ptr.237, %land.lhs.true.3 ], [ %incdec.ptr.2, %for.inc.2 ]
  br i1 %nolock, label %if.end11.thread.3, label %if.then13.3

if.then13.3:                                      ; preds = %if.end.3
  %lock.3 = getelementptr %struct.zone, ptr %pgdat, i32 3, i32 22
  %call8.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.3) #14
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.236) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.3, i32 noundef %call8.3) #14
  br label %for.inc.3

if.end11.thread.3:                                ; preds = %if.end.3
  tail call void %print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.236) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end11.thread.3, %if.then13.3, %land.lhs.true.3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frag_show_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr nocapture noundef readonly %zone) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %1, ptr noundef %3) #14
  %nr_free = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 0, i32 1
  %4 = ptrtoint ptr %nr_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_free, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %5) #14
  %nr_free.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 1, i32 1
  %6 = ptrtoint ptr %nr_free.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_free.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %7) #14
  %nr_free.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 2, i32 1
  %8 = ptrtoint ptr %nr_free.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %9) #14
  %nr_free.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 3, i32 1
  %10 = ptrtoint ptr %nr_free.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_free.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %11) #14
  %nr_free.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 4, i32 1
  %12 = ptrtoint ptr %nr_free.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_free.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %13) #14
  %nr_free.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 5, i32 1
  %14 = ptrtoint ptr %nr_free.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_free.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %15) #14
  %nr_free.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 6, i32 1
  %16 = ptrtoint ptr %nr_free.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_free.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %17) #14
  %nr_free.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 7, i32 1
  %18 = ptrtoint ptr %nr_free.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_free.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %19) #14
  %nr_free.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 8, i32 1
  %20 = ptrtoint ptr %nr_free.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_free.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %21) #14
  %nr_free.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 9, i32 1
  %22 = ptrtoint ptr %nr_free.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_free.9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %23) #14
  %nr_free.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 10, i32 1
  %24 = ptrtoint ptr %nr_free.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_free.10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %25) #14
  %nr_free.11 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 11, i32 1
  %26 = ptrtoint ptr %nr_free.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_free.11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %27) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagetypeinfo_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef 11) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.158, i32 noundef 2048) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 1) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 2) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 3) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 4) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 5) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 6) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 7) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 8) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 9) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 10) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef 11) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  tail call fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %arg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @pagetypeinfo_showfree_print) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @migratetype_names to i32))
  %2 = load ptr, ptr @migratetype_names, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %2) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 3) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %5) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 4) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 4), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %6) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 5) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %7) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  tail call fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %arg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @pagetypeinfo_showblockcount_print) #14
  tail call fastcc void @pagetypeinfo_showmixedcount(ptr noundef %m, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pagetypeinfo_showmixedcount(ptr noundef %m, ptr noundef %pgdat) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@pagetypeinfo_showmixedcount, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !462

if.end:                                           ; preds = %entry
  tail call void @drain_all_pages(ptr noundef null) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.170) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @migratetype_names to i32))
  %0 = load ptr, ptr @migratetype_names, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %2) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 3) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 4) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 4), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 5) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, ptr noundef %5) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  %present_pages.i.i = getelementptr inbounds %struct.zone, ptr %pgdat, i32 0, i32 13
  %6 = ptrtoint ptr %present_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present_pages.i.i, align 8
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.1.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  tail call void @pagetypeinfo_showmixedcount_print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %pgdat) #14
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %if.end.i, %if.end
  %present_pages.i.1.i = getelementptr %struct.zone, ptr %pgdat, i32 1, i32 13
  %8 = ptrtoint ptr %present_pages.i.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %present_pages.i.1.i, align 8
  %tobool.i.not.1.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.1.i, label %land.lhs.true.2.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %land.lhs.true.1.i
  %incdec.ptr31.i = getelementptr %struct.zone, ptr %pgdat, i32 1
  tail call void @pagetypeinfo_showmixedcount_print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr31.i) #14
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %if.end.1.i, %land.lhs.true.1.i
  %present_pages.i.2.i = getelementptr %struct.zone, ptr %pgdat, i32 2, i32 13
  %10 = ptrtoint ptr %present_pages.i.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %present_pages.i.2.i, align 8
  %tobool.i.not.2.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.2.i, label %land.lhs.true.3.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %land.lhs.true.2.i
  %incdec.ptr.134.i = getelementptr %struct.zone, ptr %pgdat, i32 2
  tail call void @pagetypeinfo_showmixedcount_print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.134.i) #14
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %if.end.2.i, %land.lhs.true.2.i
  %present_pages.i.3.i = getelementptr %struct.zone, ptr %pgdat, i32 3, i32 13
  %12 = ptrtoint ptr %present_pages.i.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %present_pages.i.3.i, align 8
  %tobool.i.not.3.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.3.i, label %cleanup, label %if.end.3.i

if.end.3.i:                                       ; preds = %land.lhs.true.3.i
  %incdec.ptr.237.i = getelementptr %struct.zone, ptr %pgdat, i32 3
  tail call void @pagetypeinfo_showmixedcount_print(ptr noundef %m, ptr noundef %pgdat, ptr noundef %incdec.ptr.237.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i, %land.lhs.true.3.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pagetypeinfo_showfree_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr noundef %zone) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %lock = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.end17, %entry
  %mtype.036 = phi i32 [ 0, %entry ], [ %inc19, %for.end17 ]
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 16
  %arrayidx = getelementptr [6 x ptr], ptr @migratetype_names, i32 0, i32 %mtype.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.162, i32 noundef %1, ptr noundef %3, ptr noundef %5) #14
  br label %for.body3

for.body3:                                        ; preds = %for.end, %for.body
  %order.035 = phi i32 [ 0, %for.body ], [ %inc16, %for.end ]
  %arrayidx4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 %order.035
  %arrayidx5 = getelementptr [6 x %struct.list_head], ptr %arrayidx4, i32 0, i32 %mtype.036
  br label %for.cond6

for.cond6:                                        ; preds = %for.body9, %for.body3
  %freecount.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body9 ]
  %curr.0.in = phi ptr [ %arrayidx5, %for.body3 ], [ %curr.0, %for.body9 ]
  %6 = ptrtoint ptr %curr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %curr.0 = load ptr, ptr %curr.0.in, align 4
  %cmp.i.not = icmp eq ptr %curr.0, %arrayidx5
  br i1 %cmp.i.not, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %inc = add nuw nsw i32 %freecount.0, 1
  %exitcond = icmp eq i32 %inc, 100000
  br i1 %exitcond, label %for.end, label %for.cond6

for.end:                                          ; preds = %for.body9, %for.cond6
  %freecount.1 = phi i32 [ %freecount.0, %for.cond6 ], [ 100000, %for.body9 ]
  %overflow.0.off0 = phi ptr [ @.str.165, %for.cond6 ], [ @.str.164, %for.body9 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, ptr noundef nonnull %overflow.0.off0, i32 noundef %freecount.1) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1510, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %inc16 = add nuw nsw i32 %order.035, 1
  %exitcond37.not = icmp eq i32 %inc16, 12
  br i1 %exitcond37.not, label %for.end17, label %for.body3

for.end17:                                        ; preds = %for.end
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  %inc19 = add nuw nsw i32 %mtype.036, 1
  %exitcond38.not = icmp eq i32 %inc19, 6
  br i1 %exitcond38.not, label %for.end20, label %for.body

for.end20:                                        ; preds = %for.end17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pagetypeinfo_showblockcount_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr noundef readonly %zone) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %count = alloca [6 x i32], align 4
  %zone_start_pfn = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 10
  %0 = ptrtoint ptr %zone_start_pfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_start_pfn, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 12
  %2 = ptrtoint ptr %spanned_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count) #14
  %4 = call ptr @memset(ptr %count, i32 0, i32 24)
  %cmp38 = icmp ult i32 %1, %add.i
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %cleanup, %entry
  %pfn.039 = phi i32 [ %add13, %cleanup ], [ %1, %entry ]
  %call1 = tail call i32 @pfn_valid(i32 noundef %pfn.039) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.039, %6
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %sub
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %add.ptr, align 4
  %cmp.i.not.i.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !455

if.then.i.i:                                      ; preds = %if.end4
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.149) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !460
  unreachable

page_zone.exit:                                   ; preds = %if.end4
  %shr.i.i = lshr i32 %8, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %cmp6.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %page_zone.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %10
  %call9 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr, i32 noundef %add, i32 noundef 7) #14
  %cmp10 = icmp slt i32 %call9, 6
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8
  %arrayidx = getelementptr [6 x i32], ptr %count, i32 0, i32 %call9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8, %page_zone.exit, %if.end, %for.body
  %add13 = add i32 %pfn.039, 2048
  %cmp = icmp ult i32 %add13, %add.i
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %13 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %14, ptr noundef %16) #14
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %18) #14
  %arrayidx17.1 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %20) #14
  %arrayidx17.2 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %22) #14
  %arrayidx17.3 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %24) #14
  %arrayidx17.4 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %26) #14
  %arrayidx17.5 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %28) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_all_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagetypeinfo_showmixedcount_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vmstat_start(ptr nocapture noundef %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %cmp = icmp sgt i64 %1, 128
  br i1 %cmp, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 516) #20
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  %4 = load volatile i32, ptr @vm_zone_stat, align 128
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #14
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i.i, align 8
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), i32 noundef 4) #14
  %7 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #14
  %arrayidx.1 = getelementptr i32, ptr %call7.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.1, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), i32 noundef 4) #14
  %10 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), align 8
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #14
  %arrayidx.2 = getelementptr i32, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx.2, align 8
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), i32 noundef 4) #14
  %13 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #14
  %arrayidx.3 = getelementptr i32, ptr %call7.i.i, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.3, align 4
  %call.i.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), i32 noundef 4) #14
  %16 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), align 16
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #14
  %arrayidx.4 = getelementptr i32, ptr %call7.i.i, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.4, align 8
  %call.i.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), i32 noundef 4) #14
  %19 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #14
  %arrayidx.5 = getelementptr i32, ptr %call7.i.i, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.5, align 4
  %call.i.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6), i32 noundef 4) #14
  %22 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6), align 8
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #14
  %arrayidx.6 = getelementptr i32, ptr %call7.i.i, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.6, align 8
  %call.i.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), i32 noundef 4) #14
  %25 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #14
  %arrayidx.7 = getelementptr i32, ptr %call7.i.i, i32 7
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.7, align 4
  %call.i.i.i.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), i32 noundef 4) #14
  %28 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 32
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #14
  %arrayidx.8 = getelementptr i32, ptr %call7.i.i, i32 8
  %30 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.8, align 8
  %call.i.i.i.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), i32 noundef 4) #14
  %31 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #14
  %arrayidx.9 = getelementptr i32, ptr %call7.i.i, i32 9
  %33 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx.9, align 4
  %call.i.i.i.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 10), i32 noundef 4) #14
  %34 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 10), align 8
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0) #14
  %arrayidx.10 = getelementptr i32, ptr %call7.i.i, i32 10
  %36 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.10, align 8
  %add.ptr = getelementptr i32, ptr %call7.i.i, i32 11
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body.preheader
  %i.158 = phi i32 [ 0, %for.body.preheader ], [ %inc19, %for.body8 ]
  %arrayidx.i55 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.158
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i55, i32 noundef 4) #14
  %37 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i55, align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #14
  %arrayidx10 = getelementptr i32, ptr %add.ptr, i32 %i.158
  %40 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx10, align 4
  %inc19 = add nuw nsw i32 %i.158, 1
  %exitcond.not = icmp eq i32 %inc19, 40
  br i1 %exitcond.not, label %for.end20, label %for.body8

for.end20:                                        ; preds = %for.body8
  %add.ptr21 = getelementptr i32, ptr %call7.i.i, i32 51
  %add.ptr22 = getelementptr i32, ptr %call7.i.i, i32 52
  tail call void @global_dirty_limits(ptr noundef %add.ptr22, ptr noundef %add.ptr21) #14
  %add.ptr24 = getelementptr i32, ptr %call7.i.i, i32 53
  tail call void @cpus_read_lock() #14
  %41 = call ptr @memset(ptr %add.ptr24, i32 0, i32 304)
  %call16.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp17.i.i = icmp ult i32 %call16.i.i, %42
  br i1 %cmp17.i.i, label %for.body.i.i, label %all_vm_events.exit

for.cond.loopexit.i.i:                            ; preds = %for.body4.i.i
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %call18.i.i, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp.i.i = icmp ult i32 %call.i.i, %42
  br i1 %cmp.i.i, label %for.body.i.i, label %all_vm_events.exit

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i, %for.end20
  %call18.i.i = phi i32 [ %call.i.i, %for.cond.loopexit.i.i ], [ %call16.i.i, %for.end20 ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, ptrtoint (ptr @vm_event_states to i32)
  %45 = inttoptr i32 %add.i.i to ptr
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i, %for.body.i.i
  %i.015.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i, %for.body4.i.i ]
  %arrayidx5.i.i = getelementptr [76 x i32], ptr %45, i32 0, i32 %i.015.i.i
  %46 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %add.ptr24, i32 %i.015.i.i
  %48 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add i32 %49, %47
  store i32 %add7.i.i, ptr %arrayidx6.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 76
  br i1 %exitcond.not.i.i, label %for.cond.loopexit.i.i, label %for.body4.i.i

all_vm_events.exit:                               ; preds = %for.cond.loopexit.i.i, %for.end20
  tail call void @cpus_read_unlock() #14
  %50 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr24, align 4
  %div2653 = lshr i32 %51, 1
  store i32 %div2653, ptr %add.ptr24, align 4
  %arrayidx27 = getelementptr i32, ptr %call7.i.i, i32 54
  %52 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx27, align 8
  %div2854 = lshr i32 %53, 1
  store i32 %div2854, ptr %arrayidx27, align 8
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private, align 8
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %pos, align 8
  %idx.ext = trunc i64 %57 to i32
  %add.ptr30 = getelementptr i32, ptr %55, i32 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %all_vm_events.exit, %do.end, %entry
  %retval.0 = phi ptr [ %add.ptr30, %all_vm_events.exit ], [ null, %entry ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmstat_stop(ptr nocapture noundef %m, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @kfree(ptr noundef %1) #14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vmstat_next(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %arg, ptr nocapture noundef %pos) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp sgt i64 %inc, 128
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %idx.ext = trunc i64 %inc to i32
  %add.ptr = getelementptr i32, ptr %3, i32 %idx.ext
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmstat_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arg to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %arrayidx = getelementptr [129 x ptr], ptr @vmstat_text, i32 0, i32 %sub.ptr.div
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef %3) #14
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  %conv = zext i32 %5 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.171, i64 noundef %conv) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  %cmp = icmp eq i32 %sub.ptr.sub, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.172) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @global_dirty_limits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoneinfo_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.zone, ptr %arg, i32 0, i32 22
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  tail call fastcc void @zoneinfo_show_print(ptr noundef %m, ptr noundef %arg, ptr noundef %arg) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #14
  %incdec.ptr.i = getelementptr %struct.zone, ptr %arg, i32 1
  %lock.1.i = getelementptr %struct.zone, ptr %arg, i32 1, i32 22
  %call8.1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.1.i) #14
  tail call fastcc void @zoneinfo_show_print(ptr noundef %m, ptr noundef %arg, ptr noundef %incdec.ptr.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.1.i, i32 noundef %call8.1.i) #14
  %incdec.ptr.1.i = getelementptr %struct.zone, ptr %arg, i32 2
  %lock.2.i = getelementptr %struct.zone, ptr %arg, i32 2, i32 22
  %call8.2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.2.i) #14
  tail call fastcc void @zoneinfo_show_print(ptr noundef %m, ptr noundef %arg, ptr noundef %incdec.ptr.1.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.2.i, i32 noundef %call8.2.i) #14
  %incdec.ptr.2.i = getelementptr %struct.zone, ptr %arg, i32 3
  %lock.3.i = getelementptr %struct.zone, ptr %arg, i32 3, i32 22
  %call8.3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.3.i) #14
  tail call fastcc void @zoneinfo_show_print(ptr noundef %m, ptr noundef %arg, ptr noundef %incdec.ptr.2.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.3.i, i32 noundef %call8.3.i) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zoneinfo_show_print(ptr noundef %m, ptr noundef readonly %pgdat, ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.173, i32 noundef %1, ptr noundef %3) #14
  %present_pages.i.i = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 0, i32 13
  %4 = ptrtoint ptr %present_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present_pages.i.i, align 8
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %for.inc.i, label %is_zone_first_populated.exit

for.inc.i:                                        ; preds = %entry
  %present_pages.i.1.i = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %present_pages.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present_pages.i.1.i, align 8
  %tobool.i.not.1.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.1.i, label %for.inc.1.i, label %is_zone_first_populated.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %present_pages.i.2.i = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %present_pages.i.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %present_pages.i.2.i, align 8
  %tobool.i.not.2.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.2.i, label %for.inc.2.i, label %is_zone_first_populated.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %present_pages.i.3.i = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 3, i32 13
  %10 = ptrtoint ptr %present_pages.i.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %present_pages.i.3.i, align 8
  %tobool.i.not.3.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.3.i, label %if.end5, label %is_zone_first_populated.exit

is_zone_first_populated.exit:                     ; preds = %for.inc.2.i, %for.inc.1.i, %for.inc.i, %entry
  %zid.08.lcssa.i = phi i32 [ 0, %entry ], [ 1, %for.inc.i ], [ 2, %for.inc.1.i ], [ 3, %for.inc.2.i ]
  %arrayidx.le.i = getelementptr [4 x %struct.zone], ptr %pgdat, i32 0, i32 %zid.08.lcssa.i
  %cmp1.le.i = icmp eq ptr %arrayidx.le.i, %zone
  br i1 %cmp1.le.i, label %if.then, label %if.end5

if.then:                                          ; preds = %is_zone_first_populated.exit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.174) #14
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then
  %i.0122 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %arrayidx.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.0122
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #14
  %add.i = add nuw nsw i32 %i.0122, 11
  %arrayidx.i114 = getelementptr [0 x ptr], ptr @vmstat_text, i32 0, i32 %add.i
  %15 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i114, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef %16, i32 noundef %14) #14
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %if.end5, label %for.body

if.end5:                                          ; preds = %for.body, %is_zone_first_populated.exit, %for.inc.2.i
  %arrayidx.i115 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 0
  %call.i.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i115, i32 noundef 4) #14
  %17 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i115, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #14
  %watermark_boost = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 1
  %20 = ptrtoint ptr %watermark_boost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %watermark_boost, align 4
  %22 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %zone, align 128
  %add = add i32 %23, %21
  %arrayidx9 = getelementptr [3 x i32], ptr %zone, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9, align 4
  %add11 = add i32 %25, %21
  %arrayidx13 = getelementptr [3 x i32], ptr %zone, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 8
  %add15 = add i32 %27, %21
  %spanned_pages = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 12
  %28 = ptrtoint ptr %spanned_pages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spanned_pages, align 4
  %present_pages = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 13
  %30 = ptrtoint ptr %present_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %present_pages, align 8
  %managed_pages.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 11
  %call.i.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i, i32 noundef 4) #14
  %32 = ptrtoint ptr %managed_pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %managed_pages.i, align 4
  %cma_pages.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 14
  %34 = ptrtoint ptr %cma_pages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cma_pages.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.176, i32 noundef %19, i32 noundef %21, i32 noundef %add, i32 noundef %add11, i32 noundef %add15, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #14
  %lowmem_reserve = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 3
  %36 = ptrtoint ptr %lowmem_reserve to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lowmem_reserve, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.177, i32 noundef %37) #14
  %arrayidx23 = getelementptr %struct.zone, ptr %zone, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.178, i32 noundef %39) #14
  %arrayidx23.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx23.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.178, i32 noundef %41) #14
  %arrayidx23.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx23.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.178, i32 noundef %43) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 41) #14
  %44 = ptrtoint ptr %present_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %present_pages, align 8
  %tobool.i.not = icmp eq i32 %45, 0
  br i1 %tobool.i.not, label %cleanup, label %for.body32.preheader

for.body32.preheader:                             ; preds = %if.end5
  %call.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i115, i32 noundef 4) #14
  %46 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i115, align 4
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.4, i32 noundef %48) #14
  %arrayidx.i119.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 1
  %call.i.i.i120.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.1, i32 noundef 4) #14
  %49 = ptrtoint ptr %arrayidx.i119.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i119.1, align 4
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.5, i32 noundef %51) #14
  %arrayidx.i119.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 2
  %call.i.i.i120.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.2, i32 noundef 4) #14
  %52 = ptrtoint ptr %arrayidx.i119.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i119.2, align 4
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.6, i32 noundef %54) #14
  %arrayidx.i119.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 3
  %call.i.i.i120.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.3, i32 noundef 4) #14
  %55 = ptrtoint ptr %arrayidx.i119.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i119.3, align 4
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.7, i32 noundef %57) #14
  %arrayidx.i119.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 4
  %call.i.i.i120.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.4, i32 noundef 4) #14
  %58 = ptrtoint ptr %arrayidx.i119.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i119.4, align 4
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.8, i32 noundef %60) #14
  %arrayidx.i119.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 5
  %call.i.i.i120.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.5, i32 noundef 4) #14
  %61 = ptrtoint ptr %arrayidx.i119.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i119.5, align 4
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.9, i32 noundef %63) #14
  %arrayidx.i119.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 6
  %call.i.i.i120.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.6, i32 noundef 4) #14
  %64 = ptrtoint ptr %arrayidx.i119.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %arrayidx.i119.6, align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.10, i32 noundef %66) #14
  %arrayidx.i119.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 7
  %call.i.i.i120.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.7, i32 noundef 4) #14
  %67 = ptrtoint ptr %arrayidx.i119.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i119.7, align 4
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.11, i32 noundef %69) #14
  %arrayidx.i119.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 8
  %call.i.i.i120.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.8, i32 noundef 4) #14
  %70 = ptrtoint ptr %arrayidx.i119.8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i119.8, align 4
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.12, i32 noundef %72) #14
  %arrayidx.i119.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 9
  %call.i.i.i120.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.9, i32 noundef 4) #14
  %73 = ptrtoint ptr %arrayidx.i119.9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %arrayidx.i119.9, align 4
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.13, i32 noundef %75) #14
  %arrayidx.i119.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 37, i32 10
  %call.i.i.i120.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i119.10, i32 noundef 4) #14
  %76 = ptrtoint ptr %arrayidx.i119.10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i119.10, align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.14, i32 noundef %78) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.179) #14
  %call39125 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %79 = load i32, ptr @nr_cpu_ids, align 4
  %cmp40126 = icmp ult i32 %call39125, %79
  br i1 %cmp40126, label %for.body41.lr.ph, label %for.end58

for.body41.lr.ph:                                 ; preds = %for.body32.preheader
  %per_cpu_pageset = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 5
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 6
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %for.body41.lr.ph
  %call39127 = phi i32 [ %call39125, %for.body41.lr.ph ], [ %call39, %for.body41 ]
  %80 = ptrtoint ptr %per_cpu_pageset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %per_cpu_pageset, align 8
  %82 = ptrtoint ptr %81 to i32
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call39127
  %83 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %84, %82
  %85 = inttoptr i32 %add48 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %high = getelementptr inbounds %struct.per_cpu_pages, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %high, align 4
  %batch = getelementptr inbounds %struct.per_cpu_pages, ptr %85, i32 0, i32 2
  %90 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %batch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.180, i32 noundef %call39127, i32 noundef %87, i32 noundef %89, i32 noundef %91) #14
  %92 = ptrtoint ptr %per_cpu_zonestats to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %per_cpu_zonestats, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx47, align 4
  %add57 = add i32 %96, %94
  %97 = inttoptr i32 %add57 to ptr
  %stat_threshold = getelementptr inbounds %struct.per_cpu_zonestat, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %stat_threshold to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %stat_threshold, align 1
  %conv = sext i8 %99 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.181, i32 noundef %conv) #14
  %call39 = tail call i32 @cpumask_next(i32 noundef %call39127, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %100 = load i32, ptr @nr_cpu_ids, align 4
  %cmp40 = icmp ult i32 %call39, %100
  br i1 %cmp40, label %for.body41, label %for.end58

for.end58:                                        ; preds = %for.body41, %for.body32.preheader
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 17
  %101 = ptrtoint ptr %kswapd_failures to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %kswapd_failures, align 16
  %cmp59 = icmp sgt i32 %102, 15
  %conv60 = zext i1 %cmp59 to i32
  %zone_start_pfn = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 10
  %103 = ptrtoint ptr %zone_start_pfn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %zone_start_pfn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.182, i32 noundef %conv60, i32 noundef %104) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end58, %if.end5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unusable_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @unusable_sops) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unusable_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %arg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @unusable_show_print)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unusable_show_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr nocapture noundef readonly %zone) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %1, ptr noundef %3) #14
  %nr_free.i = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 0, i32 1
  %nr_free.i.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 1, i32 1
  %nr_free.i.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 2, i32 1
  %nr_free.i.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 3, i32 1
  %nr_free.i.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 4, i32 1
  %nr_free.i.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 5, i32 1
  %nr_free.i.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 6, i32 1
  %nr_free.i.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 7, i32 1
  %nr_free.i.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 8, i32 1
  %nr_free.i.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 9, i32 1
  %nr_free.i.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 10, i32 1
  %nr_free.i.11 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 11, i32 1
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %unusable_free_index.exit, %entry
  %order.014 = phi i32 [ 0, %entry ], [ %inc, %unusable_free_index.exit ]
  %4 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_free.i, align 4
  %6 = ptrtoint ptr %nr_free.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_free.i.1, align 4
  %shl.i.1 = shl i32 %7, 1
  %add4.i.1 = add i32 %shl.i.1, %5
  %8 = ptrtoint ptr %nr_free.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free.i.2, align 4
  %shl.i.2 = shl i32 %9, 2
  %add4.i.2 = add i32 %shl.i.2, %add4.i.1
  %10 = ptrtoint ptr %nr_free.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_free.i.3, align 4
  %shl.i.3 = shl i32 %11, 3
  %add4.i.3 = add i32 %shl.i.3, %add4.i.2
  %12 = ptrtoint ptr %nr_free.i.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_free.i.4, align 4
  %shl.i.4 = shl i32 %13, 4
  %add4.i.4 = add i32 %shl.i.4, %add4.i.3
  %14 = ptrtoint ptr %nr_free.i.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_free.i.5, align 4
  %shl.i.5 = shl i32 %15, 5
  %add4.i.5 = add i32 %shl.i.5, %add4.i.4
  %16 = ptrtoint ptr %nr_free.i.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_free.i.6, align 4
  %shl.i.6 = shl i32 %17, 6
  %add4.i.6 = add i32 %shl.i.6, %add4.i.5
  %18 = ptrtoint ptr %nr_free.i.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_free.i.7, align 4
  %shl.i.7 = shl i32 %19, 7
  %add4.i.7 = add i32 %shl.i.7, %add4.i.6
  %20 = ptrtoint ptr %nr_free.i.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_free.i.8, align 4
  %shl.i.8 = shl i32 %21, 8
  %add4.i.8 = add i32 %shl.i.8, %add4.i.7
  %22 = ptrtoint ptr %nr_free.i.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_free.i.9, align 4
  %shl.i.9 = shl i32 %23, 9
  %add4.i.9 = add i32 %shl.i.9, %add4.i.8
  %24 = ptrtoint ptr %nr_free.i.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_free.i.10, align 4
  %shl.i.10 = shl i32 %25, 10
  %add4.i.10 = add i32 %shl.i.10, %add4.i.9
  %26 = ptrtoint ptr %nr_free.i.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_free.i.11, align 4
  %shl.i.11 = shl i32 %27, 11
  %add4.i.11 = add i32 %shl.i.11, %add4.i.10
  %cmp.i = icmp eq i32 %add4.i.11, 0
  br i1 %cmp.i, label %unusable_free_index.exit, label %if.end.i11

if.end.i11:                                       ; preds = %for.body.i.preheader
  %sub.i.11 = sub nuw nsw i32 11, %order.014
  %shl6.i.11 = shl i32 %27, %sub.i.11
  %cmp5.not.i.10 = icmp ugt i32 %order.014, 10
  %sub.i.10 = sub nsw i32 10, %order.014
  %shl6.i.10 = shl i32 %25, %sub.i.10
  %add8.i.10 = select i1 %cmp5.not.i.10, i32 0, i32 %shl6.i.10
  %cmp5.not.i.9 = icmp ugt i32 %order.014, 9
  %sub.i.9 = sub nsw i32 9, %order.014
  %shl6.i.9 = shl i32 %23, %sub.i.9
  %add8.i.9 = select i1 %cmp5.not.i.9, i32 0, i32 %shl6.i.9
  %cmp5.not.i.8 = icmp ugt i32 %order.014, 8
  %sub.i.8 = sub nsw i32 8, %order.014
  %shl6.i.8 = shl i32 %21, %sub.i.8
  %add8.i.8 = select i1 %cmp5.not.i.8, i32 0, i32 %shl6.i.8
  %cmp5.not.i.7 = icmp ugt i32 %order.014, 7
  %sub.i.7 = sub nsw i32 7, %order.014
  %shl6.i.7 = shl i32 %19, %sub.i.7
  %add8.i.7 = select i1 %cmp5.not.i.7, i32 0, i32 %shl6.i.7
  %cmp5.not.i.6 = icmp ugt i32 %order.014, 6
  %sub.i.6 = sub nsw i32 6, %order.014
  %shl6.i.6 = shl i32 %17, %sub.i.6
  %add8.i.6 = select i1 %cmp5.not.i.6, i32 0, i32 %shl6.i.6
  %cmp5.not.i.5 = icmp ugt i32 %order.014, 5
  %sub.i.5 = sub nsw i32 5, %order.014
  %shl6.i.5 = shl i32 %15, %sub.i.5
  %add8.i.5 = select i1 %cmp5.not.i.5, i32 0, i32 %shl6.i.5
  %cmp5.not.i.4 = icmp ugt i32 %order.014, 4
  %sub.i.4 = sub nsw i32 4, %order.014
  %shl6.i.4 = shl i32 %13, %sub.i.4
  %add8.i.4 = select i1 %cmp5.not.i.4, i32 0, i32 %shl6.i.4
  %cmp5.not.i.3 = icmp ugt i32 %order.014, 3
  %sub.i.3 = sub nsw i32 3, %order.014
  %shl6.i.3 = shl i32 %11, %sub.i.3
  %add8.i.3 = select i1 %cmp5.not.i.3, i32 0, i32 %shl6.i.3
  %cmp5.not.i.2 = icmp ugt i32 %order.014, 2
  %sub.i.2 = sub nsw i32 2, %order.014
  %shl6.i.2 = shl i32 %9, %sub.i.2
  %add8.i.2 = select i1 %cmp5.not.i.2, i32 0, i32 %shl6.i.2
  %cmp5.not.i.1 = icmp ugt i32 %order.014, 1
  %sub.i.1 = sub nsw i32 1, %order.014
  %shl6.i.1 = shl i32 %7, %sub.i.1
  %add8.i.1 = select i1 %cmp5.not.i.1, i32 0, i32 %shl6.i.1
  %cmp5.not.i.not = icmp eq i32 %order.014, 0
  %sub.i = sub nsw i32 0, %order.014
  %shl6.i = shl i32 %5, %sub.i
  %add8.i = select i1 %cmp5.not.i.not, i32 %shl6.i, i32 0
  %info.sroa.11.1.1 = add i32 %add8.i.1, %add8.i
  %info.sroa.11.1.2 = add i32 %add8.i.2, %info.sroa.11.1.1
  %info.sroa.11.1.3 = add i32 %add8.i.3, %info.sroa.11.1.2
  %info.sroa.11.1.4 = add i32 %add8.i.4, %info.sroa.11.1.3
  %info.sroa.11.1.5 = add i32 %add8.i.5, %info.sroa.11.1.4
  %info.sroa.11.1.6 = add i32 %add8.i.6, %info.sroa.11.1.5
  %info.sroa.11.1.7 = add i32 %add8.i.7, %info.sroa.11.1.6
  %info.sroa.11.1.8 = add i32 %add8.i.8, %info.sroa.11.1.7
  %info.sroa.11.1.9 = add i32 %add8.i.9, %info.sroa.11.1.8
  %info.sroa.11.1.10 = add i32 %add8.i.10, %info.sroa.11.1.9
  %info.sroa.11.1.11 = add i32 %shl6.i.11, %info.sroa.11.1.10
  %shl.i9 = shl i32 %info.sroa.11.1.11, %order.014
  %sub.i10 = sub i32 %add4.i.11, %shl.i9
  %conv.i = zext i32 %sub.i10 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !459

if.then168.i.i.i:                                 ; preds = %if.end.i11
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add4.i.11
  br label %unusable_free_index.exit

if.else174.i.i.i:                                 ; preds = %if.end.i11
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add4.i.11, i64 %mul.i) #17, !srcloc !461
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t8.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %unusable_free_index.exit

unusable_free_index.exit:                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %for.body.i.preheader
  %retval.0.i = phi i32 [ 1000, %for.body.i.preheader ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t8.i, %if.else174.i.i.i ]
  %retval.0.i.frozen = freeze i32 %retval.0.i
  %div = sdiv i32 %retval.0.i.frozen, 1000
  %29 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %retval.0.i.frozen, %29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.186, i32 noundef %div, i32 noundef %rem.decomposed) #14
  %inc = add nuw nsw i32 %order.014, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.i.preheader

for.end:                                          ; preds = %unusable_free_index.exit
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extfrag_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @extfrag_sops) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extfrag_show(ptr noundef %m, ptr noundef %arg) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @walk_zones_in_node(ptr noundef %m, ptr noundef %arg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @extfrag_show_print)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @extfrag_show_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr nocapture noundef readonly %zone) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %0 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %1, ptr noundef %3) #14
  %nr_free.i = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 0, i32 1
  %nr_free.i.1 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 1, i32 1
  %nr_free.i.2 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 2, i32 1
  %nr_free.i.3 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 3, i32 1
  %nr_free.i.4 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 4, i32 1
  %nr_free.i.5 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 5, i32 1
  %nr_free.i.6 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 6, i32 1
  %nr_free.i.7 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 7, i32 1
  %nr_free.i.8 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 8, i32 1
  %nr_free.i.9 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 9, i32 1
  %nr_free.i.10 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 10, i32 1
  %nr_free.i.11 = getelementptr %struct.zone, ptr %zone, i32 0, i32 20, i32 11, i32 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %__fragmentation_index.exit, %entry
  %order.016 = phi i32 [ 0, %entry ], [ %inc, %__fragmentation_index.exit ]
  %4 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_free.i, align 4
  %6 = ptrtoint ptr %nr_free.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_free.i.1, align 4
  %add.i.1 = add i32 %7, %5
  %shl.i.1 = shl i32 %7, 1
  %add4.i.1 = add i32 %shl.i.1, %5
  %8 = ptrtoint ptr %nr_free.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free.i.2, align 4
  %add.i.2 = add i32 %9, %add.i.1
  %shl.i.2 = shl i32 %9, 2
  %add4.i.2 = add i32 %shl.i.2, %add4.i.1
  %10 = ptrtoint ptr %nr_free.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_free.i.3, align 4
  %add.i.3 = add i32 %11, %add.i.2
  %shl.i.3 = shl i32 %11, 3
  %add4.i.3 = add i32 %shl.i.3, %add4.i.2
  %12 = ptrtoint ptr %nr_free.i.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_free.i.4, align 4
  %add.i.4 = add i32 %13, %add.i.3
  %shl.i.4 = shl i32 %13, 4
  %add4.i.4 = add i32 %shl.i.4, %add4.i.3
  %14 = ptrtoint ptr %nr_free.i.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_free.i.5, align 4
  %add.i.5 = add i32 %15, %add.i.4
  %shl.i.5 = shl i32 %15, 5
  %add4.i.5 = add i32 %shl.i.5, %add4.i.4
  %16 = ptrtoint ptr %nr_free.i.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_free.i.6, align 4
  %add.i.6 = add i32 %17, %add.i.5
  %shl.i.6 = shl i32 %17, 6
  %add4.i.6 = add i32 %shl.i.6, %add4.i.5
  %18 = ptrtoint ptr %nr_free.i.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_free.i.7, align 4
  %add.i.7 = add i32 %19, %add.i.6
  %shl.i.7 = shl i32 %19, 7
  %add4.i.7 = add i32 %shl.i.7, %add4.i.6
  %20 = ptrtoint ptr %nr_free.i.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_free.i.8, align 4
  %add.i.8 = add i32 %21, %add.i.7
  %shl.i.8 = shl i32 %21, 8
  %add4.i.8 = add i32 %shl.i.8, %add4.i.7
  %22 = ptrtoint ptr %nr_free.i.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_free.i.9, align 4
  %add.i.9 = add i32 %23, %add.i.8
  %shl.i.9 = shl i32 %23, 9
  %add4.i.9 = add i32 %shl.i.9, %add4.i.8
  %24 = ptrtoint ptr %nr_free.i.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_free.i.10, align 4
  %add.i.10 = add i32 %25, %add.i.9
  %shl.i.10 = shl i32 %25, 10
  %add4.i.10 = add i32 %shl.i.10, %add4.i.9
  %26 = ptrtoint ptr %nr_free.i.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_free.i.11, align 4
  %add.i.11 = add i32 %27, %add.i.10
  %shl.i.11 = shl i32 %27, 11
  %add4.i.11 = add i32 %shl.i.11, %add4.i.10
  %shl.i8 = shl nuw i32 1, %order.016
  %tobool38.not.i = icmp eq i32 %add.i.11, 0
  br i1 %tobool38.not.i, label %__fragmentation_index.exit, label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i
  %sub.i.11 = sub nuw nsw i32 11, %order.016
  %shl6.i.11 = shl i32 %27, %sub.i.11
  %cmp5.not.i.10 = icmp ugt i32 %order.016, 10
  %sub.i.10 = sub nsw i32 10, %order.016
  %shl6.i.10 = shl i32 %25, %sub.i.10
  %add8.i.10 = select i1 %cmp5.not.i.10, i32 0, i32 %shl6.i.10
  %cmp5.not.i.9 = icmp ugt i32 %order.016, 9
  %sub.i.9 = sub nsw i32 9, %order.016
  %shl6.i.9 = shl i32 %23, %sub.i.9
  %add8.i.9 = select i1 %cmp5.not.i.9, i32 0, i32 %shl6.i.9
  %cmp5.not.i.8 = icmp ugt i32 %order.016, 8
  %sub.i.8 = sub nsw i32 8, %order.016
  %shl6.i.8 = shl i32 %21, %sub.i.8
  %add8.i.8 = select i1 %cmp5.not.i.8, i32 0, i32 %shl6.i.8
  %cmp5.not.i.7 = icmp ugt i32 %order.016, 7
  %sub.i.7 = sub nsw i32 7, %order.016
  %shl6.i.7 = shl i32 %19, %sub.i.7
  %add8.i.7 = select i1 %cmp5.not.i.7, i32 0, i32 %shl6.i.7
  %cmp5.not.i.6 = icmp ugt i32 %order.016, 6
  %sub.i.6 = sub nsw i32 6, %order.016
  %shl6.i.6 = shl i32 %17, %sub.i.6
  %add8.i.6 = select i1 %cmp5.not.i.6, i32 0, i32 %shl6.i.6
  %cmp5.not.i.5 = icmp ugt i32 %order.016, 5
  %sub.i.5 = sub nsw i32 5, %order.016
  %shl6.i.5 = shl i32 %15, %sub.i.5
  %add8.i.5 = select i1 %cmp5.not.i.5, i32 0, i32 %shl6.i.5
  %cmp5.not.i.4 = icmp ugt i32 %order.016, 4
  %sub.i.4 = sub nsw i32 4, %order.016
  %shl6.i.4 = shl i32 %13, %sub.i.4
  %add8.i.4 = select i1 %cmp5.not.i.4, i32 0, i32 %shl6.i.4
  %cmp5.not.i.3 = icmp ugt i32 %order.016, 3
  %sub.i.3 = sub nsw i32 3, %order.016
  %shl6.i.3 = shl i32 %11, %sub.i.3
  %add8.i.3 = select i1 %cmp5.not.i.3, i32 0, i32 %shl6.i.3
  %cmp5.not.i.2 = icmp ugt i32 %order.016, 2
  %sub.i.2 = sub nsw i32 2, %order.016
  %shl6.i.2 = shl i32 %9, %sub.i.2
  %add8.i.2 = select i1 %cmp5.not.i.2, i32 0, i32 %shl6.i.2
  %cmp5.not.i.1 = icmp ugt i32 %order.016, 1
  %sub.i.1 = sub nsw i32 1, %order.016
  %shl6.i.1 = shl i32 %7, %sub.i.1
  %add8.i.1 = select i1 %cmp5.not.i.1, i32 0, i32 %shl6.i.1
  %cmp5.not.i.not = icmp eq i32 %order.016, 0
  %sub.i = sub nsw i32 0, %order.016
  %shl6.i = shl i32 %5, %sub.i
  %add8.i = select i1 %cmp5.not.i.not, i32 %shl6.i, i32 0
  %info.sroa.12.1.1 = add i32 %add8.i.1, %add8.i
  %info.sroa.12.1.2 = add i32 %add8.i.2, %info.sroa.12.1.1
  %info.sroa.12.1.3 = add i32 %add8.i.3, %info.sroa.12.1.2
  %info.sroa.12.1.4 = add i32 %add8.i.4, %info.sroa.12.1.3
  %info.sroa.12.1.5 = add i32 %add8.i.5, %info.sroa.12.1.4
  %info.sroa.12.1.6 = add i32 %add8.i.6, %info.sroa.12.1.5
  %info.sroa.12.1.7 = add i32 %add8.i.7, %info.sroa.12.1.6
  %info.sroa.12.1.8 = add i32 %add8.i.8, %info.sroa.12.1.7
  %info.sroa.12.1.9 = add i32 %add8.i.9, %info.sroa.12.1.8
  %info.sroa.12.1.10 = add i32 %add8.i.10, %info.sroa.12.1.9
  %info.sroa.12.1.11 = sub i32 0, %info.sroa.12.1.10
  %tobool41.not.i = icmp eq i32 %shl6.i.11, %info.sroa.12.1.11
  br i1 %tobool41.not.i, label %if.end43.i, label %__fragmentation_index.exit

if.end43.i:                                       ; preds = %if.end40.i
  %conv.i = zext i32 %add4.i.11 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !459

if.then168.i.i.i:                                 ; preds = %if.end43.i
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i96.i = lshr i32 %conv169.i.i.i, %order.016
  %conv173.i.i.i = zext i32 %div172.i.i96.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end43.i
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i8, i64 %mul.i) #17, !srcloc !461
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %28, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %add.i12 = add i64 %dividend.addr.0.i.i.i, 1000
  %cmp164.i.i83.i = icmp ult i64 %add.i12, 4294967296
  br i1 %cmp164.i.i83.i, label %if.then168.i.i88.i, label %if.else174.i.i90.i, !prof !459

if.then168.i.i88.i:                               ; preds = %div_u64.exit.i
  %conv169.i.i85.i = trunc i64 %add.i12 to i32
  %div172.i.i86.i = udiv i32 %conv169.i.i85.i, %add.i.11
  br label %div_u64.exit92.i

if.else174.i.i90.i:                               ; preds = %div_u64.exit.i
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.11, i64 %add.i12) #17, !srcloc !461
  %asmresult1.i.i.i89.i = extractvalue { i64, i64 } %29, 1
  %extract.t94.i = trunc i64 %asmresult1.i.i.i89.i to i32
  br label %div_u64.exit92.i

div_u64.exit92.i:                                 ; preds = %if.else174.i.i90.i, %if.then168.i.i88.i
  %dividend.addr.0.i.i91.off0.i = phi i32 [ %div172.i.i86.i, %if.then168.i.i88.i ], [ %extract.t94.i, %if.else174.i.i90.i ]
  %conv46.i = sub i32 1000, %dividend.addr.0.i.i91.off0.i
  br label %__fragmentation_index.exit

__fragmentation_index.exit:                       ; preds = %div_u64.exit92.i, %if.end40.i, %if.end37.i
  %retval.0.i = phi i32 [ %conv46.i, %div_u64.exit92.i ], [ 0, %if.end37.i ], [ -1000, %if.end40.i ]
  %retval.0.i.frozen = freeze i32 %retval.0.i
  %div = sdiv i32 %retval.0.i.frozen, 1000
  %30 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %retval.0.i.frozen, %30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.187, i32 noundef %div, i32 noundef %rem.decomposed) #14
  %inc = add nuw nsw i32 %order.016, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end37.i

for.end:                                          ; preds = %__fragmentation_index.exit
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !305, !306, !307, !309, !310, !312, !314, !316, !317, !318, !319, !321, !323, !324, !325, !327, !329, !331, !333, !335, !336, !337, !339, !341, !343, !345, !346, !348, !350, !352, !354, !355, !356, !357, !359, !360, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441}
!llvm.named.register.sp = !{!443}
!llvm.module.flags = !{!444, !445, !446, !447, !448, !449, !450, !451}
!llvm.ident = !{!452}

!0 = !{ptr @vm_event_states, !1, !"vm_event_states", i1 false, i1 false}
!1 = !{!"../mm/vmstat.c", i32 107, i32 1}
!2 = !{ptr @__ksymtab_vm_event_states, !3, !"__ksymtab_vm_event_states", i1 false, i1 false}
!3 = !{!"../mm/vmstat.c", i32 108, i32 1}
!4 = !{ptr @__ksymtab_all_vm_events, !5, !"__ksymtab_all_vm_events", i1 false, i1 false}
!5 = !{!"../mm/vmstat.c", i32 136, i32 1}
!6 = !{ptr @__ksymtab_vm_zone_stat, !7, !"__ksymtab_vm_zone_stat", i1 false, i1 false}
!7 = !{!"../mm/vmstat.c", i32 165, i32 1}
!8 = !{ptr @__ksymtab_vm_node_stat, !9, !"__ksymtab_vm_node_stat", i1 false, i1 false}
!9 = !{!"../mm/vmstat.c", i32 166, i32 1}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/vmstat.c", i32 360, i32 14}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/vmstat.c", i32 368, i32 2}
!14 = !{ptr @__ksymtab___mod_zone_page_state, !15, !"__ksymtab___mod_zone_page_state", i1 false, i1 false}
!15 = !{!"../mm/vmstat.c", i32 373, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../mm/vmstat.c", i32 390, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__ksymtab___mod_node_page_state, !20, !"__ksymtab___mod_node_page_state", i1 false, i1 false}
!20 = !{!"../mm/vmstat.c", i32 411, i32 1}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/vmstat.c", i32 446, i32 6}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../mm/vmstat.c", i32 465, i32 2}
!25 = !{ptr @__ksymtab___inc_zone_page_state, !26, !"__ksymtab___inc_zone_page_state", i1 false, i1 false}
!26 = !{!"../mm/vmstat.c", i32 488, i32 1}
!27 = !{ptr @__ksymtab___inc_node_page_state, !28, !"__ksymtab___inc_node_page_state", i1 false, i1 false}
!28 = !{!"../mm/vmstat.c", i32 494, i32 1}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../mm/vmstat.c", i32 525, i32 2}
!31 = !{ptr @__ksymtab___dec_zone_page_state, !32, !"__ksymtab___dec_zone_page_state", i1 false, i1 false}
!32 = !{!"../mm/vmstat.c", i32 548, i32 1}
!33 = !{ptr @__ksymtab___dec_node_page_state, !34, !"__ksymtab___dec_node_page_state", i1 false, i1 false}
!34 = !{!"../mm/vmstat.c", i32 554, i32 1}
!35 = !{ptr @__ksymtab_mod_zone_page_state, !36, !"__ksymtab_mod_zone_page_state", i1 false, i1 false}
!36 = !{!"../mm/vmstat.c", i32 711, i32 1}
!37 = !{ptr @__ksymtab_inc_zone_page_state, !38, !"__ksymtab_inc_zone_page_state", i1 false, i1 false}
!38 = !{!"../mm/vmstat.c", i32 723, i32 1}
!39 = !{ptr @__ksymtab_dec_zone_page_state, !40, !"__ksymtab_dec_zone_page_state", i1 false, i1 false}
!40 = !{!"../mm/vmstat.c", i32 733, i32 1}
!41 = !{ptr @__ksymtab_inc_node_state, !42, !"__ksymtab_inc_node_state", i1 false, i1 false}
!42 = !{!"../mm/vmstat.c", i32 743, i32 1}
!43 = !{ptr @__ksymtab_mod_node_page_state, !44, !"__ksymtab_mod_node_page_state", i1 false, i1 false}
!44 = !{!"../mm/vmstat.c", i32 754, i32 1}
!45 = !{ptr @__ksymtab_inc_node_page_state, !46, !"__ksymtab_inc_node_page_state", i1 false, i1 false}
!46 = !{!"../mm/vmstat.c", i32 766, i32 1}
!47 = !{ptr @__ksymtab_dec_node_page_state, !48, !"__ksymtab_dec_node_page_state", i1 false, i1 false}
!48 = !{!"../mm/vmstat.c", i32 776, i32 1}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/vmstat.c", i32 1175, i32 2}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../mm/vmstat.c", i32 1176, i32 2}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/vmstat.c", i32 1177, i32 2}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../mm/vmstat.c", i32 1178, i32 2}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../mm/vmstat.c", i32 1179, i32 2}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/vmstat.c", i32 1180, i32 2}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/vmstat.c", i32 1181, i32 2}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../mm/vmstat.c", i32 1182, i32 2}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/vmstat.c", i32 1183, i32 2}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../mm/vmstat.c", i32 1185, i32 2}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../mm/vmstat.c", i32 1187, i32 2}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../mm/vmstat.c", i32 1200, i32 2}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../mm/vmstat.c", i32 1201, i32 2}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../mm/vmstat.c", i32 1202, i32 2}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../mm/vmstat.c", i32 1203, i32 2}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../mm/vmstat.c", i32 1204, i32 2}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../mm/vmstat.c", i32 1205, i32 2}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../mm/vmstat.c", i32 1206, i32 2}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../mm/vmstat.c", i32 1207, i32 2}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../mm/vmstat.c", i32 1208, i32 2}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../mm/vmstat.c", i32 1209, i32 2}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../mm/vmstat.c", i32 1210, i32 2}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../mm/vmstat.c", i32 1211, i32 2}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../mm/vmstat.c", i32 1212, i32 2}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../mm/vmstat.c", i32 1213, i32 2}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../mm/vmstat.c", i32 1214, i32 2}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../mm/vmstat.c", i32 1215, i32 2}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/vmstat.c", i32 1216, i32 2}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../mm/vmstat.c", i32 1217, i32 2}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/vmstat.c", i32 1218, i32 2}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/vmstat.c", i32 1219, i32 2}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../mm/vmstat.c", i32 1220, i32 2}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../mm/vmstat.c", i32 1221, i32 2}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../mm/vmstat.c", i32 1222, i32 2}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../mm/vmstat.c", i32 1223, i32 2}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../mm/vmstat.c", i32 1224, i32 2}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/vmstat.c", i32 1225, i32 2}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../mm/vmstat.c", i32 1226, i32 2}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../mm/vmstat.c", i32 1227, i32 2}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../mm/vmstat.c", i32 1228, i32 2}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../mm/vmstat.c", i32 1229, i32 2}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../mm/vmstat.c", i32 1230, i32 2}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../mm/vmstat.c", i32 1231, i32 2}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../mm/vmstat.c", i32 1232, i32 2}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../mm/vmstat.c", i32 1233, i32 2}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../mm/vmstat.c", i32 1234, i32 2}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../mm/vmstat.c", i32 1235, i32 2}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../mm/vmstat.c", i32 1236, i32 2}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../mm/vmstat.c", i32 1237, i32 2}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../mm/vmstat.c", i32 1241, i32 2}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../mm/vmstat.c", i32 1243, i32 2}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../mm/vmstat.c", i32 1247, i32 2}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../mm/vmstat.c", i32 1248, i32 2}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../mm/vmstat.c", i32 1252, i32 2}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/vmstat.c", i32 1253, i32 2}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../mm/vmstat.c", i32 1254, i32 2}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../mm/vmstat.c", i32 1255, i32 2}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/vmstat.c", i32 1257, i32 2}
!165 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../mm/vmstat.c", i32 1258, i32 2}
!170 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../mm/vmstat.c", i32 1259, i32 2}
!175 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../mm/vmstat.c", i32 1261, i32 2}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../mm/vmstat.c", i32 1262, i32 2}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../mm/vmstat.c", i32 1263, i32 2}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../mm/vmstat.c", i32 1264, i32 2}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../mm/vmstat.c", i32 1266, i32 2}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../mm/vmstat.c", i32 1267, i32 2}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../mm/vmstat.c", i32 1268, i32 2}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../mm/vmstat.c", i32 1270, i32 2}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../mm/vmstat.c", i32 1271, i32 2}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../mm/vmstat.c", i32 1272, i32 2}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../mm/vmstat.c", i32 1273, i32 2}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../mm/vmstat.c", i32 1274, i32 2}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../mm/vmstat.c", i32 1275, i32 2}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../mm/vmstat.c", i32 1276, i32 2}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../mm/vmstat.c", i32 1277, i32 2}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/vmstat.c", i32 1278, i32 2}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../mm/vmstat.c", i32 1279, i32 2}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../mm/vmstat.c", i32 1280, i32 2}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../mm/vmstat.c", i32 1281, i32 2}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../mm/vmstat.c", i32 1282, i32 2}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../mm/vmstat.c", i32 1287, i32 2}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../mm/vmstat.c", i32 1288, i32 2}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../mm/vmstat.c", i32 1289, i32 2}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../mm/vmstat.c", i32 1290, i32 2}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../mm/vmstat.c", i32 1291, i32 2}
!228 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../mm/vmstat.c", i32 1292, i32 2}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../mm/vmstat.c", i32 1294, i32 2}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../mm/vmstat.c", i32 1296, i32 2}
!234 = !{ptr @.str.101, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../mm/vmstat.c", i32 1297, i32 2}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../mm/vmstat.c", i32 1298, i32 2}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../mm/vmstat.c", i32 1308, i32 2}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../mm/vmstat.c", i32 1309, i32 2}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../mm/vmstat.c", i32 1310, i32 2}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../mm/vmstat.c", i32 1311, i32 2}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../mm/vmstat.c", i32 1312, i32 2}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../mm/vmstat.c", i32 1315, i32 2}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../mm/vmstat.c", i32 1316, i32 2}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../mm/vmstat.c", i32 1317, i32 2}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../mm/vmstat.c", i32 1318, i32 2}
!256 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../mm/vmstat.c", i32 1319, i32 2}
!258 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../mm/vmstat.c", i32 1320, i32 2}
!260 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../mm/vmstat.c", i32 1321, i32 2}
!262 = !{ptr @.str.115, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../mm/vmstat.c", i32 1322, i32 2}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../mm/vmstat.c", i32 1323, i32 2}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../mm/vmstat.c", i32 1331, i32 2}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../mm/vmstat.c", i32 1332, i32 2}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../mm/vmstat.c", i32 1334, i32 2}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../mm/vmstat.c", i32 1335, i32 2}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../mm/vmstat.c", i32 1336, i32 2}
!276 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../mm/vmstat.c", i32 1337, i32 2}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../mm/vmstat.c", i32 1338, i32 2}
!280 = !{ptr @.str.124, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../mm/vmstat.c", i32 1339, i32 2}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../mm/vmstat.c", i32 1340, i32 2}
!284 = !{ptr @.str.126, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../mm/vmstat.c", i32 1368, i32 2}
!286 = !{ptr @.str.127, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../mm/vmstat.c", i32 1369, i32 2}
!288 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../mm/vmstat.c", i32 1371, i32 2}
!290 = !{ptr @.str.129, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../mm/vmstat.c", i32 1382, i32 2}
!292 = !{ptr @.str.130, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../mm/vmstat.c", i32 1383, i32 2}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../mm/vmstat.c", i32 1386, i32 2}
!296 = !{ptr @.str.132, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../mm/vmstat.c", i32 1387, i32 2}
!298 = !{ptr @vmstat_text, !299, !"vmstat_text", i1 false, i1 false}
!299 = !{!"../mm/vmstat.c", i32 1173, i32 20}
!300 = !{ptr @sysctl_stat_interval, !301, !"sysctl_stat_interval", i1 false, i1 false}
!301 = !{!"../mm/vmstat.c", i32 1856, i32 5}
!302 = !{ptr @.str.133, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../mm/vmstat.c", i32 1897, i32 4}
!304 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @vmstat_refresh._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @vmstat_refresh._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @vmstat_refresh._entry.135, !308, !"_entry", i1 false, i1 false}
!308 = !{!"../mm/vmstat.c", i32 1911, i32 4}
!309 = !{ptr @vmstat_refresh._entry_ptr.136, !308, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.137, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../mm/vmstat.c", i32 2080, i32 33}
!312 = !{ptr @.str.138, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../mm/vmstat.c", i32 2083, i32 56}
!314 = !{ptr @.str.139, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../mm/vmstat.c", i32 2086, i32 3}
!316 = !{ptr @.str.140, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @init_mm_internals._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @init_mm_internals._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.141, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../mm/vmstat.c", i32 2088, i32 55}
!321 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../mm/vmstat.c", i32 2092, i32 3}
!323 = !{ptr @init_mm_internals._entry.142, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @init_mm_internals._entry_ptr.144, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../mm/vmstat.c", i32 2101, i32 2}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../mm/vmstat.c", i32 2102, i32 2}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../mm/vmstat.c", i32 2103, i32 2}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../mm/vmstat.c", i32 2104, i32 2}
!333 = !{ptr @__initcall__kmod_vmstat__299_2239_extfrag_debug_init6, !334, !"__initcall__kmod_vmstat__299_2239_extfrag_debug_init6", i1 false, i1 false}
!334 = !{!"../mm/vmstat.c", i32 2239, i32 1}
!335 = !{ptr @__pcpu_scope_vm_event_states, !1, !"__pcpu_scope_vm_event_states", i1 false, i1 false}
!336 = !{ptr @__pcpu_unique_vm_event_states, !1, !"__pcpu_unique_vm_event_states", i1 false, i1 false}
!337 = !{ptr @vm_zone_stat, !338, !"vm_zone_stat", i1 false, i1 false}
!338 = !{!"../mm/vmstat.c", i32 162, i32 15}
!339 = !{ptr @vm_node_stat, !340, !"vm_node_stat", i1 false, i1 false}
!340 = !{!"../mm/vmstat.c", i32 163, i32 15}
!341 = !{ptr @vm_numa_event, !342, !"vm_numa_event", i1 false, i1 false}
!342 = !{!"../mm/vmstat.c", i32 164, i32 15}
!343 = !{ptr @__pcpu_unique_vmstat_work, !344, !"__pcpu_unique_vmstat_work", i1 false, i1 false}
!344 = !{!"../mm/vmstat.c", i32 1855, i32 8}
!345 = !{ptr @vmstat_work, !344, !"vmstat_work", i1 false, i1 false}
!346 = !{ptr @mm_percpu_wq, !347, !"mm_percpu_wq", i1 false, i1 false}
!347 = !{!"../mm/vmstat.c", i32 2074, i32 26}
!348 = !{ptr @.str.149, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!350 = distinct !{null, !351, !"__already_done", i1 false, i1 false}
!351 = !{!"../mm/vmstat.c", i32 1103, i32 6}
!352 = !{ptr @start_shepherd_timer.__key, !353, !"__key", i1 false, i1 false}
!353 = !{!"../mm/vmstat.c", i32 2026, i32 3}
!354 = !{ptr @.str.150, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @start_shepherd_timer.__key.151, !353, !"__key", i1 false, i1 false}
!356 = !{ptr @.str.152, !353, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.153, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../mm/vmstat.c", i32 1999, i32 8}
!359 = !{ptr @.str.154, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @shepherd, !358, !"shepherd", i1 false, i1 false}
!361 = !{ptr @fragmentation_op, !362, !"fragmentation_op", i1 false, i1 false}
!362 = !{!"../mm/vmstat.c", i32 1626, i32 36}
!363 = !{ptr @.str.155, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../mm/vmstat.c", i32 1455, i32 16}
!365 = !{ptr @.str.156, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../mm/vmstat.c", i32 1461, i32 17}
!367 = !{ptr @pagetypeinfo_op, !368, !"pagetypeinfo_op", i1 false, i1 false}
!368 = !{!"../mm/vmstat.c", i32 1633, i32 36}
!369 = !{ptr @.str.157, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../mm/vmstat.c", i32 1616, i32 16}
!371 = !{ptr @.str.158, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../mm/vmstat.c", i32 1617, i32 16}
!373 = !{ptr @.str.159, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../mm/vmstat.c", i32 1524, i32 16}
!375 = !{ptr @.str.160, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../mm/vmstat.c", i32 1524, i32 26}
!377 = !{ptr @.str.161, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../mm/vmstat.c", i32 1526, i32 17}
!379 = !{ptr @.str.162, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../mm/vmstat.c", i32 1481, i32 17}
!381 = !{ptr @.str.163, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../mm/vmstat.c", i32 1508, i32 18}
!383 = !{ptr @.str.164, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../mm/vmstat.c", i32 1508, i32 40}
!385 = !{ptr @.str.165, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../mm/vmstat.c", i32 1508, i32 46}
!387 = !{ptr @.str.166, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../mm/vmstat.c", i32 1570, i32 16}
!389 = !{ptr @.str.167, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../mm/vmstat.c", i32 1570, i32 27}
!391 = !{ptr @.str.168, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../mm/vmstat.c", i32 1572, i32 17}
!393 = !{ptr @.str.169, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../mm/vmstat.c", i32 1560, i32 17}
!395 = !{ptr @.str.170, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../mm/vmstat.c", i32 1594, i32 27}
!397 = !{ptr @vmstat_op, !398, !"vmstat_op", i1 false, i1 false}
!398 = !{!"../mm/vmstat.c", i32 1846, i32 36}
!399 = !{ptr @.str.171, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../mm/vmstat.c", i32 1827, i32 25}
!401 = !{ptr @.str.172, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../mm/vmstat.c", i32 1835, i32 15}
!403 = !{ptr @zoneinfo_op, !404, !"zoneinfo_op", i1 false, i1 false}
!404 = !{!"../mm/vmstat.c", i32 1755, i32 36}
!405 = !{ptr @.str.173, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../mm/vmstat.c", i32 1658, i32 16}
!407 = !{ptr @.str.174, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../mm/vmstat.c", i32 1660, i32 17}
!409 = !{ptr @.str.175, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../mm/vmstat.c", i32 1666, i32 18}
!411 = !{ptr @.str.176, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../mm/vmstat.c", i32 1671, i32 6}
!413 = !{ptr @.str.177, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../mm/vmstat.c", i32 1691, i32 6}
!415 = !{ptr @.str.178, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../mm/vmstat.c", i32 1694, i32 17}
!417 = !{ptr @.str.179, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../mm/vmstat.c", i32 1713, i32 16}
!419 = !{ptr @.str.180, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../mm/vmstat.c", i32 1720, i32 7}
!421 = !{ptr @.str.181, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../mm/vmstat.c", i32 1730, i32 17}
!423 = !{ptr @.str.182, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../mm/vmstat.c", i32 1735, i32 6}
!425 = !{ptr @.str.183, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../mm/vmstat.c", i32 2228, i32 42}
!427 = !{ptr @.str.184, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../mm/vmstat.c", i32 2230, i32 22}
!429 = !{ptr @.str.185, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../mm/vmstat.c", i32 2233, i32 22}
!431 = !{ptr @unusable_fops, !432, !"unusable_fops", i1 false, i1 false}
!432 = !{!"../mm/vmstat.c", i32 2180, i32 1}
!433 = !{ptr @unusable_sops, !434, !"unusable_sops", i1 false, i1 false}
!434 = !{!"../mm/vmstat.c", i32 2173, i32 36}
!435 = !{ptr @.str.186, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../mm/vmstat.c", i32 2145, i32 17}
!437 = !{ptr @extfrag_fops, !438, !"extfrag_fops", i1 false, i1 false}
!438 = !{!"../mm/vmstat.c", i32 2222, i32 1}
!439 = !{ptr @extfrag_sops, !440, !"extfrag_sops", i1 false, i1 false}
!440 = !{!"../mm/vmstat.c", i32 2215, i32 36}
!441 = !{ptr @.str.187, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../mm/vmstat.c", i32 2197, i32 17}
!443 = !{!"sp"}
!444 = !{i32 1, !"wchar_size", i32 2}
!445 = !{i32 1, !"min_enum_size", i32 4}
!446 = !{i32 8, !"branch-target-enforcement", i32 0}
!447 = !{i32 8, !"sign-return-address", i32 0}
!448 = !{i32 8, !"sign-return-address-all", i32 0}
!449 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!450 = !{i32 7, !"uwtable", i32 1}
!451 = !{i32 7, !"frame-pointer", i32 2}
!452 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!453 = !{i64 1110931, i64 1110992}
!454 = !{i64 1113663}
!455 = !{!"branch_weights", i32 1, i32 2000}
!456 = !{i64 1113948}
!457 = !{i32 0, i32 33}
!458 = !{i64 2148706251, i64 2148706277, i64 2148706306, i64 2148706340, i64 2148706371, i64 2148706394}
!459 = !{!"branch_weights", i32 2000, i32 1}
!460 = !{i64 2153195042, i64 2153195526, i64 2153195079, i64 2153195135, i64 2153195169, i64 2153195193, i64 2153195234, i64 2153195255, i64 2153195283, i64 2153195317}
!461 = !{i64 2148556036, i64 2148556316, i64 2148556650, i64 2148556984}
!462 = !{i64 2148530849, i64 2148530854, i64 2148530867, i64 2148530911, i64 2148530945, i64 2148530966}
