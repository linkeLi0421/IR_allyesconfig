; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi.c_pt.bc'
source_filename = "../drivers/scsi/scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_logging_level\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_logging_level\09\09\09\09"
module asm "\09.long\09__crc_scsi_logging_level\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_logging_level:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_logging_level\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_logging_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_change_queue_depth\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_change_queue_depth\09\09\09\09"
module asm "\09.long\09__crc_scsi_change_queue_depth\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_change_queue_depth\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_track_queue_full\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_track_queue_full\09\09\09\09"
module asm "\09.long\09__crc_scsi_track_queue_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_track_queue_full:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_track_queue_full\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_track_queue_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_get_vpd_page\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_get_vpd_page\09\09\09\09"
module asm "\09.long\09__crc_scsi_get_vpd_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_get_vpd_page:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_get_vpd_page\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_get_vpd_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_report_opcode\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_report_opcode\09\09\09\09"
module asm "\09.long\09__crc_scsi_report_opcode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_report_opcode:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_report_opcode\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_report_opcode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_get\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_get\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_put\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_put\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_iterate_devices\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_iterate_devices\09\09\09\09"
module asm "\09.long\09__crc___scsi_iterate_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_iterate_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_iterate_devices\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_iterate_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+starget_for_each_device\22, \22a\22\09"
module asm "\09.weak\09__crc_starget_for_each_device\09\09\09\09"
module asm "\09.long\09__crc_starget_for_each_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22starget_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns_starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__starget_for_each_device\22, \22a\22\09"
module asm "\09.weak\09__crc___starget_for_each_device\09\09\09\09"
module asm "\09.long\09__crc___starget_for_each_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__starget_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns___starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_device_lookup_by_target\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_device_lookup_by_target\09\09\09\09"
module asm "\09.long\09__crc___scsi_device_lookup_by_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_device_lookup_by_target\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_lookup_by_target\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_lookup_by_target\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_lookup_by_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_lookup_by_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_device_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_device_lookup\09\09\09\09"
module asm "\09.long\09__crc___scsi_device_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_device_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_lookup\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.107 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.109, %struct.trace_event, ptr, ptr, %union.anon.110, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.109 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.18 }
%union.anon.18 = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_scsi_dispatch_cmd_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_scsi_dispatch_cmd_error = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_scsi_cmd_done_timeout_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_scsi_eh_wakeup = type { %struct.trace_entry, i32, [0 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_scsi_dispatch_cmd_start = internal constant [24 x i8] c"scsi_dispatch_cmd_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_start = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_start }, align 4
@__tracepoint_scsi_dispatch_cmd_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scsi_dispatch_cmd_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_start, ptr null, ptr @__traceiter_scsi_dispatch_cmd_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_start = internal constant ptr @__tracepoint_scsi_dispatch_cmd_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_error = internal constant [24 x i8] c"scsi_dispatch_cmd_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_error = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_error }, align 4
@__tracepoint_scsi_dispatch_cmd_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scsi_dispatch_cmd_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_error, ptr null, ptr @__traceiter_scsi_dispatch_cmd_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_error = internal constant ptr @__tracepoint_scsi_dispatch_cmd_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_done = internal constant [23 x i8] c"scsi_dispatch_cmd_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_done = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_done }, align 4
@__tracepoint_scsi_dispatch_cmd_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scsi_dispatch_cmd_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_done, ptr null, ptr @__traceiter_scsi_dispatch_cmd_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_done = internal constant ptr @__tracepoint_scsi_dispatch_cmd_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_timeout = internal constant [26 x i8] c"scsi_dispatch_cmd_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_timeout }, align 4
@__tracepoint_scsi_dispatch_cmd_timeout = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scsi_dispatch_cmd_timeout, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_timeout, ptr null, ptr @__traceiter_scsi_dispatch_cmd_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_timeout = internal constant ptr @__tracepoint_scsi_dispatch_cmd_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_eh_wakeup = internal constant [15 x i8] c"scsi_eh_wakeup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_eh_wakeup = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_eh_wakeup }, align 4
@__tracepoint_scsi_eh_wakeup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scsi_eh_wakeup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scsi_eh_wakeup, ptr null, ptr @__traceiter_scsi_eh_wakeup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_eh_wakeup = internal constant ptr @__tracepoint_scsi_eh_wakeup, section "__tracepoints_ptrs", align 4
@str__scsi__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scsi\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_scsi_dispatch_cmd_start = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.107 { %struct.anon.108 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.107 { %struct.anon.108 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_scsi_dispatch_cmd_start = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_dispatch_cmd_start, ptr @perf_trace_scsi_dispatch_cmd_start, ptr @trace_event_reg, ptr @trace_event_fields_scsi_dispatch_cmd_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_start, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_dispatch_cmd_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scsi_dispatch_cmd_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scsi_dispatch_cmd_start = internal global { [3013 x i8], [763 x i8] } { [3013 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s)\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len)\00", [763 x i8] zeroinitializer }, align 32
@event_scsi_dispatch_cmd_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_dispatch_cmd_start, %union.anon.109 { ptr @__tracepoint_scsi_dispatch_cmd_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_dispatch_cmd_start }, ptr @print_fmt_scsi_dispatch_cmd_start, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scsi_dispatch_cmd_start = internal global ptr @event_scsi_dispatch_cmd_start, section "_ftrace_events", align 4
@trace_event_fields_scsi_dispatch_cmd_error = internal global { [12 x %struct.trace_event_fields], [64 x i8] } { [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.117, %union.anon.107 { %struct.anon.108 { ptr @.str.118, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.107 { %struct.anon.108 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.107 { %struct.anon.108 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [64 x i8] zeroinitializer }, align 32
@event_class_scsi_dispatch_cmd_error = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_dispatch_cmd_error, ptr @perf_trace_scsi_dispatch_cmd_error, ptr @trace_event_reg, ptr @trace_event_fields_scsi_dispatch_cmd_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_error, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_dispatch_cmd_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scsi_dispatch_cmd_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scsi_dispatch_cmd_error = internal global { [3030 x i8], [746 x i8] } { [3030 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) rtn=%d\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len), REC->rtn\00", [746 x i8] zeroinitializer }, align 32
@event_scsi_dispatch_cmd_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_dispatch_cmd_error, %union.anon.109 { ptr @__tracepoint_scsi_dispatch_cmd_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_dispatch_cmd_error }, ptr @print_fmt_scsi_dispatch_cmd_error, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scsi_dispatch_cmd_error = internal global ptr @event_scsi_dispatch_cmd_error, section "_ftrace_events", align 4
@trace_event_fields_scsi_cmd_done_timeout_template = internal global { [12 x %struct.trace_event_fields], [64 x i8] } { [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.117, %union.anon.107 { %struct.anon.108 { ptr @.str.121, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.107 { %struct.anon.108 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.107 { %struct.anon.108 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [64 x i8] zeroinitializer }, align 32
@event_class_scsi_cmd_done_timeout_template = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_cmd_done_timeout_template, ptr @perf_trace_scsi_cmd_done_timeout_template, ptr @trace_event_reg, ptr @trace_event_fields_scsi_cmd_done_timeout_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_cmd_done_timeout_template, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_cmd_done_timeout_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_cmd_done_timeout_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scsi_cmd_done_timeout_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scsi_cmd_done_timeout_template = internal global { [4352 x i8], [1088 x i8] } { [4352 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) result=(driver=%s host=%s message=%s status=%s)\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len), \22DRIVER_OK\22, __print_symbolic(((REC->result) >> 16) & 0xff, { DID_OK, \22DID_OK\22 }, { DID_NO_CONNECT, \22DID_NO_CONNECT\22 }, { DID_BUS_BUSY, \22DID_BUS_BUSY\22 }, { DID_TIME_OUT, \22DID_TIME_OUT\22 }, { DID_BAD_TARGET, \22DID_BAD_TARGET\22 }, { DID_ABORT, \22DID_ABORT\22 }, { DID_PARITY, \22DID_PARITY\22 }, { DID_ERROR, \22DID_ERROR\22 }, { DID_RESET, \22DID_RESET\22 }, { DID_BAD_INTR, \22DID_BAD_INTR\22 }, { DID_PASSTHROUGH, \22DID_PASSTHROUGH\22 }, { DID_SOFT_ERROR, \22DID_SOFT_ERROR\22 }, { DID_IMM_RETRY, \22DID_IMM_RETRY\22 }, { DID_REQUEUE, \22DID_REQUEUE\22 }, { DID_TRANSPORT_DISRUPTED, \22DID_TRANSPORT_DISRUPTED\22 }, { DID_TRANSPORT_FAILFAST, \22DID_TRANSPORT_FAILFAST\22 }), \22COMMAND_COMPLETE\22, __print_symbolic(REC->result & 0xff, { SAM_STAT_GOOD, \22SAM_STAT_GOOD\22 }, { SAM_STAT_CHECK_CONDITION, \22SAM_STAT_CHECK_CONDITION\22 }, { SAM_STAT_CONDITION_MET, \22SAM_STAT_CONDITION_MET\22 }, { SAM_STAT_BUSY, \22SAM_STAT_BUSY\22 }, { SAM_STAT_INTERMEDIATE, \22SAM_STAT_INTERMEDIATE\22 }, { SAM_STAT_INTERMEDIATE_CONDITION_MET, \22SAM_STAT_INTERMEDIATE_CONDITION_MET\22 }, { SAM_STAT_RESERVATION_CONFLICT, \22SAM_STAT_RESERVATION_CONFLICT\22 }, { SAM_STAT_COMMAND_TERMINATED, \22SAM_STAT_COMMAND_TERMINATED\22 }, { SAM_STAT_TASK_SET_FULL, \22SAM_STAT_TASK_SET_FULL\22 }, { SAM_STAT_ACA_ACTIVE, \22SAM_STAT_ACA_ACTIVE\22 }, { SAM_STAT_TASK_ABORTED, \22SAM_STAT_TASK_ABORTED\22 })\00", [1088 x i8] zeroinitializer }, align 32
@event_scsi_dispatch_cmd_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_cmd_done_timeout_template, %union.anon.109 { ptr @__tracepoint_scsi_dispatch_cmd_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template }, ptr @print_fmt_scsi_cmd_done_timeout_template, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scsi_dispatch_cmd_done = internal global ptr @event_scsi_dispatch_cmd_done, section "_ftrace_events", align 4
@event_scsi_dispatch_cmd_timeout = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_cmd_done_timeout_template, %union.anon.109 { ptr @__tracepoint_scsi_dispatch_cmd_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template }, ptr @print_fmt_scsi_cmd_done_timeout_template, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scsi_dispatch_cmd_timeout = internal global ptr @event_scsi_dispatch_cmd_timeout, section "_ftrace_events", align 4
@trace_event_fields_scsi_eh_wakeup = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_scsi_eh_wakeup = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_eh_wakeup, ptr @perf_trace_scsi_eh_wakeup, ptr @trace_event_reg, ptr @trace_event_fields_scsi_eh_wakeup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_eh_wakeup, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_eh_wakeup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_eh_wakeup = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scsi_eh_wakeup, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scsi_eh_wakeup = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\22host_no=%u\22, REC->host_no\00", [37 x i8] zeroinitializer }, align 32
@event_scsi_eh_wakeup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_eh_wakeup, %union.anon.109 { ptr @__tracepoint_scsi_eh_wakeup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_eh_wakeup }, ptr @print_fmt_scsi_eh_wakeup, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scsi_eh_wakeup = internal global ptr @event_scsi_eh_wakeup, section "_ftrace_events", align 4
@__bpf_trace_tp_map_scsi_dispatch_cmd_start = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_scsi_dispatch_cmd_start, ptr @__bpf_trace_scsi_dispatch_cmd_start, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scsi_dispatch_cmd_error = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_scsi_dispatch_cmd_error, ptr @__bpf_trace_scsi_dispatch_cmd_error, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scsi_dispatch_cmd_done = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_scsi_dispatch_cmd_done, ptr @__bpf_trace_scsi_cmd_done_timeout_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scsi_dispatch_cmd_timeout = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_scsi_dispatch_cmd_timeout, ptr @__bpf_trace_scsi_cmd_done_timeout_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scsi_eh_wakeup = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_scsi_eh_wakeup, ptr @__bpf_trace_scsi_eh_wakeup, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@scsi_logging_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_scsi_logging_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_logging_level = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_logging_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_logging_level to i32), ptr @__kstrtab_scsi_logging_level, ptr @__kstrtabns_scsi_logging_level }, section "___ksymtab+scsi_logging_level", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Send: scmd 0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Done\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scsi host busy %d failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Notifying upper driver of completion (result %x)\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_change_queue_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_change_queue_depth to i32), ptr @__kstrtab_scsi_change_queue_depth, ptr @__kstrtabns_scsi_change_queue_depth }, section "___ksymtab+scsi_change_queue_depth", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_scsi_track_queue_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_track_queue_full = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_track_queue_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_track_queue_full to i32), ptr @__kstrtab_scsi_track_queue_full, ptr @__kstrtabns_scsi_track_queue_full }, section "___ksymtab+scsi_track_queue_full", align 4
@__kstrtab_scsi_get_vpd_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_get_vpd_page = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_get_vpd_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_get_vpd_page to i32), ptr @__kstrtab_scsi_get_vpd_page, ptr @__kstrtabns_scsi_get_vpd_page }, section "___ksymtab_gpl+scsi_get_vpd_page", align 4
@__kstrtab_scsi_report_opcode = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_report_opcode = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_report_opcode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_report_opcode to i32), ptr @__kstrtab_scsi_report_opcode, ptr @__kstrtabns_scsi_report_opcode }, section "___ksymtab+scsi_report_opcode", align 4
@__kstrtab_scsi_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_get to i32), ptr @__kstrtab_scsi_device_get, ptr @__kstrtabns_scsi_device_get }, section "___ksymtab+scsi_device_get", align 4
@__kstrtab_scsi_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_put to i32), ptr @__kstrtab_scsi_device_put, ptr @__kstrtabns_scsi_device_put }, section "___ksymtab+scsi_device_put", align 4
@__kstrtab___scsi_iterate_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_iterate_devices = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_iterate_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_iterate_devices to i32), ptr @__kstrtab___scsi_iterate_devices, ptr @__kstrtabns___scsi_iterate_devices }, section "___ksymtab+__scsi_iterate_devices", align 4
@__kstrtab_starget_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_starget_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab_starget_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @starget_for_each_device to i32), ptr @__kstrtab_starget_for_each_device, ptr @__kstrtabns_starget_for_each_device }, section "___ksymtab+starget_for_each_device", align 4
@__kstrtab___starget_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___starget_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab___starget_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__starget_for_each_device to i32), ptr @__kstrtab___starget_for_each_device, ptr @__kstrtabns___starget_for_each_device }, section "___ksymtab+__starget_for_each_device", align 4
@__kstrtab___scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_device_lookup_by_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_device_lookup_by_target to i32), ptr @__kstrtab___scsi_device_lookup_by_target, ptr @__kstrtabns___scsi_device_lookup_by_target }, section "___ksymtab+__scsi_device_lookup_by_target", align 4
@__kstrtab_scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_lookup_by_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_lookup_by_target to i32), ptr @__kstrtab_scsi_device_lookup_by_target, ptr @__kstrtabns_scsi_device_lookup_by_target }, section "___ksymtab+scsi_device_lookup_by_target", align 4
@__kstrtab___scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_device_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_device_lookup to i32), ptr @__kstrtab___scsi_device_lookup, ptr @__kstrtabns___scsi_device_lookup }, section "___ksymtab+__scsi_device_lookup", align 4
@__kstrtab_scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_lookup to i32), ptr @__kstrtab_scsi_device_lookup, ptr @__kstrtabns_scsi_device_lookup }, section "___ksymtab+scsi_device_lookup", align 4
@__UNIQUE_ID_description341 = internal constant [31 x i8] c"scsi_mod.description=SCSI core\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [36 x i8] c"scsi_mod.file=drivers/scsi/scsi_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [21 x i8] c"scsi_mod.license=GPL\00", section ".modinfo", align 1
@__param_str_scsi_logging_level = internal constant [28 x i8] c"scsi_mod.scsi_logging_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_scsi_logging_level = internal constant %struct.kernel_param { ptr @__param_str_scsi_logging_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @scsi_logging_level } }, section "__param", align 4
@__UNIQUE_ID_scsi_logging_leveltype344 = internal constant [41 x i8] c"scsi_mod.parmtype=scsi_logging_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_scsi_logging_level345 = internal constant [62 x i8] c"scsi_mod.parm=scsi_logging_level:a bit mask of logging levels\00", section ".modinfo", align 1
@__initcall__kmod_scsi_mod__346_805_init_scsi4 = internal global ptr @init_scsi, section ".initcall4.init", align 4
@__exitcall_exit_scsi = internal global ptr @exit_scsi, section ".exitcall.exit", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host_no\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lun\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"opcode\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmd_len\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data_sglen\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prot_sglen\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned char\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prot_op\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__data_loc unsigned char[]\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmnd\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_dispatch_cmd_start.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.19 }, %struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 3, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 5, ptr @.str.24 }, %struct.trace_print_flags { i32 6, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCSI_PROT_NORMAL\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCSI_PROT_READ_INSERT\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCSI_PROT_WRITE_STRIP\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCSI_PROT_READ_STRIP\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCSI_PROT_WRITE_INSERT\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SCSI_PROT_READ_PASS\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCSI_PROT_WRITE_PASS\00", [43 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_dispatch_cmd_start.symbols.26 = internal constant { [91 x %struct.trace_print_flags], [168 x i8] } { [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.27 }, %struct.trace_print_flags { i32 1, ptr @.str.28 }, %struct.trace_print_flags { i32 3, ptr @.str.29 }, %struct.trace_print_flags { i32 4, ptr @.str.30 }, %struct.trace_print_flags { i32 5, ptr @.str.31 }, %struct.trace_print_flags { i32 7, ptr @.str.32 }, %struct.trace_print_flags { i32 7, ptr @.str.33 }, %struct.trace_print_flags { i32 8, ptr @.str.34 }, %struct.trace_print_flags { i32 10, ptr @.str.35 }, %struct.trace_print_flags { i32 11, ptr @.str.36 }, %struct.trace_print_flags { i32 15, ptr @.str.37 }, %struct.trace_print_flags { i32 16, ptr @.str.38 }, %struct.trace_print_flags { i32 17, ptr @.str.39 }, %struct.trace_print_flags { i32 18, ptr @.str.40 }, %struct.trace_print_flags { i32 20, ptr @.str.41 }, %struct.trace_print_flags { i32 21, ptr @.str.42 }, %struct.trace_print_flags { i32 22, ptr @.str.43 }, %struct.trace_print_flags { i32 23, ptr @.str.44 }, %struct.trace_print_flags { i32 24, ptr @.str.45 }, %struct.trace_print_flags { i32 25, ptr @.str.46 }, %struct.trace_print_flags { i32 26, ptr @.str.47 }, %struct.trace_print_flags { i32 27, ptr @.str.48 }, %struct.trace_print_flags { i32 28, ptr @.str.49 }, %struct.trace_print_flags { i32 29, ptr @.str.50 }, %struct.trace_print_flags { i32 30, ptr @.str.51 }, %struct.trace_print_flags { i32 36, ptr @.str.52 }, %struct.trace_print_flags { i32 37, ptr @.str.53 }, %struct.trace_print_flags { i32 40, ptr @.str.54 }, %struct.trace_print_flags { i32 42, ptr @.str.55 }, %struct.trace_print_flags { i32 43, ptr @.str.56 }, %struct.trace_print_flags { i32 43, ptr @.str.57 }, %struct.trace_print_flags { i32 46, ptr @.str.58 }, %struct.trace_print_flags { i32 47, ptr @.str.59 }, %struct.trace_print_flags { i32 48, ptr @.str.60 }, %struct.trace_print_flags { i32 49, ptr @.str.61 }, %struct.trace_print_flags { i32 50, ptr @.str.62 }, %struct.trace_print_flags { i32 51, ptr @.str.63 }, %struct.trace_print_flags { i32 52, ptr @.str.64 }, %struct.trace_print_flags { i32 52, ptr @.str.65 }, %struct.trace_print_flags { i32 53, ptr @.str.66 }, %struct.trace_print_flags { i32 54, ptr @.str.67 }, %struct.trace_print_flags { i32 55, ptr @.str.68 }, %struct.trace_print_flags { i32 56, ptr @.str.69 }, %struct.trace_print_flags { i32 57, ptr @.str.70 }, %struct.trace_print_flags { i32 58, ptr @.str.71 }, %struct.trace_print_flags { i32 59, ptr @.str.72 }, %struct.trace_print_flags { i32 60, ptr @.str.73 }, %struct.trace_print_flags { i32 61, ptr @.str.74 }, %struct.trace_print_flags { i32 62, ptr @.str.75 }, %struct.trace_print_flags { i32 63, ptr @.str.76 }, %struct.trace_print_flags { i32 64, ptr @.str.77 }, %struct.trace_print_flags { i32 65, ptr @.str.78 }, %struct.trace_print_flags { i32 66, ptr @.str.79 }, %struct.trace_print_flags { i32 67, ptr @.str.80 }, %struct.trace_print_flags { i32 76, ptr @.str.81 }, %struct.trace_print_flags { i32 77, ptr @.str.82 }, %struct.trace_print_flags { i32 83, ptr @.str.83 }, %struct.trace_print_flags { i32 85, ptr @.str.84 }, %struct.trace_print_flags { i32 86, ptr @.str.85 }, %struct.trace_print_flags { i32 87, ptr @.str.86 }, %struct.trace_print_flags { i32 90, ptr @.str.87 }, %struct.trace_print_flags { i32 94, ptr @.str.88 }, %struct.trace_print_flags { i32 95, ptr @.str.89 }, %struct.trace_print_flags { i32 127, ptr @.str.90 }, %struct.trace_print_flags { i32 160, ptr @.str.91 }, %struct.trace_print_flags { i32 163, ptr @.str.92 }, %struct.trace_print_flags { i32 164, ptr @.str.93 }, %struct.trace_print_flags { i32 165, ptr @.str.94 }, %struct.trace_print_flags { i32 166, ptr @.str.95 }, %struct.trace_print_flags { i32 168, ptr @.str.96 }, %struct.trace_print_flags { i32 170, ptr @.str.97 }, %struct.trace_print_flags { i32 174, ptr @.str.98 }, %struct.trace_print_flags { i32 176, ptr @.str.99 }, %struct.trace_print_flags { i32 177, ptr @.str.100 }, %struct.trace_print_flags { i32 178, ptr @.str.101 }, %struct.trace_print_flags { i32 184, ptr @.str.102 }, %struct.trace_print_flags { i32 182, ptr @.str.103 }, %struct.trace_print_flags { i32 234, ptr @.str.104 }, %struct.trace_print_flags { i32 136, ptr @.str.105 }, %struct.trace_print_flags { i32 138, ptr @.str.106 }, %struct.trace_print_flags { i32 143, ptr @.str.107 }, %struct.trace_print_flags { i32 147, ptr @.str.108 }, %struct.trace_print_flags { i32 148, ptr @.str.109 }, %struct.trace_print_flags { i32 149, ptr @.str.110 }, %struct.trace_print_flags { i32 158, ptr @.str.111 }, %struct.trace_print_flags { i32 9, ptr @.str.112 }, %struct.trace_print_flags { i32 11, ptr @.str.113 }, %struct.trace_print_flags { i32 13, ptr @.str.114 }, %struct.trace_print_flags { i32 133, ptr @.str.115 }, %struct.trace_print_flags { i32 161, ptr @.str.116 }, %struct.trace_print_flags { i32 -1, ptr null }], [168 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TEST_UNIT_READY\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REZERO_UNIT\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REQUEST_SENSE\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FORMAT_UNIT\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"READ_BLOCK_LIMITS\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REASSIGN_BLOCKS\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INITIALIZE_ELEMENT_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"READ_6\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WRITE_6\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEEK_6\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"READ_REVERSE\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRITE_FILEMARKS\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPACE\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INQUIRY\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RECOVER_BUFFERED_DATA\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODE_SELECT\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESERVE\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RELEASE\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COPY\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERASE\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODE_SENSE\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"START_STOP\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RECEIVE_DIAGNOSTIC\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEND_DIAGNOSTIC\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALLOW_MEDIUM_REMOVAL\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET_WINDOW\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"READ_CAPACITY\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_10\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_10\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEEK_10\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"POSITION_TO_ELEMENT\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_VERIFY\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VERIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEARCH_HIGH\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEARCH_EQUAL\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SEARCH_LOW\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET_LIMITS\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PRE_FETCH\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"READ_POSITION\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SYNCHRONIZE_CACHE\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LOCK_UNLOCK_CACHE\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ_DEFECT_DATA\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MEDIUM_SCAN\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMPARE\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COPY_VERIFY\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_BUFFER\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READ_BUFFER\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UPDATE_BLOCK\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"READ_LONG\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_LONG\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CHANGE_DEFINITION\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_SAME\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UNMAP\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READ_TOC\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOG_SELECT\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOG_SENSE\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XDWRITEREAD_10\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MODE_SELECT_10\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RESERVE_10\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RELEASE_10\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MODE_SENSE_10\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PERSISTENT_RESERVE_IN\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PERSISTENT_RESERVE_OUT\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VARIABLE_LENGTH_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REPORT_LUNS\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAINTENANCE_IN\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MAINTENANCE_OUT\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MOVE_MEDIUM\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXCHANGE_MEDIUM\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_12\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_12\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRITE_VERIFY_12\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEARCH_HIGH_12\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEARCH_EQUAL_12\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SEARCH_LOW_12\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"READ_ELEMENT_STATUS\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEND_VOLUME_TAG\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_LONG_2\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_16\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_16\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VERIFY_16\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WRITE_SAME_16\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ZBC_OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ZBC_IN\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SERVICE_ACTION_IN_16\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_32\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_32\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WRITE_SAME_32\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATA_16\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATA_12\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtn\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) rtn=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_dispatch_cmd_error.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.19 }, %struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 3, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 5, ptr @.str.24 }, %struct.trace_print_flags { i32 6, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_dispatch_cmd_error.symbols.120 = internal constant { [91 x %struct.trace_print_flags], [168 x i8] } { [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.27 }, %struct.trace_print_flags { i32 1, ptr @.str.28 }, %struct.trace_print_flags { i32 3, ptr @.str.29 }, %struct.trace_print_flags { i32 4, ptr @.str.30 }, %struct.trace_print_flags { i32 5, ptr @.str.31 }, %struct.trace_print_flags { i32 7, ptr @.str.32 }, %struct.trace_print_flags { i32 7, ptr @.str.33 }, %struct.trace_print_flags { i32 8, ptr @.str.34 }, %struct.trace_print_flags { i32 10, ptr @.str.35 }, %struct.trace_print_flags { i32 11, ptr @.str.36 }, %struct.trace_print_flags { i32 15, ptr @.str.37 }, %struct.trace_print_flags { i32 16, ptr @.str.38 }, %struct.trace_print_flags { i32 17, ptr @.str.39 }, %struct.trace_print_flags { i32 18, ptr @.str.40 }, %struct.trace_print_flags { i32 20, ptr @.str.41 }, %struct.trace_print_flags { i32 21, ptr @.str.42 }, %struct.trace_print_flags { i32 22, ptr @.str.43 }, %struct.trace_print_flags { i32 23, ptr @.str.44 }, %struct.trace_print_flags { i32 24, ptr @.str.45 }, %struct.trace_print_flags { i32 25, ptr @.str.46 }, %struct.trace_print_flags { i32 26, ptr @.str.47 }, %struct.trace_print_flags { i32 27, ptr @.str.48 }, %struct.trace_print_flags { i32 28, ptr @.str.49 }, %struct.trace_print_flags { i32 29, ptr @.str.50 }, %struct.trace_print_flags { i32 30, ptr @.str.51 }, %struct.trace_print_flags { i32 36, ptr @.str.52 }, %struct.trace_print_flags { i32 37, ptr @.str.53 }, %struct.trace_print_flags { i32 40, ptr @.str.54 }, %struct.trace_print_flags { i32 42, ptr @.str.55 }, %struct.trace_print_flags { i32 43, ptr @.str.56 }, %struct.trace_print_flags { i32 43, ptr @.str.57 }, %struct.trace_print_flags { i32 46, ptr @.str.58 }, %struct.trace_print_flags { i32 47, ptr @.str.59 }, %struct.trace_print_flags { i32 48, ptr @.str.60 }, %struct.trace_print_flags { i32 49, ptr @.str.61 }, %struct.trace_print_flags { i32 50, ptr @.str.62 }, %struct.trace_print_flags { i32 51, ptr @.str.63 }, %struct.trace_print_flags { i32 52, ptr @.str.64 }, %struct.trace_print_flags { i32 52, ptr @.str.65 }, %struct.trace_print_flags { i32 53, ptr @.str.66 }, %struct.trace_print_flags { i32 54, ptr @.str.67 }, %struct.trace_print_flags { i32 55, ptr @.str.68 }, %struct.trace_print_flags { i32 56, ptr @.str.69 }, %struct.trace_print_flags { i32 57, ptr @.str.70 }, %struct.trace_print_flags { i32 58, ptr @.str.71 }, %struct.trace_print_flags { i32 59, ptr @.str.72 }, %struct.trace_print_flags { i32 60, ptr @.str.73 }, %struct.trace_print_flags { i32 61, ptr @.str.74 }, %struct.trace_print_flags { i32 62, ptr @.str.75 }, %struct.trace_print_flags { i32 63, ptr @.str.76 }, %struct.trace_print_flags { i32 64, ptr @.str.77 }, %struct.trace_print_flags { i32 65, ptr @.str.78 }, %struct.trace_print_flags { i32 66, ptr @.str.79 }, %struct.trace_print_flags { i32 67, ptr @.str.80 }, %struct.trace_print_flags { i32 76, ptr @.str.81 }, %struct.trace_print_flags { i32 77, ptr @.str.82 }, %struct.trace_print_flags { i32 83, ptr @.str.83 }, %struct.trace_print_flags { i32 85, ptr @.str.84 }, %struct.trace_print_flags { i32 86, ptr @.str.85 }, %struct.trace_print_flags { i32 87, ptr @.str.86 }, %struct.trace_print_flags { i32 90, ptr @.str.87 }, %struct.trace_print_flags { i32 94, ptr @.str.88 }, %struct.trace_print_flags { i32 95, ptr @.str.89 }, %struct.trace_print_flags { i32 127, ptr @.str.90 }, %struct.trace_print_flags { i32 160, ptr @.str.91 }, %struct.trace_print_flags { i32 163, ptr @.str.92 }, %struct.trace_print_flags { i32 164, ptr @.str.93 }, %struct.trace_print_flags { i32 165, ptr @.str.94 }, %struct.trace_print_flags { i32 166, ptr @.str.95 }, %struct.trace_print_flags { i32 168, ptr @.str.96 }, %struct.trace_print_flags { i32 170, ptr @.str.97 }, %struct.trace_print_flags { i32 174, ptr @.str.98 }, %struct.trace_print_flags { i32 176, ptr @.str.99 }, %struct.trace_print_flags { i32 177, ptr @.str.100 }, %struct.trace_print_flags { i32 178, ptr @.str.101 }, %struct.trace_print_flags { i32 184, ptr @.str.102 }, %struct.trace_print_flags { i32 182, ptr @.str.103 }, %struct.trace_print_flags { i32 234, ptr @.str.104 }, %struct.trace_print_flags { i32 136, ptr @.str.105 }, %struct.trace_print_flags { i32 138, ptr @.str.106 }, %struct.trace_print_flags { i32 143, ptr @.str.107 }, %struct.trace_print_flags { i32 147, ptr @.str.108 }, %struct.trace_print_flags { i32 148, ptr @.str.109 }, %struct.trace_print_flags { i32 149, ptr @.str.110 }, %struct.trace_print_flags { i32 158, ptr @.str.111 }, %struct.trace_print_flags { i32 9, ptr @.str.112 }, %struct.trace_print_flags { i32 11, ptr @.str.113 }, %struct.trace_print_flags { i32 13, ptr @.str.114 }, %struct.trace_print_flags { i32 133, ptr @.str.115 }, %struct.trace_print_flags { i32 161, ptr @.str.116 }, %struct.trace_print_flags { i32 -1, ptr null }], [168 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) result=(driver=%s host=%s message=%s status=%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_cmd_done_timeout_template.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.19 }, %struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 3, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 5, ptr @.str.24 }, %struct.trace_print_flags { i32 6, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.123 = internal constant { [91 x %struct.trace_print_flags], [168 x i8] } { [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.27 }, %struct.trace_print_flags { i32 1, ptr @.str.28 }, %struct.trace_print_flags { i32 3, ptr @.str.29 }, %struct.trace_print_flags { i32 4, ptr @.str.30 }, %struct.trace_print_flags { i32 5, ptr @.str.31 }, %struct.trace_print_flags { i32 7, ptr @.str.32 }, %struct.trace_print_flags { i32 7, ptr @.str.33 }, %struct.trace_print_flags { i32 8, ptr @.str.34 }, %struct.trace_print_flags { i32 10, ptr @.str.35 }, %struct.trace_print_flags { i32 11, ptr @.str.36 }, %struct.trace_print_flags { i32 15, ptr @.str.37 }, %struct.trace_print_flags { i32 16, ptr @.str.38 }, %struct.trace_print_flags { i32 17, ptr @.str.39 }, %struct.trace_print_flags { i32 18, ptr @.str.40 }, %struct.trace_print_flags { i32 20, ptr @.str.41 }, %struct.trace_print_flags { i32 21, ptr @.str.42 }, %struct.trace_print_flags { i32 22, ptr @.str.43 }, %struct.trace_print_flags { i32 23, ptr @.str.44 }, %struct.trace_print_flags { i32 24, ptr @.str.45 }, %struct.trace_print_flags { i32 25, ptr @.str.46 }, %struct.trace_print_flags { i32 26, ptr @.str.47 }, %struct.trace_print_flags { i32 27, ptr @.str.48 }, %struct.trace_print_flags { i32 28, ptr @.str.49 }, %struct.trace_print_flags { i32 29, ptr @.str.50 }, %struct.trace_print_flags { i32 30, ptr @.str.51 }, %struct.trace_print_flags { i32 36, ptr @.str.52 }, %struct.trace_print_flags { i32 37, ptr @.str.53 }, %struct.trace_print_flags { i32 40, ptr @.str.54 }, %struct.trace_print_flags { i32 42, ptr @.str.55 }, %struct.trace_print_flags { i32 43, ptr @.str.56 }, %struct.trace_print_flags { i32 43, ptr @.str.57 }, %struct.trace_print_flags { i32 46, ptr @.str.58 }, %struct.trace_print_flags { i32 47, ptr @.str.59 }, %struct.trace_print_flags { i32 48, ptr @.str.60 }, %struct.trace_print_flags { i32 49, ptr @.str.61 }, %struct.trace_print_flags { i32 50, ptr @.str.62 }, %struct.trace_print_flags { i32 51, ptr @.str.63 }, %struct.trace_print_flags { i32 52, ptr @.str.64 }, %struct.trace_print_flags { i32 52, ptr @.str.65 }, %struct.trace_print_flags { i32 53, ptr @.str.66 }, %struct.trace_print_flags { i32 54, ptr @.str.67 }, %struct.trace_print_flags { i32 55, ptr @.str.68 }, %struct.trace_print_flags { i32 56, ptr @.str.69 }, %struct.trace_print_flags { i32 57, ptr @.str.70 }, %struct.trace_print_flags { i32 58, ptr @.str.71 }, %struct.trace_print_flags { i32 59, ptr @.str.72 }, %struct.trace_print_flags { i32 60, ptr @.str.73 }, %struct.trace_print_flags { i32 61, ptr @.str.74 }, %struct.trace_print_flags { i32 62, ptr @.str.75 }, %struct.trace_print_flags { i32 63, ptr @.str.76 }, %struct.trace_print_flags { i32 64, ptr @.str.77 }, %struct.trace_print_flags { i32 65, ptr @.str.78 }, %struct.trace_print_flags { i32 66, ptr @.str.79 }, %struct.trace_print_flags { i32 67, ptr @.str.80 }, %struct.trace_print_flags { i32 76, ptr @.str.81 }, %struct.trace_print_flags { i32 77, ptr @.str.82 }, %struct.trace_print_flags { i32 83, ptr @.str.83 }, %struct.trace_print_flags { i32 85, ptr @.str.84 }, %struct.trace_print_flags { i32 86, ptr @.str.85 }, %struct.trace_print_flags { i32 87, ptr @.str.86 }, %struct.trace_print_flags { i32 90, ptr @.str.87 }, %struct.trace_print_flags { i32 94, ptr @.str.88 }, %struct.trace_print_flags { i32 95, ptr @.str.89 }, %struct.trace_print_flags { i32 127, ptr @.str.90 }, %struct.trace_print_flags { i32 160, ptr @.str.91 }, %struct.trace_print_flags { i32 163, ptr @.str.92 }, %struct.trace_print_flags { i32 164, ptr @.str.93 }, %struct.trace_print_flags { i32 165, ptr @.str.94 }, %struct.trace_print_flags { i32 166, ptr @.str.95 }, %struct.trace_print_flags { i32 168, ptr @.str.96 }, %struct.trace_print_flags { i32 170, ptr @.str.97 }, %struct.trace_print_flags { i32 174, ptr @.str.98 }, %struct.trace_print_flags { i32 176, ptr @.str.99 }, %struct.trace_print_flags { i32 177, ptr @.str.100 }, %struct.trace_print_flags { i32 178, ptr @.str.101 }, %struct.trace_print_flags { i32 184, ptr @.str.102 }, %struct.trace_print_flags { i32 182, ptr @.str.103 }, %struct.trace_print_flags { i32 234, ptr @.str.104 }, %struct.trace_print_flags { i32 136, ptr @.str.105 }, %struct.trace_print_flags { i32 138, ptr @.str.106 }, %struct.trace_print_flags { i32 143, ptr @.str.107 }, %struct.trace_print_flags { i32 147, ptr @.str.108 }, %struct.trace_print_flags { i32 148, ptr @.str.109 }, %struct.trace_print_flags { i32 149, ptr @.str.110 }, %struct.trace_print_flags { i32 158, ptr @.str.111 }, %struct.trace_print_flags { i32 9, ptr @.str.112 }, %struct.trace_print_flags { i32 11, ptr @.str.113 }, %struct.trace_print_flags { i32 13, ptr @.str.114 }, %struct.trace_print_flags { i32 133, ptr @.str.115 }, %struct.trace_print_flags { i32 161, ptr @.str.116 }, %struct.trace_print_flags { i32 -1, ptr null }], [168 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DRIVER_OK\00", [22 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.125 = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.126 }, %struct.trace_print_flags { i32 1, ptr @.str.127 }, %struct.trace_print_flags { i32 2, ptr @.str.128 }, %struct.trace_print_flags { i32 3, ptr @.str.129 }, %struct.trace_print_flags { i32 4, ptr @.str.130 }, %struct.trace_print_flags { i32 5, ptr @.str.131 }, %struct.trace_print_flags { i32 6, ptr @.str.132 }, %struct.trace_print_flags { i32 7, ptr @.str.133 }, %struct.trace_print_flags { i32 8, ptr @.str.134 }, %struct.trace_print_flags { i32 9, ptr @.str.135 }, %struct.trace_print_flags { i32 10, ptr @.str.136 }, %struct.trace_print_flags { i32 11, ptr @.str.137 }, %struct.trace_print_flags { i32 12, ptr @.str.138 }, %struct.trace_print_flags { i32 13, ptr @.str.139 }, %struct.trace_print_flags { i32 14, ptr @.str.140 }, %struct.trace_print_flags { i32 15, ptr @.str.141 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DID_OK\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DID_NO_CONNECT\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DID_BUS_BUSY\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DID_TIME_OUT\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DID_BAD_TARGET\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DID_ABORT\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DID_PARITY\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DID_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DID_RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DID_BAD_INTR\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DID_PASSTHROUGH\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DID_SOFT_ERROR\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DID_IMM_RETRY\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DID_REQUEUE\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DID_TRANSPORT_DISRUPTED\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DID_TRANSPORT_FAILFAST\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMMAND_COMPLETE\00", [47 x i8] zeroinitializer }, align 32
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.143 = internal constant { [12 x %struct.trace_print_flags], [32 x i8] } { [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.144 }, %struct.trace_print_flags { i32 2, ptr @.str.145 }, %struct.trace_print_flags { i32 4, ptr @.str.146 }, %struct.trace_print_flags { i32 8, ptr @.str.147 }, %struct.trace_print_flags { i32 16, ptr @.str.148 }, %struct.trace_print_flags { i32 20, ptr @.str.149 }, %struct.trace_print_flags { i32 24, ptr @.str.150 }, %struct.trace_print_flags { i32 34, ptr @.str.151 }, %struct.trace_print_flags { i32 40, ptr @.str.152 }, %struct.trace_print_flags { i32 48, ptr @.str.153 }, %struct.trace_print_flags { i32 64, ptr @.str.154 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SAM_STAT_GOOD\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SAM_STAT_CHECK_CONDITION\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SAM_STAT_CONDITION_MET\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SAM_STAT_BUSY\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SAM_STAT_INTERMEDIATE\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SAM_STAT_INTERMEDIATE_CONDITION_MET\00", [60 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SAM_STAT_RESERVATION_CONFLICT\00", [34 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SAM_STAT_COMMAND_TERMINATED\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SAM_STAT_TASK_SET_FULL\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SAM_STAT_ACA_ACTIVE\00", [44 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SAM_STAT_TASK_ABORTED\00", [42 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host_no=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@scsi_update_vpd_page.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/scsi/scsi.c\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@init_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.156, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015SCSI subsystem initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_scsi\00", [22 x i8] zeroinitializer }, align 32
@init_scsi._entry_ptr = internal global ptr @init_scsi._entry, section ".printk_index", align 4
@init_scsi._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.156, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013SCSI subsystem failed to initialize, error = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@init_scsi._entry_ptr.162 = internal global ptr @init_scsi._entry.160, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 36]
@___asan_gen_.163 = private unnamed_addr constant [29 x i8] c"str__scsi__trace_system_name\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 36, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [43 x i8] c"trace_event_fields_scsi_dispatch_cmd_start\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_scsi_dispatch_cmd_start\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [34 x i8] c"print_fmt_scsi_dispatch_cmd_start\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [30 x i8] c"event_scsi_dispatch_cmd_start\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [43 x i8] c"trace_event_fields_scsi_dispatch_cmd_error\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_scsi_dispatch_cmd_error\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [34 x i8] c"print_fmt_scsi_dispatch_cmd_error\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"event_scsi_dispatch_cmd_error\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [50 x i8] c"trace_event_fields_scsi_cmd_done_timeout_template\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [54 x i8] c"trace_event_type_funcs_scsi_cmd_done_timeout_template\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [41 x i8] c"print_fmt_scsi_cmd_done_timeout_template\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [29 x i8] c"event_scsi_dispatch_cmd_done\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 292, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [32 x i8] c"event_scsi_dispatch_cmd_timeout\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 296, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [34 x i8] c"trace_event_fields_scsi_eh_wakeup\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_scsi_eh_wakeup\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [25 x i8] c"print_fmt_scsi_eh_wakeup\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [21 x i8] c"event_scsi_eh_wakeup\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"scsi_logging_level\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 83, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 108, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 109, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 136, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 142, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 179, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 156, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 198, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 243, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant [31 x i8] c"../include/trace/events/scsi.h\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 300, i32 1 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 420, i32 12 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 776, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.716 = private constant [23 x i8] c"../drivers/scsi/scsi.c\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 789, i32 2 }
@llvm.compiler.used = appending global [234 x ptr] [ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__UNIQUE_ID_scsi_logging_level345, ptr @__UNIQUE_ID_scsi_logging_leveltype344, ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_done, ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_error, ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_start, ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_timeout, ptr @__bpf_trace_tp_map_scsi_eh_wakeup, ptr @__event_scsi_dispatch_cmd_done, ptr @__event_scsi_dispatch_cmd_error, ptr @__event_scsi_dispatch_cmd_start, ptr @__event_scsi_dispatch_cmd_timeout, ptr @__event_scsi_eh_wakeup, ptr @__exitcall_exit_scsi, ptr @__initcall__kmod_scsi_mod__346_805_init_scsi4, ptr @__ksymtab___scsi_device_lookup, ptr @__ksymtab___scsi_device_lookup_by_target, ptr @__ksymtab___scsi_iterate_devices, ptr @__ksymtab___starget_for_each_device, ptr @__ksymtab_scsi_change_queue_depth, ptr @__ksymtab_scsi_device_get, ptr @__ksymtab_scsi_device_lookup, ptr @__ksymtab_scsi_device_lookup_by_target, ptr @__ksymtab_scsi_device_put, ptr @__ksymtab_scsi_get_vpd_page, ptr @__ksymtab_scsi_logging_level, ptr @__ksymtab_scsi_report_opcode, ptr @__ksymtab_scsi_track_queue_full, ptr @__ksymtab_starget_for_each_device, ptr @__param_scsi_logging_level, ptr @__tracepoint_ptr_scsi_dispatch_cmd_done, ptr @__tracepoint_ptr_scsi_dispatch_cmd_error, ptr @__tracepoint_ptr_scsi_dispatch_cmd_start, ptr @__tracepoint_ptr_scsi_dispatch_cmd_timeout, ptr @__tracepoint_ptr_scsi_eh_wakeup, ptr @__tracepoint_scsi_dispatch_cmd_done, ptr @__tracepoint_scsi_dispatch_cmd_error, ptr @__tracepoint_scsi_dispatch_cmd_start, ptr @__tracepoint_scsi_dispatch_cmd_timeout, ptr @__tracepoint_scsi_eh_wakeup, ptr @event_class_scsi_cmd_done_timeout_template, ptr @event_class_scsi_dispatch_cmd_error, ptr @event_class_scsi_dispatch_cmd_start, ptr @event_class_scsi_eh_wakeup, ptr @event_scsi_dispatch_cmd_done, ptr @event_scsi_dispatch_cmd_error, ptr @event_scsi_dispatch_cmd_start, ptr @event_scsi_dispatch_cmd_timeout, ptr @event_scsi_eh_wakeup, ptr @exit_scsi, ptr @init_scsi._entry, ptr @init_scsi._entry.160, ptr @init_scsi._entry_ptr, ptr @init_scsi._entry_ptr.162, ptr @str__scsi__trace_system_name, ptr @trace_event_fields_scsi_dispatch_cmd_start, ptr @trace_event_type_funcs_scsi_dispatch_cmd_start, ptr @print_fmt_scsi_dispatch_cmd_start, ptr @trace_event_fields_scsi_dispatch_cmd_error, ptr @trace_event_type_funcs_scsi_dispatch_cmd_error, ptr @print_fmt_scsi_dispatch_cmd_error, ptr @trace_event_fields_scsi_cmd_done_timeout_template, ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template, ptr @print_fmt_scsi_cmd_done_timeout_template, ptr @trace_event_fields_scsi_eh_wakeup, ptr @trace_event_type_funcs_scsi_eh_wakeup, ptr @print_fmt_scsi_eh_wakeup, ptr @scsi_logging_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols, ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols.120, ptr @.str.121, ptr @.str.122, ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols, ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.123, ptr @.str.124, ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__scsi__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scsi_dispatch_cmd_start to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scsi_dispatch_cmd_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scsi_dispatch_cmd_start to i32), i32 3013, i32 3776, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scsi_dispatch_cmd_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scsi_dispatch_cmd_error to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scsi_dispatch_cmd_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scsi_dispatch_cmd_error to i32), i32 3030, i32 3776, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scsi_dispatch_cmd_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scsi_cmd_done_timeout_template to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scsi_cmd_done_timeout_template to i32), i32 4352, i32 5440, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scsi_dispatch_cmd_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scsi_dispatch_cmd_timeout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scsi_eh_wakeup to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scsi_eh_wakeup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scsi_eh_wakeup to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scsi_eh_wakeup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_logging_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols.26 to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols.120 to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.123 to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.125 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.143 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_scsi._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_start(ptr nocapture readnone %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %cmd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_error(ptr nocapture readnone %__data, ptr noundef %cmd, i32 noundef %rtn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %cmd, i32 noundef %rtn) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_done(ptr nocapture readnone %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %cmd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_timeout(ptr nocapture readnone %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scsi_dispatch_cmd_timeout, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %cmd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_eh_wakeup(ptr nocapture readnone %__data, ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scsi_eh_wakeup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %shost) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_dispatch_cmd_start(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !291

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !292

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %3 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv.i, 48
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 48
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 10
  %5 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %host_no6 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %host_no6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %host_no6, align 4
  %13 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %channel8 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %channel8, align 4
  %17 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %id10 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %id10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id10, align 4
  %21 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun, align 8
  %conv = trunc i64 %23 to i32
  %lun12 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %lun12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %lun12, align 4
  %cmnd13 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %25 = ptrtoint ptr %cmnd13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmnd13, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv14 = zext i8 %28 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 5
  %29 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv14, ptr %opcode, align 4
  %30 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cmd_len.i, align 4
  %conv15 = zext i16 %31 to i32
  %cmd_len16 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 6
  %32 = ptrtoint ptr %cmd_len16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv15, ptr %cmd_len16, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %33 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 7
  %35 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %36 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i52 = icmp eq ptr %37, null
  br i1 %tobool.not.i52, label %if.end5.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end5.scsi_prot_sg_count.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i53 = getelementptr inbounds %struct.sg_table, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %nents.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents.i53, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end5.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %39, %cond.true.i ], [ 0, %if.end5.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 8
  %40 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %41 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call3, i32 0, i32 9
  %43 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 48
  %44 = ptrtoint ptr %cmnd13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmnd13, align 4
  %46 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i, align 4
  %conv23 = zext i16 %47 to i32
  %48 = call ptr @memcpy(ptr %add.ptr, ptr %45, i32 %conv23)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scsi_dispatch_cmd_start(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !293
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %2 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 48
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !281) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add nuw nsw i32 %conv.i, 59
  %and = and i32 %add12, 131064
  %sub = add nsw i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !281) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 10
  %29 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no, align 4
  %host_no17 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %host_no17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %host_no17, align 4
  %37 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel, align 4
  %channel19 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %channel19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %channel19, align 4
  %41 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 8
  %id21 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id21, align 4
  %45 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun, align 8
  %conv = trunc i64 %47 to i32
  %lun23 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 4
  %48 = ptrtoint ptr %lun23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %lun23, align 4
  %cmnd24 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %49 = ptrtoint ptr %cmnd24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmnd24, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %conv26 = zext i8 %52 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 5
  %53 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv26, ptr %opcode, align 4
  %54 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cmd_len.i, align 4
  %conv27 = zext i16 %55 to i32
  %cmd_len28 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 6
  %56 = ptrtoint ptr %cmd_len28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv27, ptr %cmd_len28, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %57 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 7
  %59 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %60 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i77 = icmp eq ptr %61, null
  br i1 %tobool.not.i77, label %if.end16.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end16.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i78 = getelementptr inbounds %struct.sg_table, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %nents.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nents.i78, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end16.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %63, %cond.true.i ], [ 0, %if.end16.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 8
  %64 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %65 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %call13, i32 0, i32 9
  %67 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 48
  %68 = ptrtoint ptr %cmnd24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmnd24, align 4
  %70 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cmd_len.i, align 4
  %conv36 = zext i16 %71 to i32
  %72 = call ptr @memcpy(ptr %add.ptr, ptr %69, i32 %conv36)
  %73 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rctx, align 4
  %75 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %74, ptr noundef %__data, i64 noundef 1, ptr noundef %76, ptr noundef %13, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_dispatch_cmd_error(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %rtn) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !291

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !292

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %3 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv.i, 52
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 52
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 11
  %5 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %host_no6 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %host_no6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %host_no6, align 4
  %13 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %channel8 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %channel8, align 4
  %17 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %id10 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %id10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id10, align 4
  %21 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun, align 8
  %conv = trunc i64 %23 to i32
  %lun12 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %lun12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %lun12, align 4
  %rtn13 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 5
  %25 = ptrtoint ptr %rtn13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rtn, ptr %rtn13, align 4
  %cmnd14 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %26 = ptrtoint ptr %cmnd14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmnd14, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv15 = zext i8 %29 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 6
  %30 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv15, ptr %opcode, align 4
  %31 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cmd_len.i, align 4
  %conv16 = zext i16 %32 to i32
  %cmd_len17 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 7
  %33 = ptrtoint ptr %cmd_len17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv16, ptr %cmd_len17, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %34 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 8
  %36 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %37 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i55 = icmp eq ptr %38, null
  br i1 %tobool.not.i55, label %if.end5.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end5.scsi_prot_sg_count.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i56 = getelementptr inbounds %struct.sg_table, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %nents.i56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nents.i56, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end5.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %40, %cond.true.i ], [ 0, %if.end5.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 9
  %41 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %42 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call3, i32 0, i32 10
  %44 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 52
  %45 = ptrtoint ptr %cmnd14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmnd14, align 4
  %47 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cmd_len.i, align 4
  %conv24 = zext i16 %48 to i32
  %49 = call ptr @memcpy(ptr %add.ptr, ptr %46, i32 %conv24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scsi_dispatch_cmd_error(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %rtn) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !293
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %2 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 52
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !281) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add nuw nsw i32 %conv.i, 63
  %and = and i32 %add12, 131064
  %sub = add nsw i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !281) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 11
  %29 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no, align 4
  %host_no17 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %host_no17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %host_no17, align 4
  %37 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel, align 4
  %channel19 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %channel19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %channel19, align 4
  %41 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 8
  %id21 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id21, align 4
  %45 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun, align 8
  %conv = trunc i64 %47 to i32
  %lun23 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 4
  %48 = ptrtoint ptr %lun23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %lun23, align 4
  %rtn24 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 5
  %49 = ptrtoint ptr %rtn24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rtn, ptr %rtn24, align 4
  %cmnd25 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %50 = ptrtoint ptr %cmnd25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmnd25, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv27 = zext i8 %53 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 6
  %54 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv27, ptr %opcode, align 4
  %55 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cmd_len.i, align 4
  %conv28 = zext i16 %56 to i32
  %cmd_len29 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 7
  %57 = ptrtoint ptr %cmd_len29 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv28, ptr %cmd_len29, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %58 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 8
  %60 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %61 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i80 = icmp eq ptr %62, null
  br i1 %tobool.not.i80, label %if.end16.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end16.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i81 = getelementptr inbounds %struct.sg_table, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %nents.i81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nents.i81, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end16.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %64, %cond.true.i ], [ 0, %if.end16.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 9
  %65 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %66 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %call13, i32 0, i32 10
  %68 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 52
  %69 = ptrtoint ptr %cmnd25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmnd25, align 4
  %71 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cmd_len.i, align 4
  %conv37 = zext i16 %72 to i32
  %73 = call ptr @memcpy(ptr %add.ptr, ptr %70, i32 %conv37)
  %74 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rctx, align 4
  %76 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %75, ptr noundef %__data, i64 noundef 1, ptr noundef %77, ptr noundef %13, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_cmd_done_timeout_template(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !291

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !292

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %3 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv.i, 52
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 52
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 11
  %5 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %host_no6 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %host_no6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %host_no6, align 4
  %13 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %channel8 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %channel8, align 4
  %17 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %id10 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %id10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id10, align 4
  %21 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun, align 8
  %conv = trunc i64 %23 to i32
  %lun12 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %lun12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %lun12, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %25 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result, align 4
  %result13 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 5
  %27 = ptrtoint ptr %result13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %result13, align 4
  %cmnd14 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %28 = ptrtoint ptr %cmnd14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmnd14, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv15 = zext i8 %31 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 6
  %32 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv15, ptr %opcode, align 4
  %33 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd_len.i, align 4
  %conv16 = zext i16 %34 to i32
  %cmd_len17 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 7
  %35 = ptrtoint ptr %cmd_len17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv16, ptr %cmd_len17, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %36 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 8
  %38 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %39 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i55 = icmp eq ptr %40, null
  br i1 %tobool.not.i55, label %if.end5.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end5.scsi_prot_sg_count.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i56 = getelementptr inbounds %struct.sg_table, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %nents.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nents.i56, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end5.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %42, %cond.true.i ], [ 0, %if.end5.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 9
  %43 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %44 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call3, i32 0, i32 10
  %46 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 52
  %47 = ptrtoint ptr %cmnd14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmnd14, align 4
  %49 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cmd_len.i, align 4
  %conv24 = zext i16 %50 to i32
  %51 = call ptr @memcpy(ptr %add.ptr, ptr %48, i32 %conv24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scsi_cmd_done_timeout_template(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !293
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %2 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 52
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !281) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add nuw nsw i32 %conv.i, 63
  %and = and i32 %add12, 131064
  %sub = add nsw i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !281) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 11
  %29 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_cmnd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no, align 4
  %host_no17 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %host_no17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %host_no17, align 4
  %37 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel, align 4
  %channel19 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %channel19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %channel19, align 4
  %41 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 8
  %id21 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id21, align 4
  %45 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun, align 8
  %conv = trunc i64 %47 to i32
  %lun23 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 4
  %48 = ptrtoint ptr %lun23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %lun23, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %49 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %result, align 4
  %result24 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 5
  %51 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %result24, align 4
  %cmnd25 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %52 = ptrtoint ptr %cmnd25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmnd25, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %conv27 = zext i8 %55 to i32
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 6
  %56 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv27, ptr %opcode, align 4
  %57 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cmd_len.i, align 4
  %conv28 = zext i16 %58 to i32
  %cmd_len29 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 7
  %59 = ptrtoint ptr %cmd_len29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv28, ptr %cmd_len29, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %60 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nents.i, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 8
  %62 = ptrtoint ptr %data_sglen to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %data_sglen, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %63 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i80 = icmp eq ptr %64, null
  br i1 %tobool.not.i80, label %if.end16.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

if.end16.scsi_prot_sg_count.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %nents.i81 = getelementptr inbounds %struct.sg_table, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %nents.i81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nents.i81, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %if.end16.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %66, %cond.true.i ], [ 0, %if.end16.scsi_prot_sg_count.exit_crit_edge ]
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 9
  %67 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond.i, ptr %prot_sglen, align 4
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 10
  %68 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %prot_op.i, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %call13, i32 0, i32 10
  %70 = ptrtoint ptr %prot_op to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %prot_op, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 52
  %71 = ptrtoint ptr %cmnd25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cmnd25, align 4
  %73 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cmd_len.i, align 4
  %conv37 = zext i16 %74 to i32
  %75 = call ptr @memcpy(ptr %add.ptr, ptr %72, i32 %conv37)
  %76 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rctx, align 4
  %78 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %77, ptr noundef %__data, i64 noundef 1, ptr noundef %79, ptr noundef %13, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_prot_sg_count.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_eh_wakeup(ptr noundef %__data, ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !291

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !292

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %host_no6 = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %host_no6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %host_no6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scsi_eh_wakeup(ptr noundef %__data, ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !293
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !281) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !281) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %27 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_no, align 4
  %host_no17 = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %host_no17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %host_no17, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scsi_dispatch_cmd_start(ptr noundef %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scsi_dispatch_cmd_error(ptr noundef %__data, ptr noundef %cmd, i32 noundef %rtn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %rtn to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scsi_cmd_done_timeout_template(ptr noundef %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scsi_eh_wakeup(ptr noundef %__data, ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %shost to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_log_send(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @scsi_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then, !prof !291

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %1 = and i32 %0, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str, ptr noundef %cmd, ptr noundef nonnull @.str.1, ptr noundef %cmd) #11
  tail call void @scsi_print_command(ptr noundef %cmd) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_log_completion(ptr noundef %cmd, i32 noundef %disposition) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @scsi_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then, !prof !291

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 12
  %and = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %disposition)
  %cmp4.not = icmp ne i32 %disposition, 8194
  %or.cond.not = or i1 %cmp4.not, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp6 = icmp ne i32 %and, 1
  %or.cond29 = select i1 %or.cond.not, i1 true, i1 %cmp6
  br i1 %or.cond29, label %if.then7, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  tail call void @scsi_print_result(ptr noundef %cmd, ptr noundef nonnull @.str.2, i32 noundef %disposition) #11
  tail call void @scsi_print_command(ptr noundef %cmd) #11
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  %5 = and i32 %4, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %if.then10, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_print_sense(ptr noundef %cmd) #11
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp11 = icmp ugt i32 %and, 3
  br i1 %cmp11, label %if.then12, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call13 = tail call i32 @scsi_host_busy(ptr noundef %9) #11
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %host_failed = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %host_failed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_failed, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str, ptr noundef %cmd, ptr noundef nonnull @.str.3, i32 noundef %call13, i32 noundef %15) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_finish_command(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @scsi_device_unbusy(ptr noundef %1, ptr noundef %cmd) #11
  %host_blocked = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %host_blocked, i32 noundef 4) #11
  %6 = ptrtoint ptr %host_blocked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %host_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %host_blocked, i32 noundef 4) #11
  %8 = ptrtoint ptr %host_blocked to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %host_blocked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %target_blocked = getelementptr i8, ptr %3, i32 948
  %call.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %target_blocked, i32 noundef 4) #11
  %9 = ptrtoint ptr %target_blocked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %target_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_blocked, i32 noundef 4) #11
  %11 = ptrtoint ptr %target_blocked to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %target_blocked, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %device_blocked = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 5
  %call.i.i57 = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_blocked, i32 noundef 4) #11
  %12 = ptrtoint ptr %device_blocked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %device_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end7.do.body_crit_edge, label %if.then10

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked, i32 noundef 4) #11
  %14 = ptrtoint ptr %device_blocked to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %device_blocked, align 4
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end7.do.body_crit_edge
  %15 = load i32, ptr @scsi_logging_level, align 4
  %16 = and i32 %15, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %16)
  %cmp = icmp ugt i32 %16, 16384
  br i1 %cmp, label %do.body16, label %do.body.do.end19_crit_edge, !prof !292

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %18) #11
  br label %do.end19

