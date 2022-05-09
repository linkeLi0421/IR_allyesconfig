; ModuleID = '/llk/IR_all_yes/drivers/scsi/ppa.c_pt.bc'
source_filename = "../drivers/scsi/ppa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ppa_struct = type { ptr, i32, i32, ptr, %struct.delayed_work, i32, i32, i8, i32, ptr, ptr, %struct.list_head }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_ppa__285_1149_ppa_driver_init6 = internal global ptr @ppa_driver_init, section ".initcall6.init", align 4
@ppa_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @ppa_detach, ptr @ppa_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_ppa_driver_exit = internal global ptr @ppa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file286 = internal constant [26 x i8] c"ppa.file=drivers/scsi/ppa\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [16 x i8] c"ppa.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ppa\00", [28 x i8] zeroinitializer }, align 32
@ppa_hosts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ppa_hosts, ptr @ppa_hosts }, [24 x i8] zeroinitializer }, align 32
@__ppa_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&waiting\00", [23 x i8] zeroinitializer }, align 32
@__ppa_attach.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 4
@__ppa_attach._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1053, ptr null, ptr null }, align 1
@.str.3 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013ppa%d: failed to claim parport because a pardevice is owning the port for too long time!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__ppa_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/scsi/ppa.c\00", [45 x i8] zeroinitializer }, align 32
@__ppa_attach._entry_ptr = internal global ptr @__ppa_attach._entry, section ".printk_index", align 4
@__ppa_attach.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&dev->ppa_tq)->work)\00", [55 x i8] zeroinitializer }, align 32
@__ppa_attach.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&dev->ppa_tq)->timer\00", [41 x i8] zeroinitializer }, align 32
@ppa_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ppa_queuecommand, ptr null, ptr null, ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr @ppa_abort, ptr null, ptr null, ptr null, ptr @ppa_reset, ptr @ppa_adjust_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ppa_biosparam, ptr null, ptr @ppa_show_info, ptr @ppa_write_info, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arbitration_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arbitration_lock\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@device_check.cmd = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@device_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ppa: Found device at ID %i, Attempting to use %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_check\00", [19 x i8] zeroinitializer }, align 32
@device_check._entry_ptr = internal global ptr @device_check._entry, section ".printk_index", align 4
@PPA_MODE_STRING = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.21], [36 x i8] zeroinitializer }, align 32
@device_check._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ppa: Communication established with ID %i using %s\0A\00", [42 x i8] zeroinitializer }, align 32
@device_check._entry_ptr.15 = internal global ptr @device_check._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Autodetect\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPP\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PS/2\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EPP 8 bit\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EPP 16 bit\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@ppa_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013PPA: bug in ppa_out()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ppa_out\00", [24 x i8] zeroinitializer }, align 32
@ppa_out._entry_ptr = internal global ptr @ppa_out._entry, section ".printk_index", align 4
@ppa_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014ppa timeout in ppa_wait\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ppa_wait\00", [23 x i8] zeroinitializer }, align 32
@ppa_wait._entry_ptr = internal global ptr @ppa_wait._entry, section ".printk_index", align 4
@ecp_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ppa: ECP sync failed as data still present in FIFO.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecp_sync\00", [23 x i8] zeroinitializer }, align 32
@ecp_sync._entry_ptr = internal global ptr @ecp_sync._entry, section ".printk_index", align 4
@ppa_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013PPA: bug in ppa_interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppa_interrupt\00", [18 x i8] zeroinitializer }, align 32
@ppa_interrupt._entry_ptr = internal global ptr @ppa_interrupt._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ppa_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ppa: Parallel port cable is unplugged.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ppa_engine\00", [21 x i8] zeroinitializer }, align 32
@ppa_engine._entry_ptr = internal global ptr @ppa_engine._entry, section ".printk_index", align 4
@ppa_engine._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ppa: Invalid scsi phase\0A\00", [37 x i8] zeroinitializer }, align 32
@ppa_engine._entry_ptr.34 = internal global ptr @ppa_engine._entry.32, section ".printk_index", align 4
@ppa_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013PPA: bug in ppa_ins()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppa_in\00", [25 x i8] zeroinitializer }, align 32
@ppa_in._entry_ptr = internal global ptr @ppa_in._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Iomega VPI0 (ppa) interface\00", [36 x i8] zeroinitializer }, align 32
@ppa_queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013PPA: bug in ppa_queuecommand\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppa_queuecommand_lck\00", [43 x i8] zeroinitializer }, align 32
@ppa_queuecommand_lck._entry_ptr = internal global ptr @ppa_queuecommand_lck._entry, section ".printk_index", align 4
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Version : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"2.07 (for Linux 2.4.x)\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Parport : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mode    : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode=\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"recon_tmo=\00", [21 x i8] zeroinitializer }, align 32
@ppa_write_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ppa: recon_tmo set to %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppa_write_info\00", [17 x i8] zeroinitializer }, align 32
@ppa_write_info._entry_ptr = internal global ptr @ppa_write_info._entry, section ".printk_index", align 4
@ppa_write_info._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014ppa /proc: invalid variable\0A\00", [33 x i8] zeroinitializer }, align 32
@ppa_write_info._entry_ptr.50 = internal global ptr @ppa_write_info._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"ppa_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1143, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1149, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"ppa_hosts\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 985, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1014, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1051, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1095, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ppa_template\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 965, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"arbitration_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 53, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 881, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 898, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"PPA_MODE_STRING\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 103, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 947, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 105, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 106, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 107, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 109, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"../drivers/scsi/ppa.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 115, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 316, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 204, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 236, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 619, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 710, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 784, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 369, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 970, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 794, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 146, i32 16 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 146, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 147, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 148, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 127, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 132, i32 40 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 135, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [22 x i8] c"../drivers/scsi/ppa.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 138, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_ppa_driver_exit, ptr @__initcall__kmod_ppa__285_1149_ppa_driver_init6, ptr @__ppa_attach._entry, ptr @__ppa_attach._entry_ptr, ptr @device_check._entry, ptr @device_check._entry.13, ptr @device_check._entry_ptr, ptr @device_check._entry_ptr.15, ptr @ecp_sync._entry, ptr @ecp_sync._entry_ptr, ptr @ppa_driver_exit, ptr @ppa_engine._entry, ptr @ppa_engine._entry.32, ptr @ppa_engine._entry_ptr, ptr @ppa_engine._entry_ptr.34, ptr @ppa_in._entry, ptr @ppa_in._entry_ptr, ptr @ppa_interrupt._entry, ptr @ppa_interrupt._entry_ptr, ptr @ppa_out._entry, ptr @ppa_out._entry_ptr, ptr @ppa_queuecommand_lck._entry, ptr @ppa_queuecommand_lck._entry_ptr, ptr @ppa_wait._entry, ptr @ppa_wait._entry_ptr, ptr @ppa_write_info._entry, ptr @ppa_write_info._entry.48, ptr @ppa_write_info._entry_ptr, ptr @ppa_write_info._entry_ptr.50, ptr @ppa_driver, ptr @.str, ptr @ppa_hosts, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @ppa_template, ptr @arbitration_lock, ptr @.str.10, ptr @device_check.cmd, ptr @.str.11, ptr @.str.12, ptr @PPA_MODE_STRING, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_hosts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arbitration_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check.cmd to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PPA_MODE_STRING to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecp_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_engine._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_write_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppa_write_info._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @ppa_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ppa_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @parport_unregister_driver(ptr noundef nonnull @ppa_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppa_detach(ptr noundef readnone %pb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @ppa_hosts, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ppa_hosts
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev.0 = getelementptr i8, ptr %.pn, i32 -140
  %1 = ptrtoint ptr %dev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.0, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %cmp2 = icmp eq ptr %4, %pb
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dev.0.le = getelementptr i8, ptr %.pn, i32 -140
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn, ptr %prev.i3.i, align 4
  %host = getelementptr i8, ptr %.pn, i32 -4
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  tail call void @scsi_remove_host(ptr noundef %14) #12
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %16) #12
  %17 = ptrtoint ptr %dev.0.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.0.le, align 4
  tail call void @parport_unregister_device(ptr noundef %18) #12
  tail call void @kfree(ptr noundef %dev.0.le) #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppa_attach(ptr noundef %pb) #2 align 64 {
entry:
  %waiting.i = alloca %struct.wait_queue_head, align 4
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %ppa_cb.i = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %waiting.i) #12
  %0 = call ptr @memset(ptr %waiting.i, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %waiting.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ppa_attach.__key) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #12
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait.i, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppa_cb.i) #12
  %14 = getelementptr inbounds %struct.pardev_cb, ptr %ppa_cb.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pardev_cb, ptr %ppa_cb.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 148) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.__ppa_attach.exit_crit_edge, label %if.end.i

entry.__ppa_attach.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ppa_attach.exit

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %base.i, align 4
  %mode.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mode.i, align 8
  %recon_tmo.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %recon_tmo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 500, ptr %recon_tmo.i, align 8
  call void @__init_waitqueue_head(ptr noundef nonnull %waiting.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ppa_attach.__key.2) #12
  %20 = load volatile ptr, ptr @ppa_hosts, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, @ppa_hosts
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end12.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %dev_no.i24.i = getelementptr i8, ptr %20, i32 -12
  %21 = ptrtoint ptr %dev_no.i24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_no.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.not.i25.i = icmp eq i32 %22, 0
  br i1 %cmp1.not.i25.i, label %for.body.i.preheader.i.if.end3.i.i_crit_edge, label %for.body.i.preheader.i.if.end12.i_crit_edge

for.body.i.preheader.i.if.end12.i_crit_edge:      ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

for.body.i.preheader.i.if.end3.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  br label %if.end3.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i
  %inc.i.i = add i32 %cnt.018.i26.i, 1
  %dev_no.i.i = getelementptr i8, ptr %.pn.pr.i.i, i32 -12
  %23 = ptrtoint ptr %dev_no.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_no.i.i, align 4
  %cmp1.not.i.i = icmp eq i32 %24, %inc.i.i
  br i1 %cmp1.not.i.i, label %for.body.i.i.if.end3.i.i_crit_edge, label %for.body.i.i.find_parent.exit.i_crit_edge

for.body.i.i.find_parent.exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_parent.exit.i

for.body.i.i.if.end3.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i.if.end3.i.i_crit_edge, %for.body.i.preheader.i.if.end3.i.i_crit_edge
  %.pn17.i27.i = phi ptr [ %.pn.pr.i.i, %for.body.i.i.if.end3.i.i_crit_edge ], [ %20, %for.body.i.preheader.i.if.end3.i.i_crit_edge ]
  %cnt.018.i26.i = phi i32 [ %inc.i.i, %for.body.i.i.if.end3.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.if.end3.i.i_crit_edge ]
  %25 = ptrtoint ptr %.pn17.i27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.pr.i.i = load ptr, ptr %.pn17.i27.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.pr.i.i, @ppa_hosts
  br i1 %cmp.not.i.i, label %if.end3.i.i.find_parent.exit.i_crit_edge, label %for.body.i.i

if.end3.i.i.find_parent.exit.i_crit_edge:         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_parent.exit.i

find_parent.exit.i:                               ; preds = %if.end3.i.i.find_parent.exit.i_crit_edge, %for.body.i.i.find_parent.exit.i_crit_edge
  %dev.020.i.le.i = getelementptr i8, ptr %.pn17.i27.i, i32 -140
  %tobool9.not.i = icmp eq ptr %dev.020.i.le.i, null
  br i1 %tobool9.not.i, label %find_parent.exit.i.if.end12.i_crit_edge, label %if.then10.i

