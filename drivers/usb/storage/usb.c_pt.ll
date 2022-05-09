; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/usb.c_pt.bc'
source_filename = "../drivers/usb/storage/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_stor_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_suspend\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_resume\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_reset_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_reset_resume\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_reset_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_reset_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_pre_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_pre_reset\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_pre_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_pre_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_pre_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_pre_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_post_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_post_reset\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_post_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_post_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_post_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_post_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fill_inquiry_response\22, \22a\22\09"
module asm "\09.weak\09__crc_fill_inquiry_response\09\09\09\09"
module asm "\09.long\09__crc_fill_inquiry_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fill_inquiry_response:\09\09\09\09\09"
module asm "\09.asciz \09\22fill_inquiry_response\22\09\09\09\09\09"
module asm "__kstrtabns_fill_inquiry_response:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_adjust_quirks\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_adjust_quirks\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_adjust_quirks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_adjust_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_adjust_quirks\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_adjust_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_probe1\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_probe1\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_probe1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_probe1:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_probe1\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_probe1:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_probe2\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_probe2\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_probe2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_probe2:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_probe2\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_probe2:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_disconnect\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }

@__UNIQUE_ID_author290 = internal constant [65 x i8] c"usb_storage.author=Matthew Dharm <mdharm-usb@one-eyed-alien.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [58 x i8] c"usb_storage.description=USB Mass Storage driver for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"usb_storage.file=drivers/usb/storage/usb-storage\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"usb_storage.license=GPL\00", section ".modinfo", align 1
@__param_str_delay_use = internal constant [22 x i8] c"usb_storage.delay_use\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@delay_use = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_delay_use = internal constant %struct.kernel_param { ptr @__param_str_delay_use, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @delay_use } }, section "__param", align 4
@__UNIQUE_ID_delay_usetype294 = internal constant [36 x i8] c"usb_storage.parmtype=delay_use:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_delay_use295 = internal constant [70 x i8] c"usb_storage.parm=delay_use:seconds to delay before using a new device\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [19 x i8] c"usb_storage.quirks\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_quirks = internal constant %struct.kparam_string { i32 128, ptr @quirks }, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype296 = internal constant [35 x i8] c"usb_storage.parmtype=quirks:string\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks297 = internal constant [73 x i8] c"usb_storage.parm=quirks:supplemental list of device IDs and their quirks\00", section ".modinfo", align 1
@__kstrtab_usb_stor_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_suspend to i32), ptr @__kstrtab_usb_stor_suspend, ptr @__kstrtabns_usb_stor_suspend }, section "___ksymtab_gpl+usb_stor_suspend", align 4
@__kstrtab_usb_stor_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_resume to i32), ptr @__kstrtab_usb_stor_resume, ptr @__kstrtabns_usb_stor_resume }, section "___ksymtab_gpl+usb_stor_resume", align 4
@__kstrtab_usb_stor_reset_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_reset_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_reset_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_reset_resume to i32), ptr @__kstrtab_usb_stor_reset_resume, ptr @__kstrtabns_usb_stor_reset_resume }, section "___ksymtab_gpl+usb_stor_reset_resume", align 4
@__kstrtab_usb_stor_pre_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_pre_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_pre_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_pre_reset to i32), ptr @__kstrtab_usb_stor_pre_reset, ptr @__kstrtabns_usb_stor_pre_reset }, section "___ksymtab_gpl+usb_stor_pre_reset", align 4
@__kstrtab_usb_stor_post_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_post_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_post_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_post_reset to i32), ptr @__kstrtab_usb_stor_post_reset, ptr @__kstrtabns_usb_stor_post_reset }, section "___ksymtab_gpl+usb_stor_post_reset", align 4
@__kstrtab_fill_inquiry_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_fill_inquiry_response = external dso_local constant [0 x i8], align 1
@__ksymtab_fill_inquiry_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fill_inquiry_response to i32), ptr @__kstrtab_fill_inquiry_response, ptr @__kstrtabns_fill_inquiry_response }, section "___ksymtab_gpl+fill_inquiry_response", align 4
@quirks = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@__kstrtab_usb_stor_adjust_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_adjust_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_adjust_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_adjust_quirks to i32), ptr @__kstrtab_usb_stor_adjust_quirks, ptr @__kstrtabns_usb_stor_adjust_quirks }, section "___ksymtab_gpl+usb_stor_adjust_quirks", align 4
@usb_stor_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"USB Mass Storage device detected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_stor_probe1\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/storage/usb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_stor_probe1._entry_ptr = internal global ptr @usb_stor_probe1._entry, section ".printk_index", align 4
@usb_stor_probe1._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 954, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate the scsi host\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_stor_probe1._entry_ptr.8 = internal global ptr @usb_stor_probe1._entry.5, section ".printk_index", align 4
@usb_stor_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&(us->dev_mutex)\00", [47 x i8] zeroinitializer }, align 32
@usb_stor_probe1.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&us->delay_wait\00", [16 x i8] zeroinitializer }, align 32
@usb_stor_probe1.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&us->scan_dwork)->work)\00", [52 x i8] zeroinitializer }, align 32
@usb_stor_probe1.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&us->scan_dwork)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"storage_probe() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_usb_stor_probe1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_probe1 = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_probe1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_probe1 to i32), ptr @__kstrtab_usb_stor_probe1, ptr @__kstrtabns_usb_stor_probe1 }, section "___ksymtab_gpl+usb_stor_probe1", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Transport: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Protocol: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-storage %s\00", [17 x i8] zeroinitializer }, align 32
@usb_stor_probe2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1059, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to add the scsi host\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_stor_probe2\00", [16 x i8] zeroinitializer }, align 32
@usb_stor_probe2._entry_ptr = internal global ptr @usb_stor_probe2._entry, section ".printk_index", align 4
@usb_stor_probe2.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 1, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_storage\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"waiting for device to settle before scanning\0A\00", [50 x i8] zeroinitializer }, align 32
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_usb_stor_probe2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_probe2 = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_probe2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_probe2 to i32), ptr @__kstrtab_usb_stor_probe2, ptr @__kstrtabns_usb_stor_probe2 }, section "___ksymtab_gpl+usb_stor_probe2", align 4
@__kstrtab_usb_stor_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_disconnect to i32), ptr @__kstrtab_usb_stor_disconnect, ptr @__kstrtabns_usb_stor_disconnect }, section "___ksymtab_gpl+usb_stor_disconnect", align 4
@__initcall__kmod_usb_storage__308_1159_usb_storage_driver_init6 = internal global ptr @usb_storage_driver_init, section ".initcall6.init", align 4
@usb_storage_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.57, ptr @storage_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @usb_storage_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 80 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_storage_driver_exit = internal global ptr @usb_storage_driver_exit, section ".exitcall.exit", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&us_interface_key[i]\00", [43 x i8] zeroinitializer }, align 32
@us_interface_key = internal global { [32 x %struct.lock_class_key], [64 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@usb_stor_scan_dwork.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_stor_scan_dwork\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"starting scan\0A\00", [17 x i8] zeroinitializer }, align 32
@usb_stor_scan_dwork.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scan complete\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Vendor: 0x%04x, Product: 0x%04x, Revision: 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Interface Subclass: 0x%02x, Protocol: 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I/O buffer allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device ignored\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_device_info\00", [16 x i8] zeroinitializer }, align 32
@get_device_info._entry_ptr = internal global ptr @get_device_info._entry, section ".printk_index", align 4
@get_device_info._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 623, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Quirks match for vid %04x pid %04x: %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@get_device_info._entry_ptr.36 = internal global ptr @get_device_info._entry.34, section ".printk_index", align 4
@get_device_info.msgs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"an unneeded SubClass entry\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"an unneeded Protocol entry\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unneeded SubClass and Protocol entries\00", [57 x i8] zeroinitializer }, align 32
@get_device_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 659, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [193 x i8], [63 x i8] } { [193 x i8] c"This device (%04x,%04x,%04x S %02x P %02x) has %s in unusual_devs.h (kernel %s)\0A   Please send a copy of this message to <linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@get_device_info._entry_ptr.43 = internal global ptr @get_device_info._entry.40, section ".printk_index", align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Control/Bulk\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Control/Bulk/Interrupt\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reduced Block Commands (RBC)\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8020i\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QIC-157\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8070i\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transparent SCSI\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Uniform Floppy Interface (UFI)\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"-- sending exit command to thread\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"-- calling extra_destructor()\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bulk endpoints not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interrupt endpoint not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-storage\00", [20 x i8] zeroinitializer }, align 32
@usb_stor_acquire_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 796, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to start control thread\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_stor_acquire_resources\00", [37 x i8] zeroinitializer }, align 32
@usb_stor_acquire_resources._entry_ptr = internal global ptr @usb_stor_acquire_resources._entry, section ".printk_index", align 4
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"*** thread sleeping\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"*** thread awakened\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-- exiting\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UNKNOWN data direction\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bad target number (%d:%llu)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad LUN (%d:%llu)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Faking INQUIRY command\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi command aborted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scsi cmd done, result=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_stor_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@usb_storage_usb_ids = external dso_local constant [0 x %struct.usb_device_id], align 4
@us_unusual_dev_list = internal constant { [349 x %struct.us_unusual_dev], [1392 x i8] } { [349 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.87, ptr @.str.88, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.90, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.91, ptr @.str.92, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.91, ptr @.str.93, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.91, ptr @.str.94, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.95, ptr @.str.96, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.97, ptr @.str.98, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.99, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.100, ptr @.str.101, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.102, ptr @.str.103, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.103, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.105, ptr @.str.106, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.105, ptr @.str.107, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.108, ptr @.str.109, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.111, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.112, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.113, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.114, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.115, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.116, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.117, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.118, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.119, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.120, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.121, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.122, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.110, ptr @.str.123, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.124, ptr @.str.125, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.126, ptr @.str.127, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.128, ptr @.str.129, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.130, ptr @.str.131, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.132, ptr @.str.133, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.134, ptr @.str.135, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.136, ptr @.str.137, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.136, ptr @.str.138, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.136, ptr @.str.139, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.136, ptr @.str.140, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.141, ptr @.str.142, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.144, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.145, ptr @.str.146, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.147, ptr @.str.148, i8 -1, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.149, ptr @.str.150, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.149, ptr @.str.151, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.152, ptr @.str.153, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.154, ptr @.str.155, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.156, ptr @.str.157, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.156, ptr @.str.157, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.158, ptr @.str.159, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.160, ptr @.str.161, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.158, ptr @.str.162, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.163, ptr @.str.164, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.165, ptr @.str.166, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.168, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.169, ptr @.str.170, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.170, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.172, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.173, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.174, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.168, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.168, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.175, ptr @.str.176, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.167, ptr @.str.177, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.178, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.179, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.180, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.181, ptr @.str.182, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.183, ptr @.str.184, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.186, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.187, ptr @.str.188, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.144, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.144, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.144, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.189, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.143, ptr @.str.189, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.190, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.191, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.192, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.193, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.194, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.195, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.196, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.197, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.198, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.199, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.200, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.200, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.200, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.201, ptr @.str.202, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.203, ptr @.str.204, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.205, ptr @.str.206, i8 -1, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.205, ptr @.str.207, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.208, ptr @.str.209, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.154, ptr @.str.210, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.211, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.212, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.213, ptr @.str.214, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.213, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.216, ptr @.str.217, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.218, ptr @.str.219, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.218, ptr @.str.219, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.218, ptr @.str.219, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.218, ptr @.str.219, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.218, ptr @.str.219, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.220, ptr @.str.221, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.222, ptr @.str.223, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.224, ptr @.str.225, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.224, ptr @.str.226, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.224, ptr @.str.227, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.228, ptr @.str.229, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.230, ptr @.str.231, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.232, ptr @.str.233, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.234, ptr @.str.235, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.234, ptr @.str.236, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.237, ptr @.str.236, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.237, ptr @.str.238, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.239, ptr @.str.240, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.239, ptr @.str.241, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.242, ptr @.str.243, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.244, ptr @.str.245, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.246, ptr @.str.247, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.248, ptr @.str.249, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.248, ptr @.str.250, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.248, ptr @.str.251, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.87, ptr @.str.88, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.252, ptr @.str.253, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.254, ptr @.str.255, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.252, ptr @.str.256, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.257, ptr @.str.258, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.259, ptr @.str.260, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.259, ptr @.str.261, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.262, ptr @.str.263, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.264, ptr @.str.265, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.266, ptr @.str.267, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.266, ptr @.str.268, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.269, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.270, ptr @.str.271, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.270, ptr @.str.271, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.270, ptr @.str.271, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.272, ptr @.str.273, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.274, ptr @.str.275, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.276, ptr @.str.277, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.278, ptr @.str.279, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.280, ptr @.str.281, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.280, ptr @.str.282, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.283, ptr @.str.284, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.285, ptr @.str.286, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.287, ptr @.str.288, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.289, ptr @.str.290, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.287, ptr @.str.291, i8 1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.292, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.293, ptr @.str.294, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.296, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.293, ptr @.str.297, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.298, ptr @.str.299, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.300, ptr @.str.301, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.302, ptr @.str.303, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.220, ptr @.str.221, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.305, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.306, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.307, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.307, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.308, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.309, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.309, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.310, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.310, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.310, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.311, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.312, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.313, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.314, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.315, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.304, ptr @.str.312, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.316, ptr @.str.317, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.316, ptr @.str.318, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.316, ptr @.str.319, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.320, ptr @.str.227, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.321, ptr @.str.321, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.322, ptr @.str.323, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.324, ptr @.str.325, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.326, ptr @.str.327, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.328, ptr @.str.329, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.328, ptr @.str.330, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.331, ptr @.str.332, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.333, ptr @.str.334, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.335, ptr @.str.336, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.337, ptr @.str.338, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.339, ptr @.str.129, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.337, ptr @.str.129, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.340, ptr @.str.341, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.342, ptr @.str.343, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.344, ptr @.str.345, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.346, ptr @.str.347, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.348, ptr @.str.349, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.350, ptr @.str.351, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.350, ptr @.str.352, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.350, ptr @.str.353, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.350, ptr @.str.354, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.350, ptr @.str.355, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.356, ptr @.str.357, i8 -1, i8 -1, ptr @usb_stor_ucr61s2b_init }, %struct.us_unusual_dev { ptr @.str.358, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.358, ptr @.str.359, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.360, ptr @.str.361, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.362, ptr @.str.363, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.364, ptr @.str.365, i8 -1, i8 -1, ptr @sierra_ms_init }, %struct.us_unusual_dev { ptr @.str.366, ptr @.str.367, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.221, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.239, ptr @.str.369, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.370, ptr @.str.371, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.372, ptr @.str.373, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.374, ptr @.str.375, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.376, ptr @.str.377, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.380, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.381, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.382, ptr @.str.383, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.384, ptr @.str.385, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.386, ptr @.str.387, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.388, ptr @.str.389, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.390, ptr @.str.391, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.392, ptr @.str.279, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.392, ptr @.str.279, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.392, ptr @.str.279, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.393, ptr @.str.394, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.395, ptr @.str.396, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.397, ptr @.str.398, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.399, ptr @.str.400, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.401, ptr @.str.402, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.403, ptr @.str.103, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.404, ptr @.str.405, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.406, ptr @.str.407, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.408, ptr @.str.409, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.410, ptr @.str.411, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.410, ptr @.str.412, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.413, ptr @.str.414, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.415, ptr @.str.416, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.130, ptr @.str.417, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.418, ptr @.str.419, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.418, ptr @.str.420, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.421, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.422, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.423, ptr @.str.424, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.425, ptr @.str.426, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.427, ptr @.str.428, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.171, ptr @.str.429, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.213, ptr @.str.430, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.213, ptr @.str.431, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.432, ptr @.str.433, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.316, ptr @.str.434, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.372, ptr @.str.435, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.436, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.380, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.380, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.437, ptr @.str.438, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.437, ptr @.str.438, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.439, ptr @.str.440, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.441, ptr @.str.442, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.378, ptr @.str.443, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.141, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.422, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.422, ptr @.str.215, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 80, ptr null }, %struct.us_unusual_dev zeroinitializer], [1392 x i8] zeroinitializer }, align 32
@for_dynamic_ids = internal constant { %struct.us_unusual_dev, [16 x i8] } { %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 80, ptr null }, [16 x i8] zeroinitializer }, align 32
@storage_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"storage_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Use Bulk-Only transport with the Transparent SCSI protocol for dynamic id: 0x%04x 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.74, i32 123, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UAS is ignored for this device, using usb-storage instead\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uas_use_uas_driver\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/storage/uas-detect.h\00", [63 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr = internal global ptr @uas_use_uas_driver._entry, section ".printk_index", align 4
@uas_use_uas_driver._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.74, i32 130, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"The driver for the USB controller %s does not support scatter-gather which is\0A\00", [49 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.77 = internal global ptr @uas_use_uas_driver._entry.75, section ".printk_index", align 4
@uas_use_uas_driver._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.74, i32 132, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"required by the UAS driver. Please try an other USB controller if you wish to use UAS.\0A\00", [40 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.80 = internal global ptr @uas_use_uas_driver._entry.78, section ".printk_index", align 4
@uas_use_uas_driver._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.73, ptr @.str.74, i32 139, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"USB controller %s does not support streams, which are required by the UAS driver.\0A\00", [45 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.83 = internal global ptr @uas_use_uas_driver._entry.81, section ".printk_index", align 4
@uas_use_uas_driver._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.73, ptr @.str.74, i32 141, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Please try an other USB controller if you wish to use UAS.\0A\00", [36 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.86 = internal global ptr @uas_use_uas_driver._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATMEL\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SND1 Storage\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VIA Technologies Inc.\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mitsumi multi cardreader\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CD-Writer+\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Personal Media Drive\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PhotoSmart R707\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Adaptec\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USBConnect 2000\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NEC USB UF000x\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB 2.0 Card Reader\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Buffalo\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DUB-P40G HDD\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Samsung Info. Systems America, Inc.\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MP3 Player\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TrekStor\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i.Beat 115 2.0\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i.Beat Joy 2.0\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GENERIC\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MP3 PLAYER\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Nokia\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Nokia 6288\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Nokia 3250\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"E70\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"E60\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N91\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N80\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"E61\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6131\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Nokia 6233\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6234\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5300\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"305\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"502\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Neuros Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB 2.0 HD 2.5\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USBest Technology\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB Mass Storage Device\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB 2.0\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Flash Disk\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mitac\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPS\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AMI\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Virtual Floppy\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"External USB 3.0\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Kyocera\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Finecam S3x\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Finecam S4\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Finecam S5\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONTAX SL300R T*\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Hitachi\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DVD-CAM DZ-MV100A Camcorder\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tekom Technologies, Inc\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"300_CAMERA\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NIKON\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NIKON DSC E2000\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBM RSA2\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Epson\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"875DC Storage\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"785EPX Storage\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iODD\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2531/2541\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fujifilm\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FinePix 1400Zoom\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ScanLogic\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SL11R-IDE\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Panasonic\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LS-120 Camera\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sharp CE-CW05\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CD-R/RW Drive\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMC-LCx Camera\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LEICA\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"D-LUX Camera\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Matshita\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LS-120\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Shuttle\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eUSCSI Bridge\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCM Microsystems Inc.\00", [42 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eUSB MMC Adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sony\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hifd\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eUSB ATA/ATAPI Adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eUSB CompactFlash Adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCM Microsystems\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"eUSB SCSI Adapter (Bus Powered)\00", [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CD-RW Device\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"YP-U3\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YP-CP3\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"YP-Z3\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kobian Mercury\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Binocam DCB-132\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Belkin\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB SCSI Adaptor\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Iomega\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB Clik! 40\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Linux\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"File-backed Storage Gadget\00", [37 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"400_CAMERA\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DSC-S30/S70/S75/505V/F505/F707/F717/P8\00", [57 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSC-T1/T5/H5\00", [19 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Memorystick NW-MS7\00", [45 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB Floppy Drive\00", [47 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memorystick MSAC-US1\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Handycam\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handycam HC-85\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memorystick MSC-U01N\00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PEG N760c Memorystick\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Memorystick MSC-U03\00", [44 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PEG Mass Storage\00", [47 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sony Corp.\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MicroVault Flash Drive\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAMSUNG\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SFD-321U [FW 0C]\00", [47 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Y-E Data\00", [23 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flashbuster-U\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Silicon Media R/W\00", [46 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"JetFlash\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TS1GJF2A/120\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital Camera EX-20 DSC\00", [39 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ZIP 100\00", [24 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Jaz USB Adapter\00", [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LaCie\00", [26 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DVD+-RW\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"External HDD\00", [19 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In-System\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PyroGate External CD-ROM Enclosure (FCD-523)\00", [51 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Apple\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iPod\00", [27 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Option N.V.\00", [20 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mass Storage\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Lexar\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB CF Reader\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Genesys Logic\00", [18 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB to IDE Optical\00", [45 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB to IDE Disk\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB to SATA\00", [20 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Vivitar\00", [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Vivicam 35Xx\00", [19 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEAC\00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Floppy Drive\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SigmaTel\00", [23 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USBMSC Audio Player\00", [44 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Prolific Technology, Inc.\00", [38 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Prolific Storage Gadget\00", [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mass Storage Device\00", [44 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Prolific Technology Inc.\00", [39 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ATAPI-6 Bridge Controller\00", [38 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Minolta\00", [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dimage F300\00", [20 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DIMAGE E223\00", [20 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Hagiwara\00", [23 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Flashgate\00", [22 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Thomson Multimedia Inc.\00", [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RCA RD1080 MP3 Player\00", [42 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Newer Technology\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uSCSI\00", [26 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RockChip\00", [23 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP3\00", [28 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTP\00", [28 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ROCK MP3\00", [23 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sandisk\00", [24 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ImageMate SDDR-05a\00", [45 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SanDisk Corporation\00", [44 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ImageMate CompactFlash USB\00", [37 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ImageMate SDDR-12\00", [46 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Freecom Technologies\00", [43 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FHD-Classic\00", [20 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Microtech\00", [22 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB-SCSI-DB25\00", [18 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB-SCSI-HD50\00", [18 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Datafab\00", [24 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"KECF-USB\00", [23 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Simple Tech/Datafab\00", [44 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CF+SM Reader\00", [19 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Casio\00", [26 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QV DigitalCamera\00", [47 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EX-N1 DigitalCamera\00", [44 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digimax 410\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Argosy\00", [25 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Storage\00", [24 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Castlewood Systems\00", [45 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB to SCSI cable\00", [46 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Grandtech\00", [22 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DC2MEGA\00", [24 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MagicPixel\00", [21 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FW_Omega2\00", [22 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PanDigital\00", [21 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Photo Frame\00", [20 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Xircom\00", [25 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PortGear USB-SCSI (Mac USB Dock)\00", [63 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PortGear USB to SCSI Converter\00", [33 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CITIZEN\00", [24 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"X1DE-USB\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIPTEK\00", [25 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Aiptek USB Keychain MP3 Player\00", [33 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Trumpion\00", [23 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"t33520 USB Flash Card Controller\00", [63 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Trumpion Microelectronics, Inc.\00", [32 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"33520 USB Digital Voice Recorder\00", [63 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MP3 player\00", [21 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Flash Drive FIT\00", [16 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Feiya\00", [26 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"5-in-1 Card Reader\00", [45 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMI\00", [28 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SM3350 UFS-to-USB-Mass-Storage bridge\00", [58 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SD/SDHC Card Reader\00", [44 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Pentax\00", [25 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Optio 2/3/400\00", [18 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ZyXEL\00", [26 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"G-220F USB-WLAN Install\00", [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SiteCom\00", [24 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WL-117 USB-WLAN Install\00", [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Option\00", [25 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 0401 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 0431 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 0451 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 0452 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 0461 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 033x SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 070x SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 1505 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 1509 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 1515 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GI 1215 SD-Card\00", [16 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Seagate\00", [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Portable HDD\00", [19 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FreeAgent Pro\00", [18 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"External\00", [23 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maxtor\00", [25 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Medion\00", [25 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MD 7425\00", [24 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Jenoptik\00", [23 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JD 5200 z3\00", [21 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Macpower Technology Co.LTD.\00", [36 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB 2.0 3.5\22 DEVICE\00", [44 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Netac\00", [26 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB-CF-Card\00", [20 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB Flash Disk\00", [17 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WINWARD\00", [24 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Music Disk\00", [21 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PNP_MP3\00", [24 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PNP_MP3 PLAYER\00", [17 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cowon Systems\00", [18 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iAUDIO M5\00", [22 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Solid state disk\00", [47 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ours Technology\00", [16 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Typhoon\00", [24 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"My DJ 1820\00", [21 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Oracom Co., Ltd\00", [16 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ORC-200M\00", [23 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"C-MEX\00", [26 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A-VOX\00", [26 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VTech\00", [26 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Kidizoom\00", [23 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Research In Motion\00", [45 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BlackBerry Bold 9000\00", [43 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sony Ericsson\00", [18 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"V800-Vodafone 802\00", [46 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MD400\00", [26 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"P990i\00", [26 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"M600i\00", [26 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"P1i\00", [28 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Desknote\00", [23 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UCR-61S2B\00", [22 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Western Digital\00", [16 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"My Passport HDD\00", [16 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Actions Semiconductor\00", [42 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mtp device\00", [21 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D-Link\00", [25 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB Mass Storage\00", [47 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sierra Wireless\00", [16 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB MMC Storage\00", [16 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Digitech HMG\00", [19 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DigiTech Mass Storage\00", [42 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HUAWEI MOBILE\00", [18 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dimage Z10\00", [21 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SWISSBIT\00", [23 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Black Silver\00", [19 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Initio Corporation\00", [45 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INIC-3619\00", [22 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Kingston\00", [23 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DT 101 G2\00", [22 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Super Top\00", [22 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IDE DEVICE\00", [21 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"JMicron\00", [24 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB to ATA/ATAPI Bridge\00", [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JMS567\00", [25 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JMS56x\00", [25 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Entrega Technologies\00", [43 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB to SCSI Converter\00", [42 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Teac\00", [27 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HD-35PUK-B\00", [21 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ASMedia\00", [24 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AS2105\00", [25 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Yarvik\00", [25 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PMP400\00", [25 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ariston Technologies\00", [43 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iConnect USB to SCSI adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BUILDWIN\00", [23 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Amazon\00", [25 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Kindle\00", [25 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ZTE,Incorporated\00", [47 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ZTE WCDMA Technologies MSM\00", [37 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Corsair\00", [24 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Padlock v2\00", [21 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Grain-media Technology Corp.\00", [35 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB3.0 Device GM12U320\00", [41 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TrekStor GmbH & Co. KG\00", [41 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DataStation maxi g.u\00", [43 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Coby Electronics\00", [47 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Double-H Technology\00", [44 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB to SCSI Intelligent Cable\00", [34 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VIA Labs, Inc.\00", [17 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VL817 SATA Bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ST\00", [29 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2A\00", [29 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Motorola\00", [23 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RAZR V3x\00", [23 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSnc.\00", [26 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HS200\00", [26 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DJI\00", [28 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CineSSD\00", [24 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mio DigiWalker USB Sync\00", [40 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iRiver\00", [25 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MP3 T10\00", [24 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"P7K\00", [28 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Micro Mini 1GB\00", [17 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SimpleTech\00", [21 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Keil Software, Inc.\00", [44 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"V2M MotherBoard\00", [16 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DataStor\00", [23 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB4500 FW1.04\00", [17 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TGE\00", [28 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital MP3 Audio Player\00", [39 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PSZ-HA*\00", [24 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"2Big Quadra USB3\00", [47 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Rugged USB3-FW\00", [17 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Apricorn\00", [23 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.434 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Expansion Desk\00", [17 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INIC-3069\00", [22 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JMS539\00", [25 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PNY\00", [28 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Pro Elite SSD\00", [18 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIA\00", [28 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VL711\00", [26 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Norelsys\00", [23 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NS1068X\00", [24 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JMS566\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.444 = internal global [24 x i64] [i64 22, i64 8, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 114, i64 115, i64 116, i64 117, i64 119, i64 121]
@__sancov_gen_cov_switch_values.445 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 80]
@__sancov_gen_cov_switch_values.446 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.447 = internal global [4 x i64] [i64 2, i64 16, i64 19479, i64 49675]
@__sancov_gen_cov_switch_values.448 = internal global [4 x i64] [i64 2, i64 16, i64 1617, i64 43605]
@___asan_gen_.449 = private unnamed_addr constant [10 x i8] c"delay_use\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 70, i32 21 }
@___asan_gen_.452 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 74, i32 13 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 946, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 954, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 964, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 968, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 969, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 992, i32 19 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1009, i32 19 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1010, i32 19 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1054, i32 49 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1058, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1067, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [19 x i8] c"usb_storage_driver\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1145, i32 26 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 155, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"us_interface_key\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 139, i32 30 }
@___asan_gen_.542 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 87, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 899, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 917, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 446, i32 19 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 450, i32 19 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 465, i32 20 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 608, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 620, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant [5 x i8] c"msgs\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 632, i32 22 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 633, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 634, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 635, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 646, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 670, i32 24 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 677, i32 24 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 684, i32 24 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 696, i32 23 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 701, i32 23 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 707, i32 23 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 713, i32 23 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 719, i32 23 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 724, i32 23 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 812, i32 19 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 819, i32 20 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 747, i32 20 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 753, i32 20 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 793, i32 7 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 795, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 305, i32 20 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 309, i32 20 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 322, i32 21 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 339, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 349, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 356, i32 21 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 372, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 390, i32 21 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 418, i32 21 }
@___asan_gen_.680 = private unnamed_addr constant [23 x i8] c"usb_stor_host_template\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1092, i32 34 }
@___asan_gen_.683 = private unnamed_addr constant [20 x i8] c"us_unusual_dev_list\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 124, i32 36 }
@___asan_gen_.686 = private unnamed_addr constant [16 x i8] c"for_dynamic_ids\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 129, i32 36 }
@___asan_gen_.693 = private constant [29 x i8] c"../drivers/usb/storage/usb.c\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1130, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 122, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 128, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 131, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 137, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [36 x i8] c"../drivers/usb/storage/uas-detect.h\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.729, i32 140, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 56, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 63, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 69, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 75, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 85, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 90, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 101, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 108, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 119, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 126, i32 1 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 133, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 139, i32 1 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 146, i32 1 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 153, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 162, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 169, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 176, i32 1 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 183, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 193, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 203, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 210, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 217, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 224, i32 1 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 231, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 238, i32 1 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 245, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 252, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 270, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 281, i32 1 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 291, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 304, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 316, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 323, i32 1 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 330, i32 1 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 336, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 342, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 348, i32 1 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 358, i32 1 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 368, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 378, i32 1 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 385, i32 1 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 395, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 404, i32 1 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 414, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 423, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 434, i32 1 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 451, i32 1 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 460, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 466, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 473, i32 1 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 483, i32 1 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 488, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 503, i32 1 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 516, i32 1 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 522, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 527, i32 1 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 544, i32 1 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 550, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 556, i32 1 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 563, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 570, i32 1 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 581, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 588, i32 1 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 599, i32 1 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 606, i32 1 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 642, i32 1 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 658, i32 1 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 668, i32 1 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 676, i32 1 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 683, i32 1 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 689, i32 1 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 696, i32 1 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 703, i32 1 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 709, i32 1 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 716, i32 1 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 722, i32 1 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 729, i32 1 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 750, i32 1 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 757, i32 1 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 764, i32 1 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 775, i32 1 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 781, i32 1 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 788, i32 1 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 800, i32 1 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 806, i32 1 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 813, i32 1 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 820, i32 1 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 831, i32 1 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 844, i32 1 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 886, i32 1 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 893, i32 1 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 911, i32 1 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 917, i32 1 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 924, i32 1 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 934, i32 1 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 940, i32 1 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 946, i32 1 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 953, i32 1 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 960, i32 1 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 971, i32 1 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 978, i32 1 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 985, i32 1 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 991, i32 1 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 996, i32 1 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1002, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1008, i32 1 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1015, i32 1 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1027, i32 1 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1044, i32 1 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1058, i32 1 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1064, i32 1 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1070, i32 1 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1077, i32 1 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1083, i32 1 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1089, i32 1 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1110, i32 1 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1120, i32 1 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1138, i32 1 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1145, i32 1 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1151, i32 1 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1158, i32 1 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1179, i32 1 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1192, i32 1 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1203, i32 1 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1214, i32 1 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1220, i32 1 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1226, i32 1 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1233, i32 1 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1243, i32 1 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1255, i32 1 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1265, i32 1 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1272, i32 1 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1278, i32 1 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1285, i32 1 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1297, i32 1 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1308, i32 1 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1322, i32 1 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1332, i32 1 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1338, i32 1 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1363, i32 1 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1375, i32 1 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1381, i32 1 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1393, i32 1 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1399, i32 1 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1411, i32 1 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1429, i32 1 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1435, i32 1 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1441, i32 1 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1447, i32 1 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1453, i32 1 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1466, i32 1 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1472, i32 1 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1479, i32 1 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1485, i32 1 }
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1495, i32 1 }
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1502, i32 1 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1513, i32 1 }
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1519, i32 1 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1531, i32 1 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1541, i32 1 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1552, i32 1 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1559, i32 1 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1566, i32 1 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1573, i32 1 }
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1583, i32 1 }
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1600, i32 1 }
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1612, i32 1 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1623, i32 1 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1630, i32 1 }
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1637, i32 1 }
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1644, i32 1 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1651, i32 1 }
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1661, i32 1 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1668, i32 1 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1675, i32 1 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1688, i32 1 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1694, i32 1 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1701, i32 1 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1710, i32 1 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1720, i32 1 }
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1731, i32 1 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1742, i32 1 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 1752, i32 1 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2084, i32 1 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2091, i32 1 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2105, i32 1 }
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2112, i32 1 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2119, i32 1 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2126, i32 1 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2133, i32 1 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2164, i32 1 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2173, i32 1 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2183, i32 1 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2190, i32 1 }
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2197, i32 1 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2203, i32 1 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2215, i32 1 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2237, i32 1 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2251, i32 1 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2261, i32 1 }
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2273, i32 1 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2284, i32 1 }
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2291, i32 1 }
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2298, i32 1 }
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2308, i32 1 }
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2314, i32 1 }
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2324, i32 1 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2335, i32 1 }
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2342, i32 1 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2349, i32 1 }
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2359, i32 1 }
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2373, i32 1 }
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2380, i32 1 }
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2390, i32 1 }
@___asan_gen_.1738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2398, i32 1 }
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2408, i32 1 }
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2415, i32 1 }
@___asan_gen_.1755 = private unnamed_addr constant [38 x i8] c"../drivers/usb/storage/unusual_devs.h\00", align 1
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1755, i32 2422, i32 1 }
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 32, i32 1 }
@___asan_gen_.1762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 42, i32 1 }
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 49, i32 1 }
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 59, i32 1 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 66, i32 1 }
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 73, i32 1 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 80, i32 1 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 101, i32 1 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 115, i32 1 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 122, i32 1 }
@___asan_gen_.1799 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1800 = private unnamed_addr constant [37 x i8] c"../drivers/usb/storage/unusual_uas.h\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1800, i32 132, i32 1 }
@llvm.compiler.used = appending global [486 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_delay_use295, ptr @__UNIQUE_ID_delay_usetype294, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_quirks297, ptr @__UNIQUE_ID_quirkstype296, ptr @__exitcall_usb_storage_driver_exit, ptr @__initcall__kmod_usb_storage__308_1159_usb_storage_driver_init6, ptr @__ksymtab_fill_inquiry_response, ptr @__ksymtab_usb_stor_adjust_quirks, ptr @__ksymtab_usb_stor_disconnect, ptr @__ksymtab_usb_stor_post_reset, ptr @__ksymtab_usb_stor_pre_reset, ptr @__ksymtab_usb_stor_probe1, ptr @__ksymtab_usb_stor_probe2, ptr @__ksymtab_usb_stor_reset_resume, ptr @__ksymtab_usb_stor_resume, ptr @__ksymtab_usb_stor_suspend, ptr @__param_delay_use, ptr @__param_quirks, ptr @get_device_info._entry, ptr @get_device_info._entry.34, ptr @get_device_info._entry.40, ptr @get_device_info._entry_ptr, ptr @get_device_info._entry_ptr.36, ptr @get_device_info._entry_ptr.43, ptr @uas_use_uas_driver._entry, ptr @uas_use_uas_driver._entry.75, ptr @uas_use_uas_driver._entry.78, ptr @uas_use_uas_driver._entry.81, ptr @uas_use_uas_driver._entry.84, ptr @uas_use_uas_driver._entry_ptr, ptr @uas_use_uas_driver._entry_ptr.77, ptr @uas_use_uas_driver._entry_ptr.80, ptr @uas_use_uas_driver._entry_ptr.83, ptr @uas_use_uas_driver._entry_ptr.86, ptr @usb_stor_acquire_resources._entry, ptr @usb_stor_acquire_resources._entry_ptr, ptr @usb_stor_probe1._entry, ptr @usb_stor_probe1._entry.5, ptr @usb_stor_probe1._entry_ptr, ptr @usb_stor_probe1._entry_ptr.8, ptr @usb_stor_probe2._entry, ptr @usb_stor_probe2._entry_ptr, ptr @usb_storage_driver_exit, ptr @delay_use, ptr @quirks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @usb_stor_probe1.__key, ptr @.str.9, ptr @usb_stor_probe1.__key.10, ptr @.str.11, ptr @usb_stor_probe1.__key.12, ptr @.str.13, ptr @usb_stor_probe1.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @usb_storage_driver, ptr @.str.24, ptr @us_interface_key, ptr @init_completion.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @get_device_info.msgs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @usb_stor_host_template, ptr @us_unusual_dev_list, ptr @for_dynamic_ids, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443], section "llvm.metadata"
@0 = internal global [451 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe1.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_probe2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_storage_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us_interface_key to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_info._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_info.msgs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 193, i32 256, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_acquire_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us_unusual_dev_list to i32), i32 5584, i32 6976, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @for_dynamic_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_suspend(ptr nocapture noundef readonly %iface, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %suspend_resume_hook = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %suspend_resume_hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_resume_hook, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %1, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_resume(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %suspend_resume_hook = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %suspend_resume_hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_resume_hook, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %1, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_reset_resume(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_stor_report_bus_reset(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_report_bus_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_pre_reset(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_post_reset(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_stor_report_bus_reset(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fill_inquiry_response(ptr nocapture noundef readonly %us, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %data_len)
  %cmp = icmp ult i32 %data_len, 36
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %0 = call ptr @memset(ptr %add.ptr, i32 32, i32 28)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %4 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pusb_dev, align 4
  %bcdDevice2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 16, i32 9
  %6 = ptrtoint ptr %bcdDevice2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bcdDevice2, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %unusual_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 3
  %9 = ptrtoint ptr %unusual_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unusual_dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call = tail call i32 @strlen(ptr noundef %12) #13
  %13 = tail call i32 @llvm.smin.i32(i32 %call, i32 8)
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %12, i32 %13)
  %15 = ptrtoint ptr %unusual_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unusual_dev, align 4
  %productName = getelementptr inbounds %struct.us_unusual_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %productName to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %productName, align 4
  %call9 = tail call i32 @strlen(ptr noundef %18) #13
  %add.ptr10 = getelementptr i8, ptr %data, i32 16
  %19 = tail call i32 @llvm.smin.i32(i32 %call9, i32 16)
  %20 = call ptr @memcpy(ptr %add.ptr10, ptr %18, i32 %19)
  %21 = lshr i16 %8, 12
  %22 = trunc i16 %21 to i8
  %conv22 = or i8 %22, 48
  %arrayidx23 = getelementptr i8, ptr %data, i32 32
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22, ptr %arrayidx23, align 1
  %24 = lshr i16 %8, 8
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 15
  %conv28 = or i8 %26, 48
  %arrayidx29 = getelementptr i8, ptr %data, i32 33
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv28, ptr %arrayidx29, align 1
  %28 = trunc i16 %8 to i8
  %29 = lshr i8 %28, 4
  %conv34 = or i8 %29, 48
  %arrayidx35 = getelementptr i8, ptr %data, i32 34
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv34, ptr %arrayidx35, align 1
  %31 = and i8 %28, 15
  %conv39 = or i8 %31, 48
  %arrayidx40 = getelementptr i8, ptr %data, i32 35
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv39, ptr %arrayidx40, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end.if.end41_crit_edge
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %33 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %srb, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %data, i32 noundef %data_len, ptr noundef %34) #10
  br label %return

return:                                           ; preds = %if.end41, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_adjust_quirks(ptr nocapture noundef readonly %udev, ptr nocapture noundef %fflags) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #10
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 7
  %0 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idVendor, align 8
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @quirks, ptr %p, align 4
  %5 = load i8, ptr @quirks, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not109 = icmp eq i8 %5, 0
  br i1 %tobool.not109, label %entry.while.end23_crit_edge, label %while.body.lr.ph

entry.while.end23_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end23

while.body.lr.ph:                                 ; preds = %entry
  %6 = tail call i16 @llvm.bswap.i16(i16 %3)
  %7 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %7 to i32
  %conv7 = zext i16 %6 to i32
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ @quirks, %while.body.lr.ph ], [ %25, %while.end.while.body_crit_edge ]
  %call = call i32 @simple_strtoul(ptr noundef %8, ptr noundef nonnull %p, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp = icmp eq i32 %call, %conv
  br i1 %cmp, label %land.lhs.true, label %while.body.while.cond15.preheader_crit_edge

while.body.while.cond15.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond15.preheader

land.lhs.true:                                    ; preds = %while.body
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %12)
  %cmp4 = icmp eq i8 %12, 58
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.while.cond15.preheader_crit_edge

land.lhs.true.while.cond15.preheader_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond15.preheader

land.lhs.true6:                                   ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %10, i32 1
  %call8 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %p, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %conv7)
  %cmp9 = icmp eq i32 %call8, %conv7
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true6.while.cond15.preheader_crit_edge

land.lhs.true6.while.cond15.preheader_crit_edge:  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond15.preheader

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %16)
  %cmp13 = icmp eq i8 %16, 58
  br i1 %cmp13, label %land.lhs.true11.while.end23_crit_edge, label %land.lhs.true11.while.cond15.preheader_crit_edge

land.lhs.true11.while.cond15.preheader_crit_edge: ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond15.preheader

land.lhs.true11.while.end23_crit_edge:            ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end23

while.cond15.preheader:                           ; preds = %land.lhs.true11.while.cond15.preheader_crit_edge, %land.lhs.true6.while.cond15.preheader_crit_edge, %land.lhs.true.while.cond15.preheader_crit_edge, %while.body.while.cond15.preheader_crit_edge
  br label %while.cond15

while.cond15:                                     ; preds = %while.body17.while.cond15_crit_edge, %while.cond15.preheader
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %while.cond15.while.end_crit_edge, label %while.body17

while.cond15.while.end_crit_edge:                 ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body17:                                     ; preds = %while.cond15
  %incdec.ptr = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr, ptr %p, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %18, align 1
  %cmp19 = icmp eq i8 %23, 44
  br i1 %cmp19, label %while.body17.while.end_crit_edge, label %while.body17.while.cond15_crit_edge

while.body17.while.cond15_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond15

while.body17.while.end_crit_edge:                 ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body17.while.end_crit_edge, %while.cond15.while.end_crit_edge
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %while.end.while.end23_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.while.end23_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end23

while.end23:                                      ; preds = %while.end.while.end23_crit_edge, %land.lhs.true11.while.end23_crit_edge, %entry.while.end23_crit_edge
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not = icmp eq i8 %31, 0
  br i1 %tobool24.not, label %while.end23.cleanup_crit_edge, label %while.end23.while.cond27_crit_edge

while.end23.while.cond27_crit_edge:               ; preds = %while.end23
  br label %while.cond27

while.end23.cleanup_crit_edge:                    ; preds = %while.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond27:                                     ; preds = %while.cond27.backedge, %while.end23.while.cond27_crit_edge
  %f.0 = phi i32 [ %f.0.be, %while.cond27.backedge ], [ 0, %while.end23.while.cond27_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 4
  %incdec.ptr28 = getelementptr i8, ptr %33, i32 1
  store ptr %incdec.ptr28, ptr %p, align 4
  %34 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr28, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %while.body34 [
    i8 0, label %while.cond27.while.end79_crit_edge
    i8 44, label %while.cond27.while.end79_crit_edge110
  ]

while.cond27.while.end79_crit_edge110:            ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end79

while.cond27.while.end79_crit_edge:               ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end79

while.body34:                                     ; preds = %while.cond27
  %37 = or i8 %35, 32
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.444)
  switch i8 %37, label %while.body34.while.cond27.backedge_crit_edge [
    i8 97, label %sw.bb
    i8 98, label %sw.bb37
    i8 99, label %sw.bb39
    i8 100, label %sw.bb41
    i8 101, label %sw.bb43
    i8 102, label %sw.bb45
    i8 103, label %sw.bb47
    i8 104, label %sw.bb49
    i8 105, label %sw.bb51
    i8 106, label %sw.bb53
    i8 107, label %sw.bb55
    i8 108, label %sw.bb57
    i8 109, label %sw.bb59
    i8 110, label %sw.bb61
    i8 111, label %sw.bb63
    i8 112, label %sw.bb65
    i8 114, label %sw.bb67
    i8 115, label %sw.bb69
    i8 116, label %sw.bb71
    i8 117, label %sw.bb73
    i8 119, label %sw.bb75
    i8 121, label %sw.bb77
  ]

while.body34.while.cond27.backedge_crit_edge:     ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond27.backedge

while.cond27.backedge:                            ; preds = %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb, %while.body34.while.cond27.backedge_crit_edge
  %f.0.be = phi i32 [ %f.0, %while.body34.while.cond27.backedge_crit_edge ], [ %or78, %sw.bb77 ], [ %or76, %sw.bb75 ], [ %or74, %sw.bb73 ], [ %or72, %sw.bb71 ], [ %or70, %sw.bb69 ], [ %or68, %sw.bb67 ], [ %or66, %sw.bb65 ], [ %or64, %sw.bb63 ], [ %or62, %sw.bb61 ], [ %or60, %sw.bb59 ], [ %or58, %sw.bb57 ], [ %or56, %sw.bb55 ], [ %or54, %sw.bb53 ], [ %or52, %sw.bb51 ], [ %or50, %sw.bb49 ], [ %or48, %sw.bb47 ], [ %or46, %sw.bb45 ], [ %or44, %sw.bb43 ], [ %or42, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or36, %sw.bb ]
  br label %while.cond27

sw.bb:                                            ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or36 = or i32 %f.0, 32768
  br label %while.cond27.backedge

sw.bb37:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or38 = or i32 %f.0, 131072
  br label %while.cond27.backedge

sw.bb39:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or40 = or i32 %f.0, 16
  br label %while.cond27.backedge

sw.bb41:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or42 = or i32 %f.0, 262144
  br label %while.cond27.backedge

sw.bb43:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or44 = or i32 %f.0, 524288
  br label %while.cond27.backedge

sw.bb45:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or46 = or i32 %f.0, 67108864
  br label %while.cond27.backedge

sw.bb47:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or48 = or i32 %f.0, 134217728
  br label %while.cond27.backedge

sw.bb49:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or50 = or i32 %f.0, 4096
  br label %while.cond27.backedge

sw.bb51:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or52 = or i32 %f.0, 2048
  br label %while.cond27.backedge

sw.bb53:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or54 = or i32 %f.0, 268435456
  br label %while.cond27.backedge

sw.bb55:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or56 = or i32 %f.0, 1073741824
  br label %while.cond27.backedge

sw.bb57:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or58 = or i32 %f.0, 128
  br label %while.cond27.backedge

sw.bb59:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or60 = or i32 %f.0, 1024
  br label %while.cond27.backedge

sw.bb61:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or62 = or i32 %f.0, 1048576
  br label %while.cond27.backedge

sw.bb63:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or64 = or i32 %f.0, 65536
  br label %while.cond27.backedge

sw.bb65:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or66 = or i32 %f.0, 2097152
  br label %while.cond27.backedge

sw.bb67:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or68 = or i32 %f.0, 32
  br label %while.cond27.backedge

sw.bb69:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or70 = or i32 %f.0, 1
  br label %while.cond27.backedge

sw.bb71:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or72 = or i32 %f.0, 33554432
  br label %while.cond27.backedge

sw.bb73:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or74 = or i32 %f.0, 8388608
  br label %while.cond27.backedge

sw.bb75:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or76 = or i32 %f.0, 512
  br label %while.cond27.backedge

sw.bb77:                                          ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %or78 = or i32 %f.0, 536870912
  br label %while.cond27.backedge

while.end79:                                      ; preds = %while.cond27.while.end79_crit_edge, %while.cond27.while.end79_crit_edge110
  %39 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fflags, align 4
  %and = and i32 %40, -1052745394
  %or80 = or i32 %and, %f.0
  store i32 %or80, ptr %fflags, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end79, %while.end23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_probe1(ptr nocapture noundef writeonly %pus, ptr noundef %intf, ptr nocapture noundef readonly %id, ptr noundef %unusual_dev, ptr noundef %sht) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #14
  %call = tail call ptr @scsi_host_alloc(ptr noundef %sht, i32 noundef 636) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 16, ptr %max_cmd_len, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i.i, align 8
  %bus.i = getelementptr i8, ptr %2, i32 -64
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %sg_tablesize.i = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_tablesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = trunc i32 %6 to i16
  %conv = select i1 %tobool.not.i, i16 128, i16 %7
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %8 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %sg_tablesize, align 2
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %9 = ptrtoint ptr %pus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hostdata.i, ptr %pus, align 4
  tail call void @__mutex_init(ptr noundef %hostdata.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @usb_stor_probe1.__key) #10
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  %actconfig.i = getelementptr i8, ptr %11, i32 956
  %12 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %actconfig.i, align 4
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp30.not.i = icmp eq i8 %15, 0
  br i1 %cmp30.not.i, label %if.end.do.body.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_config, ptr %13, i32 0, i32 3, i32 %i.031.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %17, %intf
  br i1 %cmp2.i, label %for.body.i.do.body.i_crit_edge, label %for.inc.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.body11.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.body11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i

do.body.i:                                        ; preds = %for.body.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.do.body.i_crit_edge ], [ %i.031.i, %for.body.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp7.i = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp7.i, label %do.body.i.do.body11.i_crit_edge, label %us_set_lock_class.exit, !prof !815

do.body.i.do.body11.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body.i.do.body11.i_crit_edge, %for.inc.i.do.body11.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/storage/usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #10, !srcloc !816
  unreachable

us_set_lock_class.exit:                           ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %arrayidx18.i = getelementptr [32 x %struct.lock_class_key], ptr @us_interface_key, i32 0, i32 %i.0.lcssa.i
  %wait_type_inner.i = getelementptr inbounds %struct.mutex, ptr %hostdata.i, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.24, ptr noundef %arrayidx18.i, i32 noundef 0, i8 noundef zeroext %19, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %cmnd_ready = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4
  %20 = ptrtoint ptr %cmnd_ready to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cmnd_ready, align 4
  %wait.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  %notify = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 5, i32 2
  %21 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %notify, align 4
  %wait.i69 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 5, i32 3
  tail call void @__init_swait_queue_head(ptr noundef %wait.i69, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  %delay_wait = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %delay_wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @usb_stor_probe1.__key.10) #10
  %scan_dwork = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 35
  tail call void @__init_work(ptr noundef %scan_dwork, i32 noundef 0) #10
  %22 = ptrtoint ptr %scan_dwork to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %scan_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 10
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @usb_stor_probe1.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry22 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 36
  %23 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 2
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 6
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @usb_stor_scan_dwork, ptr %func, align 4
  %timer = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 42
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @usb_stor_probe1.__key.14) #10
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -128
  %pusb_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 1, i32 4
  %28 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i, ptr %pusb_dev.i, align 4
  %pusb_intf.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 1, i32 4, i32 1
  %29 = ptrtoint ptr %pusb_intf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %intf, ptr %pusb_intf.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %30 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterfaceNumber.i, align 2
  %ifnum.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 17
  %34 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ifnum.i, align 1
  %idVendor.i = getelementptr i8, ptr %27, i32 936
  %35 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %idVendor.i, align 8
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #10
  %conv.i71 = zext i16 %37 to i32
  %idProduct.i = getelementptr i8, ptr %27, i32 938
  %38 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  %conv4.i = zext i16 %40 to i32
  %bcdDevice.i = getelementptr i8, ptr %27, i32 940
  %41 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bcdDevice.i, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  %conv7.i = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.29, i32 noundef %conv.i71, i32 noundef %conv4.i, i32 noundef %conv7.i) #10
  %44 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bInterfaceSubClass.i, align 2
  %conv10.i = zext i8 %47 to i32
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 7
  %48 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bInterfaceProtocol.i, align 1
  %conv13.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.30, i32 noundef %conv10.i, i32 noundef %conv13.i) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %hostdata.i, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 8) #15
  %cr.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %cr.i, align 4
  %tobool.not.i72 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i72, label %us_set_lock_class.exit.BadDevice_crit_edge, label %if.end.i

us_set_lock_class.exit.BadDevice_crit_edge:       ; preds = %us_set_lock_class.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %BadDevice

if.end.i:                                         ; preds = %us_set_lock_class.exit
  %53 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pusb_dev.i, align 4
  %iobuf_dma.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 2
  %call17.i = tail call ptr @usb_alloc_coherent(ptr noundef %54, i32 noundef 64, i32 noundef 3264, ptr noundef %iobuf_dma.i) #10
  %iobuf.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 1
  %55 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call17.i, ptr %iobuf.i, align 4
  %tobool19.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end36

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.31) #10
  br label %BadDevice

if.end36:                                         ; preds = %if.end.i
  %56 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pusb_dev.i, align 4
  %58 = ptrtoint ptr %pusb_intf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pusb_intf.i, align 4
  %cur_altsetting.i75 = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %cur_altsetting.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur_altsetting.i75, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  %unusual_dev3.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %62 = ptrtoint ptr %unusual_dev3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %unusual_dev, ptr %unusual_dev3.i, align 4
  %useProtocol.i = getelementptr inbounds %struct.us_unusual_dev, ptr %unusual_dev, i32 0, i32 2
  %63 = ptrtoint ptr %useProtocol.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %useProtocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp.i = icmp eq i8 %64, -1
  br i1 %cmp.i, label %cond.true.i, label %if.end36.cond.end.i_crit_edge

if.end36.cond.end.i_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %bInterfaceSubClass.i76 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 6
  %65 = ptrtoint ptr %bInterfaceSubClass.i76 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bInterfaceSubClass.i76, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end36.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %66, %cond.true.i ], [ %64, %if.end36.cond.end.i_crit_edge ]
  %subclass.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 1, i32 1
  %67 = ptrtoint ptr %subclass.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %cond.in.i, ptr %subclass.i, align 4
  %useTransport.i = getelementptr inbounds %struct.us_unusual_dev, ptr %unusual_dev, i32 0, i32 3
  %68 = ptrtoint ptr %useTransport.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %useTransport.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp10.i = icmp eq i8 %69, -1
  br i1 %cmp10.i, label %cond.true12.i, label %cond.end.i.cond.end17.i_crit_edge

cond.end.i.cond.end17.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.true12.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bInterfaceProtocol.i77 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 7
  %70 = ptrtoint ptr %bInterfaceProtocol.i77 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bInterfaceProtocol.i77, align 1
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true12.i, %cond.end.i.cond.end17.i_crit_edge
  %cond18.in.i = phi i8 [ %71, %cond.true12.i ], [ %69, %cond.end.i.cond.end17.i_crit_edge ]
  %protocol.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 15
  %72 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %cond18.in.i, ptr %protocol.i, align 1
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %73 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %driver_info.i, align 4
  %fflags.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 1, i32 4, i32 2
  %75 = ptrtoint ptr %fflags.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %fflags.i, align 4
  tail call void @usb_stor_adjust_quirks(ptr noundef %57, ptr noundef %fflags.i) #10
  %76 = ptrtoint ptr %fflags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fflags.i, align 4
  %and.i = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i78 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i78, label %if.end.i79, label %get_device_info.exit

if.end.i79:                                       ; preds = %cond.end17.i
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 4
  %78 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp23.not.i = icmp eq i32 %79, 3
  br i1 %cmp23.not.i, label %if.end.i79.if.end28.i_crit_edge, label %if.then25.i

if.end.i79.if.end28.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  %and27.i = and i32 %77, -257
  %80 = ptrtoint ptr %fflags.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and27.i, ptr %fflags.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end.i79.if.end28.i_crit_edge
  %81 = phi i32 [ %and27.i, %if.then25.i ], [ %77, %if.end.i79.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool30.not.i = icmp eq i32 %81, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end39.i_crit_edge, label %do.end34.i

if.end28.i.if.end39.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %idVendor.i80 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 16, i32 7
  %82 = ptrtoint ptr %idVendor.i80 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %idVendor.i80, align 8
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #10
  %conv35.i = zext i16 %84 to i32
  %idProduct.i81 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 16, i32 8
  %85 = ptrtoint ptr %idProduct.i81 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %idProduct.i81, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #10
  %conv37.i = zext i16 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.35, i32 noundef %conv35.i, i32 noundef %conv37.i, i32 noundef %81) #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end34.i, %if.end28.i.if.end39.i_crit_edge
  %idVendor40.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %88 = ptrtoint ptr %idVendor40.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %idVendor40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool42.not.i = icmp eq i16 %89, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end39.i.if.then46.i_crit_edge

if.end39.i.if.then46.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i

lor.lhs.false.i:                                  ; preds = %if.end39.i
  %idProduct43.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %90 = ptrtoint ptr %idProduct43.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %idProduct43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool45.not.i = icmp eq i16 %91, 0
  br i1 %tobool45.not.i, label %lor.lhs.false.i.if.end40_crit_edge, label %lor.lhs.false.i.if.then46.i_crit_edge

lor.lhs.false.i.if.then46.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i

lor.lhs.false.i.if.end40_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then46.i:                                      ; preds = %lor.lhs.false.i.if.then46.i_crit_edge, %if.end39.i.if.then46.i_crit_edge
  %92 = ptrtoint ptr %useProtocol.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %useProtocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp50.not.i = icmp eq i8 %93, -1
  br i1 %cmp50.not.i, label %if.then46.i.if.end59.i_crit_edge, label %land.lhs.true.i

if.then46.i.if.end59.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %subclass.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %subclass.i, align 4
  %bInterfaceSubClass54.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 6
  %96 = ptrtoint ptr %bInterfaceSubClass54.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bInterfaceSubClass54.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp56.i = icmp ne i8 %95, %97
  %spec.select.i = sext i1 %cmp56.i to i32
  br label %if.end59.i

if.end59.i:                                       ; preds = %land.lhs.true.i, %if.then46.i.if.end59.i_crit_edge
  %msg.0.i = phi i32 [ -1, %if.then46.i.if.end59.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %98 = ptrtoint ptr %useTransport.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %useTransport.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp62.not.i = icmp eq i8 %99, -1
  br i1 %cmp62.not.i, label %if.end59.i.if.end73.i_crit_edge, label %land.lhs.true64.i

if.end59.i.if.end73.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true64.i:                                ; preds = %if.end59.i
  %100 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %protocol.i, align 1
  %bInterfaceProtocol67.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 7
  %102 = ptrtoint ptr %bInterfaceProtocol67.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bInterfaceProtocol67.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %103)
  %cmp69.i = icmp eq i8 %101, %103
  %add72.i = add nsw i32 %msg.0.i, 2
  br i1 %cmp69.i, label %land.lhs.true64.i.land.lhs.true76.i_crit_edge, label %land.lhs.true64.i.if.end73.i_crit_edge

land.lhs.true64.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true64.i.land.lhs.true76.i_crit_edge:    ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true76.i

if.end73.i:                                       ; preds = %land.lhs.true64.i.if.end73.i_crit_edge, %if.end59.i.if.end73.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %msg.0.i)
  %cmp74.i = icmp sgt i32 %msg.0.i, -1
  br i1 %cmp74.i, label %if.end73.i.land.lhs.true76.i_crit_edge, label %if.end73.i.if.end40_crit_edge

if.end73.i.if.end40_crit_edge:                    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end73.i.land.lhs.true76.i_crit_edge:           ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true76.i

land.lhs.true76.i:                                ; preds = %if.end73.i.land.lhs.true76.i_crit_edge, %land.lhs.true64.i.land.lhs.true76.i_crit_edge
  %msg.1138.i = phi i32 [ 0, %if.end73.i.land.lhs.true76.i_crit_edge ], [ %add72.i, %land.lhs.true64.i.land.lhs.true76.i_crit_edge ]
  %104 = ptrtoint ptr %fflags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fflags.i, align 4
  %and78.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %do.end83.i, label %land.lhs.true76.i.if.end40_crit_edge

land.lhs.true76.i.if.end40_crit_edge:             ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end83.i:                                       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #12
  %idVendor84.i = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 16, i32 7
  %106 = ptrtoint ptr %idVendor84.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %idVendor84.i, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #10
  %conv85.i = zext i16 %108 to i32
  %idProduct86.i = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 16, i32 8
  %109 = ptrtoint ptr %idProduct86.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %idProduct86.i, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #10
  %conv87.i = zext i16 %111 to i32
  %bcdDevice.i82 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 16, i32 9
  %112 = ptrtoint ptr %bcdDevice.i82 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %bcdDevice.i82, align 1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #10
  %conv88.i = zext i16 %114 to i32
  %bInterfaceSubClass89.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 6
  %115 = ptrtoint ptr %bInterfaceSubClass89.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bInterfaceSubClass89.i, align 1
  %conv90.i = zext i8 %116 to i32
  %bInterfaceProtocol91.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 7
  %117 = ptrtoint ptr %bInterfaceProtocol91.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bInterfaceProtocol91.i, align 1
  %conv92.i = zext i8 %118 to i32
  %arrayidx.i83 = getelementptr [3 x ptr], ptr @get_device_info.msgs, i32 0, i32 %msg.1138.i
  %119 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i83, align 4
  %121 = tail call i32 @llvm.read_register.i32(metadata !805) #10
  %and.i.i.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 110
  %125 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %uts_ns.i.i, align 4
  %release.i = getelementptr inbounds %struct.new_utsname, ptr %128, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev2.i, ptr noundef nonnull @.str.41, i32 noundef %conv85.i, i32 noundef %conv87.i, i32 noundef %conv88.i, i32 noundef %conv90.i, i32 noundef %conv92.i, ptr noundef %120, ptr noundef %release.i) #14
  br label %if.end40

get_device_info.exit:                             ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.32) #14
  br label %BadDevice

if.end40:                                         ; preds = %do.end83.i, %land.lhs.true76.i.if.end40_crit_edge, %if.end73.i.if.end40_crit_edge, %lor.lhs.false.i.if.end40_crit_edge
  %129 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %protocol.i, align 1
  %131 = zext i8 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.445)
  switch i8 %130, label %if.end40.get_transport.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb1.i
    i8 80, label %sw.bb6.i
  ]

if.end40.get_transport.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_transport.exit

sw.bb.i:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %transport_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 4
  %132 = ptrtoint ptr %transport_name.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.44, ptr %transport_name.i, align 4
  %transport.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 3
  %133 = ptrtoint ptr %transport.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @usb_stor_CB_transport, ptr %transport.i, align 4
  %transport_reset.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 6
  %134 = ptrtoint ptr %transport_reset.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @usb_stor_CB_reset, ptr %transport_reset.i, align 4
  %max_lun.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %135 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 7, ptr %max_lun.i, align 2
  br label %get_transport.exit

sw.bb1.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %transport_name2.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 4
  %136 = ptrtoint ptr %transport_name2.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.45, ptr %transport_name2.i, align 4
  %transport3.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 3
  %137 = ptrtoint ptr %transport3.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @usb_stor_CB_transport, ptr %transport3.i, align 4
  %transport_reset4.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 6
  %138 = ptrtoint ptr %transport_reset4.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @usb_stor_CB_reset, ptr %transport_reset4.i, align 4
  %max_lun5.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %139 = ptrtoint ptr %max_lun5.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 7, ptr %max_lun5.i, align 2
  br label %get_transport.exit

sw.bb6.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %transport_name7.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 4
  %140 = ptrtoint ptr %transport_name7.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.46, ptr %transport_name7.i, align 4
  %transport8.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 3
  %141 = ptrtoint ptr %transport8.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @usb_stor_Bulk_transport, ptr %transport8.i, align 4
  %transport_reset9.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 6
  %142 = ptrtoint ptr %transport_reset9.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @usb_stor_Bulk_reset, ptr %transport_reset9.i, align 4
  br label %get_transport.exit

get_transport.exit:                               ; preds = %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.end40.get_transport.exit_crit_edge
  %143 = ptrtoint ptr %subclass.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %subclass.i, align 4
  %145 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.446)
  switch i8 %144, label %get_transport.exit.cleanup_crit_edge [
    i8 1, label %sw.bb.i87
    i8 2, label %sw.bb1.i89
    i8 3, label %sw.bb4.i
    i8 5, label %sw.bb8.i
    i8 6, label %sw.bb12.i
    i8 4, label %sw.bb15.i
  ]

get_transport.exit.cleanup_crit_edge:             ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i87:                                        ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %146 = ptrtoint ptr %protocol_name.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.47, ptr %protocol_name.i, align 4
  %proto_handler.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %147 = ptrtoint ptr %proto_handler.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @usb_stor_transparent_scsi_command, ptr %proto_handler.i, align 4
  br label %cleanup

sw.bb1.i89:                                       ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name2.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %148 = ptrtoint ptr %protocol_name2.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.48, ptr %protocol_name2.i, align 4
  %proto_handler3.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %149 = ptrtoint ptr %proto_handler3.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @usb_stor_pad12_command, ptr %proto_handler3.i, align 4
  %max_lun.i88 = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %150 = ptrtoint ptr %max_lun.i88 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %max_lun.i88, align 2
  br label %cleanup

sw.bb4.i:                                         ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name5.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %151 = ptrtoint ptr %protocol_name5.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.49, ptr %protocol_name5.i, align 4
  %proto_handler6.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %152 = ptrtoint ptr %proto_handler6.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @usb_stor_pad12_command, ptr %proto_handler6.i, align 4
  %max_lun7.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %153 = ptrtoint ptr %max_lun7.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %max_lun7.i, align 2
  br label %cleanup

sw.bb8.i:                                         ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name9.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %154 = ptrtoint ptr %protocol_name9.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.50, ptr %protocol_name9.i, align 4
  %proto_handler10.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %155 = ptrtoint ptr %proto_handler10.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @usb_stor_pad12_command, ptr %proto_handler10.i, align 4
  %max_lun11.i = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %156 = ptrtoint ptr %max_lun11.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %max_lun11.i, align 2
  br label %cleanup

sw.bb12.i:                                        ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name13.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %157 = ptrtoint ptr %protocol_name13.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.51, ptr %protocol_name13.i, align 4
  %proto_handler14.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %158 = ptrtoint ptr %proto_handler14.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @usb_stor_transparent_scsi_command, ptr %proto_handler14.i, align 4
  br label %cleanup

sw.bb15.i:                                        ; preds = %get_transport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %protocol_name16.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5
  %159 = ptrtoint ptr %protocol_name16.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.52, ptr %protocol_name16.i, align 4
  %proto_handler17.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %160 = ptrtoint ptr %proto_handler17.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @usb_stor_ufi_command, ptr %proto_handler17.i, align 4
  br label %cleanup

BadDevice:                                        ; preds = %get_device_info.exit, %if.then20.i, %us_set_lock_class.exit.BadDevice_crit_edge
  %result.0 = phi i32 [ -19, %get_device_info.exit ], [ -12, %if.then20.i ], [ -12, %us_set_lock_class.exit.BadDevice_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.16) #10
  tail call fastcc void @release_everything(ptr noundef %hostdata.i)
  br label %cleanup

cleanup:                                          ; preds = %BadDevice, %sw.bb15.i, %sw.bb12.i, %sw.bb8.i, %sw.bb4.i, %sw.bb1.i89, %sw.bb.i87, %get_transport.exit.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ %result.0, %BadDevice ], [ -12, %do.end3 ], [ 0, %get_transport.exit.cleanup_crit_edge ], [ 0, %sw.bb.i87 ], [ 0, %sw.bb1.i89 ], [ 0, %sw.bb4.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb12.i ], [ 0, %sw.bb15.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_stor_scan_dwork(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -516
  %pusb_intf = getelementptr i8, ptr %work, i32 -420
  %0 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_stor_scan_dwork.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_stor_scan_dwork, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !817

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_stor_scan_dwork.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %protocol = getelementptr i8, ptr %work, i32 -371
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %3)
  %cmp = icmp eq i8 %3, 80
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %do.end
  %fflags = getelementptr i8, ptr %work, i32 -412
  %4 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fflags, align 4
  %6 = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.then12, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then12:                                        ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #10
  %call13 = tail call i32 @usb_stor_Bulk_max_lun(ptr noundef %add.ptr) #10
  %conv14 = trunc i32 %call13 to i8
  %max_lun = getelementptr i8, ptr %work, i32 -370
  %8 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %max_lun, align 2
  %conv16 = and i32 %call13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv16)
  %cmp17 = icmp ugt i32 %conv16, 7
  br i1 %cmp17, label %if.then19, label %if.then12.if.end25_crit_edge

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %conv16, 1
  %9 = zext i32 %add to i64
  %max_lun24 = getelementptr i8, ptr %work, i32 -2500
  %10 = ptrtoint ptr %max_lun24 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %max_lun24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then12.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #10
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true.if.end27_crit_edge, %do.end.if.end27_crit_edge
  %add.ptr.i65 = getelementptr i8, ptr %work, i32 -2964
  tail call void @scsi_scan_host(ptr noundef %add.ptr.i65) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_stor_scan_dwork.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_stor_scan_dwork, %do.end46)) #10
          to label %if.then43 [label %do.end46], !srcloc !817

if.then43:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_stor_scan_dwork.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %if.end27
  %11 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pusb_intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %12) #10
  %dflags = getelementptr i8, ptr %work, i32 -408
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %dflags) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_everything(ptr noundef %us) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.53) #10
  %cmnd_ready.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 31
  tail call void @complete(ptr noundef %cmnd_ready.i) #10
  %ctl_thread.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 30
  %0 = ptrtoint ptr %ctl_thread.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_thread.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %extra_destructor.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %2 = ptrtoint ptr %extra_destructor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra_destructor.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.usb_stor_release_resources.exit_crit_edge, label %if.then3.i

if.end.i.usb_stor_release_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_stor_release_resources.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.54) #10
  %4 = ptrtoint ptr %extra_destructor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra_destructor.i, align 4
  %extra.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %6 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra.i, align 4
  tail call void %5(ptr noundef %7) #10
  br label %usb_stor_release_resources.exit

usb_stor_release_resources.exit:                  ; preds = %if.then3.i, %if.end.i.usb_stor_release_resources.exit_crit_edge
  %extra6.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %8 = ptrtoint ptr %extra6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra6.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  %current_urb.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 25
  %10 = ptrtoint ptr %current_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %11) #10
  %cr.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 26
  %12 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cr.i, align 4
  tail call void @kfree(ptr noundef %13) #10
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %14 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pusb_dev.i, align 4
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %16 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobuf.i, align 4
  %iobuf_dma.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 29
  %18 = ptrtoint ptr %iobuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef 64, ptr noundef %17, i32 noundef %19) #10
  %pusb_intf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 2
  %20 = ptrtoint ptr %pusb_intf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pusb_intf.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %us, i32 -2448
  tail call void @scsi_host_put(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_probe2(ptr noundef %us) #0 align 64 {
entry:
  %ep_in.i = alloca ptr, align 4
  %ep_out.i = alloca ptr, align 4
  %ep_int.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 2
  %0 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %transport = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 19
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.BadDevice_crit_edge, label %lor.lhs.false

entry.BadDevice_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %BadDevice

lor.lhs.false:                                    ; preds = %entry
  %proto_handler = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 21
  %4 = ptrtoint ptr %proto_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto_handler, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.BadDevice_crit_edge, label %if.end

lor.lhs.false.BadDevice_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %BadDevice

if.end:                                           ; preds = %lor.lhs.false
  %transport_name = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 11
  %6 = ptrtoint ptr %transport_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transport_name, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17, ptr noundef %7) #10
  %protocol_name = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 12
  %8 = ptrtoint ptr %protocol_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %protocol_name, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, ptr noundef %9) #10
  %fflags = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 4
  %10 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fflags, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_lun = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 16
  %12 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %max_lun, align 2
  %this_id = getelementptr i8, ptr %us, i32 -1968
  %13 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %this_id, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %max_id = getelementptr i8, ptr %us, i32 -1988
  %14 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %max_id, align 4
  %15 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transport, align 4
  %cmp = icmp eq ptr %16, @usb_stor_Bulk_transport
  br i1 %cmp, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %no_scsi2_lun_in_cdb = getelementptr i8, ptr %us, i32 -1928
  %17 = ptrtoint ptr %no_scsi2_lun_in_cdb to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %no_scsi2_lun_in_cdb, align 8
  %bf.set = or i16 %bf.load, 32
  store i16 %bf.set, ptr %no_scsi2_lun_in_cdb, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then4
  %and12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %max_lun15 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 16
  %18 = ptrtoint ptr %max_lun15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %max_lun15, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %19 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pusb_intf, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_altsetting.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_in.i) #10
  %23 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep_in.i, align 4, !annotation !818
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_out.i) #10
  %24 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep_out.i, align 4, !annotation !818
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_int.i) #10
  %25 = ptrtoint ptr %ep_int.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep_int.i, align 4, !annotation !818
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %22, ptr noundef nonnull %ep_in.i, ptr noundef nonnull %ep_out.i, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.get_pipes.exit_crit_edge

if.end16.get_pipes.exit_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pipes.exit

if.end.i:                                         ; preds = %if.end16
  %call.i.i = call i32 @usb_find_common_endpoints(ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef nonnull %ep_int.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 15
  %26 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i = icmp eq i8 %27, 0
  br i1 %cmp.i, label %land.lhs.true.i.get_pipes.exit_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.get_pipes.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pipes.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %28 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pusb_dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i = shl i32 %31, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %32 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %send_ctrl_pipe.i, align 4
  %33 = load i32, ptr %29, align 8
  %shl.i50.i = shl i32 %33, 8
  %or10.i = or i32 %shl.i50.i, -2147483520
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %34 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or10.i, ptr %recv_ctrl_pipe.i, align 4
  %35 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_out.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bEndpointAddress.i.i, align 1
  %39 = and i8 %38, 15
  %and.i.i = zext i8 %39 to i32
  %40 = load i32, ptr %29, align 8
  %shl.i51.i = shl i32 %40, 8
  %shl1.i.i = shl nuw nsw i32 %and.i.i, 15
  %or.i.i = or i32 %shl.i51.i, %shl1.i.i
  %or14.i = or i32 %or.i.i, -1073741824
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %41 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or14.i, ptr %send_bulk_pipe.i, align 4
  %42 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep_in.i, align 4
  %bEndpointAddress.i52.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bEndpointAddress.i52.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bEndpointAddress.i52.i, align 1
  %46 = and i8 %45, 15
  %and.i53.i = zext i8 %46 to i32
  %47 = load i32, ptr %29, align 8
  %shl.i54.i = shl i32 %47, 8
  %shl1.i55.i = shl nuw nsw i32 %and.i53.i, 15
  %or.i56.i = or i32 %shl.i54.i, %shl1.i55.i
  %or19.i = or i32 %or.i56.i, -1073741696
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %48 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or19.i, ptr %recv_bulk_pipe.i, align 4
  %49 = ptrtoint ptr %ep_int.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep_int.i, align 4
  %tobool20.not.i = icmp eq ptr %50, null
  br i1 %tobool20.not.i, label %if.end5.i.if.end20_crit_edge, label %if.then21.i

if.end5.i.if.end20_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then21.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress.i57.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %bEndpointAddress.i57.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bEndpointAddress.i57.i, align 1
  %53 = and i8 %52, 15
  %and.i58.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %29, align 8
  %shl.i59.i = shl i32 %55, 8
  %shl1.i60.i = shl nuw nsw i32 %and.i58.i, 15
  %or.i61.i = or i32 %shl.i59.i, %shl1.i60.i
  %or26.i = or i32 %or.i61.i, 1073741952
  %recv_intr_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 10
  %56 = ptrtoint ptr %recv_intr_pipe.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or26.i, ptr %recv_intr_pipe.i, align 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %50, i32 0, i32 5
  %57 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bInterval.i, align 1
  %ep_bInterval.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 18
  %59 = ptrtoint ptr %ep_bInterval.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ep_bInterval.i, align 4
  br label %if.end20

get_pipes.exit:                                   ; preds = %land.lhs.true.i.get_pipes.exit_crit_edge, %if.end16.get_pipes.exit_crit_edge
  %.str.55.sink = phi ptr [ @.str.55, %if.end16.get_pipes.exit_crit_edge ], [ @.str.56, %land.lhs.true.i.get_pipes.exit_crit_edge ]
  %retval.0.i91 = phi i32 [ %call.i, %if.end16.get_pipes.exit_crit_edge ], [ %call.i.i, %land.lhs.true.i.get_pipes.exit_crit_edge ]
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.55.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_int.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_out.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_in.i) #10
  br label %BadDevice

if.end20:                                         ; preds = %if.then21.i, %if.end5.i.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_int.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_out.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_in.i) #10
  %60 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fflags, align 4
  %and22 = and i32 %61, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %dflags = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %dflags) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %call.i92 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %current_urb.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 25
  %62 = ptrtoint ptr %current_urb.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i92, ptr %current_urb.i, align 4
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %if.end25.BadDevice_crit_edge, label %if.end.i95

if.end25.BadDevice_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %BadDevice

if.end.i95:                                       ; preds = %if.end25
  %unusual_dev.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 3
  %63 = ptrtoint ptr %unusual_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %unusual_dev.i, align 4
  %initFunction.i = getelementptr inbounds %struct.us_unusual_dev, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %initFunction.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %initFunction.i, align 4
  %tobool2.not.i94 = icmp eq ptr %66, null
  br i1 %tobool2.not.i94, label %if.end.i95.if.end10.i_crit_edge, label %if.then3.i

if.end.i95.if.end10.i_crit_edge:                  ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i95
  %call6.i = call i32 %66(ptr noundef %us) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then3.i.BadDevice_crit_edge

if.then3.i.BadDevice_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %BadDevice

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i95.if.end10.i_crit_edge
  %call11.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @usb_stor_control_thread, ptr noundef %us, i32 noundef -1, ptr noundef nonnull @.str.57) #10
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %usb_stor_acquire_resources.exit, label %usb_stor_acquire_resources.exit.thread108

usb_stor_acquire_resources.exit.thread108:        ; preds = %if.end10.i
  %call14.i = call i32 @wake_up_process(ptr noundef %call11.i) #10
  %ctl_thread.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 30
  %67 = ptrtoint ptr %ctl_thread.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call11.i, ptr %ctl_thread.i, align 4
  %68 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pusb_intf, align 4
  call void @usb_autopm_get_interface_no_resume(ptr noundef %69) #10
  %scsi_name = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 24
  %70 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pusb_intf, align 4
  %init_name.i = getelementptr inbounds %struct.usb_interface, ptr %71, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i98 = icmp eq ptr %73, null
  br i1 %tobool.not.i98, label %if.end.i99, label %usb_stor_acquire_resources.exit.thread108.dev_name.exit_crit_edge

usb_stor_acquire_resources.exit.thread108.dev_name.exit_crit_edge: ; preds = %usb_stor_acquire_resources.exit.thread108
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

usb_stor_acquire_resources.exit:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pusb_intf, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #14
  %76 = ptrtoint ptr %call11.i to i32
  br label %BadDevice

if.end.i99:                                       ; preds = %usb_stor_acquire_resources.exit.thread108
  call void @__sanitizer_cov_trace_pc() #12
  %dev32 = getelementptr inbounds %struct.usb_interface, ptr %71, i32 0, i32 7
  %77 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i99, %usb_stor_acquire_resources.exit.thread108.dev_name.exit_crit_edge
  %retval.0.i100 = phi ptr [ %78, %if.end.i99 ], [ %73, %usb_stor_acquire_resources.exit.thread108.dev_name.exit_crit_edge ]
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %scsi_name, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i100)
  %add.ptr.i101 = getelementptr i8, ptr %us, i32 -2448
  %call.i102 = call i32 @scsi_add_host_with_dma(ptr noundef %add.ptr.i101, ptr noundef %dev1, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool37.not = icmp eq i32 %call.i102, 0
  br i1 %tobool37.not, label %if.end39, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #14
  %79 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pusb_intf, align 4
  call void @usb_autopm_put_interface_no_suspend(ptr noundef %80) #10
  br label %BadDevice

if.end39:                                         ; preds = %dev_name.exit
  %dflags40 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %dflags40) #10
  %81 = load i32, ptr @delay_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp41.not = icmp eq i32 %81, 0
  br i1 %cmp41.not, label %if.end39.if.end53_crit_edge, label %do.body43

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_stor_probe2.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_stor_probe2, %if.end53)) #10
          to label %if.then49 [label %if.end53], !srcloc !817

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_stor_probe2.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %do.body43, %if.end39.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %82 = load ptr, ptr @system_freezable_wq, align 4
  %scan_dwork = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 34
  %83 = load i32, ptr @delay_use, align 4
  %mul = mul i32 %83, 100
  %call.i103 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %scan_dwork, i32 noundef %mul) #10
  br label %cleanup

BadDevice:                                        ; preds = %do.end, %usb_stor_acquire_resources.exit, %if.then3.i.BadDevice_crit_edge, %if.end25.BadDevice_crit_edge, %get_pipes.exit, %lor.lhs.false.BadDevice_crit_edge, %entry.BadDevice_crit_edge
  %result.0 = phi i32 [ %retval.0.i91, %get_pipes.exit ], [ %76, %usb_stor_acquire_resources.exit ], [ %call.i102, %do.end ], [ -6, %lor.lhs.false.BadDevice_crit_edge ], [ -6, %entry.BadDevice_crit_edge ], [ %call6.i, %if.then3.i.BadDevice_crit_edge ], [ -12, %if.end25.BadDevice_crit_edge ]
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #10
  call fastcc void @release_everything(ptr noundef %us)
  br label %cleanup

cleanup:                                          ; preds = %BadDevice, %if.end53
  %retval.0 = phi i32 [ %result.0, %BadDevice ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_transport(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusb_dev.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dflags.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dflags.i) #10
  %delay_wait.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %delay_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %scan_dwork.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 34
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_dwork.i) #10
  %dflags2.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dflags2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dflags2.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i.quiesce_and_remove_host.exit_crit_edge, label %if.then4.i

if.end.i.quiesce_and_remove_host.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %quiesce_and_remove_host.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pusb_intf.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pusb_intf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pusb_intf.i, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %10) #10
  br label %quiesce_and_remove_host.exit

quiesce_and_remove_host.exit:                     ; preds = %if.then4.i, %if.end.i.quiesce_and_remove_host.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -2448
  tail call void @scsi_remove_host(ptr noundef %add.ptr.i.i) #10
  %host_lock.i = getelementptr i8, ptr %1, i32 -2380
  %11 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dflags2.i) #10
  %13 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %14) #10
  %delay_wait8.i = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %delay_wait8.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call fastcc void @release_everything(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_storage_driver_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @usb_stor_host_template, ptr noundef nonnull @.str.57, ptr noundef null) #10
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_storage_driver, ptr noundef null, ptr noundef nonnull @.str.22) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_storage_driver_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @usb_storage_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_max_lun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_transport(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_transparent_scsi_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_pad12_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_ufi_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stor_control_thread(ptr noundef %__us) #0 align 64 {
entry:
  %data_ptr = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.60) #10
  %cmnd_ready = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 31
  %call1269 = call i32 @wait_for_completion_interruptible(ptr noundef %cmnd_ready) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1269)
  %tobool.not270 = icmp eq i32 %call1269, 0
  br i1 %tobool.not270, label %if.end.lr.ph, label %entry.__here.preheader_crit_edge

entry.__here.preheader_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here.preheader

if.end.lr.ph:                                     ; preds = %entry
  %host_lock = getelementptr i8, ptr %__us, i32 -2380
  %srb2 = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 22
  %dflags = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 5
  %fflags = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 16
  %0 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %data_ptr, i32 0, i32 1
  %1 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %data_ptr, i32 0, i32 2
  %2 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %data_ptr, i32 0, i32 3
  %3 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %data_ptr, i32 0, i32 4
  %add.ptr.i268 = getelementptr inbounds i8, ptr %data_ptr, i32 8
  %pusb_dev.i = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 1
  %unusual_dev.i = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 3
  %add.ptr10.i = getelementptr inbounds i8, ptr %data_ptr, i32 16
  %arrayidx23.i = getelementptr inbounds i8, ptr %data_ptr, i32 32
  %arrayidx29.i = getelementptr inbounds i8, ptr %data_ptr, i32 33
  %arrayidx35.i = getelementptr inbounds i8, ptr %data_ptr, i32 34
  %arrayidx40.i = getelementptr inbounds i8, ptr %data_ptr, i32 35
  %proto_handler = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 21
  %notify = getelementptr inbounds %struct.us_data, ptr %__us, i32 0, i32 32
  br label %if.end

if.end:                                           ; preds = %if.end67.if.end_crit_edge, %if.end.lr.ph
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.61) #10
  call void @mutex_lock_nested(ptr noundef %__us, i32 noundef 0) #10
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %6 = ptrtoint ptr %srb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srb2, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %9) #10
  call void @mutex_unlock(ptr noundef %__us) #10
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.62) #10
  br label %__here.preheader

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dflags, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 327680, ptr %result, align 4
  br label %SkipForAbort

if.end10:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %15) #10
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 15
  %16 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.63) #10
  %result14 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %18 = ptrtoint ptr %result14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 458752, ptr %result14, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end10
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.else.if.else22_crit_edge, label %land.lhs.true

if.else.if.else22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

land.lhs.true:                                    ; preds = %if.else
  %23 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fflags, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.64, i32 noundef %22, i64 noundef %26) #10
  %result21 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %27 = ptrtoint ptr %result21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262144, ptr %result21, align 4
  br label %if.end47

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.else.if.else22_crit_edge
  %lun24 = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %28 = ptrtoint ptr %lun24 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun24, align 8
  %30 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_lun, align 2
  %conv = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv)
  %cmp25 = icmp ugt i64 %29, %conv
  br i1 %cmp25, label %if.then27, label %if.else33

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.65, i32 noundef %22, i64 noundef %29) #10
  %result32 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %32 = ptrtoint ptr %result32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262144, ptr %result32, align 4
  br label %if.end47

if.else33:                                        ; preds = %if.else22
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 16
  %33 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmnd, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %36)
  %cmp35 = icmp eq i8 %36, 18
  br i1 %cmp35, label %land.lhs.true37, label %if.else33.if.else43_crit_edge

if.else33.if.else43_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else33
  %37 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fflags, align 4
  %and39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.else43_crit_edge, label %if.then41

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else43

if.then41:                                        ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data_ptr) #10
  %39 = call ptr @memset(ptr %data_ptr, i32 0, i32 36)
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -128, ptr %0, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %1, align 1
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %2, align 1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 31, ptr %3, align 1
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.66) #10
  %44 = call ptr @memset(ptr %add.ptr.i268, i32 32, i32 28)
  %45 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data_ptr, align 1
  %47 = and i8 %46, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then41.fill_inquiry_response.exit_crit_edge

if.then41.fill_inquiry_response.exit_crit_edge:   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_inquiry_response.exit

if.else.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pusb_dev.i, align 4
  %bcdDevice2.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 16, i32 9
  %50 = ptrtoint ptr %bcdDevice2.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bcdDevice2.i, align 4
  %52 = call i16 @llvm.bswap.i16(i16 %51) #10
  %53 = ptrtoint ptr %unusual_dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unusual_dev.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call.i = call i32 @strlen(ptr noundef %56) #16
  %57 = call i32 @llvm.smin.i32(i32 %call.i, i32 8) #10
  %58 = call ptr @memcpy(ptr %add.ptr.i268, ptr %56, i32 %57)
  %productName.i = getelementptr inbounds %struct.us_unusual_dev, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %productName.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %productName.i, align 4
  %call9.i = call i32 @strlen(ptr noundef %60) #16
  %61 = call i32 @llvm.smin.i32(i32 %call9.i, i32 16) #10
  %62 = call ptr @memcpy(ptr %add.ptr10.i, ptr %60, i32 %61)
  %63 = lshr i16 %52, 12
  %64 = trunc i16 %63 to i8
  %conv22.i = or i8 %64, 48
  %65 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv22.i, ptr %arrayidx23.i, align 1
  %66 = lshr i16 %52, 8
  %67 = trunc i16 %66 to i8
  %68 = and i8 %67, 15
  %conv28.i = or i8 %68, 48
  %69 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv28.i, ptr %arrayidx29.i, align 1
  %70 = trunc i16 %52 to i8
  %71 = lshr i8 %70, 4
  %conv34.i = or i8 %71, 48
  %72 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv34.i, ptr %arrayidx35.i, align 1
  %73 = and i8 %70, 15
  %conv39.i = or i8 %73, 48
  %74 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv39.i, ptr %arrayidx40.i, align 1
  br label %fill_inquiry_response.exit

fill_inquiry_response.exit:                       ; preds = %if.else.i, %if.then41.fill_inquiry_response.exit_crit_edge
  %75 = ptrtoint ptr %srb2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %srb2, align 4
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %data_ptr, i32 noundef 36, ptr noundef %76) #10
  %result42 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %77 = ptrtoint ptr %result42 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %result42, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data_ptr) #10
  br label %if.end47

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else33.if.else43_crit_edge
  call void @usb_stor_show_command(ptr noundef %__us, ptr noundef nonnull %7) #10
  %78 = ptrtoint ptr %proto_handler to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %proto_handler, align 4
  call void %79(ptr noundef nonnull %7, ptr noundef %__us) #10
  %80 = ptrtoint ptr %pusb_dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pusb_dev.i, align 4
  %call.i.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15, i32 12, i32 22
  %82 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %fill_inquiry_response.exit, %if.then27, %if.then17, %if.then13
  %83 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %84) #10
  %result49 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %85 = ptrtoint ptr %result49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %result49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %86)
  %cmp50 = icmp eq i32 %86, 327680
  br i1 %cmp50, label %if.end47.SkipForAbort_crit_edge, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end47.SkipForAbort_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %SkipForAbort

SkipForAbort:                                     ; preds = %if.end47.SkipForAbort_crit_edge, %if.then9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.67) #10
  br label %if.end53

if.end53:                                         ; preds = %SkipForAbort, %if.end47.if.end53_crit_edge
  %srb.0 = phi ptr [ null, %SkipForAbort ], [ %7, %if.end47.if.end53_crit_edge ]
  %87 = ptrtoint ptr %dflags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %dflags, align 4
  %89 = and i32 %88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool56.not = icmp eq i32 %89, 0
  br i1 %tobool56.not, label %if.end53.if.end60_crit_edge, label %if.then57

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void @complete(ptr noundef %notify) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %dflags) #10
  call void @_clear_bit(i32 noundef 5, ptr noundef %dflags) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %90 = ptrtoint ptr %srb2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %srb2, align 4
  %91 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %92) #10
  call void @mutex_unlock(ptr noundef %__us) #10
  %tobool64.not = icmp eq ptr %srb.0, null
  br i1 %tobool64.not, label %if.end60.if.end67_crit_edge, label %if.then65

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %result66 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb.0, i32 0, i32 24
  %93 = ptrtoint ptr %result66 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %result66, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.68, i32 noundef %94) #10
  call void @scsi_done(ptr noundef nonnull %srb.0) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end60.if.end67_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %__us, ptr noundef nonnull @.str.60) #10
  %call1 = call i32 @wait_for_completion_interruptible(ptr noundef %cmnd_ready) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end67.if.end_crit_edge, label %if.end67.__here.preheader_crit_edge

if.end67.__here.preheader_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here.preheader

if.end67.if.end_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

__here.preheader:                                 ; preds = %if.end67.__here.preheader_crit_edge, %if.then3, %entry.__here.preheader_crit_edge
  br label %__here

__here:                                           ; preds = %if.end135, %__here.preheader
  %95 = call i32 @llvm.read_register.i32(metadata !805) #10
  %and.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 212
  %99 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 ptrtoint (ptr blockaddress(@usb_stor_control_thread, %__here) to i32), ptr %task_state_change, align 4
  %100 = load ptr, ptr %task, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 1, ptr %100, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !819
  %call133 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call133, label %__here188, label %if.end135

if.end135:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %__here

__here188:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %102 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.le, align 8
  %task_state_change192 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 212
  %105 = ptrtoint ptr %task_state_change192 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 ptrtoint (ptr blockaddress(@usb_stor_control_thread, %__here188) to i32), ptr %task_state_change192, align 4
  %106 = load ptr, ptr %task.le, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 0, ptr %106, align 128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_show_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @storage_probe(ptr noundef %intf, ptr noundef %id) #0 align 64 {
entry:
  %eps.i = alloca [4 x ptr], align 4
  %flags.i = alloca i32, align 4
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #10
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !818
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eps.i) #10
  %1 = call ptr @memset(ptr %eps.i, i32 0, i32 16)
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %bus.i = getelementptr i8, ptr %3, i32 -64
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #10
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %6 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_info.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags.i, align 4
  %num_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %9 = ptrtoint ptr %num_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_altsetting.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp9.not.i.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_host_interface, ptr %12, i32 %i.010.i.i
  %bInterfaceClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %bInterfaceClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceClass.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.i.i.i = icmp eq i8 %14, 8
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %bInterfaceSubClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %bInterfaceSubClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceSubClass.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp4.i.i.i = icmp eq i8 %16, 6
  br i1 %cmp4.i.i.i, label %uas_is_interface.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

uas_is_interface.exit.i.i:                        ; preds = %land.lhs.true.i.i.i
  %bInterfaceProtocol.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %bInterfaceProtocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterfaceProtocol.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %18)
  %cmp8.i.not.i.i = icmp eq i8 %18, 98
  br i1 %cmp8.i.not.i.i, label %uas_find_uas_alt_setting.exit.i, label %uas_is_interface.exit.i.i.for.inc.i.i_crit_edge

uas_is_interface.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %uas_is_interface.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %uas_is_interface.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

uas_find_uas_alt_setting.exit.i:                  ; preds = %uas_is_interface.exit.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %uas_find_uas_alt_setting.exit.i.if.end_crit_edge, label %if.end.i

uas_find_uas_alt_setting.exit.i.if.end_crit_edge: ; preds = %uas_find_uas_alt_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %uas_find_uas_alt_setting.exit.i
  %endpoint1.i.i = getelementptr %struct.usb_host_interface, ptr %12, i32 %i.010.i.i, i32 3
  %19 = ptrtoint ptr %endpoint1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoint1.i.i, align 4
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp61.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp61.not.i.i, label %if.end.i.for.end.i.i_crit_edge, label %if.end.i.for.body.i2.i_crit_edge

if.end.i.for.body.i2.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i2.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i2.i:                                    ; preds = %while.end.i.i.for.body.i2.i_crit_edge, %if.end.i.for.body.i2.i_crit_edge
  %i.062.i.i = phi i32 [ %inc.i4.i, %while.end.i.i.for.body.i2.i_crit_edge ], [ 0, %if.end.i.for.body.i2.i_crit_edge ]
  %arrayidx.i1.i = getelementptr %struct.usb_host_endpoint, ptr %20, i32 %i.062.i.i
  %extralen.i.i = getelementptr %struct.usb_host_endpoint, ptr %20, i32 %i.062.i.i, i32 8
  %23 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %extralen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp558.i.i = icmp sgt i32 %24, 2
  br i1 %cmp558.i.i, label %while.body.preheader.i.i, label %for.body.i2.i.while.end.i.i_crit_edge

for.body.i2.i.while.end.i.i_crit_edge:            ; preds = %for.body.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %for.body.i2.i
  %extra3.i.i = getelementptr %struct.usb_host_endpoint, ptr %20, i32 %i.062.i.i, i32 7
  %25 = ptrtoint ptr %extra3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extra3.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end20.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %len.060.i.i = phi i32 [ %sub23.i.i, %if.end20.i.i.while.body.i.i_crit_edge ], [ %24, %while.body.preheader.i.i ]
  %extra.059.i.i = phi ptr [ %add.ptr.i3.i, %if.end20.i.i.while.body.i.i_crit_edge ], [ %26, %while.body.preheader.i.i ]
  %arrayidx7.i.i = getelementptr i8, ptr %extra.059.i.i, i32 1
  %27 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %28)
  %cmp9.i.i = icmp eq i8 %28, 36
  br i1 %cmp9.i.i, label %if.then.i.i, label %if.end20.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %extra.059.i.i, i32 2
  %29 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx11.i.i, align 1
  %31 = add i8 %30, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %32 = icmp ult i8 %31, 4
  br i1 %32, label %if.then17.i.i, label %if.then.i.i.while.end.i.i_crit_edge

if.then.i.i.while.end.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.then17.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv12.i.i = zext i8 %30 to i32
  %sub.i.i = add nsw i32 %conv12.i.i, -1
  %arrayidx19.i.i = getelementptr ptr, ptr %eps.i, i32 %sub.i.i
  %33 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.i1.i, ptr %arrayidx19.i.i, align 4
  br label %while.end.i.i

if.end20.i.i:                                     ; preds = %while.body.i.i
  %34 = ptrtoint ptr %extra.059.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %extra.059.i.i, align 1
  %conv22.i.i = zext i8 %35 to i32
  %sub23.i.i = sub nsw i32 %len.060.i.i, %conv22.i.i
  %add.ptr.i3.i = getelementptr i8, ptr %extra.059.i.i, i32 %conv22.i.i
  %cmp5.i.i = icmp sgt i32 %sub23.i.i, 2
  br i1 %cmp5.i.i, label %if.end20.i.i.while.body.i.i_crit_edge, label %if.end20.i.i.while.end.i.i_crit_edge

if.end20.i.i.while.end.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end20.i.i.while.body.i.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end20.i.i.while.end.i.i_crit_edge, %if.then17.i.i, %if.then.i.i.while.end.i.i_crit_edge, %for.body.i2.i.while.end.i.i_crit_edge
  %inc.i4.i = add nuw nsw i32 %i.062.i.i, 1
  %exitcond.not.i5.i = icmp eq i32 %inc.i4.i, %conv.i.i
  br i1 %exitcond.not.i5.i, label %while.end.i.i.for.end.i.i_crit_edge, label %while.end.i.i.for.body.i2.i_crit_edge

while.end.i.i.for.body.i2.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i2.i

while.end.i.i.for.end.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %while.end.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %36 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eps.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end_crit_edge, label %lor.lhs.false.i.i

for.end.i.i.if.end_crit_edge:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %for.end.i.i
  %arrayidx27.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 1
  %38 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx27.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %39, null
  br i1 %tobool28.not.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %lor.lhs.false29.i.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false29.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx30.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 2
  %40 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx30.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %41, null
  br i1 %tobool31.not.i.i, label %lor.lhs.false29.i.i.if.end_crit_edge, label %lor.lhs.false32.i.i

lor.lhs.false29.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false29.i.i
  %arrayidx33.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 3
  %42 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx33.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %43, null
  br i1 %tobool34.not.i.i, label %lor.lhs.false32.i.i.if.end_crit_edge, label %if.end5.i

lor.lhs.false32.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %lor.lhs.false32.i.i
  %idVendor.i = getelementptr i8, ptr %3, i32 936
  %44 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idVendor.i, align 8
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.447)
  switch i16 %45, label %if.end5.i.if.end44.i_crit_edge [
    i16 19479, label %land.lhs.true.i
    i16 -15861, label %if.then42.i
  ]

if.end5.i.if.end44.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %idProduct.i = getelementptr i8, ptr %3, i32 938
  %47 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %idProduct.i, align 2
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.448)
  switch i16 %48, label %land.lhs.true.i.if.end44.i_crit_edge [
    i16 1617, label %land.lhs.true.i.if.then17.i_crit_edge
    i16 -21931, label %land.lhs.true.i.if.then17.i_crit_edge58
  ]

land.lhs.true.i.if.then17.i_crit_edge58:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

land.lhs.true.i.if.then17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then17.i:                                      ; preds = %land.lhs.true.i.if.then17.i_crit_edge, %land.lhs.true.i.if.then17.i_crit_edge58
  %actconfig.i = getelementptr i8, ptr %3, i32 956
  %50 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %actconfig.i, align 4
  %bMaxPower.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %bMaxPower.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bMaxPower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp19.i = icmp eq i8 %53, 0
  br i1 %cmp19.i, label %if.then17.i.if.end44.i_crit_edge, label %if.else.i

if.then17.i.if.end44.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then17.i
  %speed.i = getelementptr i8, ptr %3, i32 -100
  %54 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp22.i = icmp ult i32 %55, 5
  br i1 %cmp22.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %7, 8388608
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end44.i

if.else25.i:                                      ; preds = %if.else.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %39, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bmAttributes.i.i, align 1
  %59 = and i8 %58, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %59)
  %cond.i = icmp eq i8 %59, 5
  br i1 %cond.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  %or30.i = or i32 %7, 8388608
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or30.i, ptr %flags.i, align 4
  br label %if.end44.i

if.else31.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  %or32.i = or i32 %7, 134217728
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or32.i, ptr %flags.i, align 4
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %or43.i = or i32 %7, 33554432
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or43.i, ptr %flags.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.else31.i, %if.then29.i, %if.then24.i, %if.then17.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %if.end5.i.if.end44.i_crit_edge
  call void @usb_stor_adjust_quirks(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #10
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %64, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool45.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end44.i.cleanup.sink.split.i_crit_edge

if.end44.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end47.i:                                       ; preds = %if.end44.i
  %65 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i, align 8
  %sg_tablesize.i = getelementptr inbounds %struct.usb_bus, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sg_tablesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp49.i = icmp eq i32 %68, 0
  br i1 %cmp49.i, label %do.end54.i, label %if.end60.i

do.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 9
  %69 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver.i, align 8
  br label %cleanup.sink.split.sink.split.i

if.end60.i:                                       ; preds = %if.end47.i
  %speed61.i = getelementptr i8, ptr %3, i32 -100
  %71 = ptrtoint ptr %speed61.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp62.i = icmp ugt i32 %72, 4
  br i1 %cmp62.i, label %land.lhs.true64.i, label %if.end60.i.uas_use_uas_driver.exit_crit_edge

if.end60.i.uas_use_uas_driver.exit_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uas_use_uas_driver.exit

land.lhs.true64.i:                                ; preds = %if.end60.i
  %can_do_streams.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 14
  %73 = ptrtoint ptr %can_do_streams.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i = load i16, ptr %can_do_streams.i, align 4
  %74 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool65.not.i = icmp eq i16 %74, 0
  br i1 %tobool65.not.i, label %do.end69.i, label %land.lhs.true64.i.uas_use_uas_driver.exit_crit_edge

land.lhs.true64.i.uas_use_uas_driver.exit_crit_edge: ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uas_use_uas_driver.exit

do.end69.i:                                       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %do.end69.i, %do.end54.i
  %.sink24.i = phi ptr [ %70, %do.end54.i ], [ %bus_name.i, %do.end69.i ]
  %.str.76.sink.i = phi ptr [ @.str.76, %do.end54.i ], [ @.str.82, %do.end69.i ]
  %.str.85.sink.ph.i = phi ptr [ @.str.79, %do.end54.i ], [ @.str.85, %do.end69.i ]
  %75 = ptrtoint ptr %.sink24.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.sink24.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull %.str.76.sink.i, ptr noundef %76) #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end44.i.cleanup.sink.split.i_crit_edge
  %.str.85.sink.i = phi ptr [ @.str.72, %if.end44.i.cleanup.sink.split.i_crit_edge ], [ %.str.85.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull %.str.85.sink.i) #14
  br label %if.end

uas_use_uas_driver.exit:                          ; preds = %land.lhs.true64.i.uas_use_uas_driver.exit_crit_edge, %if.end60.i.uas_use_uas_driver.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eps.i) #10
  br label %cleanup

if.end:                                           ; preds = %cleanup.sink.split.i, %lor.lhs.false32.i.i.if.end_crit_edge, %lor.lhs.false29.i.i.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %for.end.i.i.if.end_crit_edge, %uas_find_uas_alt_setting.exit.i.if.end_crit_edge, %for.inc.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eps.i) #10
  %call1 = tail call i32 @usb_usual_ignore_device(ptr noundef %intf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp.not = icmp uge ptr %id, @usb_storage_usb_ids
  %cmp5 = icmp ult ptr %id, getelementptr inbounds ([0 x %struct.usb_device_id], ptr @usb_storage_usb_ids, i32 0, i32 349)
  %or.cond = select i1 %cmp.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @usb_storage_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr7 = getelementptr %struct.us_unusual_dev, ptr @us_unusual_dev_list, i32 %sub.ptr.div
  br label %if.end16

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @storage_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@storage_probe, %if.end16)) #10
          to label %if.then13 [label %if.end16], !srcloc !817

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %77 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %idVendor, align 2
  %conv = zext i16 %78 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %79 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %idProduct, align 4
  %conv14 = zext i16 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @storage_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %conv, i32 noundef %conv14) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then6
  %unusual_dev.0 = phi ptr [ %add.ptr7, %if.then6 ], [ @for_dynamic_ids, %if.then13 ], [ @for_dynamic_ids, %if.else ]
  %call17 = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %unusual_dev.0, ptr noundef nonnull @usb_stor_host_template)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %us, align 4
  %call21 = tail call i32 @usb_stor_probe2(ptr noundef %82)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uas_use_uas_driver.exit
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -6, %uas_use_uas_driver.exit ], [ -6, %if.end.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_usual_ignore_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_euscsi_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @option_ms_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ucr61s2b_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sierra_ms_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_huawei_e220_init(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 451)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 451)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !83, !84, !86, !87, !88, !90, !92, !94, !95, !97, !98, !99, !101, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !192, !193, !195, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !223, !224, !226, !228, !230, !231, !233, !234, !236, !238, !239, !241, !242, !244, !246, !247, !249, !251, !252, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !304, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !355, !357, !359, !361, !362, !364, !366, !368, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !409, !411, !412, !414, !415, !417, !419, !420, !422, !424, !426, !428, !429, !431, !433, !434, !436, !437, !439, !440, !442, !443, !445, !446, !448, !450, !452, !453, !455, !456, !458, !459, !461, !462, !464, !466, !468, !470, !471, !473, !475, !476, !478, !479, !481, !482, !484, !485, !487, !489, !491, !492, !494, !495, !497, !499, !500, !502, !503, !505, !507, !508, !510, !511, !513, !514, !516, !518, !520, !521, !523, !524, !526, !527, !529, !530, !532, !533, !535, !536, !538, !540, !541, !543, !544, !546, !547, !549, !550, !552, !554, !556, !557, !559, !560, !562, !564, !565, !567, !568, !570, !571, !573, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !597, !599, !601, !603, !605, !607, !608, !610, !611, !613, !614, !616, !617, !619, !621, !622, !624, !625, !627, !628, !630, !631, !633, !635, !636, !638, !639, !641, !642, !644, !645, !647, !648, !650, !651, !653, !655, !657, !659, !661, !662, !664, !666, !668, !669, !671, !672, !674, !675, !677, !678, !680, !682, !684, !685, !687, !688, !690, !691, !693, !694, !696, !697, !699, !701, !703, !704, !706, !707, !709, !710, !712, !713, !715, !716, !718, !720, !721, !723, !724, !726, !727, !729, !730, !732, !733, !735, !737, !738, !740, !741, !743, !744, !746, !747, !749, !751, !752, !754, !755, !757, !759, !760, !762, !764, !766, !768, !769, !771, !772, !774, !775, !777, !779, !781, !783, !784, !786, !788, !790, !792, !793, !795, !796, !798, !799, !801, !803}
!llvm.named.register.sp = !{!805}
!llvm.module.flags = !{!806, !807, !808, !809, !810, !811, !812, !813}
!llvm.ident = !{!814}

!0 = !{ptr @__UNIQUE_ID_author290, !1, !"__UNIQUE_ID_author290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/usb.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_description291, !3, !"__UNIQUE_ID_description291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/usb.c", i32 67, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/usb.c", i32 68, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__param_delay_use, !8, !"__param_delay_use", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/usb.c", i32 71, i32 1}
!9 = !{ptr @__UNIQUE_ID_delay_usetype294, !8, !"__UNIQUE_ID_delay_usetype294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_delay_use295, !11, !"__UNIQUE_ID_delay_use295", i1 false, i1 false}
!11 = !{!"../drivers/usb/storage/usb.c", i32 72, i32 1}
!12 = !{ptr @__param_quirks, !13, !"__param_quirks", i1 false, i1 false}
!13 = !{!"../drivers/usb/storage/usb.c", i32 75, i32 1}
!14 = !{ptr @__UNIQUE_ID_quirkstype296, !13, !"__UNIQUE_ID_quirkstype296", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_quirks297, !16, !"__UNIQUE_ID_quirks297", i1 false, i1 false}
!16 = !{!"../drivers/usb/storage/usb.c", i32 76, i32 1}
!17 = !{ptr @__ksymtab_usb_stor_suspend, !18, !"__ksymtab_usb_stor_suspend", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/usb.c", i32 187, i32 1}
!19 = !{ptr @__ksymtab_usb_stor_resume, !20, !"__ksymtab_usb_stor_resume", i1 false, i1 false}
!20 = !{!"../drivers/usb/storage/usb.c", i32 201, i32 1}
!21 = !{ptr @__ksymtab_usb_stor_reset_resume, !22, !"__ksymtab_usb_stor_reset_resume", i1 false, i1 false}
!22 = !{!"../drivers/usb/storage/usb.c", i32 216, i32 1}
!23 = !{ptr @__ksymtab_usb_stor_pre_reset, !24, !"__ksymtab_usb_stor_pre_reset", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/usb.c", i32 233, i32 1}
!25 = !{ptr @__ksymtab_usb_stor_post_reset, !26, !"__ksymtab_usb_stor_post_reset", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/usb.c", i32 250, i32 1}
!27 = !{ptr @__ksymtab_fill_inquiry_response, !28, !"__ksymtab_fill_inquiry_response", i1 false, i1 false}
!28 = !{!"../drivers/usb/storage/usb.c", i32 296, i32 1}
!29 = !{ptr @__ksymtab_usb_stor_adjust_quirks, !30, !"__ksymtab_usb_stor_adjust_quirks", i1 false, i1 false}
!30 = !{!"../drivers/usb/storage/usb.c", i32 585, i32 1}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/usb.c", i32 946, i32 2}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usb_stor_probe1._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_stor_probe1._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/storage/usb.c", i32 954, i32 3}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @usb_stor_probe1._entry.5, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @usb_stor_probe1._entry_ptr.8, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @usb_stor_probe1.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/usb.c", i32 964, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @usb_stor_probe1.__key.10, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/usb/storage/usb.c", i32 968, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usb_stor_probe1.__key.12, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/usb.c", i32 969, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @usb_stor_probe1.__key.14, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/storage/usb.c", i32 992, i32 19}
!57 = !{ptr @__ksymtab_usb_stor_probe1, !58, !"__ksymtab_usb_stor_probe1", i1 false, i1 false}
!58 = !{!"../drivers/usb/storage/usb.c", i32 996, i32 1}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/storage/usb.c", i32 1009, i32 19}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/storage/usb.c", i32 1010, i32 19}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/storage/usb.c", i32 1054, i32 49}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/storage/usb.c", i32 1058, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @usb_stor_probe2._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @usb_stor_probe2._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/usb.c", i32 1067, i32 3}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @usb_stor_probe2.__UNIQUE_ID_ddebug306, !71, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!74 = !{ptr @__ksymtab_usb_stor_probe2, !75, !"__ksymtab_usb_stor_probe2", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/usb.c", i32 1080, i32 1}
!76 = !{ptr @__ksymtab_usb_stor_disconnect, !77, !"__ksymtab_usb_stor_disconnect", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/usb.c", i32 1090, i32 1}
!78 = !{ptr @__initcall__kmod_usb_storage__308_1159_usb_storage_driver_init6, !79, !"__initcall__kmod_usb_storage__308_1159_usb_storage_driver_init6", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/usb.c", i32 1159, i32 1}
!80 = !{ptr @__exitcall_usb_storage_driver_exit, !79, !"__exitcall_usb_storage_driver_exit", i1 false, i1 false}
!81 = !{ptr @quirks, !82, !"quirks", i1 false, i1 false}
!82 = !{!"../drivers/usb/storage/usb.c", i32 74, i32 13}
!83 = !{ptr @__param_str_delay_use, !8, !"__param_str_delay_use", i1 false, i1 false}
!84 = !{ptr @delay_use, !85, !"delay_use", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/usb.c", i32 70, i32 21}
!86 = !{ptr @__param_str_quirks, !13, !"__param_str_quirks", i1 false, i1 false}
!87 = !{ptr @__param_string_quirks, !13, !"__param_string_quirks", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/usb.c", i32 155, i32 2}
!90 = !{ptr @us_interface_key, !91, !"us_interface_key", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/usb.c", i32 139, i32 30}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/storage/usb.c", i32 899, i32 2}
!97 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @usb_stor_scan_dwork.__UNIQUE_ID_ddebug304, !96, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/usb.c", i32 917, i32 2}
!101 = !{ptr @usb_stor_scan_dwork.__UNIQUE_ID_ddebug305, !100, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/storage/usb.c", i32 446, i32 19}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/storage/usb.c", i32 450, i32 19}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/storage/usb.c", i32 465, i32 20}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/storage/usb.c", i32 608, i32 3}
!110 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @get_device_info._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @get_device_info._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/storage/usb.c", i32 620, i32 3}
!115 = !{ptr @get_device_info._entry.34, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @get_device_info._entry_ptr.36, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/storage/usb.c", i32 633, i32 4}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/storage/usb.c", i32 634, i32 4}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/storage/usb.c", i32 635, i32 4}
!123 = !{ptr @get_device_info.msgs, !124, !"msgs", i1 false, i1 false}
!124 = !{!"../drivers/usb/storage/usb.c", i32 632, i32 22}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/storage/usb.c", i32 646, i32 4}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @get_device_info._entry.40, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @get_device_info._entry_ptr.43, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/storage/usb.c", i32 670, i32 24}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/storage/usb.c", i32 677, i32 24}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/storage/usb.c", i32 684, i32 24}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/storage/usb.c", i32 696, i32 23}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/storage/usb.c", i32 701, i32 23}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/storage/usb.c", i32 707, i32 23}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/storage/usb.c", i32 713, i32 23}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/storage/usb.c", i32 719, i32 23}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/storage/usb.c", i32 724, i32 23}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/storage/usb.c", i32 812, i32 19}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/storage/usb.c", i32 819, i32 20}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/storage/usb.c", i32 747, i32 20}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/storage/usb.c", i32 753, i32 20}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/storage/usb.c", i32 793, i32 7}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/storage/usb.c", i32 795, i32 3}
!160 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @usb_stor_acquire_resources._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @usb_stor_acquire_resources._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/storage/usb.c", i32 305, i32 20}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/storage/usb.c", i32 309, i32 20}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/storage/usb.c", i32 322, i32 21}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/storage/usb.c", i32 339, i32 21}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/storage/usb.c", i32 349, i32 21}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/storage/usb.c", i32 356, i32 21}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/storage/usb.c", i32 372, i32 21}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/storage/usb.c", i32 390, i32 21}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/storage/usb.c", i32 418, i32 21}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/usb/storage/usb.c", i32 426, i32 3}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../drivers/usb/storage/usb.c", i32 431, i32 2}
!185 = !{ptr @usb_stor_host_template, !186, !"usb_stor_host_template", i1 false, i1 false}
!186 = !{!"../drivers/usb/storage/usb.c", i32 1092, i32 34}
!187 = !{ptr @usb_storage_driver, !188, !"usb_storage_driver", i1 false, i1 false}
!188 = !{!"../drivers/usb/storage/usb.c", i32 1145, i32 26}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/storage/usb.c", i32 1130, i32 3}
!191 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @storage_probe.__UNIQUE_ID_ddebug307, !190, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/storage/uas-detect.h", i32 122, i32 3}
!195 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @uas_use_uas_driver._entry, !194, !"_entry", i1 false, i1 false}
!198 = !{ptr @uas_use_uas_driver._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/storage/uas-detect.h", i32 128, i32 3}
!201 = !{ptr @uas_use_uas_driver._entry.75, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @uas_use_uas_driver._entry_ptr.77, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/storage/uas-detect.h", i32 131, i32 3}
!205 = !{ptr @uas_use_uas_driver._entry.78, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @uas_use_uas_driver._entry_ptr.80, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/storage/uas-detect.h", i32 137, i32 3}
!209 = !{ptr @uas_use_uas_driver._entry.81, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @uas_use_uas_driver._entry_ptr.83, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/storage/uas-detect.h", i32 140, i32 3}
!213 = !{ptr @uas_use_uas_driver._entry.84, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @uas_use_uas_driver._entry_ptr.86, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.87, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/storage/unusual_devs.h", i32 56, i32 1}
!217 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/storage/unusual_devs.h", i32 63, i32 1}
!220 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.91, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/storage/unusual_devs.h", i32 69, i32 1}
!223 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/storage/unusual_devs.h", i32 75, i32 1}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/storage/unusual_devs.h", i32 85, i32 1}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/storage/unusual_devs.h", i32 90, i32 1}
!230 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/storage/unusual_devs.h", i32 101, i32 1}
!233 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/storage/unusual_devs.h", i32 108, i32 1}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/storage/unusual_devs.h", i32 119, i32 1}
!238 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/storage/unusual_devs.h", i32 126, i32 1}
!241 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/storage/unusual_devs.h", i32 133, i32 1}
!244 = !{ptr @.str.105, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/storage/unusual_devs.h", i32 139, i32 1}
!246 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.107, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/storage/unusual_devs.h", i32 146, i32 1}
!249 = !{ptr @.str.108, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/storage/unusual_devs.h", i32 153, i32 1}
!251 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/storage/unusual_devs.h", i32 162, i32 1}
!254 = !{ptr @.str.111, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/storage/unusual_devs.h", i32 169, i32 1}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/storage/unusual_devs.h", i32 176, i32 1}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/storage/unusual_devs.h", i32 183, i32 1}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/storage/unusual_devs.h", i32 193, i32 1}
!263 = !{ptr @.str.116, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/storage/unusual_devs.h", i32 203, i32 1}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/storage/unusual_devs.h", i32 210, i32 1}
!267 = !{ptr @.str.118, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/storage/unusual_devs.h", i32 217, i32 1}
!269 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/storage/unusual_devs.h", i32 224, i32 1}
!271 = !{ptr @.str.120, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/storage/unusual_devs.h", i32 231, i32 1}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/storage/unusual_devs.h", i32 238, i32 1}
!275 = !{ptr @.str.122, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/storage/unusual_devs.h", i32 245, i32 1}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/storage/unusual_devs.h", i32 252, i32 1}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/storage/unusual_devs.h", i32 270, i32 1}
!281 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/storage/unusual_devs.h", i32 281, i32 1}
!284 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/storage/unusual_devs.h", i32 291, i32 1}
!287 = !{ptr @.str.129, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/storage/unusual_devs.h", i32 304, i32 1}
!290 = !{ptr @.str.131, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.132, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/storage/unusual_devs.h", i32 316, i32 1}
!293 = !{ptr @.str.133, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/storage/unusual_devs.h", i32 323, i32 1}
!296 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/storage/unusual_devs.h", i32 330, i32 1}
!299 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/usb/storage/unusual_devs.h", i32 336, i32 1}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/storage/unusual_devs.h", i32 342, i32 1}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/usb/storage/unusual_devs.h", i32 348, i32 1}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/storage/unusual_devs.h", i32 358, i32 1}
!308 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.143, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/storage/unusual_devs.h", i32 368, i32 1}
!311 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/storage/unusual_devs.h", i32 378, i32 1}
!314 = !{ptr @.str.146, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/storage/unusual_devs.h", i32 385, i32 1}
!317 = !{ptr @.str.148, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.149, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/usb/storage/unusual_devs.h", i32 395, i32 1}
!320 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/storage/unusual_devs.h", i32 404, i32 1}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/storage/unusual_devs.h", i32 414, i32 1}
!325 = !{ptr @.str.153, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.154, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/usb/storage/unusual_devs.h", i32 423, i32 1}
!328 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.156, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/storage/unusual_devs.h", i32 434, i32 1}
!331 = !{ptr @.str.157, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.158, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/storage/unusual_devs.h", i32 451, i32 1}
!334 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.160, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/storage/unusual_devs.h", i32 460, i32 1}
!337 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/usb/storage/unusual_devs.h", i32 466, i32 1}
!340 = !{ptr @.str.163, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/storage/unusual_devs.h", i32 473, i32 1}
!342 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/storage/unusual_devs.h", i32 483, i32 1}
!345 = !{ptr @.str.166, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/usb/storage/unusual_devs.h", i32 488, i32 1}
!348 = !{ptr @.str.168, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/storage/unusual_devs.h", i32 503, i32 1}
!351 = !{ptr @.str.170, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.171, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/storage/unusual_devs.h", i32 516, i32 1}
!354 = !{ptr @.str.172, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.173, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/storage/unusual_devs.h", i32 522, i32 1}
!357 = !{ptr @.str.174, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/usb/storage/unusual_devs.h", i32 527, i32 1}
!359 = !{ptr @.str.175, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/usb/storage/unusual_devs.h", i32 544, i32 1}
!361 = !{ptr @.str.176, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/storage/unusual_devs.h", i32 550, i32 1}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/storage/unusual_devs.h", i32 556, i32 1}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/storage/unusual_devs.h", i32 563, i32 1}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/storage/unusual_devs.h", i32 570, i32 1}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/storage/unusual_devs.h", i32 581, i32 1}
!372 = !{ptr @.str.182, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.183, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/storage/unusual_devs.h", i32 588, i32 1}
!375 = !{ptr @.str.184, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.185, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/storage/unusual_devs.h", i32 599, i32 1}
!378 = !{ptr @.str.186, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.187, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/usb/storage/unusual_devs.h", i32 606, i32 1}
!381 = !{ptr @.str.188, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.189, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/usb/storage/unusual_devs.h", i32 642, i32 1}
!384 = !{ptr @.str.190, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/storage/unusual_devs.h", i32 658, i32 1}
!386 = !{ptr @.str.191, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/storage/unusual_devs.h", i32 668, i32 1}
!388 = !{ptr @.str.192, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/storage/unusual_devs.h", i32 676, i32 1}
!390 = !{ptr @.str.193, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/storage/unusual_devs.h", i32 683, i32 1}
!392 = !{ptr @.str.194, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/usb/storage/unusual_devs.h", i32 689, i32 1}
!394 = !{ptr @.str.195, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/storage/unusual_devs.h", i32 696, i32 1}
!396 = !{ptr @.str.196, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/storage/unusual_devs.h", i32 703, i32 1}
!398 = !{ptr @.str.197, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/storage/unusual_devs.h", i32 709, i32 1}
!400 = !{ptr @.str.198, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/storage/unusual_devs.h", i32 716, i32 1}
!402 = !{ptr @.str.199, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/storage/unusual_devs.h", i32 722, i32 1}
!404 = !{ptr @.str.200, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/storage/unusual_devs.h", i32 729, i32 1}
!406 = !{ptr @.str.201, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/storage/unusual_devs.h", i32 750, i32 1}
!408 = !{ptr @.str.202, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.203, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/usb/storage/unusual_devs.h", i32 757, i32 1}
!411 = !{ptr @.str.204, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.205, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/storage/unusual_devs.h", i32 764, i32 1}
!414 = !{ptr @.str.206, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.207, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/usb/storage/unusual_devs.h", i32 775, i32 1}
!417 = !{ptr @.str.208, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/usb/storage/unusual_devs.h", i32 781, i32 1}
!419 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.210, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/storage/unusual_devs.h", i32 788, i32 1}
!422 = !{ptr @.str.211, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/usb/storage/unusual_devs.h", i32 800, i32 1}
!424 = !{ptr @.str.212, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/storage/unusual_devs.h", i32 806, i32 1}
!426 = !{ptr @.str.213, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/usb/storage/unusual_devs.h", i32 813, i32 1}
!428 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.215, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/usb/storage/unusual_devs.h", i32 820, i32 1}
!431 = !{ptr @.str.216, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/usb/storage/unusual_devs.h", i32 831, i32 1}
!433 = !{ptr @.str.217, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.218, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/usb/storage/unusual_devs.h", i32 844, i32 1}
!436 = !{ptr @.str.219, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.220, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/usb/storage/unusual_devs.h", i32 886, i32 1}
!439 = !{ptr @.str.221, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.222, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/usb/storage/unusual_devs.h", i32 893, i32 1}
!442 = !{ptr @.str.223, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.224, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/usb/storage/unusual_devs.h", i32 911, i32 1}
!445 = !{ptr @.str.225, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.226, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/usb/storage/unusual_devs.h", i32 917, i32 1}
!448 = !{ptr @.str.227, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/usb/storage/unusual_devs.h", i32 924, i32 1}
!450 = !{ptr @.str.228, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/usb/storage/unusual_devs.h", i32 934, i32 1}
!452 = !{ptr @.str.229, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.230, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/usb/storage/unusual_devs.h", i32 940, i32 1}
!455 = !{ptr @.str.231, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.232, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/usb/storage/unusual_devs.h", i32 946, i32 1}
!458 = !{ptr @.str.233, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.234, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/usb/storage/unusual_devs.h", i32 953, i32 1}
!461 = !{ptr @.str.235, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.236, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/usb/storage/unusual_devs.h", i32 960, i32 1}
!464 = !{ptr @.str.237, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/usb/storage/unusual_devs.h", i32 971, i32 1}
!466 = !{ptr @.str.238, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/usb/storage/unusual_devs.h", i32 978, i32 1}
!468 = !{ptr @.str.239, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/usb/storage/unusual_devs.h", i32 985, i32 1}
!470 = !{ptr @.str.240, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.241, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/usb/storage/unusual_devs.h", i32 991, i32 1}
!473 = !{ptr @.str.242, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/usb/storage/unusual_devs.h", i32 996, i32 1}
!475 = !{ptr @.str.243, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.244, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1002, i32 1}
!478 = !{ptr @.str.245, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.246, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1008, i32 1}
!481 = !{ptr @.str.247, !480, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.248, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1015, i32 1}
!484 = !{ptr @.str.249, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @.str.250, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1027, i32 1}
!487 = !{ptr @.str.251, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1044, i32 1}
!489 = !{ptr @.str.252, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1058, i32 1}
!491 = !{ptr @.str.253, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.254, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1064, i32 1}
!494 = !{ptr @.str.255, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @.str.256, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1070, i32 1}
!497 = !{ptr @.str.257, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1077, i32 1}
!499 = !{ptr @.str.258, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.259, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1083, i32 1}
!502 = !{ptr @.str.260, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.261, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1089, i32 1}
!505 = !{ptr @.str.262, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1110, i32 1}
!507 = !{ptr @.str.263, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @.str.264, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1120, i32 1}
!510 = !{ptr @.str.265, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @.str.266, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1138, i32 1}
!513 = !{ptr @.str.267, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.268, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1145, i32 1}
!516 = !{ptr @.str.269, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1151, i32 1}
!518 = !{ptr @.str.270, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1158, i32 1}
!520 = !{ptr @.str.271, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.272, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1179, i32 1}
!523 = !{ptr @.str.273, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.274, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1192, i32 1}
!526 = !{ptr @.str.275, !525, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @.str.276, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1203, i32 1}
!529 = !{ptr @.str.277, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.278, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1214, i32 1}
!532 = !{ptr @.str.279, !531, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @.str.280, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1220, i32 1}
!535 = !{ptr @.str.281, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @.str.282, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1226, i32 1}
!538 = !{ptr @.str.283, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1233, i32 1}
!540 = !{ptr @.str.284, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @.str.285, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1243, i32 1}
!543 = !{ptr @.str.286, !542, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @.str.287, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1255, i32 1}
!546 = !{ptr @.str.288, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.289, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1265, i32 1}
!549 = !{ptr @.str.290, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @.str.291, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1272, i32 1}
!552 = !{ptr @.str.292, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1278, i32 1}
!554 = !{ptr @.str.293, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1285, i32 1}
!556 = !{ptr @.str.294, !555, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @.str.295, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1297, i32 1}
!559 = !{ptr @.str.296, !558, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @.str.297, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1308, i32 1}
!562 = !{ptr @.str.298, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1322, i32 1}
!564 = !{ptr @.str.299, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @.str.300, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1332, i32 1}
!567 = !{ptr @.str.301, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @.str.302, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1338, i32 1}
!570 = !{ptr @.str.303, !569, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @.str.304, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1363, i32 1}
!573 = !{ptr @.str.305, !572, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @.str.306, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1375, i32 1}
!576 = !{ptr @.str.307, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1381, i32 1}
!578 = !{ptr @.str.308, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1393, i32 1}
!580 = !{ptr @.str.309, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1399, i32 1}
!582 = !{ptr @.str.310, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1411, i32 1}
!584 = !{ptr @.str.311, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1429, i32 1}
!586 = !{ptr @.str.312, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1435, i32 1}
!588 = !{ptr @.str.313, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1441, i32 1}
!590 = !{ptr @.str.314, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1447, i32 1}
!592 = !{ptr @.str.315, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1453, i32 1}
!594 = !{ptr @.str.316, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1466, i32 1}
!596 = !{ptr @.str.317, !595, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @.str.318, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1472, i32 1}
!599 = !{ptr @.str.319, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1479, i32 1}
!601 = !{ptr @.str.320, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1485, i32 1}
!603 = !{ptr @.str.321, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1495, i32 1}
!605 = !{ptr @.str.322, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1502, i32 1}
!607 = !{ptr @.str.323, !606, !"<string literal>", i1 false, i1 false}
!608 = !{ptr @.str.324, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1513, i32 1}
!610 = !{ptr @.str.325, !609, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @.str.326, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1519, i32 1}
!613 = !{ptr @.str.327, !612, !"<string literal>", i1 false, i1 false}
!614 = !{ptr @.str.328, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1531, i32 1}
!616 = !{ptr @.str.329, !615, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @.str.330, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1541, i32 1}
!619 = !{ptr @.str.331, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1552, i32 1}
!621 = !{ptr @.str.332, !620, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @.str.333, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1559, i32 1}
!624 = !{ptr @.str.334, !623, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @.str.335, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1566, i32 1}
!627 = !{ptr @.str.336, !626, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @.str.337, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1573, i32 1}
!630 = !{ptr @.str.338, !629, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @.str.339, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1583, i32 1}
!633 = !{ptr @.str.340, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1600, i32 1}
!635 = !{ptr @.str.341, !634, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @.str.342, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1612, i32 1}
!638 = !{ptr @.str.343, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @.str.344, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1623, i32 1}
!641 = !{ptr @.str.345, !640, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @.str.346, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1630, i32 1}
!644 = !{ptr @.str.347, !643, !"<string literal>", i1 false, i1 false}
!645 = !{ptr @.str.348, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1637, i32 1}
!647 = !{ptr @.str.349, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @.str.350, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1644, i32 1}
!650 = !{ptr @.str.351, !649, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @.str.352, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1651, i32 1}
!653 = !{ptr @.str.353, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1661, i32 1}
!655 = !{ptr @.str.354, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1668, i32 1}
!657 = !{ptr @.str.355, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1675, i32 1}
!659 = !{ptr @.str.356, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1688, i32 1}
!661 = !{ptr @.str.357, !660, !"<string literal>", i1 false, i1 false}
!662 = !{ptr @.str.358, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1694, i32 1}
!664 = !{ptr @.str.359, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1701, i32 1}
!666 = !{ptr @.str.360, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1710, i32 1}
!668 = !{ptr @.str.361, !667, !"<string literal>", i1 false, i1 false}
!669 = !{ptr @.str.362, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1720, i32 1}
!671 = !{ptr @.str.363, !670, !"<string literal>", i1 false, i1 false}
!672 = !{ptr @.str.364, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1731, i32 1}
!674 = !{ptr @.str.365, !673, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @.str.366, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1742, i32 1}
!677 = !{ptr @.str.367, !676, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @.str.368, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/usb/storage/unusual_devs.h", i32 1752, i32 1}
!680 = !{ptr @.str.369, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2084, i32 1}
!682 = !{ptr @.str.370, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2091, i32 1}
!684 = !{ptr @.str.371, !683, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.372, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2105, i32 1}
!687 = !{ptr @.str.373, !686, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @.str.374, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2112, i32 1}
!690 = !{ptr @.str.375, !689, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @.str.376, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2119, i32 1}
!693 = !{ptr @.str.377, !692, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @.str.378, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2126, i32 1}
!696 = !{ptr @.str.379, !695, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @.str.380, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2133, i32 1}
!699 = !{ptr @.str.381, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2164, i32 1}
!701 = !{ptr @.str.382, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2173, i32 1}
!703 = !{ptr @.str.383, !702, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @.str.384, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2183, i32 1}
!706 = !{ptr @.str.385, !705, !"<string literal>", i1 false, i1 false}
!707 = !{ptr @.str.386, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2190, i32 1}
!709 = !{ptr @.str.387, !708, !"<string literal>", i1 false, i1 false}
!710 = !{ptr @.str.388, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2197, i32 1}
!712 = !{ptr @.str.389, !711, !"<string literal>", i1 false, i1 false}
!713 = !{ptr @.str.390, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2203, i32 1}
!715 = !{ptr @.str.391, !714, !"<string literal>", i1 false, i1 false}
!716 = !{ptr @.str.392, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2215, i32 1}
!718 = !{ptr @.str.393, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2237, i32 1}
!720 = !{ptr @.str.394, !719, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @.str.395, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2251, i32 1}
!723 = !{ptr @.str.396, !722, !"<string literal>", i1 false, i1 false}
!724 = !{ptr @.str.397, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2261, i32 1}
!726 = !{ptr @.str.398, !725, !"<string literal>", i1 false, i1 false}
!727 = !{ptr @.str.399, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2273, i32 1}
!729 = !{ptr @.str.400, !728, !"<string literal>", i1 false, i1 false}
!730 = !{ptr @.str.401, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2284, i32 1}
!732 = !{ptr @.str.402, !731, !"<string literal>", i1 false, i1 false}
!733 = !{ptr @.str.403, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2291, i32 1}
!735 = !{ptr @.str.404, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2298, i32 1}
!737 = !{ptr @.str.405, !736, !"<string literal>", i1 false, i1 false}
!738 = !{ptr @.str.406, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2308, i32 1}
!740 = !{ptr @.str.407, !739, !"<string literal>", i1 false, i1 false}
!741 = !{ptr @.str.408, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2314, i32 1}
!743 = !{ptr @.str.409, !742, !"<string literal>", i1 false, i1 false}
!744 = !{ptr @.str.410, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2324, i32 1}
!746 = !{ptr @.str.411, !745, !"<string literal>", i1 false, i1 false}
!747 = !{ptr @.str.412, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2335, i32 1}
!749 = !{ptr @.str.413, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2342, i32 1}
!751 = !{ptr @.str.414, !750, !"<string literal>", i1 false, i1 false}
!752 = !{ptr @.str.415, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2349, i32 1}
!754 = !{ptr @.str.416, !753, !"<string literal>", i1 false, i1 false}
!755 = !{ptr @.str.417, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2359, i32 1}
!757 = !{ptr @.str.418, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2373, i32 1}
!759 = !{ptr @.str.419, !758, !"<string literal>", i1 false, i1 false}
!760 = !{ptr @.str.420, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2380, i32 1}
!762 = !{ptr @.str.421, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2390, i32 1}
!764 = !{ptr @.str.422, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2398, i32 1}
!766 = !{ptr @.str.423, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2408, i32 1}
!768 = !{ptr @.str.424, !767, !"<string literal>", i1 false, i1 false}
!769 = !{ptr @.str.425, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2415, i32 1}
!771 = !{ptr @.str.426, !770, !"<string literal>", i1 false, i1 false}
!772 = !{ptr @.str.427, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/usb/storage/unusual_devs.h", i32 2422, i32 1}
!774 = !{ptr @.str.428, !773, !"<string literal>", i1 false, i1 false}
!775 = !{ptr @.str.429, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/usb/storage/unusual_uas.h", i32 32, i32 1}
!777 = !{ptr @.str.430, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/usb/storage/unusual_uas.h", i32 42, i32 1}
!779 = !{ptr @.str.431, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/usb/storage/unusual_uas.h", i32 49, i32 1}
!781 = !{ptr @.str.432, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/usb/storage/unusual_uas.h", i32 59, i32 1}
!783 = !{ptr @.str.433, !782, !"<string literal>", i1 false, i1 false}
!784 = !{ptr @.str.434, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/usb/storage/unusual_uas.h", i32 66, i32 1}
!786 = !{ptr @.str.435, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/usb/storage/unusual_uas.h", i32 73, i32 1}
!788 = !{ptr @.str.436, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/usb/storage/unusual_uas.h", i32 80, i32 1}
!790 = !{ptr @.str.437, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/usb/storage/unusual_uas.h", i32 101, i32 1}
!792 = !{ptr @.str.438, !791, !"<string literal>", i1 false, i1 false}
!793 = !{ptr @.str.439, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/usb/storage/unusual_uas.h", i32 115, i32 1}
!795 = !{ptr @.str.440, !794, !"<string literal>", i1 false, i1 false}
!796 = !{ptr @.str.441, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/usb/storage/unusual_uas.h", i32 122, i32 1}
!798 = !{ptr @.str.442, !797, !"<string literal>", i1 false, i1 false}
!799 = !{ptr @.str.443, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../drivers/usb/storage/unusual_uas.h", i32 132, i32 1}
!801 = !{ptr @us_unusual_dev_list, !802, !"us_unusual_dev_list", i1 false, i1 false}
!802 = !{!"../drivers/usb/storage/usb.c", i32 124, i32 36}
!803 = !{ptr @for_dynamic_ids, !804, !"for_dynamic_ids", i1 false, i1 false}
!804 = !{!"../drivers/usb/storage/usb.c", i32 129, i32 36}
!805 = !{!"sp"}
!806 = !{i32 1, !"wchar_size", i32 2}
!807 = !{i32 1, !"min_enum_size", i32 4}
!808 = !{i32 8, !"branch-target-enforcement", i32 0}
!809 = !{i32 8, !"sign-return-address", i32 0}
!810 = !{i32 8, !"sign-return-address-all", i32 0}
!811 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!812 = !{i32 7, !"uwtable", i32 1}
!813 = !{i32 7, !"frame-pointer", i32 2}
!814 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!815 = !{!"branch_weights", i32 1, i32 2000}
!816 = !{i64 2155152626, i64 2155153116, i64 2155152663, i64 2155152719, i64 2155152753, i64 2155152777, i64 2155152818, i64 2155152839, i64 2155152867, i64 2155152901}
!817 = !{i64 2148262057, i64 2148262062, i64 2148262075, i64 2148262119, i64 2148262153, i64 2148262174}
!818 = !{!"auto-init"}
!819 = !{i64 2155171929}