do.end19:                                         ; preds = %do.body16, %do.body.do.end19_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %21 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_flags.i, align 4
  %23 = and i32 %22, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %23)
  %24 = icmp eq i32 %23, 34
  br i1 %24, label %do.end19.if.end34_crit_edge, label %if.then23

do.end19.if.end34_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then23:                                        ; preds = %do.end19
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %done = getelementptr inbounds %struct.scsi_driver, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %done, align 4
  %tobool25.not = icmp eq ptr %34, null
  br i1 %tobool25.not, label %if.then23.if.then31_crit_edge, label %if.end29

if.then23.if.then31_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end29:                                         ; preds = %if.then23
  %call28 = tail call i32 %34(ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %20)
  %cmp30 = icmp eq i32 %call28, %20
  br i1 %cmp30, label %if.end29.if.then31_crit_edge, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %if.then23.if.then31_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %35 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resid_len.i, align 4
  %sub = sub i32 %20, %36
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge, %do.end19.if.end34_crit_edge
  %good_bytes.2 = phi i32 [ %20, %do.end19.if.end34_crit_edge ], [ %sub, %if.then31 ], [ %call28, %if.end29.if.end34_crit_edge ]
  tail call void @scsi_io_completion(ptr noundef %cmd, i32 noundef %good_bytes.2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_unbusy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_io_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_device_max_queue_depth(ptr nocapture noundef readonly %sdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_queue, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 1024)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_queue.i, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %depth)
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %5 to i16
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %6 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %queue_depth, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  tail call void @arm_heavy_mb() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_set_queue_depth(ptr noundef nonnull %8, i32 noundef %5) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %budget_map = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4
  %queue_depth5 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %9 = ptrtoint ptr %queue_depth5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_depth5, align 4
  %conv6 = zext i16 %10 to i32
  tail call void @sbitmap_resize(ptr noundef %budget_map, i32 noundef %conv6) #11
  %11 = ptrtoint ptr %queue_depth5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_depth5, align 4
  %conv8 = zext i16 %12 to i32
  ret i32 %conv8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_track_queue_full(ptr noundef %sdev, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 13
  %1 = ptrtoint ptr %last_queue_full_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_queue_full_time, align 4
  %cmp.unshifted = xor i32 %2, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cmp.unshifted)
  %cmp = icmp ult i32 %cmp.unshifted, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %last_queue_full_time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_queue_full_time, align 4
  %last_queue_full_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 11
  %5 = ptrtoint ptr %last_queue_full_depth to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %last_queue_full_depth, align 8
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %depth)
  %cmp3.not = icmp eq i32 %conv, %depth
  %last_queue_full_count8 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 12
  br i1 %cmp3.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %last_queue_full_count8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %last_queue_full_count8, align 2
  %conv6 = trunc i32 %depth to i16
  %8 = ptrtoint ptr %last_queue_full_depth to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %last_queue_full_depth, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %last_queue_full_count8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_queue_full_count8, align 2
  %inc = add i16 %10, 1
  store i16 %inc, ptr %last_queue_full_count8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %last_queue_full_count10 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 12
  %11 = ptrtoint ptr %last_queue_full_count10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %last_queue_full_count10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %12)
  %cmp12 = icmp ult i16 %12, 11
  br i1 %cmp12, label %if.end9.return_crit_edge, label %if.end15

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end15:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 8
  %can_queue.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %can_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %can_queue.i.i, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %depth) #11
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.i = icmp sgt i32 %17, 0
  br i1 %cmp1.i, label %if.then.i, label %if.end15.if.end.i_crit_edge

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %18 to i16
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %19 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %queue_depth.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  tail call void @arm_heavy_mb() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %20 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i.scsi_change_queue_depth.exit_crit_edge, label %if.then2.i