find_parent.exit.i.if.end12.i_crit_edge:          ; preds = %find_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then10.i:                                      ; preds = %find_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev_no.i = getelementptr i8, ptr %.pn17.i27.i, i32 -12
  %26 = ptrtoint ptr %dev_no.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_no.i, align 4
  %add.i = add i32 %27, 1
  %dev_no11.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %dev_no11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %dev_no11.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %find_parent.exit.i.if.end12.i_crit_edge, %for.body.i.preheader.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %29 = call ptr @memset(ptr %ppa_cb.i, i32 0, i32 20)
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i, ptr %15, align 4
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ppa_wakeup, ptr %14, align 4
  %dev_no14.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %dev_no14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_no14.i, align 8
  %call15.i = call ptr @parport_register_dev_model(ptr noundef %pb, ptr noundef nonnull @.str, ptr noundef nonnull %ppa_cb.i, i32 noundef %33) #12
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15.i, ptr %call7.i.i.i, align 8
  %tobool18.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not.i, label %if.end12.i.out.i_crit_edge, label %if.end20.i

if.end12.i.out.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end20.i:                                       ; preds = %if.end12.i
  %waiting21.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %waiting.i, ptr %waiting21.i, align 4
  call void @prepare_to_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i, i32 noundef 2) #12
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #12
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i.i, align 8
  %call6.i.i = call i32 @parport_claim(ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.end20.i.ppa_pb_claim.exit.i_crit_edge

if.end20.i.ppa_pb_claim.exit.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_pb_claim.exit.i

if.then.i.i:                                      ; preds = %if.end20.i
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i.i, align 8
  %port.i.i.i = getelementptr inbounds %struct.pardevice, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %base.i, align 4
  %cur_cmd.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %cur_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_cmd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phase.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 22, i32 9
  %47 = ptrtoint ptr %phase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %phase.i.i.i, align 4
  br label %ppa_pb_claim.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %waiting21.i, align 4
  call void @__wake_up(ptr noundef %49, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %ppa_pb_claim.exit.i

ppa_pb_claim.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end20.i.ppa_pb_claim.exit.i_crit_edge
  %res.0.i.i = phi i8 [ 64, %if.end20.i.ppa_pb_claim.exit.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %if.else.i.i.i ]
  %wanted.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %wanted.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %res.0.i.i
  store i8 %bf.set.i.i, ptr %wanted.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i.i) #12
  br i1 %cmp7.i.i, label %ppa_pb_claim.exit.i.if.end26.i_crit_edge, label %if.then24.i

ppa_pb_claim.exit.i.if.end26.i_crit_edge:         ; preds = %ppa_pb_claim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then24.i:                                      ; preds = %ppa_pb_claim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i = call i32 @schedule_timeout(i32 noundef 300) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %ppa_pb_claim.exit.i.if.end26.i_crit_edge
  %51 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %wanted.i.i, align 4
  %52 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool27.not.i = icmp eq i8 %52, 0
  br i1 %tobool27.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end26.i
  %number.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 26
  %53 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %number.i, align 4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %54) #16
  %call2.i2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #12
  %55 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i3.i = load i8, ptr %wanted.i.i, align 4
  %bf.clear8.i.i = and i8 %bf.load.i3.i, -65
  store i8 %bf.clear8.i.i, ptr %wanted.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i2.i) #12
  %56 = and i8 %bf.load.i3.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i, label %if.then.i4.i, label %do.end31.i.ppa_pb_dismiss.exit.i_crit_edge

do.end31.i.ppa_pb_dismiss.exit.i_crit_edge:       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_pb_dismiss.exit.i

if.then.i4.i:                                     ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %58) #12
  br label %ppa_pb_dismiss.exit.i

ppa_pb_dismiss.exit.i:                            ; preds = %if.then.i4.i, %do.end31.i.ppa_pb_dismiss.exit.i_crit_edge
  %59 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %waiting21.i, align 4
  call void @finish_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i) #12
  br label %out1.i

if.end34.i:                                       ; preds = %if.end26.i
  %60 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %waiting21.i, align 4
  call void @finish_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i) #12
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i.i, align 8
  %port.i = getelementptr inbounds %struct.pardevice, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %base.i, align 4
  %68 = load ptr, ptr %port.i, align 4
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_hi.i, align 4
  %add41.i = add i32 %66, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  %and.i5.i = and i32 %add41.i, 1048575
  %add.i.i = or i32 %and.i5.i, -18874368
  %71 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 12) #12, !srcloc !130
  %72 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call7.i.i.i, align 8
  %port43.i = getelementptr inbounds %struct.pardevice, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %port43.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port43.i, align 4
  %modes44.i = getelementptr inbounds %struct.parport, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %modes44.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %modes44.i, align 8
  %and.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool46.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool46.not.i, i32 1, i32 2
  %78 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %spec.select.i, ptr %mode.i, align 8
  %and50.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end34.i.if.end74.i_crit_edge, label %if.end61.i

if.end34.i.if.end74.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.end61.i:                                       ; preds = %if.end34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  call void @arm_heavy_mb() #12
  %add56.i = add i32 %70, 2
  %and57.i = and i32 %add56.i, 1048575
  %add58.i = or i32 %and57.i, -18874368
  %79 = inttoptr i32 %add58.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 32) #12, !srcloc !130
  %80 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %mode.i, align 8
  %81 = and i32 %77, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %81)
  %.not.i = icmp eq i32 %81, 12
  br i1 %.not.i, label %do.body67.i, label %if.end61.i.if.end74.i_crit_edge

if.end61.i.if.end74.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

do.body67.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 -128) #12, !srcloc !130
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.body67.i, %if.end61.i.if.end74.i_crit_edge, %if.end34.i.if.end74.i_crit_edge
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %base.i, align 4
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 0) #12
  %conv1.i.i = and i32 %83, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  %add.i.i.i = add nuw nsw i32 %conv1.i.i, -18874366
  %84 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 14) #12, !srcloc !130
  %add4.i.i = add nuw nsw i32 %conv1.i.i, -18874367
  %85 = inttoptr i32 %add4.i.i to ptr
  %86 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #12, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  %87 = and i8 %86, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.not.i6.i = icmp ne i8 %87, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 12) #12, !srcloc !130
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #12, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !135
  %89 = and i8 %88, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp21.i.i = icmp eq i8 %89, 0
  %retv.1.i.i = select i1 %cmp21.i.i, i1 %cmp.not.i6.i, i1 false
  br i1 %retv.1.i.i, label %if.then26.i.i, label %if.then30.critedge.i.i

if.then26.i.i:                                    ; preds = %if.end74.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  call void @arm_heavy_mb() #12
  %add.i47.i.i = or i32 %conv1.i.i, -18874368
  %90 = inttoptr i32 %add.i47.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 64) #12, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 8) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 6442440) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 12) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #12
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #12
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base.i, align 4
  %96 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode.i, align 8
  %and.i48.i.i = and i32 %95, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48.i.i)
  %cmp1.i.i.i = icmp eq i32 %and.i48.i.i, 0
  %add.i49.i.i = add i32 %95, 2
  %and.i.i50.i.i = and i32 %add.i49.i.i, 1048575
  %add.i.i51.i.i = or i32 %and.i.i50.i.i, -18874368
  %98 = inttoptr i32 %add.i.i51.i.i to ptr
  %add32.i.i.i = add i32 %95, 1
  %and33.i.i.i = and i32 %add32.i.i.i, 1048575
  %add34.i.i.i = or i32 %and33.i.i.i, -18874368
  %99 = inttoptr i32 %add34.i.i.i to ptr
  %and.i122.i.i.i = and i32 %95, 1048575
  %add.i123.i.i.i = or i32 %and.i122.i.i.i, -18874368
  %100 = inttoptr i32 %add.i123.i.i.i to ptr
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.then3.i.i.i.for.body.i.i.i_crit_edge, %if.then26.i.i
  %loop.0137.i.i.i = phi i32 [ 0, %if.then26.i.i ], [ %inc68.i.i.i, %if.then3.i.i.i.for.body.i.i.i_crit_edge ]
  br i1 %cmp1.i.i.i, label %if.then.i.i7.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i7.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5, ptr %mode.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i7.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 1) #12
  %call135.i.i.i = call fastcc i32 @ppa_select(ptr noundef %call7.i.i.i, i32 noundef %loop.0137.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i.i.i)
  %tobool.not136.i.i.i = icmp eq i32 %call135.i.i.i, 0
  br i1 %tobool.not136.i.i.i, label %if.end.i.i.i.if.then3.i.i.i_crit_edge, label %if.end.i.i.i.do.end.i.i.i_crit_edge

if.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end.i.i.i
  br label %do.end.i.i.i

if.end.i.i.i.if.then3.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %second_pass.backedge.i.i.i.if.then3.i.i.i_crit_edge, %if.end.i.i.i.if.then3.i.i.i_crit_edge
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  %inc68.i.i.i = add nuw nsw i32 %loop.0137.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc68.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %if.then3.i.i.i.ppa_init.exit.thread.i_crit_edge, label %if.then3.i.i.i.for.body.i.i.i_crit_edge

if.then3.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

if.then3.i.i.i.ppa_init.exit.thread.i_crit_edge:  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_init.exit.thread.i

do.end.i.i.i:                                     ; preds = %second_pass.backedge.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.i.i.do.end.i.i.i_crit_edge
  %102 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode.i, align 8
  %arrayidx.i.i.i = getelementptr [7 x ptr], ptr @PPA_MODE_STRING, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %loop.0137.i.i.i, ptr noundef %105) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 12) #12, !srcloc !130
  %call12.i.i.i = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %do.end.i.i.i.for.end.i.i.i_crit_edge, label %for.body11.i.i.i.1

do.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body11.i.i.i.1:                               ; preds = %do.end.i.i.i
  %call12.i.i.i.1 = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.1)
  %tobool10.not.i.i.i.1 = icmp eq i32 %call12.i.i.i.1, 0
  br i1 %tobool10.not.i.i.i.1, label %for.body11.i.i.i.1.for.end.i.i.i_crit_edge, label %for.body11.i.i.i.2

for.body11.i.i.i.1.for.end.i.i.i_crit_edge:       ; preds = %for.body11.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body11.i.i.i.2:                               ; preds = %for.body11.i.i.i.1
  %call12.i.i.i.2 = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.2)
  %tobool10.not.i.i.i.2 = icmp eq i32 %call12.i.i.i.2, 0
  br i1 %tobool10.not.i.i.i.2, label %for.body11.i.i.i.2.for.end.i.i.i_crit_edge, label %for.body11.i.i.i.3

for.body11.i.i.i.2.for.end.i.i.i_crit_edge:       ; preds = %for.body11.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body11.i.i.i.3:                               ; preds = %for.body11.i.i.i.2
  %call12.i.i.i.3 = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.3)
  %tobool10.not.i.i.i.3 = icmp eq i32 %call12.i.i.i.3, 0
  br i1 %tobool10.not.i.i.i.3, label %for.body11.i.i.i.3.for.end.i.i.i_crit_edge, label %for.body11.i.i.i.4

for.body11.i.i.i.3.for.end.i.i.i_crit_edge:       ; preds = %for.body11.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body11.i.i.i.4:                               ; preds = %for.body11.i.i.i.3
  %call12.i.i.i.4 = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.4)
  %tobool10.not.i.i.i.4 = icmp eq i32 %call12.i.i.i.4, 0
  br i1 %tobool10.not.i.i.i.4, label %for.body11.i.i.i.4.for.end.i.i.i_crit_edge, label %for.body11.i.i.i.5

for.body11.i.i.i.4.for.end.i.i.i_crit_edge:       ; preds = %for.body11.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body11.i.i.i.5:                               ; preds = %for.body11.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i.i.i.5 = call fastcc i32 @ppa_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.5)
  %tobool10.not.i.i.i.5 = icmp eq i32 %call12.i.i.i.5, 0
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body11.i.i.i.5, %for.body11.i.i.i.4.for.end.i.i.i_crit_edge, %for.body11.i.i.i.3.for.end.i.i.i_crit_edge, %for.body11.i.i.i.2.for.end.i.i.i_crit_edge, %for.body11.i.i.i.1.for.end.i.i.i_crit_edge, %do.end.i.i.i.for.end.i.i.i_crit_edge
  %tobool10.not.i.i.i.lcssa = phi i1 [ %tobool10.not.i.i.i, %do.end.i.i.i.for.end.i.i.i_crit_edge ], [ %tobool10.not.i.i.i.1, %for.body11.i.i.i.1.for.end.i.i.i_crit_edge ], [ %tobool10.not.i.i.i.2, %for.body11.i.i.i.2.for.end.i.i.i_crit_edge ], [ %tobool10.not.i.i.i.3, %for.body11.i.i.i.3.for.end.i.i.i_crit_edge ], [ %tobool10.not.i.i.i.4, %for.body11.i.i.i.4.for.end.i.i.i_crit_edge ], [ %tobool10.not.i.i.i.5, %for.body11.i.i.i.5 ]
  br i1 %tobool10.not.i.i.i.lcssa, label %if.then14.i.i.i, label %if.end29.i.i.i

if.then14.i.i.i:                                  ; preds = %for.end.i.i.i
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 1) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 64) #12, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 8) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 6442440) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 12) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #12
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #12
  %109 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %110)
  %cmp24.i.i.i = icmp eq i32 %110, 5
  br i1 %cmp24.i.i.i, label %if.then14.i.i.i.second_pass.backedge.i.i.i_crit_edge, label %if.then14.i.i.i.ppa_init.exit.thread.i_crit_edge

if.then14.i.i.i.ppa_init.exit.thread.i_crit_edge: ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_init.exit.thread.i

if.then14.i.i.i.second_pass.backedge.i.i.i_crit_edge: ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %second_pass.backedge.i.i.i

second_pass.backedge.i.i.i:                       ; preds = %if.then52.i.i.i.second_pass.backedge.i.i.i_crit_edge, %if.then14.i.i.i.second_pass.backedge.i.i.i_crit_edge
  %111 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %97, ptr %mode.i, align 8
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 1) #12
  %call.i.i.i = call fastcc i32 @ppa_select(ptr noundef %call7.i.i.i, i32 noundef %loop.0137.i.i.i) #12
  %tobool.not.i.i8.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i8.i, label %second_pass.backedge.i.i.i.if.then3.i.i.i_crit_edge, label %second_pass.backedge.i.i.i.do.end.i.i.i_crit_edge

second_pass.backedge.i.i.i.do.end.i.i.i_crit_edge: ; preds = %second_pass.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

second_pass.backedge.i.i.i.if.then3.i.i.i_crit_edge: ; preds = %second_pass.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i.i

if.end29.i.i.i:                                   ; preds = %for.end.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 12) #12, !srcloc !130
  br label %do.body31.i.i.i

do.body31.i.i.i:                                  ; preds = %do.body31.i.i.i.do.body31.i.i.i_crit_edge, %if.end29.i.i.i
  %k.0.i.i.i = phi i32 [ 1000000, %if.end29.i.i.i ], [ %dec.i.i.i, %do.body31.i.i.i.do.body31.i.i.i_crit_edge ]
  %112 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #12, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool41.not.i.i.i = icmp slt i8 %112, 0
  %dec.i.i.i = add nsw i32 %k.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %or.cond115.i.i.i = select i1 %tobool41.not.i.i.i, i1 true, i1 %tobool43.not.i.i.i
  br i1 %or.cond115.i.i.i, label %do.end45.i.i.i, label %do.body31.i.i.i.do.body31.i.i.i_crit_edge

do.body31.i.i.i.do.body31.i.i.i_crit_edge:        ; preds = %do.body31.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31.i.i.i

do.end45.i.i.i:                                   ; preds = %do.body31.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %112)
  %cmp50.not.i.i.i = icmp ugt i8 %112, -17
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  br i1 %cmp50.not.i.i.i, label %if.end78.i, label %if.then52.i.i.i

if.then52.i.i.i:                                  ; preds = %do.end45.i.i.i
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 1) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 64) #12, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 8) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 6442440) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 12) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #12
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #12
  %117 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %118)
  %cmp54.i.i.i = icmp eq i32 %118, 5
  br i1 %cmp54.i.i.i, label %if.then52.i.i.i.second_pass.backedge.i.i.i_crit_edge, label %if.then52.i.i.i.ppa_init.exit.thread.i_crit_edge

if.then52.i.i.i.ppa_init.exit.thread.i_crit_edge: ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_init.exit.thread.i

if.then52.i.i.i.second_pass.backedge.i.i.i_crit_edge: ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %second_pass.backedge.i.i.i

if.then30.critedge.i.i:                           ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #12
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #12
  %121 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %122) #12
  br label %out1.i

ppa_init.exit.thread.i:                           ; preds = %if.then52.i.i.i.ppa_init.exit.thread.i_crit_edge, %if.then14.i.i.i.ppa_init.exit.thread.i_crit_edge, %if.then3.i.i.i.ppa_init.exit.thread.i_crit_edge
  %123 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %124) #12
  br label %out1.i

if.end78.i:                                       ; preds = %do.end45.i.i.i
  %125 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mode.i, align 8
  %arrayidx65.i.i.i = getelementptr [7 x ptr], ptr @PPA_MODE_STRING, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx65.i.i.i, align 4
  %call66.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %loop.0137.i.i.i, ptr noundef %128) #16
  call fastcc void @ppa_connect(ptr noundef %call7.i.i.i, i32 noundef 1) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 64) #12, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 8) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 6442440) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 12) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %130(i32 noundef 214748000) #12
  call fastcc void @ppa_disconnect(ptr noundef %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 214748000) #12
  %132 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %133) #12
  %134 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mode.i, align 8
  %ppa_tq.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4
  call void @__init_work(ptr noundef %ppa_tq.i, i32 noundef 0) #12
  %136 = ptrtoint ptr %ppa_tq.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -64, ptr %ppa_tq.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__ppa_attach.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry92.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1
  %137 = ptrtoint ptr %entry92.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %entry92.i, ptr %entry92.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %138 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %entry92.i, ptr %prev.i.i, align 8
  %func95.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %139 = ptrtoint ptr %func95.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @ppa_interrupt, ptr %func95.i, align 4
  %timer.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @__ppa_attach.__key.8) #12
  %call104.i = call ptr @scsi_host_alloc(ptr noundef nonnull @ppa_template, i32 noundef 4) #12
  %tobool105.not.i = icmp eq ptr %call104.i, null
  br i1 %tobool105.not.i, label %if.end78.i.out1.i_crit_edge, label %if.end107.i

if.end78.i.out1.i_crit_edge:                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out1.i

if.end107.i:                                      ; preds = %if.end78.i
  %.off.i = add i32 %135, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select1.i = select i1 %switch.i, i8 3, i8 8
  %140 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pb, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call104.i, i32 0, i32 44
  %142 = ptrtoint ptr %io_port.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %io_port.i, align 8
  %n_io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call104.i, i32 0, i32 45
  %143 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %spec.select1.i, ptr %n_io_port.i, align 4
  %dma_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %call104.i, i32 0, i32 46
  %144 = ptrtoint ptr %dma_channel.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -1, ptr %dma_channel.i, align 1
  %number109.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 26
  %145 = ptrtoint ptr %number109.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %number109.i, align 4
  %unique_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call104.i, i32 0, i32 23
  %147 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %unique_id.i, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call104.i, i32 0, i32 53
  %148 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i.i.i, ptr %hostdata.i, align 8
  %host110.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 10
  %149 = ptrtoint ptr %host110.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call104.i, ptr %host110.i, align 8
  %list.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 11
  %150 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ppa_hosts, i32 0, i32 1), align 4
  %call.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %150, ptr noundef nonnull @ppa_hosts) #12
  br i1 %call.i.i10.i, label %if.end.i.i11.i, label %if.end107.i.list_add_tail.exit.i_crit_edge

if.end107.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i11.i:                                   ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @ppa_hosts, i32 0, i32 1), align 4
  %151 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @ppa_hosts, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %152 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %150, ptr %prev3.i.i.i, align 8
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %list.i, ptr %150, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i11.i, %if.end107.i.list_add_tail.exit.i_crit_edge
  %call.i.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call104.i, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool112.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %out2.i

if.end114.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @scsi_scan_host(ptr noundef nonnull %call104.i) #12
  br label %__ppa_attach.exit

out2.i:                                           ; preds = %list_add_tail.exit.i
  %call.i.i12.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i12.i, label %if.end.i.i13.i, label %out2.i.list_del_init.exit.i_crit_edge

out2.i.list_del_init.exit.i_crit_edge:            ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i13.i:                                   ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %154 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i, align 8
  %156 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev1.i.i.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %157, ptr %155, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i13.i, %out2.i.list_del_init.exit.i_crit_edge
  %160 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ppa_struct, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %161 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %list.i, ptr %prev.i3.i.i, align 8
  call void @scsi_host_put(ptr noundef nonnull %call104.i) #12
  br label %out1.i

out1.i:                                           ; preds = %list_del_init.exit.i, %if.end78.i.out1.i_crit_edge, %ppa_init.exit.thread.i, %if.then30.critedge.i.i, %ppa_pb_dismiss.exit.i
  %162 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_unregister_device(ptr noundef %163) #12
  br label %out.i

out.i:                                            ; preds = %out1.i, %if.end12.i.out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %__ppa_attach.exit

__ppa_attach.exit:                                ; preds = %out.i, %if.end114.i, %entry.__ppa_attach.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppa_cb.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %waiting.i) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppa_wakeup(ptr nocapture noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #12
  %wanted = getelementptr inbounds %struct.ppa_struct, ptr %ref, i32 0, i32 7
  %0 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wanted, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref, align 4
  %call6 = tail call i32 @parport_claim(ptr noundef %3) #12
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %base2.i = getelementptr inbounds %struct.ppa_struct, ptr %ref, i32 0, i32 1
  %10 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base2.i, align 4
  %cur_cmd.i = getelementptr inbounds %struct.ppa_struct, ptr %ref, i32 0, i32 3
  %11 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 22, i32 9
  %13 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %phase.i, align 4
  br label %got_it.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %waiting.i = getelementptr inbounds %struct.ppa_struct, ptr %ref, i32 0, i32 9
  %14 = ptrtoint ptr %waiting.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %waiting.i, align 4
  tail call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %got_it.exit

got_it.exit:                                      ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load8 = load i8, ptr %wanted, align 4
  %bf.clear9 = and i8 %bf.load8, -65
  store i8 %bf.clear9, ptr %wanted, align 4
  br label %if.end

if.end:                                           ; preds = %got_it.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppa_interrupt(ptr noundef %work) #2 align 64 {
entry:
  %l.i = alloca i8, align 1
  %h.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %cur_cmd = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l.i) #12
  %4 = ptrtoint ptr %l.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %l.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h.i) #12
  %5 = ptrtoint ptr %h.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %h.i, align 1
  %failed.i = getelementptr i8, ptr %work, i32 108
  %6 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %failed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %7 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %phase.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end161.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %if.end.i.sw.bb48.i_crit_edge
    i32 3, label %if.end.i.sw.bb57.i_crit_edge
    i32 4, label %if.end.i.sw.bb80.i_crit_edge
    i32 5, label %if.end.i.sw.bb107.i_crit_edge
    i32 6, label %if.end.i.sw.bb135.i_crit_edge
  ]