if.end.i.scsi_change_queue_depth.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_change_queue_depth.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_set_queue_depth(ptr noundef nonnull %21, i32 noundef %18) #11
  br label %scsi_change_queue_depth.exit

scsi_change_queue_depth.exit:                     ; preds = %if.then2.i, %if.end.i.scsi_change_queue_depth.exit_crit_edge
  %budget_map.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4
  %queue_depth5.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %22 = ptrtoint ptr %queue_depth5.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_depth5.i, align 4
  %conv6.i = zext i16 %23 to i32
  tail call void @sbitmap_resize(ptr noundef %budget_map.i, i32 noundef %conv6.i) #11
  %24 = ptrtoint ptr %queue_depth5.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %queue_depth5.i, align 4
  %conv8.i = zext i16 %25 to i32
  br label %return

return:                                           ; preds = %scsi_change_queue_depth.exit, %if.end9.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv8.i, %scsi_change_queue_depth.exit ], [ 0, %entry.return_crit_edge ], [ 0, %if.end9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext %page, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %cmd.i48 = alloca [16 x i8], align 1
  %cmd.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skip_vpd_pages = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %0 = ptrtoint ptr %skip_vpd_pages to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %skip_vpd_pages, align 4
  %1 = and i64 %bf.load, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_len)
  %cmp.i = icmp ult i32 %buf_len, 4
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 6
  %3 = call ptr @memset(ptr %2, i32 255, i32 10)
  br i1 %cmp.i, label %if.end.scsi_vpd_inquiry.exit.thread_crit_edge, label %if.end.i