if.end.i.sw.bb135.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb135.i

if.end.i.sw.bb107.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb107.i

if.end.i.sw.bb80.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80.i

if.end.i.sw.bb57.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb57.i

if.end.i.sw.bb48.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb48.i

sw.bb.i:                                          ; preds = %if.end.i
  %jstart.i = getelementptr i8, ptr %work, i32 100
  %10 = ptrtoint ptr %jstart.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jstart.i, align 4
  %add.i = add i32 %11, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then2.i, label %sw.bb.i.if.then4_crit_edge

sw.bb.i.if.then4_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then2.i:                                       ; preds = %sw.bb.i
  %13 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then2.i.if.end6_crit_edge, label %if.then.i.i

if.then2.i.if.end6_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131072, ptr %result.i.i, align 4
  %16 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %failed.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %failed.i, align 4
  br label %if.end6

sw.bb4.i:                                         ; preds = %if.end.i
  tail call fastcc void @ppa_connect(ptr noundef %add.ptr, i32 noundef 1) #12
  %conv6.i = and i32 %3, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i.i = add nuw nsw i32 %conv6.i, -18874366
  %17 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 14) #12, !srcloc !130
  %add10.i = add nuw nsw i32 %conv6.i, -18874367
  %18 = inttoptr i32 %add10.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 12) #12, !srcloc !130
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp30.i = icmp eq i8 %21, 0
  %22 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not306.i = icmp ne i8 %22, 0
  %tobool35.not.i = select i1 %cmp30.i, i1 %tobool35.not306.i, i1 false
  br i1 %tobool35.not.i, label %cleanup.i, label %if.then36.i

if.then36.i:                                      ; preds = %sw.bb4.i
  %jstart37.i = getelementptr i8, ptr %work, i32 100
  %23 = ptrtoint ptr %jstart37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jstart37.i, align 4
  %add38.i = add i32 %24, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub39.i = sub i32 %add38.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39.i)
  %cmp40.i = icmp slt i32 %sub39.i, 0
  br i1 %cmp40.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then36.i
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  %26 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i217.i = icmp eq ptr %27, null
  br i1 %tobool.not.i217.i, label %do.end.i.if.end6_crit_edge, label %if.then.i222.i

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i222.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i218.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %result.i218.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 131072, ptr %result.i218.i, align 4
  %29 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i220.i = load i8, ptr %failed.i, align 4
  %bf.set.i221.i = or i8 %bf.load.i220.i, -128
  store i8 %bf.set.i221.i, ptr %failed.i, align 4
  br label %if.end6

if.else.i:                                        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ppa_disconnect(ptr noundef %add.ptr) #12
  br label %if.then4

cleanup.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %phase.i, align 4
  %inc.i = add i32 %31, 1
  store volatile i32 %inc.i, ptr %phase.i, align 4
  br label %sw.bb48.i

sw.bb48.i:                                        ; preds = %cleanup.i, %if.end.i.sw.bb48.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i.i, align 8
  %call50.i = tail call fastcc i32 @ppa_select(ptr noundef %add.ptr, i32 noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.end53.i

if.then52.i:                                      ; preds = %sw.bb48.i
  %36 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i225.i = icmp eq ptr %37, null
  br i1 %tobool.not.i225.i, label %if.then52.i.if.end6_crit_edge, label %if.then.i230.i

if.then52.i.if.end6_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i230.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i226.i = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 24
  %38 = ptrtoint ptr %result.i226.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65536, ptr %result.i226.i, align 4
  %39 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i228.i = load i8, ptr %failed.i, align 4
  %bf.set.i229.i = or i8 %bf.load.i228.i, -128
  store i8 %bf.set.i229.i, ptr %failed.i, align 4
  br label %if.end6

if.end53.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %phase.i, align 4
  %inc56.i = add i32 %41, 1
  store volatile i32 %inc56.i, ptr %phase.i, align 4
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %if.end53.i, %if.end.i.sw.bb57.i_crit_edge
  %conv58.i = and i32 %3, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i233.i = add nuw nsw i32 %conv58.i, -18874366
  %42 = inttoptr i32 %add.i233.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 12) #12, !srcloc !130
  %add64.i = add nuw nsw i32 %conv58.i, -18874367
  %43 = inttoptr i32 %add64.i to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool70.not.i = icmp sgt i8 %44, -1
  br i1 %tobool70.not.i, label %sw.bb57.i.if.then4_crit_edge, label %if.end72.i

sw.bb57.i.if.then4_crit_edge:                     ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end72.i:                                       ; preds = %sw.bb57.i
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %hostdata.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hostdata.i.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.ppa_struct, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.i.i, align 4
  %add.i234.i = add i32 %52, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %and.i.i.i = and i32 %add.i234.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %53 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 12) #12, !srcloc !130
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %54 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cmd_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp10.not.i.i = icmp eq i16 %55, 0
  br i1 %cmp10.not.i.i, label %if.end72.i.if.end76.i_crit_edge, label %if.end72.i.for.body.i.i_crit_edge

if.end72.i.for.body.i.i_crit_edge:                ; preds = %if.end72.i
  br label %for.body.i.i

if.end72.i.if.end76.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %k.011.i.i, 1
  %56 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cmd_len.i.i, align 4
  %conv.i.i = zext i16 %57 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end76.i_crit_edge

for.cond.i.i.if.end76.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end72.i.for.body.i.i_crit_edge
  %k.011.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end72.i.for.body.i.i_crit_edge ]
  %58 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %59, i32 %k.011.i.i
  %call2.i.i = tail call fastcc i32 @ppa_out(ptr noundef %50, ptr noundef %arrayidx.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i235.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i235.i, label %for.body.i.i.if.end6_crit_edge, label %for.cond.i.i

for.body.i.i.if.end6_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end76.i:                                       ; preds = %for.cond.i.i.if.end76.i_crit_edge, %if.end72.i.if.end76.i_crit_edge
  %60 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %phase.i, align 4
  %inc79.i = add i32 %61, 1
  store volatile i32 %inc79.i, ptr %phase.i, align 4
  br label %sw.bb80.i

sw.bb80.i:                                        ; preds = %if.end76.i, %if.end.i.sw.bb80.i_crit_edge
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %62 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool82.not.i = icmp eq i32 %63, 0
  br i1 %tobool82.not.i, label %if.else93.i, label %if.then83.i

if.then83.i:                                      ; preds = %sw.bb80.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %64 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdb.i.i, align 4
  %buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %66 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %buffer.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 2
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i, align 4
  %this_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %69 = ptrtoint ptr %this_residual.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %this_residual.i, align 4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 4
  %and.i.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !142

do.body2.i.i.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i236.i = and i32 %71, -4
  %72 = inttoptr i32 %and.i.i236.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %72) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 1
  %73 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %74
  br label %if.end100.i

if.else93.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #14
  %buffer95.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %75 = ptrtoint ptr %buffer95.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %buffer95.i, align 4
  %this_residual97.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %76 = ptrtoint ptr %this_residual97.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %this_residual97.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else93.i, %sg_virt.exit.i
  %storemerge.i = phi ptr [ null, %if.else93.i ], [ %add.ptr.i.i, %sg_virt.exit.i ]
  %77 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %storemerge.i, ptr %SCp.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %78 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nents.i.i, align 4
  %sub102.i = add i32 %79, -1
  %buffers_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 3
  %80 = ptrtoint ptr %buffers_residual.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub102.i, ptr %buffers_residual.i, align 4
  %81 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %phase.i, align 4
  %inc106.i = add i32 %82, 1
  store volatile i32 %inc106.i, ptr %phase.i, align 4
  br label %sw.bb107.i

sw.bb107.i:                                       ; preds = %if.end100.i, %if.end.i.sw.bb107.i_crit_edge
  %conv108.i = and i32 %3, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i238.i = add nuw nsw i32 %conv108.i, -18874366
  %83 = inttoptr i32 %add.i238.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 12) #12, !srcloc !130
  %add114.i = add nuw nsw i32 %conv108.i, -18874367
  %84 = inttoptr i32 %add114.i to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %tobool120.not.i = icmp sgt i8 %85, -1
  br i1 %tobool120.not.i, label %sw.bb107.i.if.then4_crit_edge, label %if.end122.i

sw.bb107.i.if.then4_crit_edge:                    ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end122.i:                                      ; preds = %sw.bb107.i
  %device.i239.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %device.i239.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device.i239.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %hostdata.i.i240.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 53
  %90 = ptrtoint ptr %hostdata.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hostdata.i.i240.i, align 8
  %base.i241.i = getelementptr inbounds %struct.ppa_struct, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %base.i241.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base.i241.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %cmnd.i242.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %95 = ptrtoint ptr %cmnd.i242.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmnd.i242.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %99 = add i8 %98, -8
  %switch.and.i.i = and i8 %99, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  %conv13.i.i = and i32 %93, 65535
  %add14.i.i = add nuw nsw i32 %conv13.i.i, -18874367
  %100 = inttoptr i32 %add14.i.i to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %add23.i.i = add i32 %94, 1
  %this_residual.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %recon_tmo.i.i = getelementptr inbounds %struct.ppa_struct, ptr %91, i32 0, i32 6
  %buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %buffers_residual.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end104.i.i.while.cond.i.i_crit_edge, %if.end122.i
  %r.0.in.i.i = phi i8 [ %101, %if.end122.i ], [ %137, %if.end104.i.i.while.cond.i.i_crit_edge ]
  %r.0.i.i = and i8 %r.0.in.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %r.0.in.i.i)
  %cmp21.not.i.i = icmp ugt i8 %r.0.in.i.i, -17
  br i1 %cmp21.not.i.i, label %if.end131.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add23.i.i, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp24.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp24.i.i, label %while.body.i.i.if.then4_crit_edge, label %if.end.i.i

while.body.i.i.if.then4_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end.i.i:                                       ; preds = %while.body.i.i
  %103 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp26.i.i = icmp slt i32 %104, 1
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end.i.i
  %cur_cmd.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %91, i32 0, i32 3
  %105 = ptrtoint ptr %cur_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur_cmd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i, label %if.then28.i.i.if.end6_crit_edge, label %if.then28.i.i.cleanup121.sink.split.i.i_crit_edge

if.then28.i.i.cleanup121.sink.split.i.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121.sink.split.i.i

if.then28.i.i.if.end6_crit_edge:                  ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end29.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %r.0.i.i)
  %cmp32.not.i.i = icmp ugt i8 %r.0.i.i, -65
  br i1 %cmp32.not.i.i, label %if.end29.i.i.if.end53.i.i_crit_edge, label %if.then34.i.i

if.end29.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i.i

if.then34.i.i:                                    ; preds = %if.end29.i.i
  %107 = ptrtoint ptr %recon_tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %recon_tmo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not175.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not175.i.i, label %if.then34.i.i.if.then4_crit_edge, label %if.then34.i.i.land.rhs.i.i_crit_edge

if.then34.i.i.land.rhs.i.i_crit_edge:             ; preds = %if.then34.i.i
  br label %land.rhs.i.i