if.end.scsi_vpd_inquiry.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit.thread

if.end.i:                                         ; preds = %if.end
  %4 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 4
  %6 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %cmd.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %8, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  %shr.i = lshr i32 %buf_len, 8
  %conv.i = trunc i32 %shr.i to i8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %6, align 1
  %conv4.i = trunc i32 %buf_len to i8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i, ptr %5, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %4, align 1
  %call.i.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef %buf, i32 noundef %buf_len, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.scsi_vpd_inquiry.exit.thread_crit_edge

if.end.i.scsi_vpd_inquiry.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr i8, ptr %buf, i32 1
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp12.not.i = icmp eq i8 %16, 0
  br i1 %cmp12.not.i, label %scsi_vpd_inquiry.exit, label %if.end8.i.scsi_vpd_inquiry.exit.thread_crit_edge

if.end8.i.scsi_vpd_inquiry.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit.thread

scsi_vpd_inquiry.exit.thread:                     ; preds = %if.end8.i.scsi_vpd_inquiry.exit.thread_crit_edge, %if.end.i.scsi_vpd_inquiry.exit.thread_crit_edge, %if.end.scsi_vpd_inquiry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  br label %cleanup

scsi_vpd_inquiry.exit:                            ; preds = %if.end8.i
  %arrayidx16.i = getelementptr i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx16.i, align 1
  %conv18.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv18.i, 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp3 = icmp eq i8 %page, 0
  br i1 %cmp3, label %scsi_vpd_inquiry.exit.cleanup_crit_edge, label %for.cond.preheader