if.then34.i.i.if.then4_crit_edge:                 ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.rhs.i.i:                                     ; preds = %for.body.i244.i.land.rhs.i.i_crit_edge, %if.then34.i.i.land.rhs.i.i_crit_edge
  %k.0176.i.i = phi i32 [ %dec.i.i, %for.body.i244.i.land.rhs.i.i_crit_edge ], [ %108, %if.then34.i.i.land.rhs.i.i_crit_edge ]
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %109)
  %cmp48.not.i.i = icmp ugt i8 %109, -65
  br i1 %cmp48.not.i.i, label %if.end53.loopexit.i.i, label %for.body.i244.i

for.body.i244.i:                                  ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748) #12
  %dec.i.i = add i32 %k.0176.i.i, -1
  %tobool.not.i243.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i243.i, label %for.body.i244.i.if.then4_crit_edge, label %for.body.i244.i.land.rhs.i.i_crit_edge

for.body.i244.i.land.rhs.i.i_crit_edge:           ; preds = %for.body.i244.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.body.i244.i.if.then4_crit_edge:               ; preds = %for.body.i244.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end53.loopexit.i.i:                            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = and i8 %109, -16
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end53.loopexit.i.i, %if.end29.i.i.if.end53.i.i_crit_edge
  %r.3.i.i = phi i8 [ %r.0.i.i, %if.end29.i.i.if.end53.i.i_crit_edge ], [ %111, %if.end53.loopexit.i.i ]
  br i1 %switch.selectcmp.i.i, label %land.end60.i.i, label %if.end53.i.i.land.end60.thread.i.i_crit_edge

if.end53.i.i.land.end60.thread.i.i_crit_edge:     ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end60.thread.i.i

land.end60.i.i:                                   ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %113)
  %cmp58.inv.i.i = icmp slt i32 %113, 512
  %spec.select.i.i = select i1 %cmp58.inv.i.i, i32 1, i32 512
  br label %land.end60.thread.i.i

land.end60.thread.i.i:                            ; preds = %land.end60.i.i, %if.end53.i.i.land.end60.thread.i.i_crit_edge
  %114 = phi i32 [ 1, %if.end53.i.i.land.end60.thread.i.i_crit_edge ], [ %spec.select.i.i, %land.end60.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %r.3.i.i)
  %cmp62.i.i = icmp eq i8 %r.3.i.i, -64
  %115 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %SCp.i, align 4
  br i1 %cmp62.i.i, label %if.then64.i.i, label %if.else.i.i

if.then64.i.i:                                    ; preds = %land.end60.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call66.i.i = tail call fastcc i32 @ppa_out(ptr noundef %91, ptr noundef %116, i32 noundef %114) #12
  br label %if.end70.i.i

if.else.i.i:                                      ; preds = %land.end60.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call69.i.i = tail call fastcc i32 @ppa_in(ptr noundef %91, ptr noundef %116, i32 noundef %114) #12
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.else.i.i, %if.then64.i.i
  %status.0.i.i = phi i32 [ %call66.i.i, %if.then64.i.i ], [ %call69.i.i, %if.else.i.i ]
  %117 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %SCp.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %118, i32 %114
  store ptr %add.ptr.i245.i, ptr %SCp.i, align 4
  %119 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %this_residual.i.i, align 4
  %sub75.i.i = sub i32 %120, %114
  store i32 %sub75.i.i, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool76.not.i.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool76.not.i.i, label %if.then77.i.i, label %if.end78.i.i

if.then77.i.i:                                    ; preds = %if.end70.i.i
  %cur_cmd.i164.i.i = getelementptr inbounds %struct.ppa_struct, ptr %91, i32 0, i32 3
  %121 = ptrtoint ptr %cur_cmd.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur_cmd.i164.i.i, align 4
  %tobool.not.i165.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i165.i.i, label %if.then77.i.i.if.end6_crit_edge, label %if.then77.i.i.cleanup121.sink.split.i.i_crit_edge

if.then77.i.i.cleanup121.sink.split.i.i_crit_edge: ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup121.sink.split.i.i

if.then77.i.i.if.end6_crit_edge:                  ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end78.i.i:                                     ; preds = %if.end70.i.i
  %123 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buffer.i.i, align 4
  %tobool80.not.i.i = icmp ne ptr %124, null
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %114)
  %tobool83.not.i.i = icmp eq i32 %120, %114
  %or.cond.i.i = select i1 %tobool80.not.i.i, i1 %tobool83.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then84.i.i, label %if.end78.i.i.if.end104.i.i_crit_edge

if.end78.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i.i

if.then84.i.i:                                    ; preds = %if.end78.i.i
  %125 = ptrtoint ptr %buffers_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %buffers_residual.i.i, align 4
  %dec86.i.i = add i32 %126, -1
  store i32 %dec86.i.i, ptr %buffers_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool87.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool87.not.i.i, label %if.then84.i.i.if.end104.i.i_crit_edge, label %if.then88.i.i

if.then84.i.i.if.end104.i.i_crit_edge:            ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i.i

if.then88.i.i:                                    ; preds = %if.then84.i.i
  %call91.i.i = tail call ptr @sg_next(ptr noundef nonnull %124) #12
  %127 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call91.i.i, ptr %buffer.i.i, align 4
  %length.i246.i = getelementptr inbounds %struct.scatterlist, ptr %call91.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %length.i246.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length.i246.i, align 4
  %130 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %this_residual.i.i, align 4
  %131 = ptrtoint ptr %call91.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %call91.i.i, align 4
  %and.i.i.i.i.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !142

do.body2.i.i.i.i:                                 ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

sg_virt.exit.i.i:                                 ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i247.i = and i32 %132, -4
  %133 = inttoptr i32 %and.i.i.i247.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %133) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call91.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %135
  %136 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr.i.i.i, ptr %SCp.i, align 4
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %sg_virt.exit.i.i, %if.then84.i.i.if.end104.i.i_crit_edge, %if.end78.i.i.if.end104.i.i_crit_edge
  %137 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  %tobool118.not.i.i = icmp sgt i8 %137, -1
  br i1 %tobool118.not.i.i, label %if.end104.i.i.if.then4_crit_edge, label %if.end104.i.i.while.cond.i.i_crit_edge

if.end104.i.i.while.cond.i.i_crit_edge:           ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end104.i.i.if.then4_crit_edge:                 ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

cleanup121.sink.split.i.i:                        ; preds = %if.then77.i.i.cleanup121.sink.split.i.i_crit_edge, %if.then28.i.i.cleanup121.sink.split.i.i_crit_edge
  %.sink182.i.i = phi ptr [ %106, %if.then28.i.i.cleanup121.sink.split.i.i_crit_edge ], [ %122, %if.then77.i.i.cleanup121.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 458752, %if.then28.i.i.cleanup121.sink.split.i.i_crit_edge ], [ 131072, %if.then77.i.i.cleanup121.sink.split.i.i_crit_edge ]
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %.sink182.i.i, i32 0, i32 24
  %138 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %.sink.i.i, ptr %result.i.i.i, align 4
  %failed.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %91, i32 0, i32 7
  %139 = ptrtoint ptr %failed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.i168.i.i = load i8, ptr %failed.i.i.i, align 4
  %bf.set.i169.i.i = or i8 %bf.load.i168.i.i, -128
  store i8 %bf.set.i169.i.i, ptr %failed.i.i.i, align 4
  br label %if.end6

if.end131.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %phase.i, align 4
  %inc134.i = add i32 %141, 1
  store volatile i32 %inc134.i, ptr %phase.i, align 4
  br label %sw.bb135.i

sw.bb135.i:                                       ; preds = %if.end131.i, %if.end.i.sw.bb135.i_crit_edge
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %142 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %result.i, align 4
  %143 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %base.i, align 4
  %conv1.i.i = and i32 %144, 65535
  %add2.i.i = add nuw nsw i32 %conv1.i.i, -18874367
  %145 = inttoptr i32 %add2.i.i to ptr
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %146)
  %cmp.not28.i.i = icmp ugt i8 %146, -65
  br i1 %cmp.not28.i.i, label %sw.bb135.i.ppa_wait.exit.i_crit_edge, label %sw.bb135.i.for.body.i252.i_crit_edge

sw.bb135.i.for.body.i252.i_crit_edge:             ; preds = %sw.bb135.i
  br label %for.body.i252.i

sw.bb135.i.ppa_wait.exit.i_crit_edge:             ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit.i

for.body.i252.i:                                  ; preds = %for.body.i252.i.for.body.i252.i_crit_edge, %sw.bb135.i.for.body.i252.i_crit_edge
  %k.029.i.i = phi i32 [ %dec.i249.i, %for.body.i252.i.for.body.i252.i_crit_edge ], [ 50000, %sw.bb135.i.for.body.i252.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748) #12
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %dec.i249.i = add nsw i32 %k.029.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %148)
  %cmp.not.i.i = icmp ugt i8 %148, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i249.i)
  %tobool.not.i250.i = icmp eq i32 %dec.i249.i, 0
  %or.cond.i251.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i250.i
  br i1 %or.cond.i251.i, label %for.end.i.i, label %for.body.i252.i.for.body.i252.i_crit_edge

for.body.i252.i.for.body.i252.i_crit_edge:        ; preds = %for.body.i252.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i252.i

for.end.i.i:                                      ; preds = %for.body.i252.i
  br i1 %tobool.not.i250.i, label %if.end.i256.i, label %for.end.i.i.ppa_wait.exit.i_crit_edge

for.end.i.i.ppa_wait.exit.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit.i

if.end.i256.i:                                    ; preds = %for.end.i.i
  %149 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i.i255.i = icmp eq ptr %150, null
  br i1 %tobool.not.i.i255.i, label %if.end.i256.i.ppa_wait.exit.thread.i_crit_edge, label %if.then.i.i.i

if.end.i256.i.ppa_wait.exit.thread.i_crit_edge:   ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit.thread.i

if.then.i.i.i:                                    ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i.i257.i = getelementptr inbounds %struct.scsi_cmnd, ptr %150, i32 0, i32 24
  %151 = ptrtoint ptr %result.i.i257.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 196608, ptr %result.i.i257.i, align 4
  %152 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i.i.i = load i8, ptr %failed.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %failed.i, align 4
  br label %ppa_wait.exit.thread.i

ppa_wait.exit.thread.i:                           ; preds = %if.then.i.i.i, %if.end.i256.i.ppa_wait.exit.thread.i_crit_edge
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %if.then140.i

ppa_wait.exit.i:                                  ; preds = %for.end.i.i.ppa_wait.exit.i_crit_edge, %sw.bb135.i.ppa_wait.exit.i_crit_edge
  %r.0.lcssa34.i.i = phi i8 [ %148, %for.end.i.i.ppa_wait.exit.i_crit_edge ], [ %146, %sw.bb135.i.ppa_wait.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %r.0.lcssa34.i.i)
  %cmp138.not.i = icmp ugt i8 %r.0.lcssa34.i.i, -17
  br i1 %cmp138.not.i, label %if.end141.i, label %ppa_wait.exit.i.if.then140.i_crit_edge

ppa_wait.exit.i.if.then140.i_crit_edge:           ; preds = %ppa_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140.i

if.then140.i:                                     ; preds = %ppa_wait.exit.i.if.then140.i_crit_edge, %ppa_wait.exit.thread.i
  %153 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i261.i = icmp eq ptr %154, null
  br i1 %tobool.not.i261.i, label %if.then140.i.if.end6_crit_edge, label %if.then.i266.i

if.then140.i.if.end6_crit_edge:                   ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i266.i:                                   ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i262.i = getelementptr inbounds %struct.scsi_cmnd, ptr %154, i32 0, i32 24
  %155 = ptrtoint ptr %result.i262.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 458752, ptr %result.i262.i, align 4
  %156 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load.i264.i = load i8, ptr %failed.i, align 4
  %bf.set.i265.i = or i8 %bf.load.i264.i, -128
  store i8 %bf.set.i265.i, ptr %failed.i, align 4
  br label %if.end6

if.end141.i:                                      ; preds = %ppa_wait.exit.i
  %call142.i = call fastcc i32 @ppa_in(ptr noundef %add.ptr, ptr noundef nonnull %l.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %if.end141.i.if.end6_crit_edge, label %if.then144.i

if.end141.i.if.end6_crit_edge:                    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then144.i:                                     ; preds = %if.end141.i
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %base.i, align 4
  %conv1.i270.i = and i32 %158, 65535
  %add2.i271.i = add nuw nsw i32 %conv1.i270.i, -18874367
  %159 = inttoptr i32 %add2.i271.i to ptr
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #12, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %160)
  %cmp.not28.i272.i = icmp ugt i8 %160, -65
  br i1 %cmp.not28.i272.i, label %if.then144.i.ppa_wait.exit294.i_crit_edge, label %if.then144.i.for.body.i278.i_crit_edge

if.then144.i.for.body.i278.i_crit_edge:           ; preds = %if.then144.i
  br label %for.body.i278.i

if.then144.i.ppa_wait.exit294.i_crit_edge:        ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit294.i

for.body.i278.i:                                  ; preds = %for.body.i278.i.for.body.i278.i_crit_edge, %if.then144.i.for.body.i278.i_crit_edge
  %k.029.i273.i = phi i32 [ %dec.i274.i, %for.body.i278.i.for.body.i278.i_crit_edge ], [ 50000, %if.then144.i.for.body.i278.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %161(i32 noundef 214748) #12
  %162 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #12, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %dec.i274.i = add nsw i32 %k.029.i273.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %162)
  %cmp.not.i275.i = icmp ugt i8 %162, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i274.i)
  %tobool.not.i276.i = icmp eq i32 %dec.i274.i, 0
  %or.cond.i277.i = select i1 %cmp.not.i275.i, i1 true, i1 %tobool.not.i276.i
  br i1 %or.cond.i277.i, label %for.end.i279.i, label %for.body.i278.i.for.body.i278.i_crit_edge

for.body.i278.i.for.body.i278.i_crit_edge:        ; preds = %for.body.i278.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i278.i

for.end.i279.i:                                   ; preds = %for.body.i278.i
  br i1 %tobool.not.i276.i, label %if.end.i285.i, label %for.end.i279.i.ppa_wait.exit294.i_crit_edge

for.end.i279.i.ppa_wait.exit294.i_crit_edge:      ; preds = %for.end.i279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit294.i

if.end.i285.i:                                    ; preds = %for.end.i279.i
  %163 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i.i284.i = icmp eq ptr %164, null
  br i1 %tobool.not.i.i284.i, label %if.end.i285.i.ppa_wait.exit294.thread.i_crit_edge, label %if.then.i.i290.i

if.end.i285.i.ppa_wait.exit294.thread.i_crit_edge: ; preds = %if.end.i285.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit294.thread.i

if.then.i.i290.i:                                 ; preds = %if.end.i285.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i.i286.i = getelementptr inbounds %struct.scsi_cmnd, ptr %164, i32 0, i32 24
  %165 = ptrtoint ptr %result.i.i286.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 196608, ptr %result.i.i286.i, align 4
  %166 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load.i.i288.i = load i8, ptr %failed.i, align 4
  %bf.set.i.i289.i = or i8 %bf.load.i.i288.i, -128
  store i8 %bf.set.i.i289.i, ptr %failed.i, align 4
  br label %ppa_wait.exit294.thread.i

ppa_wait.exit294.thread.i:                        ; preds = %if.then.i.i290.i, %if.end.i285.i.ppa_wait.exit294.thread.i_crit_edge
  %call20.i291.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %if.end151.i

ppa_wait.exit294.i:                               ; preds = %for.end.i279.i.ppa_wait.exit294.i_crit_edge, %if.then144.i.ppa_wait.exit294.i_crit_edge
  %r.0.lcssa34.i280.i = phi i8 [ %162, %for.end.i279.i.ppa_wait.exit294.i_crit_edge ], [ %160, %if.then144.i.ppa_wait.exit294.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %r.0.lcssa34.i280.i)
  %cmp147.i = icmp ugt i8 %r.0.lcssa34.i280.i, -17
  br i1 %cmp147.i, label %if.then149.i, label %ppa_wait.exit294.i.if.end151.i_crit_edge

ppa_wait.exit294.i.if.end151.i_crit_edge:         ; preds = %ppa_wait.exit294.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151.i

if.then149.i:                                     ; preds = %ppa_wait.exit294.i
  call void @__sanitizer_cov_trace_pc() #14
  %call150.i = call fastcc i32 @ppa_in(ptr noundef %add.ptr, ptr noundef nonnull %h.i, i32 noundef 1) #12
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then149.i, %ppa_wait.exit294.i.if.end151.i_crit_edge, %ppa_wait.exit294.thread.i
  %167 = ptrtoint ptr %h.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %h.i, align 1
  %conv152.i = zext i8 %168 to i32
  %shl.i = shl nuw nsw i32 %conv152.i, 8
  %169 = ptrtoint ptr %l.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %l.i, align 1
  %171 = and i8 %170, -2
  %and155.i = zext i8 %171 to i32
  %add156.i = or i32 %shl.i, %and155.i
  %172 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add156.i, ptr %result.i, align 4
  br label %if.end6

do.end161.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call163.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  br label %if.end6

if.then4:                                         ; preds = %if.end104.i.i.if.then4_crit_edge, %for.body.i244.i.if.then4_crit_edge, %if.then34.i.i.if.then4_crit_edge, %while.body.i.i.if.then4_crit_edge, %sw.bb107.i.if.then4_crit_edge, %sw.bb57.i.if.then4_crit_edge, %if.else.i, %sw.bb.i.if.then4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %173 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %173, ptr noundef %work, i32 noundef 1) #12
  br label %cleanup

if.end6:                                          ; preds = %do.end161.i, %if.end151.i, %if.end141.i.if.end6_crit_edge, %if.then.i266.i, %if.then140.i.if.end6_crit_edge, %cleanup121.sink.split.i.i, %if.then77.i.i.if.end6_crit_edge, %if.then28.i.i.if.end6_crit_edge, %for.body.i.i.if.end6_crit_edge, %if.then.i230.i, %if.then52.i.if.end6_crit_edge, %if.then.i222.i, %do.end.i.if.end6_crit_edge, %if.then.i.i, %if.then2.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l.i) #12
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %174 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp = icmp sgt i32 %175, 1
  br i1 %cmp, label %if.then7, label %if.end6.if.end8_crit_edge

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ppa_disconnect(ptr noundef %add.ptr)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #12
  %176 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load.i19 = load i8, ptr %failed.i, align 4
  %bf.clear8.i = and i8 %bf.load.i19, -65
  store i8 %bf.clear8.i, ptr %failed.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i) #12
  %177 = and i8 %bf.load.i19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i20 = icmp eq i8 %177, 0
  br i1 %tobool.not.i20, label %if.then.i, label %if.end8.ppa_pb_dismiss.exit_crit_edge

if.end8.ppa_pb_dismiss.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_pb_dismiss.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %178 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr, align 4
  call void @parport_release(ptr noundef %179) #12
  br label %ppa_pb_dismiss.exit

ppa_pb_dismiss.exit:                              ; preds = %if.then.i, %if.end8.ppa_pb_dismiss.exit_crit_edge
  %180 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %cur_cmd, align 4
  call void @scsi_done(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %ppa_pb_dismiss.exit, %if.then4, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppa_disconnect(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void @arm_heavy_mb() #12
  %conv.i = and i32 %1, 65535
  %add.i = or i32 %conv.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i.i = add nuw nsw i32 %conv.i, -18874366
  %3 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 60) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 15) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppa_connect(ptr nocapture noundef readonly %dev, i32 noundef %flag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  %conv.i = and i32 %1, 65535
  %add.i = or i32 %conv.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i.i = add nuw nsw i32 %conv.i, -18874366
  %3 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 6) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 60) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 6) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 6) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %.off = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -49) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 6) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -113) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 6) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #12, !srcloc !130
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppa_select(ptr nocapture noundef readonly %dev, i32 noundef %target) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %conv1 = and i32 %1, 65535
  %add2 = add nuw nsw i32 %conv1, -18874367
  %2 = inttoptr i32 %add2 to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %k.0 = phi i32 [ 5000, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %dec = add nsw i32 %k.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #12
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body8:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %shl = shl nuw i32 1, %target
  %conv11 = trunc i32 %shl to i8
  %add14 = or i32 %conv1, -18874368
  %6 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv11) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i = add nuw nsw i32 %conv1, -18874366
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 12) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -128) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 8) #12, !srcloc !130
  br label %do.body29

do.body29:                                        ; preds = %do.body29.do.body29_crit_edge, %do.body8
  %k.1 = phi i32 [ 5000, %do.body8 ], [ %dec30, %do.body29.do.body29_crit_edge ]
  %dec30 = add nsw i32 %k.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool42.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec30)
  %tobool44.not = icmp eq i32 %dec30, 0
  %or.cond62 = select i1 %tobool42.not, i1 true, i1 %tobool44.not
  br i1 %or.cond62, label %do.end46, label %do.body29.do.body29_crit_edge

do.body29.do.body29_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

do.end46:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %not.tobool44.not = xor i1 %tobool44.not, true
  %. = zext i1 %not.tobool44.not to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %., %do.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppa_out(ptr nocapture noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %conv1.i = and i32 %1, 65535
  %add2.i = add nuw nsw i32 %conv1.i, -18874367
  %2 = inttoptr i32 %add2.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %3)
  %cmp.not28.i = icmp ugt i8 %3, -65
  br i1 %cmp.not28.i, label %entry.ppa_wait.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ppa_wait.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.029.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 50000, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %dec.i = add nsw i32 %k.029.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %5)
  %cmp.not.i = icmp ugt i8 %5, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i, label %if.end.i, label %for.end.i.ppa_wait.exit_crit_edge

for.end.i.ppa_wait.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit

if.end.i:                                         ; preds = %for.end.i
  %cur_cmd.i.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %cur_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.ppa_wait.exit.thread_crit_edge, label %if.then.i.i

if.end.i.ppa_wait.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit.thread

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196608, ptr %result.i.i, align 4
  %failed.i.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %failed.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %failed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %failed.i.i, align 4
  br label %ppa_wait.exit.thread

ppa_wait.exit.thread:                             ; preds = %if.then.i.i, %if.end.i.ppa_wait.exit.thread_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %if.then

ppa_wait.exit:                                    ; preds = %for.end.i.ppa_wait.exit_crit_edge, %entry.ppa_wait.exit_crit_edge
  %r.0.lcssa34.i = phi i8 [ %5, %for.end.i.ppa_wait.exit_crit_edge ], [ %3, %entry.ppa_wait.exit_crit_edge ]
  %10 = and i8 %r.0.lcssa34.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp.not = icmp eq i8 %10, 64
  br i1 %cmp.not, label %if.end, label %ppa_wait.exit.if.then_crit_edge