scsi_vpd_inquiry.exit.cleanup_crit_edge:          ; preds = %scsi_vpd_inquiry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %scsi_vpd_inquiry.exit
  %19 = call i32 @llvm.smin.i32(i32 %add.i, i32 %buf_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp970 = icmp sgt i32 %19, 4
  br i1 %cmp970, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 4, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.071
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %page)
  %cmp13 = icmp eq i8 %21, %page
  br i1 %cmp13, label %for.body.if.end.i55_crit_edge, label %for.inc

for.body.if.end.i55_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i55

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 4, %for.cond.preheader.for.end_crit_edge ], [ %19, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %add.i)
  %cmp17 = icmp uge i32 %i.0.lcssa, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %buf_len)
  %cmp19.not = icmp slt i32 %i.0.lcssa, %buf_len
  %or.cond = or i1 %cmp17, %cmp19.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %for.end.if.end.i55_crit_edge

for.end.if.end.i55_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i55

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i55:                                       ; preds = %for.end.if.end.i55_crit_edge, %for.body.if.end.i55_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i48) #11
  %22 = getelementptr inbounds i8, ptr %cmd.i48, i32 6
  %23 = call ptr @memset(ptr %22, i32 255, i32 10)
  %24 = getelementptr inbounds [16 x i8], ptr %cmd.i48, i32 0, i32 5
  %25 = getelementptr inbounds [16 x i8], ptr %cmd.i48, i32 0, i32 4
  %26 = getelementptr inbounds [16 x i8], ptr %cmd.i48, i32 0, i32 3
  %27 = getelementptr inbounds [16 x i8], ptr %cmd.i48, i32 0, i32 2
  %28 = getelementptr inbounds [16 x i8], ptr %cmd.i48, i32 0, i32 1
  %29 = ptrtoint ptr %cmd.i48 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 18, ptr %cmd.i48, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %28, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %page, ptr %27, align 1
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %26, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv4.i, ptr %25, align 1
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %24, align 1
  %call.i.i53 = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd.i48, i32 noundef 2, ptr noundef %buf, i32 noundef %buf_len, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %tobool.not.i54 = icmp eq i32 %call.i.i53, 0
  br i1 %tobool.not.i54, label %if.end8.i58, label %if.end.i55.scsi_vpd_inquiry.exit64.thread_crit_edge

if.end.i55.scsi_vpd_inquiry.exit64.thread_crit_edge: ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit64.thread

if.end8.i58:                                      ; preds = %if.end.i55
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %page)
  %cmp12.not.i57 = icmp eq i8 %36, %page
  br i1 %cmp12.not.i57, label %scsi_vpd_inquiry.exit64, label %if.end8.i58.scsi_vpd_inquiry.exit64.thread_crit_edge

if.end8.i58.scsi_vpd_inquiry.exit64.thread_crit_edge: ; preds = %if.end8.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit64.thread

scsi_vpd_inquiry.exit64.thread:                   ; preds = %if.end8.i58.scsi_vpd_inquiry.exit64.thread_crit_edge, %if.end.i55.scsi_vpd_inquiry.exit64.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i48) #11
  br label %cleanup

scsi_vpd_inquiry.exit64:                          ; preds = %if.end8.i58
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i48) #11
  br label %cleanup

cleanup:                                          ; preds = %scsi_vpd_inquiry.exit64, %scsi_vpd_inquiry.exit64.thread, %for.end.cleanup_crit_edge, %scsi_vpd_inquiry.exit.cleanup_crit_edge, %scsi_vpd_inquiry.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %scsi_vpd_inquiry.exit.cleanup_crit_edge ], [ 0, %scsi_vpd_inquiry.exit64 ], [ -22, %scsi_vpd_inquiry.exit64.thread ], [ -22, %scsi_vpd_inquiry.exit.thread ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_attach_vpd(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %try_vpd_pages.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %0 = ptrtoint ptr %try_vpd_pages.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %try_vpd_pages.i, align 4
  %1 = and i64 %bf.load.i, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %scsi_device_supports_vpd.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

scsi_device_supports_vpd.exit:                    ; preds = %entry
  %scsi_level.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %2 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp ult i8 %3, 5
  %4 = and i64 %bf.load.i, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool6.not.i = icmp ne i64 %4, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %scsi_device_supports_vpd.exit.cleanup_crit_edge, label %scsi_device_supports_vpd.exit.if.end_crit_edge

scsi_device_supports_vpd.exit.if.end_crit_edge:   ; preds = %scsi_device_supports_vpd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

scsi_device_supports_vpd.exit.cleanup_crit_edge:  ; preds = %scsi_device_supports_vpd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %scsi_device_supports_vpd.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %sdev, i8 noundef zeroext 0)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp54 = icmp sgt i32 %6, 4
  br i1 %cmp54, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpd_pg0 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 33
  %vpd_pg80 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 35
  %vpd_pg83 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 34
  %vpd_pg89 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 4, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scsi_vpd, ptr %call1, i32 0, i32 2, i32 %i.055
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp5 = icmp eq i8 %8, 0
  br i1 %cmp5, label %if.then7, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scsi_update_vpd_page(ptr noundef %sdev, i8 noundef zeroext 0, ptr noundef %vpd_pg0)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %arrayidx, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body.if.end8_crit_edge
  %10 = phi i8 [ %.pr, %if.then7 ], [ %8, %for.body.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %10)
  %cmp12 = icmp eq i8 %10, -128
  br i1 %cmp12, label %if.then14, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scsi_update_vpd_page(ptr noundef %sdev, i8 noundef zeroext -128, ptr noundef %vpd_pg80)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %12)
  %cmp19 = icmp eq i8 %12, -125
  br i1 %cmp19, label %if.then21, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scsi_update_vpd_page(ptr noundef %sdev, i8 noundef zeroext -125, ptr noundef %vpd_pg83)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr53 = load i8, ptr %arrayidx, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15.if.end22_crit_edge
  %14 = phi i8 [ %.pr53, %if.then21 ], [ %12, %if.end15.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %14)
  %cmp26 = icmp eq i8 %14, -119
  br i1 %cmp26, label %if.then28, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scsi_update_vpd_page(ptr noundef %sdev, i8 noundef zeroext -119, ptr noundef %vpd_pg89)
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %if.end22.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %scsi_device_supports_vpd.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scsi_get_vpd_buf(ptr noundef %sdev, i8 noundef zeroext %page) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 6
  %1 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 5
  %2 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 4
  %3 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds [16 x i8], ptr %cmd.i, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5, %entry
  %vpd_len.0 = phi i32 [ 255, %entry ], [ %add.i, %if.then5 ]
  %add = add nuw nsw i32 %vpd_len.0, 12
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end.i20

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i20:                                       ; preds = %if.end8.i
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %call9.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  %6 = call ptr @memset(ptr %0, i32 255, i32 10)
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %cmd.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %5, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %page, ptr %4, align 1
  %shr.i = lshr i32 %vpd_len.0, 8
  %conv.i = trunc i32 %shr.i to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %3, align 1
  %conv4.i = trunc i32 %vpd_len.0 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %2, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %1, align 1
  %call.i.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef %data, i32 noundef %vpd_len.0, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i21, label %if.end.i20.scsi_vpd_inquiry.exit.thread_crit_edge

if.end.i20.scsi_vpd_inquiry.exit.thread_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit.thread

if.end8.i21:                                      ; preds = %if.end.i20
  %arrayidx9.i = getelementptr i8, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %page)
  %cmp12.not.i = icmp eq i8 %14, %page
  br i1 %cmp12.not.i, label %scsi_vpd_inquiry.exit, label %if.end8.i21.scsi_vpd_inquiry.exit.thread_crit_edge

if.end8.i21.scsi_vpd_inquiry.exit.thread_crit_edge: ; preds = %if.end8.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_vpd_inquiry.exit.thread

scsi_vpd_inquiry.exit.thread:                     ; preds = %if.end8.i21.scsi_vpd_inquiry.exit.thread_crit_edge, %if.end.i20.scsi_vpd_inquiry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

scsi_vpd_inquiry.exit:                            ; preds = %if.end8.i21
  %arrayidx16.i = getelementptr i8, ptr %data, i32 2
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx16.i, align 2
  %conv18.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %conv18.i, 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  %cmp4 = icmp ugt i32 %add.i, %vpd_len.0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %scsi_vpd_inquiry.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %if.end8.i

if.end6:                                          ; preds = %scsi_vpd_inquiry.exit
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %call9.i, i32 0, i32 1
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %scsi_vpd_inquiry.exit.thread, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %scsi_vpd_inquiry.exit.thread ], [ %call9.i, %if.end6 ], [ null, %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_update_vpd_page(ptr noundef %sdev, i8 noundef zeroext %page, ptr noundef %sdev_vpd_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %sdev, i8 noundef zeroext %page)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inquiry_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %inquiry_mutex, i32 noundef 0) #11
  %dep_map = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @scsi_update_vpd_page.__warned, align 1
  br i1 %.b68, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @scsi_update_vpd_page.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.156, i32 noundef 421, ptr noundef nonnull @.str.157) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %0 = ptrtoint ptr %sdev_vpd_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev_vpd_buf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !295
  %2 = ptrtoint ptr %sdev_vpd_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call, ptr %sdev_vpd_buf, align 4
  tail call void @mutex_unlock(ptr noundef %inquiry_mutex) #11
  %tobool48.not = icmp eq ptr %1, null
  br i1 %tobool48.not, label %do.end.cleanup_crit_edge, label %do.end55

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end55:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_report_opcode(ptr noundef %sdev, ptr noundef %buffer, i32 noundef %len, i8 noundef zeroext %opcode) #0 align 64 {
entry:
  %cmd = alloca [16 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #11
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %no_report_opcodes = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %7 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %sshdr, align 8
  %8 = ptrtoint ptr %no_report_opcodes to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %no_report_opcodes, align 4
  %9 = and i64 %bf.load, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %scsi_level = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %10 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scsi_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp = icmp ult i8 %11, 6
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = getelementptr inbounds i8, ptr %cmd, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 12)
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -93, ptr %cmd, align 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %0, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %1, align 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %opcode, ptr %2, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %len, ptr %3, align 1
  %19 = call ptr @memset(ptr %buffer, i32 0, i32 %len)
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buffer, i32 noundef %len, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end10.if.end32_crit_edge, label %land.lhs.true

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end10
  %20 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sshdr, align 8
  %22 = and i8 %21, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %22)
  %cmp.i = icmp eq i8 %22, 112
  br i1 %cmp.i, label %land.lhs.true14, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true14:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp16 = icmp eq i8 %24, 5
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true14.if.end32_crit_edge

land.lhs.true14.if.end32_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i8 %26, label %land.lhs.true18.if.end32_crit_edge [
    i8 32, label %land.lhs.true18.land.lhs.true27_crit_edge
    i8 36, label %land.lhs.true18.land.lhs.true27_crit_edge50
  ]

land.lhs.true18.land.lhs.true27_crit_edge50:      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true18.land.lhs.true27_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true18.if.end32_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true18.land.lhs.true27_crit_edge, %land.lhs.true18.land.lhs.true27_crit_edge50
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp29 = icmp eq i8 %29, 0
  br i1 %cmp29, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true27.if.end32_crit_edge

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true27.if.end32_crit_edge, %land.lhs.true18.if.end32_crit_edge, %land.lhs.true14.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end10.if.end32_crit_edge
  %arrayidx33 = getelementptr i8, ptr %buffer, i32 1
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp35 = icmp eq i8 %32, 3
  %. = zext i1 %cmp35 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %land.lhs.true27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true27.cleanup_crit_edge ], [ %., %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_device_get(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %call = tail call ptr @get_device(ptr noundef %sdev_gendev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostt, align 8
  %module = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module, align 4
  %call5 = tail call zeroext i1 @try_module_get(ptr noundef %7) #11
  br i1 %call5, label %if.end4.return_crit_edge, label %fail_put_device

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fail_put_device:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %sdev_gendev) #11
  br label %return

return:                                           ; preds = %fail_put_device, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.return_crit_edge ], [ -6, %entry.return_crit_edge ], [ -6, %if.end.return_crit_edge ], [ -6, %fail_put_device ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_device_put(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %module = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #11
  tail call void @module_put(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__scsi_iterate_devices(ptr noundef readonly %shost, ptr noundef %prev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %siblings = getelementptr inbounds %struct.scsi_device, ptr %prev, i32 0, i32 2
  %cond = select i1 %tobool.not, ptr %shost, ptr %siblings
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %2 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond, align 4
  %cmp7.not32 = icmp eq ptr %3, %shost
  br i1 %cmp7.not32, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %16, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %list.033 = phi ptr [ %14, %if.end.while.body_crit_edge ], [ %cond, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  %sdev_state.i = getelementptr i8, ptr %4, i32 2468
  %5 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sdev_state.i, align 4
  %.off.i = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %while.body.if.end_crit_edge, label %if.end.i

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %while.body
  %sdev_gendev.i = getelementptr i8, ptr %4, i32 400
  %call.i = tail call ptr @get_device(ptr noundef %sdev_gendev.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostt.i, align 8
  %module.i = getelementptr inbounds %struct.scsi_host_template, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %module.i, align 4
  %call5.i = tail call zeroext i1 @try_module_get(ptr noundef %12) #11
  br i1 %call5.i, label %if.end4.i.while.end_crit_edge, label %fail_put_device.i

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

fail_put_device.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %sdev_gendev.i) #11
  br label %if.end

if.end:                                           ; preds = %fail_put_device.i, %if.end.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %13 = ptrtoint ptr %list.033 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.033, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp7.not = icmp eq ptr %16, %shost
  br i1 %cmp7.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.end4.i.while.end_crit_edge, %entry.while.end_crit_edge
  %next.1 = phi ptr [ null, %entry.while.end_crit_edge ], [ %add.ptr, %if.end4.i.while.end_crit_edge ], [ null, %if.end.while.end_crit_edge ]
  %17 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call2) #11
  br i1 %tobool.not, label %while.end.if.end17_crit_edge, label %if.then16

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev, align 8
  %hostt.i27 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %hostt.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hostt.i27, align 8
  %module.i28 = getelementptr inbounds %struct.scsi_host_template, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %module.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module.i28, align 4
  %sdev_gendev.i29 = getelementptr inbounds %struct.scsi_device, ptr %prev, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev.i29) #11
  tail call void @module_put(ptr noundef %24) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end.if.end17_crit_edge
  ret ptr %next.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @starget_for_each_device(ptr nocapture noundef readonly %starget, ptr noundef %data, ptr nocapture noundef readonly %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %call1 = tail call ptr @__scsi_iterate_devices(ptr noundef %retval.0.i, ptr noundef null)
  %tobool.not14 = icmp eq ptr %call1, null
  br i1 %tobool.not14, label %dev_to_shost.exit.for.end_crit_edge, label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_to_shost.exit
  %channel2 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %id3 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sdev.015 = phi ptr [ %call1, %for.body.lr.ph ], [ %call5, %for.inc.for.body_crit_edge ]
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev.015, i32 0, i32 17
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev.015, i32 0, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %10 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %fn(ptr noundef nonnull %sdev.015, ptr noundef %data) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call5 = tail call ptr @__scsi_iterate_devices(ptr noundef %retval.0.i, ptr noundef nonnull %sdev.015)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dev_to_shost.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__starget_for_each_device(ptr nocapture noundef readonly %starget, ptr noundef %data, ptr nocapture noundef readonly %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn19 = load ptr, ptr %retval.0.i, align 8
  %cmp.not21 = icmp eq ptr %.pn19, %retval.0.i
  br i1 %cmp.not21, label %dev_to_shost.exit.for.end_crit_edge, label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_to_shost.exit
  %channel2 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %id4 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn19, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %sdev.023 = getelementptr i8, ptr %.pn22, i32 -8
  %channel = getelementptr i8, ptr %.pn22, i32 124
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr i8, ptr %.pn22, i32 120
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %11 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5 = icmp eq i32 %10, %12
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %fn(ptr noundef %sdev.023, ptr noundef %data) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn22, align 8
  %cmp.not = icmp eq ptr %.pn, %retval.0.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dev_to_shost.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__scsi_device_lookup_by_target(ptr noundef readonly %starget, i64 noundef %lun) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 2
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %devices, align 4
  %cmp.not20 = icmp eq ptr %.pn19, %devices
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn21 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %sdev_state = getelementptr i8, ptr %.pn21, i32 2460
  %1 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lun3 = getelementptr i8, ptr %.pn21, i32 120
  %3 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %lun3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %lun)
  %cmp4 = icmp eq i64 %4, %lun
  br i1 %cmp4, label %cleanup.split.loop.exit17, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn21, align 4
  %cmp.not = icmp eq ptr %.pn, %devices
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.split.loop.exit17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sdev.0.le = getelementptr i8, ptr %.pn21, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit17, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sdev.0.le, %cleanup.split.loop.exit17 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_device_lookup_by_target(ptr noundef readonly %starget, i64 noundef %lun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %devices.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 2
  %6 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn19.i = load ptr, ptr %devices.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %devices.i
  br i1 %cmp.not20.i, label %dev_to_shost.exit.if.end_crit_edge, label %dev_to_shost.exit.for.body.i_crit_edge

dev_to_shost.exit.for.body.i_crit_edge:           ; preds = %dev_to_shost.exit
  br label %for.body.i

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_to_shost.exit.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %dev_to_shost.exit.for.body.i_crit_edge ]
  %sdev_state.i = getelementptr i8, ptr %.pn21.i, i32 2460
  %7 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sdev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2.i = icmp eq i32 %8, 4
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %lun3.i = getelementptr i8, ptr %.pn21.i, i32 120
  %9 = ptrtoint ptr %lun3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %lun)
  %cmp4.i = icmp eq i64 %10, %lun
  br i1 %cmp4.i, label %__scsi_device_lookup_by_target.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %devices.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

__scsi_device_lookup_by_target.exit:              ; preds = %if.end.i
  %sdev.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -16
  %tobool.not = icmp eq ptr %sdev.0.le.i, null
  br i1 %tobool.not, label %__scsi_device_lookup_by_target.exit.if.end_crit_edge, label %land.lhs.true

__scsi_device_lookup_by_target.exit.if.end_crit_edge: ; preds = %__scsi_device_lookup_by_target.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %__scsi_device_lookup_by_target.exit
  %sdev_state.i.le = getelementptr i8, ptr %.pn21.i, i32 2460
  %12 = ptrtoint ptr %sdev_state.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdev_state.i.le, align 4
  %.off.i = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.if.end_crit_edge, label %if.end.i18

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i18:                                       ; preds = %land.lhs.true
  %sdev_gendev.i = getelementptr i8, ptr %.pn21.i, i32 392
  %call.i16 = tail call ptr @get_device(ptr noundef %sdev_gendev.i) #11
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %if.end.i18.if.end_crit_edge, label %if.end4.i

if.end.i18.if.end_crit_edge:                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i18
  %14 = ptrtoint ptr %sdev.0.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.0.le.i, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostt.i, align 8
  %module.i = getelementptr inbounds %struct.scsi_host_template, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module.i, align 4
  %call5.i = tail call zeroext i1 @try_module_get(ptr noundef %19) #11
  br i1 %call5.i, label %if.end4.i.if.end_crit_edge, label %fail_put_device.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fail_put_device.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %sdev_gendev.i) #11
  br label %if.end

if.end:                                           ; preds = %fail_put_device.i, %if.end4.i.if.end_crit_edge, %if.end.i18.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__scsi_device_lookup_by_target.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %dev_to_shost.exit.if.end_crit_edge
  %sdev.0 = phi ptr [ null, %__scsi_device_lookup_by_target.exit.if.end_crit_edge ], [ %sdev.0.le.i, %if.end4.i.if.end_crit_edge ], [ null, %dev_to_shost.exit.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %if.end.i18.if.end_crit_edge ], [ null, %fail_put_device.i ], [ null, %for.inc.i.if.end_crit_edge ]
  %20 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call3) #11
  ret ptr %sdev.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__scsi_device_lookup(ptr noundef readonly %shost, i32 noundef %channel, i32 noundef %id, i64 noundef %lun) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26 = load ptr, ptr %shost, align 8
  %cmp.not27 = icmp eq ptr %.pn26, %shost
  br i1 %cmp.not27, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn26, %entry.for.body_crit_edge ]
  %sdev_state = getelementptr i8, ptr %.pn28, i32 2468
  %1 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %channel3 = getelementptr i8, ptr %.pn28, i32 124
  %3 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %channel)
  %cmp4 = icmp eq i32 %4, %channel
  br i1 %cmp4, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %id5 = getelementptr i8, ptr %.pn28, i32 120
  %5 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %id)
  %cmp6 = icmp eq i32 %6, %id
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %lun8 = getelementptr i8, ptr %.pn28, i32 128
  %7 = ptrtoint ptr %lun8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lun8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %lun)
  %cmp9 = icmp eq i64 %8, %lun
  br i1 %cmp9, label %cleanup.split.loop.exit24, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn28, align 8
  %cmp.not = icmp eq ptr %.pn, %shost
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.split.loop.exit24:                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %sdev.0.le = getelementptr i8, ptr %.pn28, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit24, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sdev.0.le, %cleanup.split.loop.exit24 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_device_lookup(ptr noundef readonly %shost, i32 noundef %channel, i32 noundef %id, i64 noundef %lun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn26.i = load ptr, ptr %shost, align 8
  %cmp.not27.i = icmp eq ptr %.pn26.i, %shost
  br i1 %cmp.not27.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn26.i, %entry.for.body.i_crit_edge ]
  %sdev_state.i = getelementptr i8, ptr %.pn28.i, i32 2468
  %3 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sdev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp2.i = icmp eq i32 %4, 4
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %channel3.i = getelementptr i8, ptr %.pn28.i, i32 124
  %5 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel)
  %cmp4.i = icmp eq i32 %6, %channel
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %id5.i = getelementptr i8, ptr %.pn28.i, i32 120
  %7 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %id)
  %cmp6.i = icmp eq i32 %8, %id
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %lun8.i = getelementptr i8, ptr %.pn28.i, i32 128
  %9 = ptrtoint ptr %lun8.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %lun)
  %cmp9.i = icmp eq i64 %10, %lun
  br i1 %cmp9.i, label %__scsi_device_lookup.exit, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn28.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %shost
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