ppa_wait.exit.if.then_crit_edge:                  ; preds = %ppa_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ppa_wait.exit.if.then_crit_edge, %ppa_wait.exit.thread
  %cur_cmd.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i53 = icmp eq ptr %12, null
  br i1 %tobool.not.i53, label %if.then.cleanup_crit_edge, label %if.then.i54

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i54:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 458752, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %cleanup

if.end:                                           ; preds = %ppa_wait.exit
  %mode = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %16, label %do.end [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge78
    i32 5, label %if.end.sw.bb4_crit_edge
    i32 4, label %if.end.sw.bb4_crit_edge79
    i32 3, label %if.end.sw.bb4_crit_edge80
  ]

if.end.sw.bb4_crit_edge80:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge79:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb_crit_edge78:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not3.i = icmp eq i32 %len, 0
  br i1 %tobool.not3.i, label %sw.bb.cleanup_crit_edge, label %do.body.lr.ph.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.lr.ph.i:                                  ; preds = %sw.bb
  %add.i = or i32 %conv1.i, -18874368
  %18 = inttoptr i32 %add.i to ptr
  %add.i.i = add nuw nsw i32 %conv1.i, -18874366
  %19 = inttoptr i32 %add.i.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.05.i = phi i32 [ %len, %do.body.lr.ph.i ], [ %dec.i56, %do.body.i.do.body.i_crit_edge ]
  %buffer.addr.04.i = phi ptr [ %buffer, %do.body.lr.ph.i ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @arm_heavy_mb() #12
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.04.i, i32 1
  %20 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buffer.addr.04.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %21) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 14) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 12) #12, !srcloc !130
  %dec.i56 = add i32 %i.05.i, -1
  %tobool.not.i57 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i57, label %do.body.i.cleanup_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge79, %if.end.sw.bb4_crit_edge80
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %22) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %23 = and i8 %22, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %23) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i60 = add nuw nsw i32 %conv1.i, -18874366
  %24 = inttoptr i32 %add.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 4) #12, !srcloc !130
  %25 = ptrtoint ptr %buffer to i32
  %or = or i32 %25, %len
  %and6 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %add11 = add nuw nsw i32 %conv1.i, -18874364
  %26 = inttoptr i32 %add11 to ptr
  br i1 %tobool.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %shr = ashr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef nonnull %26, ptr noundef %buffer, i32 noundef %shr) #12
  br label %if.end18

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_writesb(ptr noundef nonnull %26, ptr noundef %buffer, i32 noundef %len) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 12) #12, !srcloc !130
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 12) #12, !srcloc !130
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port.i, align 4
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.end18.cleanup_crit_edge, label %if.end.i68

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i68:                                       ; preds = %if.end18
  %add.i65 = add i32 %35, 2
  %and.i66 = and i32 %add.i65, 1048575
  %add2.i67 = or i32 %and.i66, -18874368
  %36 = inttoptr i32 %add2.i67 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  %38 = and i8 %37, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %38)
  %cmp5.i = icmp eq i8 %38, 96
  br i1 %cmp5.i, label %if.end.i68.for.body.i70_crit_edge, label %if.end.i68.cleanup_crit_edge

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i68.for.body.i70_crit_edge:                ; preds = %if.end.i68
  br label %for.body.i70

for.body.i70:                                     ; preds = %if.end20.i.for.body.i70_crit_edge, %if.end.i68.for.body.i70_crit_edge
  %i.028.i = phi i32 [ %inc.i, %if.end20.i.for.body.i70_crit_edge ], [ 0, %if.end.i68.for.body.i70_crit_edge ]
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i69 = icmp eq i8 %40, 0
  br i1 %tobool.not.i69, label %if.end20.i, label %for.body.i70.cleanup_crit_edge

for.body.i70.cleanup_crit_edge:                   ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %for.body.i70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #12
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end20.i.for.body.i70_crit_edge

if.end20.i.for.body.i70_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i70

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end.i, %for.body.i70.cleanup_crit_edge, %if.end.i68.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.i54, %if.then.cleanup_crit_edge
  %retval.0.shrunk = phi i8 [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i54 ], [ 1, %sw.bb.cleanup_crit_edge ], [ %29, %if.end18.cleanup_crit_edge ], [ %29, %if.end.i68.cleanup_crit_edge ], [ %29, %do.end.i ], [ 1, %do.body.i.cleanup_crit_edge ], [ %29, %for.body.i70.cleanup_crit_edge ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppa_in(ptr nocapture noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %conv1.i = and i32 %1, 65535
  %add2.i = add nuw nsw i32 %conv1.i, -18874367
  %2 = inttoptr i32 %add2.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %3)
  %cmp.not28.i = icmp ugt i8 %3, -65
  br i1 %cmp.not28.i, label %entry.ppa_wait.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ppa_wait.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.029.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 50000, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %dec.i = add nsw i32 %k.029.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %5)
  %cmp.not.i = icmp ugt i8 %5, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i, label %if.end.i, label %for.end.i.ppa_wait.exit_crit_edge

for.end.i.ppa_wait.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit

if.end.i:                                         ; preds = %for.end.i
  %cur_cmd.i.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %cur_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.ppa_wait.exit.thread_crit_edge, label %if.then.i.i

if.end.i.ppa_wait.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_wait.exit.thread

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196608, ptr %result.i.i, align 4
  %failed.i.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %failed.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %failed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %failed.i.i, align 4
  br label %ppa_wait.exit.thread

ppa_wait.exit.thread:                             ; preds = %if.then.i.i, %if.end.i.ppa_wait.exit.thread_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %if.then

ppa_wait.exit:                                    ; preds = %for.end.i.ppa_wait.exit_crit_edge, %entry.ppa_wait.exit_crit_edge
  %r.0.lcssa34.i = phi i8 [ %5, %for.end.i.ppa_wait.exit_crit_edge ], [ %3, %entry.ppa_wait.exit_crit_edge ]
  %10 = and i8 %r.0.lcssa34.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %10)
  %cmp.not = icmp eq i8 %10, 80
  br i1 %cmp.not, label %if.end, label %ppa_wait.exit.if.then_crit_edge

ppa_wait.exit.if.then_crit_edge:                  ; preds = %ppa_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ppa_wait.exit.if.then_crit_edge, %ppa_wait.exit.thread
  %cur_cmd.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i70 = icmp eq ptr %12, null
  br i1 %tobool.not.i70, label %if.then.cleanup_crit_edge, label %if.then.i71

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i71:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 458752, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %cleanup

if.end:                                           ; preds = %ppa_wait.exit
  %mode = getelementptr inbounds %struct.ppa_struct, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %16, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 5, label %if.end.sw.bb13_crit_edge
    i32 4, label %if.end.sw.bb13_crit_edge108
    i32 3, label %if.end.sw.bb13_crit_edge109
  ]

if.end.sw.bb13_crit_edge109:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.sw.bb13_crit_edge108:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not4.i = icmp eq i32 %len, 0
  %.pre = add nuw nsw i32 %conv1.i, -18874366
  %.pre107 = inttoptr i32 %.pre to ptr
  br i1 %tobool.not4.i, label %sw.bb.ppa_nibble_in.exit_crit_edge, label %sw.bb.for.body.i75_crit_edge

sw.bb.for.body.i75_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i75

sw.bb.ppa_nibble_in.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_nibble_in.exit

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %sw.bb.for.body.i75_crit_edge
  %buffer.addr.06.i = phi ptr [ %incdec.ptr.i, %for.body.i75.for.body.i75_crit_edge ], [ %buffer, %sw.bb.for.body.i75_crit_edge ]
  %len.addr.05.i = phi i32 [ %dec.i73, %for.body.i75.for.body.i75_crit_edge ], [ %len, %sw.bb.for.body.i75_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre107, i8 4) #12, !srcloc !130
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  %19 = and i8 %18, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre107, i8 6) #12, !srcloc !130
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  %21 = lshr i8 %20, 4
  %or1.i = or i8 %21, %19
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.06.i, i32 1
  %22 = ptrtoint ptr %buffer.addr.06.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or1.i, ptr %buffer.addr.06.i, align 1
  %dec.i73 = add i32 %len.addr.05.i, -1
  %tobool.not.i74 = icmp eq i32 %dec.i73, 0
  br i1 %tobool.not.i74, label %for.body.i75.ppa_nibble_in.exit_crit_edge, label %for.body.i75.for.body.i75_crit_edge

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i75

for.body.i75.ppa_nibble_in.exit_crit_edge:        ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_nibble_in.exit

ppa_nibble_in.exit:                               ; preds = %for.body.i75.ppa_nibble_in.exit_crit_edge, %sw.bb.ppa_nibble_in.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre107, i8 12) #12, !srcloc !130
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i78 = add nuw nsw i32 %conv1.i, -18874366
  %23 = inttoptr i32 %add.i78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 37) #12, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not3.i = icmp eq i32 %len, 0
  br i1 %tobool.not3.i, label %sw.bb5.ppa_byte_in.exit_crit_edge, label %for.body.lr.ph.i82

sw.bb5.ppa_byte_in.exit_crit_edge:                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_byte_in.exit

for.body.lr.ph.i82:                               ; preds = %sw.bb5
  %add.i80 = or i32 %conv1.i, -18874368
  %24 = inttoptr i32 %add.i80 to ptr
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %for.body.lr.ph.i82
  %buffer.addr.05.i = phi ptr [ %buffer, %for.body.lr.ph.i82 ], [ %incdec.ptr.i83, %for.body.i86.for.body.i86_crit_edge ]
  %i.04.i = phi i32 [ %len, %for.body.lr.ph.i82 ], [ %dec.i84, %for.body.i86.for.body.i86_crit_edge ]
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  %incdec.ptr.i83 = getelementptr i8, ptr %buffer.addr.05.i, i32 1
  %26 = ptrtoint ptr %buffer.addr.05.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %buffer.addr.05.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 39) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 37) #12, !srcloc !130
  %dec.i84 = add i32 %i.04.i, -1
  %tobool.not.i85 = icmp eq i32 %dec.i84, 0
  br i1 %tobool.not.i85, label %for.body.i86.ppa_byte_in.exit_crit_edge, label %for.body.i86.for.body.i86_crit_edge

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i86

for.body.i86.ppa_byte_in.exit_crit_edge:          ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_byte_in.exit

ppa_byte_in.exit:                                 ; preds = %for.body.i86.ppa_byte_in.exit_crit_edge, %sw.bb5.ppa_byte_in.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 4) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 12) #12, !srcloc !130
  br label %cleanup

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge108, %if.end.sw.bb13_crit_edge109
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %27) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %28 = and i8 %27, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %28) #12, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %add.i94 = add nuw nsw i32 %conv1.i, -18874366
  %29 = inttoptr i32 %add.i94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 36) #12, !srcloc !130
  %30 = ptrtoint ptr %buffer to i32
  %or = or i32 %30, %len
  %and16 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  %add21 = add nuw nsw i32 %conv1.i, -18874364
  %31 = inttoptr i32 %add21 to ptr
  br i1 %tobool.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %shr = ashr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef nonnull %31, ptr noundef %buffer, i32 noundef %shr) #12
  br label %if.end28

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_readsb(ptr noundef nonnull %31, ptr noundef %buffer, i32 noundef %len) #12
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 44) #12, !srcloc !130
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 44) #12, !srcloc !130
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i, align 4
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  br i1 %cmp.i, label %if.end28.cleanup_crit_edge, label %if.end.i102

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i102:                                      ; preds = %if.end28
  %add.i99 = add i32 %40, 2
  %and.i100 = and i32 %add.i99, 1048575
  %add2.i101 = or i32 %and.i100, -18874368
  %41 = inttoptr i32 %add2.i101 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  %43 = and i8 %42, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %43)
  %cmp5.i = icmp eq i8 %43, 96
  br i1 %cmp5.i, label %if.end.i102.for.body.i104_crit_edge, label %if.end.i102.cleanup_crit_edge