__scsi_device_lookup.exit:                        ; preds = %land.lhs.true7.i
  %sdev.0.le.i = getelementptr i8, ptr %.pn28.i, i32 -8
  %tobool.not = icmp eq ptr %sdev.0.le.i, null
  br i1 %tobool.not, label %__scsi_device_lookup.exit.if.end_crit_edge, label %land.lhs.true

__scsi_device_lookup.exit.if.end_crit_edge:       ; preds = %__scsi_device_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %__scsi_device_lookup.exit
  %sdev_state.i.le = getelementptr i8, ptr %.pn28.i, i32 2468
  %12 = ptrtoint ptr %sdev_state.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdev_state.i.le, align 4
  %.off.i = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.if.end_crit_edge, label %if.end.i14

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i14:                                       ; preds = %land.lhs.true
  %sdev_gendev.i = getelementptr i8, ptr %.pn28.i, i32 400
  %call.i = tail call ptr @get_device(ptr noundef %sdev_gendev.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i14.if.end_crit_edge, label %if.end4.i

if.end.i14.if.end_crit_edge:                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i14
  %14 = ptrtoint ptr %sdev.0.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.0.le.i, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostt.i, align 8
  %module.i = getelementptr inbounds %struct.scsi_host_template, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module.i, align 4
  %call5.i = tail call zeroext i1 @try_module_get(ptr noundef %19) #11
  br i1 %call5.i, label %if.end4.i.if.end_crit_edge, label %fail_put_device.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fail_put_device.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %sdev_gendev.i) #11
  br label %if.end

if.end:                                           ; preds = %fail_put_device.i, %if.end4.i.if.end_crit_edge, %if.end.i14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__scsi_device_lookup.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sdev.0 = phi ptr [ null, %__scsi_device_lookup.exit.if.end_crit_edge ], [ %sdev.0.le.i, %if.end4.i.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %if.end.i14.if.end_crit_edge ], [ null, %fail_put_device.i ], [ null, %for.inc.i.if.end_crit_edge ]
  %20 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call2) #11
  ret ptr %sdev.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_scsi() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_netlink_exit() #11
  tail call void @scsi_sysfs_unregister() #11
  tail call void @scsi_exit_sysctl() #11
  tail call void @scsi_exit_hosts() #11
  tail call void @scsi_exit_devinfo() #11
  tail call void @scsi_exit_procfs() #11
  tail call void @scsi_exit_queue() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_netlink_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_sysfs_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_devinfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_queue() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_scsi() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_init_procfs() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_queue_crit_edge

entry.cleanup_queue_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_queue

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @scsi_init_devinfo() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_procfs_crit_edge

if.end.cleanup_procfs_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_procfs

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @scsi_init_hosts() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_devlist_crit_edge

if.end4.cleanup_devlist_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_devlist

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @scsi_init_sysctl() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_hosts_crit_edge

if.end8.cleanup_hosts_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_hosts

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @scsi_sysfs_register() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup_sysctl

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_netlink_init() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #15
  br label %cleanup

cleanup_sysctl:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_exit_sysctl() #11
  br label %cleanup_hosts

cleanup_hosts:                                    ; preds = %cleanup_sysctl, %if.end8.cleanup_hosts_crit_edge
  %error.0 = phi i32 [ %call9, %if.end8.cleanup_hosts_crit_edge ], [ %call13, %cleanup_sysctl ]
  tail call void @scsi_exit_hosts() #11
  br label %cleanup_devlist

cleanup_devlist:                                  ; preds = %cleanup_hosts, %if.end4.cleanup_devlist_crit_edge
  %error.1 = phi i32 [ %call5, %if.end4.cleanup_devlist_crit_edge ], [ %error.0, %cleanup_hosts ]
  tail call void @scsi_exit_devinfo() #11
  br label %cleanup_procfs

cleanup_procfs:                                   ; preds = %cleanup_devlist, %if.end.cleanup_procfs_crit_edge
  %error.2 = phi i32 [ %call1, %if.end.cleanup_procfs_crit_edge ], [ %error.1, %cleanup_devlist ]
  tail call void @scsi_exit_procfs() #11
  br label %cleanup_queue

cleanup_queue:                                    ; preds = %cleanup_procfs, %entry.cleanup_queue_crit_edge
  %error.3 = phi i32 [ %call, %entry.cleanup_queue_crit_edge ], [ %error.2, %cleanup_procfs ]
  tail call void @scsi_exit_queue() #11
  %sub = sub i32 0, %error.3
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup_queue, %if.end16
  %retval.0 = phi i32 [ %error.3, %cleanup_queue ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_dispatch_cmd_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %host_no = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %lun = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lun, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %data_sglen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_sglen, align 4
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prot_sglen, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %prot_op to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prot_op, align 4
  %conv = zext i8 %15 to i32
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_start.symbols) #11
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opcode, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %17, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_start.symbols.26) #11
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_loc_cmnd, align 4
  %and = and i32 %19, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cmd_len = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_len, align 4
  %call4 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %21) #11
  %22 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_cmnd, align 4
  %and6 = and i32 %23, 65535
  %add.ptr7 = getelementptr i8, ptr %1, i32 %and6
  %24 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_len, align 4
  %call9 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr7, i32 noundef %25, i1 noundef zeroext false) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %call1, ptr noundef %call3, ptr noundef %call4, ptr noundef %call9) #11
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_trace_parse_cdb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_dispatch_cmd_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %host_no = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %lun = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lun, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %data_sglen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_sglen, align 4
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prot_sglen, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %prot_op to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prot_op, align 4
  %conv = zext i8 %15 to i32
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_error.symbols) #11
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opcode, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %17, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_error.symbols.120) #11
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_loc_cmnd, align 4
  %and = and i32 %19, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cmd_len = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_len, align 4
  %call4 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %21) #11
  %22 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_cmnd, align 4
  %and6 = and i32 %23, 65535
  %add.ptr7 = getelementptr i8, ptr %1, i32 %and6
  %24 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_len, align 4
  %call9 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr7, i32 noundef %25, i1 noundef zeroext false) #11
  %rtn = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %rtn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rtn, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.119, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %call1, ptr noundef %call3, ptr noundef %call4, ptr noundef %call9, i32 noundef %27) #11
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_cmd_done_timeout_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %host_no = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %lun = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lun, align 4
  %data_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %data_sglen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_sglen, align 4
  %prot_sglen = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %prot_sglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prot_sglen, align 4
  %prot_op = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %prot_op to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prot_op, align 4
  %conv = zext i8 %15 to i32
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols) #11
  %opcode = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opcode, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %17, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.123) #11
  %__data_loc_cmnd = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_loc_cmnd, align 4
  %and = and i32 %19, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cmd_len = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_len, align 4
  %call4 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %21) #11
  %22 = ptrtoint ptr %__data_loc_cmnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_cmnd, align 4
  %and6 = and i32 %23, 65535
  %add.ptr7 = getelementptr i8, ptr %1, i32 %and6
  %24 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_len, align 4
  %call9 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr7, i32 noundef %25, i1 noundef zeroext false) #11
  %result = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %result, align 4
  %28 = lshr i32 %27, 16
  %and11 = and i32 %28, 255
  %call12 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %and11, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.125) #11
  %29 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result, align 4
  %and15 = and i32 %30, 255
  %call16 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %and15, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.143) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.122, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %call1, ptr noundef %call3, ptr noundef %call4, ptr noundef %call9, ptr noundef nonnull @.str.124, ptr noundef %call12, ptr noundef nonnull @.str.142, ptr noundef %call16) #11
  %call17 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_eh_wakeup(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %host_no = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.155, i32 noundef %3) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_procfs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scsi_init_devinfo() local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_sysfs_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_netlink_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !85, !86, !88, !90, !92, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280}