if.end.i102.cleanup_crit_edge:                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i102.for.body.i104_crit_edge:              ; preds = %if.end.i102
  br label %for.body.i104

for.body.i104:                                    ; preds = %if.end20.i.for.body.i104_crit_edge, %if.end.i102.for.body.i104_crit_edge
  %i.028.i = phi i32 [ %inc.i, %if.end20.i.for.body.i104_crit_edge ], [ 0, %if.end.i102.for.body.i104_crit_edge ]
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #12, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i103 = icmp eq i8 %45, 0
  br i1 %tobool.not.i103, label %if.end20.i, label %for.body.i104.cleanup_crit_edge

for.body.i104.cleanup_crit_edge:                  ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %for.body.i104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 1073740) #12
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end20.i.for.body.i104_crit_edge

if.end20.i.for.body.i104_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i104

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end.i, %for.body.i104.cleanup_crit_edge, %if.end.i102.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %ppa_byte_in.exit, %ppa_nibble_in.exit, %if.then.i71, %if.then.cleanup_crit_edge
  %retval.0.shrunk = phi i8 [ 0, %do.end ], [ 1, %ppa_byte_in.exit ], [ 1, %ppa_nibble_in.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i71 ], [ %34, %if.end28.cleanup_crit_edge ], [ %34, %if.end.i102.cleanup_crit_edge ], [ %34, %do.end.i ], [ %34, %for.body.i104.cleanup_crit_edge ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i.i, align 8
  %cur_cmd.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #16
  br label %ppa_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %failed.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %failed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %jstart.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %jstart.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %jstart.i, align 4
  %13 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %cur_cmd.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %14 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 458752, ptr %result.i, align 4
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %15 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %phase.i, align 4
  %ppa_tq.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ppa_tq.i, i32 noundef 0) #12
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #12
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %call6.i.i = tail call i32 @parport_claim(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.end.i.ppa_pb_claim.exit.i_crit_edge

if.end.i.ppa_pb_claim.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ppa_pb_claim.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %port.i.i.i = getelementptr inbounds %struct.pardevice, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %base2.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %base2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %base2.i.i.i, align 4
  %26 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phase.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 22, i32 9
  %28 = ptrtoint ptr %phase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %phase.i.i.i, align 4
  br label %ppa_pb_claim.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %waiting.i.i.i = getelementptr inbounds %struct.ppa_struct, ptr %7, i32 0, i32 9
  %29 = ptrtoint ptr %waiting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %waiting.i.i.i, align 4
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %ppa_pb_claim.exit.i

ppa_pb_claim.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end.i.ppa_pb_claim.exit.i_crit_edge
  %res.0.i.i = phi i8 [ 64, %if.end.i.ppa_pb_claim.exit.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %if.else.i.i.i ]
  %31 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %failed.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %res.0.i.i
  store i8 %bf.set.i.i, ptr %failed.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i.i) #12
  br label %ppa_queuecommand_lck.exit

ppa_queuecommand_lck.exit:                        ; preds = %ppa_pb_claim.exit.i, %do.end.i
  %32 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call2) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppa_abort(ptr noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %6 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cur_cmd = getelementptr inbounds %struct.ppa_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cur_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %sw.bb ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_reset(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %6 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ppa_disconnect(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_cmd = getelementptr inbounds %struct.ppa_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cur_cmd, align 4
  tail call fastcc void @ppa_connect(ptr noundef %5, i32 noundef 0)
  %base = getelementptr inbounds %struct.ppa_struct, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @arm_heavy_mb() #12
  %and.i = and i32 %10, 1048575
  %add.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 64) #12, !srcloc !130
  %add1.i = add i32 %10, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %and.i.i = and i32 %add1.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 8) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 6442440) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 12) #12, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #12
  tail call fastcc void @ppa_disconnect(ptr noundef %5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #12
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_adjust_queue(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %1, i32 noundef 1) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ppa_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %dev, i64 noundef %capacity, ptr nocapture noundef writeonly %ip) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %ip, align 4
  %arrayidx1 = getelementptr i32, ptr %ip, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %arrayidx1, align 4
  %conv = trunc i64 %capacity to i32
  %add = add i32 %conv, 1
  %div35 = lshr i32 %add, 11
  %arrayidx4 = getelementptr i32, ptr %ip, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div35, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2099199, i32 %add)
  %cmp = icmp ugt i32 %add, 2099199
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %ip, align 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %arrayidx1, align 4
  %div14 = udiv i32 %add, 16065
  %5 = tail call i32 @llvm.umin.i32(i32 %div14, i32 1023)
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx4, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then, %entry.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_show_info(ptr noundef %m, ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %name = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, ptr noundef %7) #12
  %mode = getelementptr inbounds %struct.ppa_struct, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [7 x ptr], ptr @PPA_MODE_STRING, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, ptr noundef %11) #12
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppa_write_info(ptr nocapture noundef readonly %host, ptr noundef %buffer, i32 noundef %length) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %length)
  %cmp = icmp sgt i32 %length, 5
  br i1 %cmp, label %land.lhs.true, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buffer, ptr noundef nonnull dereferenceable(6) @.str.44, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %buffer, i32 5
  %call3 = tail call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #12
  %mode = getelementptr inbounds %struct.ppa_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %mode, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %length)
  %cmp4 = icmp ugt i32 %length, 10
  br i1 %cmp4, label %land.lhs.true5, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true5:                                   ; preds = %if.end
  %call6 = tail call i32 @strncmp(ptr noundef %buffer, ptr noundef nonnull dereferenceable(11) @.str.45, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.do.end15_crit_edge

land.lhs.true5.do.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr9 = getelementptr i8, ptr %buffer, i32 10
  %call10 = tail call i32 @simple_strtoul(ptr noundef %add.ptr9, ptr noundef null, i32 noundef 0) #12
  %recon_tmo = getelementptr inbounds %struct.ppa_struct, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %recon_tmo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call10, ptr %recon_tmo, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %call10) #16
  br label %cleanup

do.end15:                                         ; preds = %land.lhs.true5.do.end15_crit_edge, %if.end.do.end15_crit_edge, %entry.do.end15_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then8, %if.then
  %retval.0 = phi i32 [ %length, %if.then ], [ %length, %if.then8 ], [ -22, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_ppa__285_1149_ppa_driver_init6, !1, !"__initcall__kmod_ppa__285_1149_ppa_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ppa.c", i32 1149, i32 1}
!2 = !{ptr @__exitcall_ppa_driver_exit, !1, !"__exitcall_ppa_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file286, !4, !"__UNIQUE_ID_file286", i1 false, i1 false}
!4 = !{!"../drivers/scsi/ppa.c", i32 1151, i32 1}
!5 = !{ptr @__UNIQUE_ID_license287, !4, !"__UNIQUE_ID_license287", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ppa_driver, !8, !"ppa_driver", i1 false, i1 false}
!8 = !{!"../drivers/scsi/ppa.c", i32 1143, i32 30}
!9 = !{ptr @ppa_hosts, !10, !"ppa_hosts", i1 false, i1 false}
!10 = !{!"../drivers/scsi/ppa.c", i32 985, i32 8}
!11 = !{ptr @__ppa_attach.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/scsi/ppa.c", i32 1014, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ppa_attach.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ppa.c", i32 1028, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ppa.c", i32 1051, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ppa_attach._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @__ppa_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ppa_attach.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/ppa.c", i32 1095, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ppa_attach.__key.8, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ppa.c", i32 53, i32 8}
!29 = !{ptr @arbitration_lock, !28, !"arbitration_lock", i1 false, i1 false}
!30 = !{ptr @device_check.cmd, !31, !"cmd", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ppa.c", i32 881, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/ppa.c", i32 898, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @device_check._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @device_check._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/ppa.c", i32 947, i32 3}
!39 = !{ptr @device_check._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @device_check._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/ppa.h", i32 105, i32 5}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/ppa.h", i32 106, i32 5}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/ppa.h", i32 107, i32 5}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/ppa.h", i32 108, i32 5}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/ppa.h", i32 109, i32 5}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/ppa.h", i32 115, i32 5}
!53 = !{ptr @PPA_MODE_STRING, !54, !"PPA_MODE_STRING", i1 false, i1 false}
!54 = !{!"../drivers/scsi/ppa.h", i32 103, i32 14}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/ppa.c", i32 316, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ppa_out._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ppa_out._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ppa.c", i32 204, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ppa_wait._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ppa_wait._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/ppa.c", i32 236, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ecp_sync._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ecp_sync._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/ppa.c", i32 619, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ppa_interrupt._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ppa_interrupt._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/ppa.c", i32 710, i32 6}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ppa_engine._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ppa_engine._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/ppa.c", i32 784, i32 3}
!82 = !{ptr @ppa_engine._entry.32, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ppa_engine._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/ppa.c", i32 369, i32 3}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ppa_in._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ppa_in._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/ppa.c", i32 970, i32 12}
!91 = !{ptr @ppa_template, !92, !"ppa_template", i1 false, i1 false}
!92 = !{!"../drivers/scsi/ppa.c", i32 965, i32 34}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/ppa.c", i32 794, i32 3}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ppa_queuecommand_lck._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ppa_queuecommand_lck._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ppa.c", i32 146, i32 16}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/ppa.c", i32 146, i32 34}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/ppa.c", i32 147, i32 16}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/ppa.c", i32 148, i32 16}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/ppa.c", i32 127, i32 39}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/ppa.c", i32 132, i32 40}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/ppa.c", i32 135, i32 3}
!112 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ppa_write_info._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ppa_write_info._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/ppa.c", i32 138, i32 2}
!117 = !{ptr @ppa_write_info._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ppa_write_info._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2153756101}
!130 = !{i64 6220045}
!131 = !{i64 2154770316}
!132 = !{i64 2154770700}
!133 = !{i64 6220440}
!134 = !{i64 2154738005}
!135 = !{i64 2154738346}
!136 = !{i64 2154751827}
!137 = !{i64 2154757037}
!138 = !{i64 2154759215}
!139 = !{i64 2154744849}
!140 = !{i64 2154745190}
!141 = !{i64 2154747536}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{i64 2154342508, i64 2154343000, i64 2154342545, i64 2154342601, i64 2154342635, i64 2154342659, i64 2154342700, i64 2154342721, i64 2154342749, i64 2154342783}
!144 = !{i64 2154747968}
!145 = !{i64 2154739993}
!146 = !{i64 2154740678}
!147 = !{i64 2154741531}
!148 = !{i64 2154721364}
!149 = !{i64 2154722209}
!150 = !{i64 2154733978}
!151 = !{i64 2154734648}
!152 = !{i64 2154736004}
!153 = !{i64 2154736253}
!154 = !{i64 2154736664}
!155 = !{i64 2154737662}
!156 = !{i64 2154727977}
!157 = !{i64 2154724096}
!158 = !{i64 2154724325}
!159 = !{i64 2154724686}
!160 = !{i64 2154729910}
!161 = !{i64 2154725297}
!162 = !{i64 2154725621}
!163 = !{i64 2154728879}
!164 = !{i64 2154729224}
!165 = !{i64 2154728466}
!166 = !{i64 2154732154}