!llvm.named.register.sp = !{!281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @__tracepoint_scsi_dispatch_cmd_start, !1, !"__tracepoint_scsi_dispatch_cmd_start", i1 false, i1 false}
!1 = !{!"../include/trace/events/scsi.h", i32 156, i32 1}
!2 = !{ptr @__tracepoint_ptr_scsi_dispatch_cmd_start, !1, !"__tracepoint_ptr_scsi_dispatch_cmd_start", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_scsi_dispatch_cmd_start, !1, !"__SCK__tp_func_scsi_dispatch_cmd_start", i1 false, i1 false}
!4 = !{ptr @__tracepoint_scsi_dispatch_cmd_error, !5, !"__tracepoint_scsi_dispatch_cmd_error", i1 false, i1 false}
!5 = !{!"../include/trace/events/scsi.h", i32 198, i32 1}
!6 = !{ptr @__tracepoint_ptr_scsi_dispatch_cmd_error, !5, !"__tracepoint_ptr_scsi_dispatch_cmd_error", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_scsi_dispatch_cmd_error, !5, !"__SCK__tp_func_scsi_dispatch_cmd_error", i1 false, i1 false}
!8 = !{ptr @__tracepoint_scsi_dispatch_cmd_done, !9, !"__tracepoint_scsi_dispatch_cmd_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/scsi.h", i32 292, i32 1}
!10 = !{ptr @__tracepoint_ptr_scsi_dispatch_cmd_done, !9, !"__tracepoint_ptr_scsi_dispatch_cmd_done", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_scsi_dispatch_cmd_done, !9, !"__SCK__tp_func_scsi_dispatch_cmd_done", i1 false, i1 false}
!12 = !{ptr @__tracepoint_scsi_dispatch_cmd_timeout, !13, !"__tracepoint_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!13 = !{!"../include/trace/events/scsi.h", i32 296, i32 1}
!14 = !{ptr @__tracepoint_ptr_scsi_dispatch_cmd_timeout, !13, !"__tracepoint_ptr_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_scsi_dispatch_cmd_timeout, !13, !"__SCK__tp_func_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!16 = !{ptr @__tracepoint_scsi_eh_wakeup, !17, !"__tracepoint_scsi_eh_wakeup", i1 false, i1 false}
!17 = !{!"../include/trace/events/scsi.h", i32 300, i32 1}
!18 = !{ptr @__tracepoint_ptr_scsi_eh_wakeup, !17, !"__tracepoint_ptr_scsi_eh_wakeup", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_scsi_eh_wakeup, !17, !"__SCK__tp_func_scsi_eh_wakeup", i1 false, i1 false}
!20 = !{ptr @event_class_scsi_dispatch_cmd_start, !1, !"event_class_scsi_dispatch_cmd_start", i1 false, i1 false}
!21 = !{ptr @event_scsi_dispatch_cmd_start, !1, !"event_scsi_dispatch_cmd_start", i1 false, i1 false}
!22 = !{ptr @__event_scsi_dispatch_cmd_start, !1, !"__event_scsi_dispatch_cmd_start", i1 false, i1 false}
!23 = !{ptr @event_class_scsi_dispatch_cmd_error, !5, !"event_class_scsi_dispatch_cmd_error", i1 false, i1 false}
!24 = !{ptr @event_scsi_dispatch_cmd_error, !5, !"event_scsi_dispatch_cmd_error", i1 false, i1 false}
!25 = !{ptr @__event_scsi_dispatch_cmd_error, !5, !"__event_scsi_dispatch_cmd_error", i1 false, i1 false}
!26 = !{ptr @event_class_scsi_cmd_done_timeout_template, !27, !"event_class_scsi_cmd_done_timeout_template", i1 false, i1 false}
!27 = !{!"../include/trace/events/scsi.h", i32 243, i32 1}
!28 = !{ptr @event_scsi_dispatch_cmd_done, !9, !"event_scsi_dispatch_cmd_done", i1 false, i1 false}
!29 = !{ptr @__event_scsi_dispatch_cmd_done, !9, !"__event_scsi_dispatch_cmd_done", i1 false, i1 false}
!30 = !{ptr @event_scsi_dispatch_cmd_timeout, !13, !"event_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!31 = !{ptr @__event_scsi_dispatch_cmd_timeout, !13, !"__event_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!32 = !{ptr @event_class_scsi_eh_wakeup, !17, !"event_class_scsi_eh_wakeup", i1 false, i1 false}
!33 = !{ptr @event_scsi_eh_wakeup, !17, !"event_scsi_eh_wakeup", i1 false, i1 false}
!34 = !{ptr @__event_scsi_eh_wakeup, !17, !"__event_scsi_eh_wakeup", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_start, !1, !"__bpf_trace_tp_map_scsi_dispatch_cmd_start", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_error, !5, !"__bpf_trace_tp_map_scsi_dispatch_cmd_error", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_done, !9, !"__bpf_trace_tp_map_scsi_dispatch_cmd_done", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_scsi_dispatch_cmd_timeout, !13, !"__bpf_trace_tp_map_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_scsi_eh_wakeup, !17, !"__bpf_trace_tp_map_scsi_eh_wakeup", i1 false, i1 false}
!40 = !{ptr @__ksymtab_scsi_logging_level, !41, !"__ksymtab_scsi_logging_level", i1 false, i1 false}
!41 = !{!"../drivers/scsi/scsi.c", i32 85, i32 1}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/scsi.c", i32 108, i32 16}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/scsi.c", i32 109, i32 9}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/scsi.c", i32 136, i32 27}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/scsi.c", i32 142, i32 10}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/scsi.c", i32 179, i32 2}
!52 = !{ptr @__ksymtab_scsi_change_queue_depth, !53, !"__ksymtab_scsi_change_queue_depth", i1 false, i1 false}
!53 = !{!"../drivers/scsi/scsi.c", i32 233, i32 1}
!54 = !{ptr @__ksymtab_scsi_track_queue_full, !55, !"__ksymtab_scsi_track_queue_full", i1 false, i1 false}
!55 = !{!"../drivers/scsi/scsi.c", i32 278, i32 1}
!56 = !{ptr @__ksymtab_scsi_get_vpd_page, !57, !"__ksymtab_scsi_get_vpd_page", i1 false, i1 false}
!57 = !{!"../drivers/scsi/scsi.c", i32 375, i32 1}
!58 = !{ptr @__ksymtab_scsi_report_opcode, !59, !"__ksymtab_scsi_report_opcode", i1 false, i1 false}
!59 = !{!"../drivers/scsi/scsi.c", i32 507, i32 1}
!60 = !{ptr @__ksymtab_scsi_device_get, !61, !"__ksymtab_scsi_device_get", i1 false, i1 false}
!61 = !{!"../drivers/scsi/scsi.c", i32 535, i32 1}
!62 = !{ptr @__ksymtab_scsi_device_put, !63, !"__ksymtab_scsi_device_put", i1 false, i1 false}
!63 = !{!"../drivers/scsi/scsi.c", i32 552, i32 1}
!64 = !{ptr @__ksymtab___scsi_iterate_devices, !65, !"__ksymtab___scsi_iterate_devices", i1 false, i1 false}
!65 = !{!"../drivers/scsi/scsi.c", i32 577, i32 1}
!66 = !{ptr @__ksymtab_starget_for_each_device, !67, !"__ksymtab_starget_for_each_device", i1 false, i1 false}
!67 = !{!"../drivers/scsi/scsi.c", i32 601, i32 1}
!68 = !{ptr @__ksymtab___starget_for_each_device, !69, !"__ksymtab___starget_for_each_device", i1 false, i1 false}
!69 = !{!"../drivers/scsi/scsi.c", i32 629, i32 1}
!70 = !{ptr @__ksymtab___scsi_device_lookup_by_target, !71, !"__ksymtab___scsi_device_lookup_by_target", i1 false, i1 false}
!71 = !{!"../drivers/scsi/scsi.c", i32 660, i32 1}
!72 = !{ptr @__ksymtab_scsi_device_lookup_by_target, !73, !"__ksymtab_scsi_device_lookup_by_target", i1 false, i1 false}
!73 = !{!"../drivers/scsi/scsi.c", i32 686, i32 1}
!74 = !{ptr @__ksymtab___scsi_device_lookup, !75, !"__ksymtab___scsi_device_lookup", i1 false, i1 false}
!75 = !{!"../drivers/scsi/scsi.c", i32 719, i32 1}
!76 = !{ptr @__ksymtab_scsi_device_lookup, !77, !"__ksymtab_scsi_device_lookup", i1 false, i1 false}
!77 = !{!"../drivers/scsi/scsi.c", i32 746, i32 1}
!78 = !{ptr @__UNIQUE_ID_description341, !79, !"__UNIQUE_ID_description341", i1 false, i1 false}
!79 = !{!"../drivers/scsi/scsi.c", i32 748, i32 1}
!80 = !{ptr @__UNIQUE_ID_file342, !81, !"__UNIQUE_ID_file342", i1 false, i1 false}
!81 = !{!"../drivers/scsi/scsi.c", i32 749, i32 1}
!82 = !{ptr @__UNIQUE_ID_license343, !81, !"__UNIQUE_ID_license343", i1 false, i1 false}
!83 = !{ptr @__param_scsi_logging_level, !84, !"__param_scsi_logging_level", i1 false, i1 false}
!84 = !{!"../drivers/scsi/scsi.c", i32 751, i32 1}
!85 = !{ptr @__UNIQUE_ID_scsi_logging_leveltype344, !84, !"__UNIQUE_ID_scsi_logging_leveltype344", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_scsi_logging_level345, !87, !"__UNIQUE_ID_scsi_logging_level345", i1 false, i1 false}
!87 = !{!"../drivers/scsi/scsi.c", i32 752, i32 1}
!88 = !{ptr @__initcall__kmod_scsi_mod__346_805_init_scsi4, !89, !"__initcall__kmod_scsi_mod__346_805_init_scsi4", i1 false, i1 false}
!89 = !{!"../drivers/scsi/scsi.c", i32 805, i32 1}
!90 = !{ptr @__exitcall_exit_scsi, !91, !"__exitcall_exit_scsi", i1 false, i1 false}
!91 = !{!"../drivers/scsi/scsi.c", i32 806, i32 1}
!92 = !{ptr @scsi_logging_level, !93, !"scsi_logging_level", i1 false, i1 false}
!93 = !{!"../drivers/scsi/scsi.c", i32 83, i32 14}
!94 = !{ptr @__tpstrtab_scsi_dispatch_cmd_start, !1, !"__tpstrtab_scsi_dispatch_cmd_start", i1 false, i1 false}
!95 = !{ptr @__tpstrtab_scsi_dispatch_cmd_error, !5, !"__tpstrtab_scsi_dispatch_cmd_error", i1 false, i1 false}
!96 = !{ptr @__tpstrtab_scsi_dispatch_cmd_done, !9, !"__tpstrtab_scsi_dispatch_cmd_done", i1 false, i1 false}
!97 = !{ptr @__tpstrtab_scsi_dispatch_cmd_timeout, !13, !"__tpstrtab_scsi_dispatch_cmd_timeout", i1 false, i1 false}
!98 = !{ptr @__tpstrtab_scsi_eh_wakeup, !17, !"__tpstrtab_scsi_eh_wakeup", i1 false, i1 false}
!99 = !{ptr @str__scsi__trace_system_name, !100, !"str__scsi__trace_system_name", i1 false, i1 false}
!100 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!101 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @trace_event_fields_scsi_dispatch_cmd_start, !1, !"trace_event_fields_scsi_dispatch_cmd_start", i1 false, i1 false}
!115 = !{ptr @trace_event_type_funcs_scsi_dispatch_cmd_start, !1, !"trace_event_type_funcs_scsi_dispatch_cmd_start", i1 false, i1 false}
!116 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols, !1, !"symbols", i1 false, i1 false}
!125 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.49, !1, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.50, !1, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.51, !1, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.54, !1, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.55, !1, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.56, !1, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.57, !1, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.58, !1, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.59, !1, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.60, !1, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.62, !1, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.63, !1, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.64, !1, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.65, !1, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.66, !1, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.67, !1, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.68, !1, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.71, !1, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.72, !1, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.73, !1, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.74, !1, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.75, !1, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.76, !1, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.77, !1, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.78, !1, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.79, !1, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.80, !1, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.81, !1, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.82, !1, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.83, !1, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.84, !1, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.85, !1, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.86, !1, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.87, !1, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.88, !1, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.89, !1, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.90, !1, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.91, !1, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.92, !1, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.93, !1, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.94, !1, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.95, !1, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.96, !1, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.97, !1, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.98, !1, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.99, !1, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.100, !1, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.101, !1, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.102, !1, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !1, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.104, !1, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.105, !1, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.106, !1, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.107, !1, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.108, !1, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.109, !1, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.110, !1, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.111, !1, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.112, !1, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.113, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.114, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.115, !1, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.116, !1, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @trace_raw_output_scsi_dispatch_cmd_start.symbols.26, !1, !"symbols", i1 false, i1 false}
!216 = !{ptr @print_fmt_scsi_dispatch_cmd_start, !1, !"print_fmt_scsi_dispatch_cmd_start", i1 false, i1 false}
!217 = !{ptr @.str.117, !5, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.118, !5, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @trace_event_fields_scsi_dispatch_cmd_error, !5, !"trace_event_fields_scsi_dispatch_cmd_error", i1 false, i1 false}
!220 = !{ptr @trace_event_type_funcs_scsi_dispatch_cmd_error, !5, !"trace_event_type_funcs_scsi_dispatch_cmd_error", i1 false, i1 false}
!221 = !{ptr @.str.119, !5, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols, !5, !"symbols", i1 false, i1 false}
!223 = !{ptr @trace_raw_output_scsi_dispatch_cmd_error.symbols.120, !5, !"symbols", i1 false, i1 false}
!224 = !{ptr @print_fmt_scsi_dispatch_cmd_error, !5, !"print_fmt_scsi_dispatch_cmd_error", i1 false, i1 false}
!225 = !{ptr @.str.121, !27, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @trace_event_fields_scsi_cmd_done_timeout_template, !27, !"trace_event_fields_scsi_cmd_done_timeout_template", i1 false, i1 false}
!227 = !{ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template, !27, !"trace_event_type_funcs_scsi_cmd_done_timeout_template", i1 false, i1 false}
!228 = !{ptr @.str.122, !27, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols, !27, !"symbols", i1 false, i1 false}
!230 = !{ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.123, !27, !"symbols", i1 false, i1 false}
!231 = !{ptr @.str.124, !27, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.126, !27, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.127, !27, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.128, !27, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.129, !27, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.130, !27, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.131, !27, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.132, !27, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.133, !27, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.134, !27, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.135, !27, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.136, !27, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.137, !27, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.138, !27, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.139, !27, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.140, !27, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.141, !27, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.125, !27, !"symbols", i1 false, i1 false}
!249 = !{ptr @.str.142, !27, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.144, !27, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.145, !27, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.146, !27, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.147, !27, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.148, !27, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.149, !27, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.150, !27, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.151, !27, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.152, !27, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.153, !27, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.154, !27, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @trace_raw_output_scsi_cmd_done_timeout_template.symbols.143, !27, !"symbols", i1 false, i1 false}
!262 = !{ptr @print_fmt_scsi_cmd_done_timeout_template, !27, !"print_fmt_scsi_cmd_done_timeout_template", i1 false, i1 false}
!263 = !{ptr @trace_event_fields_scsi_eh_wakeup, !17, !"trace_event_fields_scsi_eh_wakeup", i1 false, i1 false}
!264 = !{ptr @trace_event_type_funcs_scsi_eh_wakeup, !17, !"trace_event_type_funcs_scsi_eh_wakeup", i1 false, i1 false}
!265 = !{ptr @.str.155, !17, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @print_fmt_scsi_eh_wakeup, !17, !"print_fmt_scsi_eh_wakeup", i1 false, i1 false}
!267 = distinct !{null, !268, !"__warned", i1 false, i1 false}
!268 = !{!"../drivers/scsi/scsi.c", i32 420, i32 12}
!269 = !{ptr @.str.156, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.157, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @__param_str_scsi_logging_level, !84, !"__param_str_scsi_logging_level", i1 false, i1 false}
!272 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/scsi.c", i32 776, i32 2}
!274 = !{ptr @.str.159, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @init_scsi._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @init_scsi._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.161, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/scsi.c", i32 789, i32 2}
!279 = !{ptr @init_scsi._entry.160, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @init_scsi._entry_ptr.162, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{!"sp"}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{!"branch_weights", i32 2000, i32 1}
!292 = !{!"branch_weights", i32 1, i32 2000}
!293 = !{!"auto-init"}
!294 = !{i64 2156624262}
!295 = !{i64 2156637115}
