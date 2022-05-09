; ModuleID = '/llk/IR_all_yes/drivers/scsi/imm.c_pt.bc'
source_filename = "../drivers/scsi/imm.c"
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
%struct.imm_struct = type { ptr, i32, i32, i32, ptr, %struct.delayed_work, i32, i8, i32, ptr, ptr, %struct.list_head }
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

@__initcall__kmod_imm__285_1284_imm_driver_init6 = internal global ptr @imm_driver_init, section ".initcall6.init", align 4
@imm_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @imm_detach, ptr @imm_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_imm_driver_exit = internal global ptr @imm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file286 = internal constant [26 x i8] c"imm.file=drivers/scsi/imm\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [16 x i8] c"imm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"imm\00", [28 x i8] zeroinitializer }, align 32
@imm_hosts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @imm_hosts, ptr @imm_hosts }, [24 x i8] zeroinitializer }, align 32
@__imm_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&waiting\00", [23 x i8] zeroinitializer }, align 32
@__imm_attach.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 4
@__imm_attach._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1190, ptr null, ptr null }, align 1
@.str.3 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013imm%d: failed to claim parport because a pardevice is owning the port for too long time!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__imm_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/scsi/imm.c\00", [45 x i8] zeroinitializer }, align 32
@__imm_attach._entry_ptr = internal global ptr @__imm_attach._entry, section ".printk_index", align 4
@__imm_attach.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&dev->imm_tq)->work)\00", [55 x i8] zeroinitializer }, align 32
@__imm_attach.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&dev->imm_tq)->timer\00", [41 x i8] zeroinitializer }, align 32
@imm_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @imm_queuecommand, ptr null, ptr null, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr @imm_abort, ptr null, ptr null, ptr null, ptr @imm_reset, ptr @imm_adjust_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imm_biosparam, ptr null, ptr @imm_show_info, ptr @imm_write_info, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 7, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arbitration_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arbitration_lock\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@device_check.cmd = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@device_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"imm: Found device at ID %i, Attempting to use %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_check\00", [19 x i8] zeroinitializer }, align 32
@device_check._entry_ptr = internal global ptr @device_check._entry, section ".printk_index", align 4
@IMM_MODE_STRING = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.28, ptr @.str.29], [36 x i8] zeroinitializer }, align 32
@device_check._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"imm: Unable to establish communication\0A\00", [56 x i8] zeroinitializer }, align 32
@device_check._entry_ptr.15 = internal global ptr @device_check._entry.13, section ".printk_index", align 4
@device_check._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@device_check._entry_ptr.17 = internal global ptr @device_check._entry.16, section ".printk_index", align 4
@device_check._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.5, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"imm: Communication established at 0x%x with ID %i using %s\0A\00", [36 x i8] zeroinitializer }, align 32
@device_check._entry_ptr.20 = internal global ptr @device_check._entry.18, section ".printk_index", align 4
@device_check._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.5, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imm: No devices found\0A\00", [41 x i8] zeroinitializer }, align 32
@device_check._entry_ptr.23 = internal global ptr @device_check._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Autodetect\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPP\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PS/2\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EPP 8 bit\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EPP 16 bit\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@imm_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IMM: returned SCSI status %2x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imm_out\00", [24 x i8] zeroinitializer }, align 32
@imm_out._entry_ptr = internal global ptr @imm_out._entry, section ".printk_index", align 4
@imm_out._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IMM: bug in imm_out()\0A\00", [41 x i8] zeroinitializer }, align 32
@imm_out._entry_ptr.34 = internal global ptr @imm_out._entry.32, section ".printk_index", align 4
@imm_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imm timeout in imm_wait\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imm_wait\00", [23 x i8] zeroinitializer }, align 32
@imm_wait._entry_ptr = internal global ptr @imm_wait._entry, section ".printk_index", align 4
@ecp_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"imm: ECP sync failed as data still present in FIFO.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecp_sync\00", [23 x i8] zeroinitializer }, align 32
@ecp_sync._entry_ptr = internal global ptr @ecp_sync._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@imm_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imm: Invalid scsi phase\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imm_engine\00", [21 x i8] zeroinitializer }, align 32
@imm_engine._entry_ptr = internal global ptr @imm_engine._entry, section ".printk_index", align 4
@imm_negotiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"IMM: IEEE1284 negotiate indicates no data available.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imm_negotiate\00", [18 x i8] zeroinitializer }, align 32
@imm_negotiate._entry_ptr = internal global ptr @imm_negotiate._entry, section ".printk_index", align 4
@imm_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IMM: bug in imm_ins()\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imm_in\00", [25 x i8] zeroinitializer }, align 32
@imm_in._entry_ptr = internal global ptr @imm_in._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Iomega VPI2 (imm) interface\00", [36 x i8] zeroinitializer }, align 32
@imm_queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IMM: bug in imm_queuecommand\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imm_queuecommand_lck\00", [43 x i8] zeroinitializer }, align 32
@imm_queuecommand_lck._entry_ptr = internal global ptr @imm_queuecommand_lck._entry, section ".printk_index", align 4
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Version : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"2.05 (for Linux 2.4.0)\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Parport : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mode    : %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode=\00", [26 x i8] zeroinitializer }, align 32
@imm_write_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imm /proc: invalid variable\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imm_write_info\00", [17 x i8] zeroinitializer }, align 32
@imm_write_info._entry_ptr = internal global ptr @imm_write_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"imm_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1278, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1284, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"imm_hosts\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1118, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1148, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1188, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1226, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"imm_template\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1098, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"arbitration_lock\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 63, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1007, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1024, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"IMM_MODE_STRING\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 96, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1044, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1069, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1074, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1084, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 98, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 99, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 100, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 101, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 102, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"../drivers/scsi/imm.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 360, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 391, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 214, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 294, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 908, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 259, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 445, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1103, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 918, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 143, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 143, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 144, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 145, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 131, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [22 x i8] c"../drivers/scsi/imm.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 135, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_imm_driver_exit, ptr @__imm_attach._entry, ptr @__imm_attach._entry_ptr, ptr @__initcall__kmod_imm__285_1284_imm_driver_init6, ptr @device_check._entry, ptr @device_check._entry.13, ptr @device_check._entry.16, ptr @device_check._entry.18, ptr @device_check._entry.21, ptr @device_check._entry_ptr, ptr @device_check._entry_ptr.15, ptr @device_check._entry_ptr.17, ptr @device_check._entry_ptr.20, ptr @device_check._entry_ptr.23, ptr @ecp_sync._entry, ptr @ecp_sync._entry_ptr, ptr @imm_driver_exit, ptr @imm_engine._entry, ptr @imm_engine._entry_ptr, ptr @imm_in._entry, ptr @imm_in._entry_ptr, ptr @imm_negotiate._entry, ptr @imm_negotiate._entry_ptr, ptr @imm_out._entry, ptr @imm_out._entry.32, ptr @imm_out._entry_ptr, ptr @imm_out._entry_ptr.34, ptr @imm_queuecommand_lck._entry, ptr @imm_queuecommand_lck._entry_ptr, ptr @imm_wait._entry, ptr @imm_wait._entry_ptr, ptr @imm_write_info._entry, ptr @imm_write_info._entry_ptr, ptr @imm_driver, ptr @.str, ptr @imm_hosts, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @imm_template, ptr @arbitration_lock, ptr @.str.10, ptr @device_check.cmd, ptr @.str.11, ptr @.str.12, ptr @IMM_MODE_STRING, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_hosts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arbitration_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check.cmd to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IMM_MODE_STRING to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_check._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_out._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecp_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_negotiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imm_write_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @imm_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @parport_unregister_driver(ptr noundef nonnull @imm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imm_detach(ptr noundef readnone %pb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @imm_hosts, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @imm_hosts
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dev.0.le = getelementptr i8, ptr %.pn, i32 -140
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @scsi_remove_host(ptr noundef %14) #10
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %16) #10
  %17 = ptrtoint ptr %dev.0.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.0.le, align 4
  tail call void @parport_unregister_device(ptr noundef %18) #10
  tail call void @kfree(ptr noundef %dev.0.le) #10
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imm_attach(ptr noundef %pb) #2 align 64 {
entry:
  %waiting.i = alloca %struct.wait_queue_head, align 4
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %imm_cb.i = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %waiting.i) #10
  %0 = call ptr @memset(ptr %waiting.i, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %waiting.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__imm_attach.__key) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #10
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait.i, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !124) #10
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %imm_cb.i) #10
  %14 = getelementptr inbounds %struct.pardev_cb, ptr %imm_cb.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pardev_cb, ptr %imm_cb.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef nonnull %waiting.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__imm_attach.__key.2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.__imm_attach.exit_crit_edge, label %if.end.i

entry.__imm_attach.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__imm_attach.exit

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %base.i, align 4
  %mode.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mode.i, align 4
  %list.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %prev.i.i, align 8
  %21 = load volatile ptr, ptr @imm_hosts, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, @imm_hosts
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end12.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %dev_no.i30.i = getelementptr i8, ptr %21, i32 -12
  %22 = ptrtoint ptr %dev_no.i30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_no.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.not.i31.i = icmp eq i32 %23, 0
  br i1 %cmp1.not.i31.i, label %for.body.i.preheader.i.if.end3.i.i_crit_edge, label %for.body.i.preheader.i.if.end12.i_crit_edge

for.body.i.preheader.i.if.end12.i_crit_edge:      ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

for.body.i.preheader.i.if.end3.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  br label %if.end3.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i
  %inc.i.i = add i32 %cnt.018.i32.i, 1
  %dev_no.i.i = getelementptr i8, ptr %.pn.pr.i.i, i32 -12
  %24 = ptrtoint ptr %dev_no.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_no.i.i, align 4
  %cmp1.not.i.i = icmp eq i32 %25, %inc.i.i
  br i1 %cmp1.not.i.i, label %for.body.i.i.if.end3.i.i_crit_edge, label %for.body.i.i.find_parent.exit.i_crit_edge

for.body.i.i.find_parent.exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_parent.exit.i

for.body.i.i.if.end3.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i.if.end3.i.i_crit_edge, %for.body.i.preheader.i.if.end3.i.i_crit_edge
  %.pn17.i33.i = phi ptr [ %.pn.pr.i.i, %for.body.i.i.if.end3.i.i_crit_edge ], [ %21, %for.body.i.preheader.i.if.end3.i.i_crit_edge ]
  %cnt.018.i32.i = phi i32 [ %inc.i.i, %for.body.i.i.if.end3.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.if.end3.i.i_crit_edge ]
  %26 = ptrtoint ptr %.pn17.i33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.pr.i.i = load ptr, ptr %.pn17.i33.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.pr.i.i, @imm_hosts
  br i1 %cmp.not.i.i, label %if.end3.i.i.find_parent.exit.i_crit_edge, label %for.body.i.i

if.end3.i.i.find_parent.exit.i_crit_edge:         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_parent.exit.i

find_parent.exit.i:                               ; preds = %if.end3.i.i.find_parent.exit.i_crit_edge, %for.body.i.i.find_parent.exit.i_crit_edge
  %dev.020.i.le.i = getelementptr i8, ptr %.pn17.i33.i, i32 -140
  %tobool9.not.i = icmp eq ptr %dev.020.i.le.i, null
  br i1 %tobool9.not.i, label %find_parent.exit.i.if.end12.i_crit_edge, label %if.then10.i

find_parent.exit.i.if.end12.i_crit_edge:          ; preds = %find_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %find_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_no.i = getelementptr i8, ptr %.pn17.i33.i, i32 -12
  %27 = ptrtoint ptr %dev_no.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_no.i, align 4
  %add.i = add i32 %28, 1
  %dev_no11.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %dev_no11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %dev_no11.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %find_parent.exit.i.if.end12.i_crit_edge, %for.body.i.preheader.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %tobool9.not24.i = phi i1 [ false, %if.then10.i ], [ true, %find_parent.exit.i.if.end12.i_crit_edge ], [ true, %if.end.i.if.end12.i_crit_edge ], [ true, %for.body.i.preheader.i.if.end12.i_crit_edge ]
  %retval.0.i23.i = phi ptr [ %dev.020.i.le.i, %if.then10.i ], [ null, %find_parent.exit.i.if.end12.i_crit_edge ], [ null, %if.end.i.if.end12.i_crit_edge ], [ null, %for.body.i.preheader.i.if.end12.i_crit_edge ]
  %30 = call ptr @memset(ptr %imm_cb.i, i32 0, i32 20)
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %15, align 4
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @imm_wakeup, ptr %14, align 4
  %dev_no14.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %dev_no14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_no14.i, align 8
  %call15.i = call ptr @parport_register_dev_model(ptr noundef %pb, ptr noundef nonnull @.str, ptr noundef nonnull %imm_cb.i, i32 noundef %34) #10
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call15.i, ptr %call7.i.i.i, align 8
  %tobool18.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not.i, label %if.end12.i.out.i_crit_edge, label %if.end20.i

if.end12.i.out.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end20.i:                                       ; preds = %if.end12.i
  %waiting21.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %waiting.i, ptr %waiting21.i, align 4
  call void @prepare_to_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i, i32 noundef 2) #10
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #10
  %37 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i.i, align 8
  %call6.i.i = call i32 @parport_claim(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.end20.i.imm_pb_claim.exit.i_crit_edge

if.end20.i.imm_pb_claim.exit.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_pb_claim.exit.i

if.then.i.i:                                      ; preds = %if.end20.i
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i.i, align 8
  %port.i.i.i = getelementptr inbounds %struct.pardevice, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %base.i, align 4
  %cur_cmd.i.i.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %cur_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_cmd.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phase.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 22, i32 9
  %48 = ptrtoint ptr %phase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %phase.i.i.i, align 4
  br label %imm_pb_claim.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %waiting21.i, align 4
  call void @__wake_up(ptr noundef %50, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %imm_pb_claim.exit.i

imm_pb_claim.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end20.i.imm_pb_claim.exit.i_crit_edge
  %res.0.i.i = phi i8 [ 16, %if.end20.i.imm_pb_claim.exit.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %if.else.i.i.i ]
  %wanted.i.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i = load i8, ptr %wanted.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  %bf.set.i.i = or i8 %bf.clear.i.i, %res.0.i.i
  store i8 %bf.set.i.i, ptr %wanted.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i.i) #10
  br i1 %cmp7.i.i, label %imm_pb_claim.exit.i.if.end26.i_crit_edge, label %if.then24.i

imm_pb_claim.exit.i.if.end26.i_crit_edge:         ; preds = %imm_pb_claim.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then24.i:                                      ; preds = %imm_pb_claim.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = call i32 @schedule_timeout(i32 noundef 300) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %imm_pb_claim.exit.i.if.end26.i_crit_edge
  %52 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %wanted.i.i, align 4
  %53 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool27.not.i = icmp eq i8 %53, 0
  br i1 %tobool27.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end26.i
  %number.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 26
  %54 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number.i, align 4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %55) #14
  %call2.i2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #10
  %56 = ptrtoint ptr %wanted.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i3.i = load i8, ptr %wanted.i.i, align 4
  %bf.clear8.i.i = and i8 %bf.load.i3.i, -17
  store i8 %bf.clear8.i.i, ptr %wanted.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i2.i) #10
  %57 = and i8 %bf.load.i3.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %if.then.i4.i, label %do.end31.i.imm_pb_dismiss.exit.i_crit_edge

do.end31.i.imm_pb_dismiss.exit.i_crit_edge:       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_pb_dismiss.exit.i

if.then.i4.i:                                     ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %59) #10
  br label %imm_pb_dismiss.exit.i

imm_pb_dismiss.exit.i:                            ; preds = %if.then.i4.i, %do.end31.i.imm_pb_dismiss.exit.i_crit_edge
  %60 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %waiting21.i, align 4
  call void @finish_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i) #10
  br label %out1.i

if.end34.i:                                       ; preds = %if.end26.i
  %61 = ptrtoint ptr %waiting21.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %waiting21.i, align 4
  call void @finish_wait(ptr noundef nonnull %waiting.i, ptr noundef nonnull %wait.i) #10
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i.i, align 8
  %port.i = getelementptr inbounds %struct.pardevice, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %base.i, align 4
  %69 = load ptr, ptr %port.i, align 4
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_hi.i, align 4
  %base_hi41.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %base_hi41.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %base_hi41.i, align 8
  %add42.i = add i32 %67, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  %and.i5.i = and i32 %add42.i, 1048575
  %add.i.i = or i32 %and.i5.i, -18874368
  %73 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 12) #10, !srcloc !135
  %74 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i.i, align 8
  %port44.i = getelementptr inbounds %struct.pardevice, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %port44.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %port44.i, align 4
  %modes45.i = getelementptr inbounds %struct.parport, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %modes45.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %modes45.i, align 8
  %and.i = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool47.not.i, i32 1, i32 2
  %80 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select.i, ptr %mode.i, align 4
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base.i, align 4
  %conv.i.i.i = trunc i32 %82 to i16
  %call.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i, i8 noundef zeroext -32) #10
  %call1.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i, i8 noundef zeroext 48) #10
  %83 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode.i, align 4
  %.off.i.i.i = add i32 %84, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 3
  %..i.i.i = select i1 %switch.i.i.i, i8 40, i8 -32
  %call11.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i, i8 noundef zeroext %..i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.i.i)
  %cmp.not.i6.i = icmp eq i32 %call11.i.i.i, 1
  br i1 %cmp.not.i6.i, label %if.end.i.i, label %if.end34.i.imm_init.exit.thread.i_crit_edge

if.end34.i.imm_init.exit.thread.i_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_init.exit.thread.i

if.end.i.i:                                       ; preds = %if.end34.i
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base.i, align 4
  call fastcc void @imm_reset_pulse(i32 noundef %86) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #10
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %base.i, align 4
  %conv.i6.i.i = trunc i32 %89 to i16
  %call.i7.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i6.i.i, i8 noundef zeroext 48) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #10
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %base.i, align 4
  %93 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mode.i, align 4
  %and.i.i.i = and i32 %92, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %and.i.i.i, 0
  %add.i.i.i = add i32 %92, 2
  %and.i.i.i.i = and i32 %add.i.i.i, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %95 = inttoptr i32 %add.i.i.i.i to ptr
  %add34.i.i.i = add i32 %92, 1
  %and35.i.i.i = and i32 %add34.i.i.i, 1048575
  %add36.i.i.i = or i32 %and35.i.i.i, -18874368
  %96 = inttoptr i32 %add36.i.i.i to ptr
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.then4.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i
  %loop.0186.i.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc79.i.i.i, %if.then4.i.i.i.for.body.i.i.i_crit_edge ]
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.second_pass.i.i.i.sink.split_crit_edge, label %for.body.i.i.i.second_pass.i.i.i_crit_edge

for.body.i.i.i.second_pass.i.i.i_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %second_pass.i.i.i

for.body.i.i.i.second_pass.i.i.i.sink.split_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %second_pass.i.i.i.sink.split

second_pass.i.i.i.sink.split:                     ; preds = %if.then54.i.i.i.second_pass.i.i.i.sink.split_crit_edge, %if.then17.i.i.i.second_pass.i.i.i.sink.split_crit_edge, %for.body.i.i.i.second_pass.i.i.i.sink.split_crit_edge
  %.sink = phi i32 [ %94, %if.then54.i.i.i.second_pass.i.i.i.sink.split_crit_edge ], [ %94, %if.then17.i.i.i.second_pass.i.i.i.sink.split_crit_edge ], [ 5, %for.body.i.i.i.second_pass.i.i.i.sink.split_crit_edge ]
  %97 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink, ptr %mode.i, align 4
  br label %second_pass.i.i.i

second_pass.i.i.i:                                ; preds = %second_pass.i.i.i.sink.split, %for.body.i.i.i.second_pass.i.i.i_crit_edge
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base.i, align 4
  %conv.i.i.i.i = trunc i32 %99 to i16
  %call.i.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext -32) #10
  %call1.i.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext 48) #10
  %100 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mode.i, align 4
  %.off.i.i.i.i = add i32 %101, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 3
  %..i.i.i.i = select i1 %switch.i.i.i.i, i8 40, i8 -32
  %call11.i.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext %..i.i.i.i) #10
  %call3.i.i.i = call fastcc i32 @imm_select(ptr noundef %call7.i.i.i, i32 noundef %loop.0186.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i.i8.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i8.i, label %if.then4.i.i.i, label %do.end.i.i.i

if.then4.i.i.i:                                   ; preds = %second_pass.i.i.i
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %base.i, align 4
  %conv.i133.i.i.i = trunc i32 %103 to i16
  %call.i134.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i133.i.i.i, i8 noundef zeroext 48) #10
  %inc79.i.i.i = add nuw nsw i32 %loop.0186.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc79.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %if.then4.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge, label %if.then4.i.i.i.for.body.i.i.i_crit_edge

if.then4.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.then4.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge: ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_init.exit.thread.sink.split.i

do.end.i.i.i:                                     ; preds = %second_pass.i.i.i
  %104 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mode.i, align 4
  %arrayidx.i.i.i = getelementptr [7 x ptr], ptr @IMM_MODE_STRING, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call7.i.i9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %loop.0186.i.i.i, ptr noundef %107) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 12) #10, !srcloc !135
  %call15.i.i.i = call fastcc i32 @imm_out(ptr noundef %call7.i.i.i, ptr noundef nonnull @device_check.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %do.end.i.i.i.for.end.i.i.i_crit_edge, label %for.body12.i.i.i.1

do.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body12.i.i.i.1:                               ; preds = %do.end.i.i.i
  %call15.i.i.i.1 = call fastcc i32 @imm_out(ptr noundef %call7.i.i.i, ptr noundef getelementptr inbounds ([6 x i8], ptr @device_check.cmd, i32 0, i32 2), i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.1)
  %tobool11.not.i.i.i.1 = icmp eq i32 %call15.i.i.i.1, 0
  br i1 %tobool11.not.i.i.i.1, label %for.body12.i.i.i.1.for.end.i.i.i_crit_edge, label %for.body12.i.i.i.2

for.body12.i.i.i.1.for.end.i.i.i_crit_edge:       ; preds = %for.body12.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body12.i.i.i.2:                               ; preds = %for.body12.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i.i.i.2 = call fastcc i32 @imm_out(ptr noundef %call7.i.i.i, ptr noundef getelementptr inbounds ([6 x i8], ptr @device_check.cmd, i32 0, i32 4), i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.2)
  %tobool11.not.i.i.i.2 = icmp eq i32 %call15.i.i.i.2, 0
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body12.i.i.i.2, %for.body12.i.i.i.1.for.end.i.i.i_crit_edge, %do.end.i.i.i.for.end.i.i.i_crit_edge
  %tobool11.not.i.i.i.lcssa = phi i1 [ %tobool11.not.i.i.i, %do.end.i.i.i.for.end.i.i.i_crit_edge ], [ %tobool11.not.i.i.i.1, %for.body12.i.i.i.1.for.end.i.i.i_crit_edge ], [ %tobool11.not.i.i.i.2, %for.body12.i.i.i.2 ]
  br i1 %tobool11.not.i.i.i.lcssa, label %if.then17.i.i.i, label %if.end31.i.i.i

if.then17.i.i.i:                                  ; preds = %for.end.i.i.i
  %108 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base.i, align 4
  %conv.i136.i.i.i = trunc i32 %109 to i16
  %call.i137.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i136.i.i.i, i8 noundef zeroext 48) #10
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %base.i, align 4
  %conv.i139.i.i.i = trunc i32 %111 to i16
  %call.i140.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i139.i.i.i, i8 noundef zeroext -32) #10
  %call1.i141.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i139.i.i.i, i8 noundef zeroext 48) #10
  %112 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mode.i, align 4
  %.off.i143.i.i.i = add i32 %113, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i143.i.i.i)
  %switch.i144.i.i.i = icmp ult i32 %.off.i143.i.i.i, 3
  %..i145.i.i.i = select i1 %switch.i144.i.i.i, i8 40, i8 -32
  %call11.i146.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i139.i.i.i, i8 noundef zeroext %..i145.i.i.i) #10
  %114 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base.i, align 4
  call fastcc void @imm_reset_pulse(i32 noundef %115) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #10
  %117 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %base.i, align 4
  %conv.i148.i.i.i = trunc i32 %118 to i16
  %call.i149.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i148.i.i.i, i8 noundef zeroext 48) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #10
  %120 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %121)
  %cmp21.i.i.i = icmp eq i32 %121, 5
  br i1 %cmp21.i.i.i, label %if.then17.i.i.i.second_pass.i.i.i.sink.split_crit_edge, label %if.then17.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge

if.then17.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge: ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_init.exit.thread.sink.split.i

if.then17.i.i.i.second_pass.i.i.i.sink.split_crit_edge: ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %second_pass.i.i.i.sink.split

if.end31.i.i.i:                                   ; preds = %for.end.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 12) #10, !srcloc !135
  br label %do.body33.i.i.i

do.body33.i.i.i:                                  ; preds = %do.body33.i.i.i.do.body33.i.i.i_crit_edge, %if.end31.i.i.i
  %k.0.i.i.i = phi i32 [ 1000000, %if.end31.i.i.i ], [ %dec.i.i.i, %do.body33.i.i.i.do.body33.i.i.i_crit_edge ]
  %122 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #10, !srcloc !136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool43.not.i.i.i = icmp slt i8 %122, 0
  %dec.i.i.i = add nsw i32 %k.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %or.cond131.i.i.i = select i1 %tobool43.not.i.i.i, i1 true, i1 %tobool45.not.i.i.i
  br i1 %or.cond131.i.i.i, label %do.end47.i.i.i, label %do.body33.i.i.i.do.body33.i.i.i_crit_edge

do.body33.i.i.i.do.body33.i.i.i_crit_edge:        ; preds = %do.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33.i.i.i

do.end47.i.i.i:                                   ; preds = %do.body33.i.i.i
  %and49.i.i.i = and i8 %122, -72
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %and49.i.i.i)
  %cmp52.not.i.i.i = icmp eq i8 %and49.i.i.i, -72
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %base.i, align 4
  %conv.i168.i.i.i = trunc i32 %125 to i16
  %call.i169.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i168.i.i.i, i8 noundef zeroext 48) #10
  br i1 %cmp52.not.i.i.i, label %if.end54.i, label %if.then54.i.i.i

if.then54.i.i.i:                                  ; preds = %do.end47.i.i.i
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %base.i, align 4
  %conv.i156.i.i.i = trunc i32 %127 to i16
  %call.i157.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i156.i.i.i, i8 noundef zeroext -32) #10
  %call1.i158.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i156.i.i.i, i8 noundef zeroext 48) #10
  %128 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mode.i, align 4
  %.off.i160.i.i.i = add i32 %129, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i160.i.i.i)
  %switch.i161.i.i.i = icmp ult i32 %.off.i160.i.i.i, 3
  %..i162.i.i.i = select i1 %switch.i161.i.i.i, i8 40, i8 -32
  %call11.i163.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i156.i.i.i, i8 noundef zeroext %..i162.i.i.i) #10
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %base.i, align 4
  call fastcc void @imm_reset_pulse(i32 noundef %131) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 214748000) #10
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %base.i, align 4
  %conv.i165.i.i.i = trunc i32 %134 to i16
  %call.i166.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i165.i.i.i, i8 noundef zeroext 48) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 214748000) #10
  %136 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %137)
  %cmp58.i.i.i = icmp eq i32 %137, 5
  br i1 %cmp58.i.i.i, label %if.then54.i.i.i.second_pass.i.i.i.sink.split_crit_edge, label %if.then54.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge

if.then54.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge: ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_init.exit.thread.sink.split.i

if.then54.i.i.i.second_pass.i.i.i.sink.split_crit_edge: ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %second_pass.i.i.i.sink.split

imm_init.exit.thread.sink.split.i:                ; preds = %if.then54.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge, %if.then17.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge, %if.then4.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.14, %if.then17.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge ], [ @.str.14, %if.then54.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge ], [ @.str.22, %if.then4.i.i.i.imm_init.exit.thread.sink.split.i_crit_edge ]
  %call67.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink.i) #14
  br label %imm_init.exit.thread.i

imm_init.exit.thread.i:                           ; preds = %imm_init.exit.thread.sink.split.i, %if.end34.i.imm_init.exit.thread.i_crit_edge
  %138 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %139) #10
  br label %out1.i

if.end54.i:                                       ; preds = %do.end47.i.i.i
  %140 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mode.i, align 4
  %arrayidx74.i.i.i = getelementptr [7 x ptr], ptr @IMM_MODE_STRING, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx74.i.i.i, align 4
  %call75.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %92, i32 noundef %loop.0186.i.i.i, ptr noundef %143) #14
  %144 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %base.i, align 4
  %conv.i171.i.i.i = trunc i32 %145 to i16
  %call.i172.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i171.i.i.i, i8 noundef zeroext -32) #10
  %call1.i173.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i171.i.i.i, i8 noundef zeroext 48) #10
  %146 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mode.i, align 4
  %.off.i175.i.i.i = add i32 %147, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i175.i.i.i)
  %switch.i176.i.i.i = icmp ult i32 %.off.i175.i.i.i, 3
  %..i177.i.i.i = select i1 %switch.i176.i.i.i, i8 40, i8 -32
  %call11.i178.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i171.i.i.i, i8 noundef zeroext %..i177.i.i.i) #10
  %148 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %base.i, align 4
  call fastcc void @imm_reset_pulse(i32 noundef %149) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %150(i32 noundef 214748000) #10
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %base.i, align 4
  %conv.i180.i.i.i = trunc i32 %152 to i16
  %call.i181.i.i.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i180.i.i.i, i8 noundef zeroext 48) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 214748000) #10
  %154 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_release(ptr noundef %155) #10
  %156 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mode.i, align 4
  %imm_tq.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %imm_tq.i, i32 noundef 0) #10
  %158 = ptrtoint ptr %imm_tq.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -64, ptr %imm_tq.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__imm_attach.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry68.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %159 = ptrtoint ptr %entry68.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %entry68.i, ptr %entry68.i, align 8
  %prev.i11.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %entry68.i, ptr %prev.i11.i, align 4
  %func71.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 2
  %161 = ptrtoint ptr %func71.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @imm_interrupt, ptr %func71.i, align 8
  %timer.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @__imm_attach.__key.8) #10
  %call80.i = call ptr @scsi_host_alloc(ptr noundef nonnull @imm_template, i32 noundef 4) #10
  %tobool81.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool81.not.i, label %if.end54.i.out1.i_crit_edge, label %if.end83.i

if.end54.i.out1.i_crit_edge:                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1.i

if.end83.i:                                       ; preds = %if.end54.i
  %.off.i = add i32 %157, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select1.i = select i1 %switch.i, i8 3, i8 8
  %162 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pb, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call80.i, i32 0, i32 44
  %164 = ptrtoint ptr %io_port.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %io_port.i, align 8
  %n_io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call80.i, i32 0, i32 45
  %165 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %spec.select1.i, ptr %n_io_port.i, align 4
  %dma_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %call80.i, i32 0, i32 46
  %166 = ptrtoint ptr %dma_channel.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -1, ptr %dma_channel.i, align 1
  %number85.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 26
  %167 = ptrtoint ptr %number85.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %number85.i, align 4
  %unique_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call80.i, i32 0, i32 23
  %169 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %unique_id.i, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call80.i, i32 0, i32 53
  %170 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call7.i.i.i, ptr %hostdata.i, align 8
  %host86.i = getelementptr inbounds %struct.imm_struct, ptr %call7.i.i.i, i32 0, i32 10
  %171 = ptrtoint ptr %host86.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call80.i, ptr %host86.i, align 8
  br i1 %tobool9.not24.i, label %if.then88.i, label %if.else90.i

if.then88.i:                                      ; preds = %if.end83.i
  %172 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @imm_hosts, i32 0, i32 1), align 4
  %call.i.i12.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %172, ptr noundef nonnull @imm_hosts) #10
  br i1 %call.i.i12.i, label %if.then88.i.if.end93.sink.split.i_crit_edge, label %if.then88.i.if.end93.i_crit_edge

if.then88.i.if.end93.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.then88.i.if.end93.sink.split.i_crit_edge:      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.sink.split.i

if.else90.i:                                      ; preds = %if.end83.i
  %list92.i = getelementptr inbounds %struct.imm_struct, ptr %retval.0.i23.i, i32 0, i32 11
  %prev.i14.i = getelementptr inbounds %struct.imm_struct, ptr %retval.0.i23.i, i32 0, i32 11, i32 1
  %173 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i14.i, align 4
  %call.i.i15.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %174, ptr noundef %list92.i) #10
  br i1 %call.i.i15.i, label %if.else90.i.if.end93.sink.split.i_crit_edge, label %if.else90.i.if.end93.i_crit_edge

if.else90.i.if.end93.i_crit_edge:                 ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.else90.i.if.end93.sink.split.i_crit_edge:      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.sink.split.i

if.end93.sink.split.i:                            ; preds = %if.else90.i.if.end93.sink.split.i_crit_edge, %if.then88.i.if.end93.sink.split.i_crit_edge
  %prev.i14.sink.i = phi ptr [ getelementptr inbounds (%struct.list_head, ptr @imm_hosts, i32 0, i32 1), %if.then88.i.if.end93.sink.split.i_crit_edge ], [ %prev.i14.i, %if.else90.i.if.end93.sink.split.i_crit_edge ]
  %list92.sink.i = phi ptr [ @imm_hosts, %if.then88.i.if.end93.sink.split.i_crit_edge ], [ %list92.i, %if.else90.i.if.end93.sink.split.i_crit_edge ]
  %.sink43.i = phi ptr [ %172, %if.then88.i.if.end93.sink.split.i_crit_edge ], [ %174, %if.else90.i.if.end93.sink.split.i_crit_edge ]
  %175 = ptrtoint ptr %prev.i14.sink.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %list.i, ptr %prev.i14.sink.i, align 4
  %176 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %list92.sink.i, ptr %list.i, align 4
  %177 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %.sink43.i, ptr %prev.i.i, align 8
  %178 = ptrtoint ptr %.sink43.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %list.i, ptr %.sink43.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.end93.sink.split.i, %if.else90.i.if.end93.i_crit_edge, %if.then88.i.if.end93.i_crit_edge
  %call.i.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call80.i, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool95.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %out2.i

if.end97.i:                                       ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @scsi_scan_host(ptr noundef nonnull %call80.i) #10
  br label %__imm_attach.exit

out2.i:                                           ; preds = %if.end93.i
  %call.i.i19.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i19.i, label %if.end.i.i20.i, label %out2.i.list_del_init.exit.i_crit_edge

out2.i.list_del_init.exit.i_crit_edge:            ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i20.i:                                   ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %prev.i.i, align 8
  %181 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %180, ptr %prev1.i.i.i.i, align 4
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %182, ptr %180, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i20.i, %out2.i.list_del_init.exit.i_crit_edge
  %185 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %list.i, ptr %list.i, align 4
  %186 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %list.i, ptr %prev.i.i, align 8
  call void @scsi_host_put(ptr noundef nonnull %call80.i) #10
  br label %out1.i

out1.i:                                           ; preds = %list_del_init.exit.i, %if.end54.i.out1.i_crit_edge, %imm_init.exit.thread.i, %imm_pb_dismiss.exit.i
  %187 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call7.i.i.i, align 8
  call void @parport_unregister_device(ptr noundef %188) #10
  br label %out.i

out.i:                                            ; preds = %out1.i, %if.end12.i.out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %__imm_attach.exit

__imm_attach.exit:                                ; preds = %out.i, %if.end97.i, %entry.__imm_attach.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %imm_cb.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %waiting.i) #10
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
define internal void @imm_wakeup(ptr nocapture noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #10
  %wanted = getelementptr inbounds %struct.imm_struct, ptr %ref, i32 0, i32 7
  %0 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wanted, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref, align 4
  %call6 = tail call i32 @parport_claim(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.then
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
  %base2.i = getelementptr inbounds %struct.imm_struct, ptr %ref, i32 0, i32 1
  %10 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base2.i, align 4
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %ref, i32 0, i32 4
  %11 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 22, i32 9
  %13 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %phase.i, align 4
  br label %got_it.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %waiting.i = getelementptr inbounds %struct.imm_struct, ptr %ref, i32 0, i32 9
  %14 = ptrtoint ptr %waiting.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %waiting.i, align 4
  tail call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %got_it.exit

got_it.exit:                                      ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load11 = load i8, ptr %wanted, align 4
  %bf.clear12 = and i8 %bf.load11, -17
  store i8 %bf.clear12, ptr %wanted, align 4
  br label %if.end13

if.end13:                                         ; preds = %got_it.exit, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2) #10
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
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imm_interrupt(ptr noundef %work) #2 align 64 {
entry:
  %l.i = alloca i8, align 1
  %h.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %cur_cmd = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %base.i = getelementptr i8, ptr %work, i32 -16
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l.i) #10
  %8 = ptrtoint ptr %l.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %l.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h.i) #10
  %9 = ptrtoint ptr %h.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %h.i, align 1
  %failed.i = getelementptr i8, ptr %work, i32 104
  %10 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %failed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %11 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %phase.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %if.end.i.sw.bb7.i_crit_edge
    i32 3, label %if.end.i.sw.bb16.i_crit_edge
    i32 4, label %if.end.i.sw.bb36.i_crit_edge
    i32 5, label %if.end.i.sw.bb71.i_crit_edge
    i32 6, label %if.end.sw.bb130_crit_edge.i
    i32 7, label %if.end.i.sw.bb166.i_crit_edge
    i32 8, label %if.end.i.sw.bb200.i_crit_edge
  ]

if.end.i.sw.bb200.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb200.i

if.end.i.sw.bb166.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb166.i

if.end.i.sw.bb71.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

if.end.i.sw.bb36.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36.i

if.end.i.sw.bb16.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16.i

if.end.i.sw.bb7.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

if.end.sw.bb130_crit_edge.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = and i32 %7, 65535
  %.pre376.i = add nuw nsw i32 %.pre.i, -18874366
  %.pre377.i = inttoptr i32 %.pre376.i to ptr
  %.pre378.i = add nuw nsw i32 %.pre.i, -18874367
  %.pre379.i = inttoptr i32 %.pre378.i to ptr
  br label %sw.bb130.i

sw.bb.i:                                          ; preds = %if.end.i
  %jstart.i = getelementptr i8, ptr %work, i32 100
  %14 = ptrtoint ptr %jstart.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jstart.i, align 4
  %add.i = add i32 %15, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then2.i, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then2.i:                                       ; preds = %sw.bb.i
  %17 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then2.i.if.end_crit_edge, label %if.then.i.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131072, ptr %result.i.i, align 4
  %20 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %failed.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %failed.i, align 4
  br label %if.end

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %7 to i16
  %call.i.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i, i8 noundef zeroext -32) #10
  %call1.i.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i, i8 noundef zeroext 48) #10
  %mode.i.i = getelementptr i8, ptr %work, i32 -8
  %21 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i.i, align 4
  %.off.i.i = add i32 %22, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i8 40, i8 -32
  %call11.i.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i.i, i8 noundef zeroext %..i.i) #10
  %23 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %phase.i, align 4
  %inc.i = add i32 %24, 1
  store volatile i32 %inc.i, ptr %phase.i, align 4
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb4.i, %if.end.i.sw.bb7.i_crit_edge
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i.i, align 8
  %call9.i = tail call fastcc i32 @imm_select(ptr noundef %add.ptr, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %sw.bb7.i
  %29 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i317.i = icmp eq ptr %30, null
  br i1 %tobool.not.i317.i, label %if.then11.i.if.end_crit_edge, label %if.then.i322.i

if.then11.i.if.end_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i322.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %result.i318.i = getelementptr inbounds %struct.scsi_cmnd, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %result.i318.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %result.i318.i, align 4
  %32 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i320.i = load i8, ptr %failed.i, align 4
  %bf.set.i321.i = or i8 %bf.load.i320.i, -128
  store i8 %bf.set.i321.i, ptr %failed.i, align 4
  br label %if.end

if.end12.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %phase.i, align 4
  %inc15.i = add i32 %34, 1
  store volatile i32 %inc15.i, ptr %phase.i, align 4
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %if.end12.i, %if.end.i.sw.bb16.i_crit_edge
  %conv17.i = and i32 %7, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i.i = add nuw nsw i32 %conv17.i, -18874366
  %35 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 12) #10, !srcloc !135
  %add21.i = add nuw nsw i32 %conv17.i, -18874367
  %36 = inttoptr i32 %add21.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool26.not.i = icmp sgt i8 %37, -1
  br i1 %tobool26.not.i, label %sw.bb16.i.if.then_crit_edge, label %if.end28.i

sw.bb16.i.if.then_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end28.i:                                       ; preds = %sw.bb16.i
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %hostdata.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 53
  %42 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hostdata.i.i.i, align 8
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cmd_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp9.not.i.i = icmp eq i16 %45, 0
  br i1 %cmp9.not.i.i, label %if.end28.i.if.end32.i_crit_edge, label %if.end28.i.for.body.i.i_crit_edge

if.end28.i.for.body.i.i_crit_edge:                ; preds = %if.end28.i
  br label %for.body.i.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %add.i324.i = add nuw nsw i32 %k.010.i.i, 2
  %46 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i.i, align 4
  %conv.i325.i = zext i16 %47 to i32
  %cmp.i.i = icmp ult i32 %add.i324.i, %conv.i325.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end32.i_crit_edge

for.cond.i.i.if.end32.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end28.i.for.body.i.i_crit_edge
  %k.010.i.i = phi i32 [ %add.i324.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end28.i.for.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %49, i32 %k.010.i.i
  %call2.i.i = tail call fastcc i32 @imm_out(ptr noundef %43, ptr noundef %arrayidx.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i326.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i326.i, label %for.body.i.i.if.end_crit_edge, label %for.cond.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end32.i:                                       ; preds = %for.cond.i.i.if.end32.i_crit_edge, %if.end28.i.if.end32.i_crit_edge
  %50 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %phase.i, align 4
  %inc35.i = add i32 %51, 1
  store volatile i32 %inc35.i, ptr %phase.i, align 4
  br label %sw.bb36.i

sw.bb36.i:                                        ; preds = %if.end32.i, %if.end.i.sw.bb36.i_crit_edge
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool38.not.i = icmp eq i32 %53, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %sw.bb36.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %54 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdb.i.i, align 4
  %buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %56 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %buffer.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %55, i32 0, i32 2
  %57 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i, align 4
  %this_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %59 = ptrtoint ptr %this_residual.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %this_residual.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %55, align 4
  %and.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !139

do.body2.i.i.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !140
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i = and i32 %61, -4
  %62 = inttoptr i32 %and.i.i.i to ptr
  %call1.i327.i = tail call ptr @page_address(ptr noundef %62) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i327.i, i32 %64
  br label %if.end55.i

if.else.i:                                        ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer50.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %65 = ptrtoint ptr %buffer50.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %buffer50.i, align 4
  %this_residual52.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %66 = ptrtoint ptr %this_residual52.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %this_residual52.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %sg_virt.exit.i
  %storemerge.i = phi ptr [ null, %if.else.i ], [ %add.ptr.i.i, %sg_virt.exit.i ]
  %67 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %storemerge.i, ptr %SCp.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %68 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nents.i.i, align 4
  %sub57.i = add i32 %69, -1
  %buffers_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 3
  %70 = ptrtoint ptr %buffers_residual.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub57.i, ptr %buffers_residual.i, align 4
  %71 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %phase.i, align 4
  %inc61.i = add i32 %72, 1
  store volatile i32 %inc61.i, ptr %phase.i, align 4
  %this_residual63.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %73 = ptrtoint ptr %this_residual63.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %this_residual63.i, align 4
  %and64.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end55.i.sw.bb71.i_crit_edge, label %if.then66.i

if.end55.i.sw.bb71.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

if.then66.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc69.i = add i32 %74, 1
  %75 = ptrtoint ptr %this_residual63.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %inc69.i, ptr %this_residual63.i, align 4
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %if.then66.i, %if.end55.i.sw.bb71.i_crit_edge, %if.end.i.sw.bb71.i_crit_edge
  %conv72.i = and i32 %7, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i329.i = add nuw nsw i32 %conv72.i, -18874366
  %76 = inttoptr i32 %add.i329.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 12) #10, !srcloc !135
  %add78.i = add nuw nsw i32 %conv72.i, -18874367
  %77 = inttoptr i32 %add78.i to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %tobool84.not.i = icmp sgt i8 %78, -1
  br i1 %tobool84.not.i, label %sw.bb71.i.if.then_crit_edge, label %if.end86.i

sw.bb71.i.if.then_crit_edge:                      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end86.i:                                       ; preds = %sw.bb71.i
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %80 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load99.i = load i8, ptr %failed.i, align 4
  %81 = shl i8 %79, 1
  %bf.clear.i = and i8 %bf.load99.i, -97
  %bf.set.i = and i8 %81, 96
  %82 = or i8 %bf.clear.i, %bf.set.i
  %bf.set107.i = xor i8 %82, 64
  store i8 %bf.set107.i, ptr %failed.i, align 4
  %83 = and i8 %79, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %83)
  %.not372.i = icmp eq i8 %83, 16
  br i1 %.not372.i, label %if.then121.i, label %if.end86.i.if.end126.i_crit_edge

if.end86.i.if.end126.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i

if.then121.i:                                     ; preds = %if.end86.i
  %call122.i = tail call fastcc i32 @imm_negotiate(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.then121.i.if.end126.i_crit_edge, label %if.then121.i.if.end_crit_edge

if.then121.i.if.end_crit_edge:                    ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then121.i.if.end126.i_crit_edge:               ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then121.i.if.end126.i_crit_edge, %if.end86.i.if.end126.i_crit_edge
  %84 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %phase.i, align 4
  %inc129.i = add i32 %85, 1
  store volatile i32 %inc129.i, ptr %phase.i, align 4
  br label %sw.bb130.i

sw.bb130.i:                                       ; preds = %if.end126.i, %if.end.sw.bb130_crit_edge.i
  %.pre-phi380.i = phi ptr [ %.pre379.i, %if.end.sw.bb130_crit_edge.i ], [ %77, %if.end126.i ]
  %.pre-phi.i = phi ptr [ %.pre377.i, %if.end.sw.bb130_crit_edge.i ], [ %76, %if.end126.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi.i, i8 12) #10, !srcloc !135
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %.pre-phi380.i) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %tobool143.not.i = icmp sgt i8 %86, -1
  br i1 %tobool143.not.i, label %sw.bb130.i.if.then_crit_edge, label %if.end145.i

sw.bb130.i.if.then_crit_edge:                     ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end145.i:                                      ; preds = %sw.bb130.i
  %87 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load147.i = load i8, ptr %failed.i, align 4
  %88 = and i8 %bf.load147.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool151.not.i = icmp eq i8 %88, 0
  br i1 %tobool151.not.i, label %if.end145.i.if.end162.i_crit_edge, label %if.then152.i

if.end145.i.if.end162.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

if.then152.i:                                     ; preds = %if.end145.i
  %89 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %hostdata.i.i333.i = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 53
  %93 = ptrtoint ptr %hostdata.i.i333.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hostdata.i.i333.i, align 8
  %base.i334.i = getelementptr inbounds %struct.imm_struct, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %base.i334.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base.i334.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %cmnd.i335.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %98 = ptrtoint ptr %cmnd.i335.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmnd.i335.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = add i8 %101, -8
  %switch.and.i.i = and i8 %102, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  %conv13.i.i = and i32 %96, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i.i.i = add nuw nsw i32 %conv13.i.i, -18874366
  %103 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 12) #10, !srcloc !135
  %add16.i.i = add nuw nsw i32 %conv13.i.i, -18874367
  %104 = inttoptr i32 %add16.i.i to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %add25.i.i = add i32 %97, 1
  %this_residual.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %rd.i.i = getelementptr inbounds %struct.imm_struct, ptr %94, i32 0, i32 7
  %buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  %buffers_residual.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end98.i.i.while.cond.i.i_crit_edge, %if.then152.i
  %r.0.in.i.i = phi i8 [ %105, %if.then152.i ], [ %141, %if.end98.i.i.while.cond.i.i_crit_edge ]
  %r.0.i.i = and i8 %r.0.in.i.i, -72
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %r.0.i.i)
  %cmp23.not.i.i = icmp eq i8 %r.0.i.i, -72
  br i1 %cmp23.not.i.i, label %while.cond.i.i.if.end162.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.end162.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add25.i.i, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp26.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp26.i.i, label %while.body.i.i.if.then_crit_edge, label %if.end.i.i

while.body.i.i.if.then_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i.i:                                       ; preds = %while.body.i.i
  %107 = and i8 %r.0.in.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %107)
  %cmp30.not.i.i = icmp eq i8 %107, -120
  br i1 %cmp30.not.i.i, label %lor.lhs.false32.i.i, label %if.end.i.i.if.then35.i.i_crit_edge

if.end.i.i.if.then35.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false32.i.i:                              ; preds = %if.end.i.i
  %108 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp33.i.i = icmp slt i32 %109, 1
  br i1 %cmp33.i.i, label %lor.lhs.false32.i.i.if.then35.i.i_crit_edge, label %if.end36.i.i

lor.lhs.false32.i.i.if.then35.i.i_crit_edge:      ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %lor.lhs.false32.i.i.if.then35.i.i_crit_edge, %if.end.i.i.if.then35.i.i_crit_edge
  %cur_cmd.i.i.i = getelementptr inbounds %struct.imm_struct, ptr %94, i32 0, i32 4
  %110 = ptrtoint ptr %cur_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur_cmd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i, label %if.then35.i.i.if.end_crit_edge, label %if.then35.i.i.cleanup.sink.split.i.i_crit_edge

if.then35.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.then35.i.i.if.end_crit_edge:                   ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end36.i.i:                                     ; preds = %lor.lhs.false32.i.i
  %112 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i336.i = load i8, ptr %rd.i.i, align 4
  %113 = and i8 %bf.load.i336.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp37.i.i = icmp eq i8 %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %109)
  %cmp42.i.i = icmp ugt i32 %109, 511
  %spec.select.i.i = select i1 %switch.selectcmp.i.i, i1 %cmp42.i.i, i1 false
  br i1 %cmp37.i.i, label %if.then39.i.i, label %if.else.i.i

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i.i = select i1 %spec.select.i.i, i32 512, i32 2
  %114 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %SCp.i, align 4
  %call45.i.i = tail call fastcc i32 @imm_out(ptr noundef %94, ptr noundef %115, i32 noundef %cond.i.i) #10
  br label %if.end57.i.i

if.else.i.i:                                      ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond53.i.i = select i1 %spec.select.i.i, i32 512, i32 1
  %116 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %SCp.i, align 4
  %call56.i.i = tail call fastcc i32 @imm_in(ptr noundef %94, ptr noundef %117, i32 noundef %cond53.i.i) #10
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.else.i.i, %if.then39.i.i
  %fast.0.i.i = phi i32 [ %cond.i.i, %if.then39.i.i ], [ %cond53.i.i, %if.else.i.i ]
  %status.0.i.i = phi i32 [ %call45.i.i, %if.then39.i.i ], [ %call56.i.i, %if.else.i.i ]
  %118 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %SCp.i, align 4
  %add.ptr.i337.i = getelementptr i8, ptr %119, i32 %fast.0.i.i
  store ptr %add.ptr.i337.i, ptr %SCp.i, align 4
  %120 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %this_residual.i.i, align 4
  %sub62.i.i = sub i32 %121, %fast.0.i.i
  store i32 %sub62.i.i, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool63.not.i.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end65.i.i

if.then64.i.i:                                    ; preds = %if.end57.i.i
  %cur_cmd.i161.i.i = getelementptr inbounds %struct.imm_struct, ptr %94, i32 0, i32 4
  %122 = ptrtoint ptr %cur_cmd.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur_cmd.i161.i.i, align 4
  %tobool.not.i162.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i162.i.i, label %if.then64.i.i.if.end_crit_edge, label %if.then64.i.i.cleanup.sink.split.i.i_crit_edge

if.then64.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.then64.i.i.if.end_crit_edge:                   ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end65.i.i:                                     ; preds = %if.end57.i.i
  %124 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buffer.i.i, align 4
  %tobool67.not.i.i = icmp ne ptr %125, null
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %fast.0.i.i)
  %tobool70.not.i.i = icmp eq i32 %121, %fast.0.i.i
  %or.cond.i.i = select i1 %tobool67.not.i.i, i1 %tobool70.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then71.i.i, label %if.end65.i.i.if.end98.i.i_crit_edge

if.end65.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i.i

if.then71.i.i:                                    ; preds = %if.end65.i.i
  %126 = ptrtoint ptr %buffers_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %buffers_residual.i.i, align 4
  %dec.i.i = add i32 %127, -1
  store i32 %dec.i.i, ptr %buffers_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool73.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool73.not.i.i, label %if.then71.i.i.if.end98.i.i_crit_edge, label %if.then74.i.i

if.then71.i.i.if.end98.i.i_crit_edge:             ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i.i

if.then74.i.i:                                    ; preds = %if.then71.i.i
  %call77.i.i = tail call ptr @sg_next(ptr noundef nonnull %125) #10
  %128 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call77.i.i, ptr %buffer.i.i, align 4
  %length.i338.i = getelementptr inbounds %struct.scatterlist, ptr %call77.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %length.i338.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length.i338.i, align 4
  %131 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %this_residual.i.i, align 4
  %132 = ptrtoint ptr %call77.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %call77.i.i, align 4
  %and.i.i.i.i.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !139

do.body2.i.i.i.i:                                 ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !140
  unreachable

sg_virt.exit.i.i:                                 ; preds = %if.then74.i.i
  %and.i.i.i339.i = and i32 %133, -4
  %134 = inttoptr i32 %and.i.i.i339.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %134) #10
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call77.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %136
  %137 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr.i.i.i, ptr %SCp.i, align 4
  %138 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %this_residual.i.i, align 4
  %and91.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i.i)
  %tobool92.not.i.i = icmp eq i32 %and91.i.i, 0
  br i1 %tobool92.not.i.i, label %sg_virt.exit.i.i.if.end98.i.i_crit_edge, label %if.then93.i.i

sg_virt.exit.i.i.if.end98.i.i_crit_edge:          ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i.i

if.then93.i.i:                                    ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.i = add i32 %139, 1
  %140 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %inc.i.i, ptr %this_residual.i.i, align 4
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then93.i.i, %sg_virt.exit.i.i.if.end98.i.i_crit_edge, %if.then71.i.i.if.end98.i.i_crit_edge, %if.end65.i.i.if.end98.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 12) #10, !srcloc !135
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  %tobool114.not.i.i = icmp sgt i8 %141, -1
  br i1 %tobool114.not.i.i, label %if.end98.i.i.if.then_crit_edge, label %if.end98.i.i.while.cond.i.i_crit_edge

if.end98.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

if.end98.i.i.if.then_crit_edge:                   ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cleanup.sink.split.i.i:                           ; preds = %if.then64.i.i.cleanup.sink.split.i.i_crit_edge, %if.then35.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink172.i.i = phi ptr [ %111, %if.then35.i.i.cleanup.sink.split.i.i_crit_edge ], [ %123, %if.then64.i.i.cleanup.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 458752, %if.then35.i.i.cleanup.sink.split.i.i_crit_edge ], [ 131072, %if.then64.i.i.cleanup.sink.split.i.i_crit_edge ]
  %result.i163.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %.sink172.i.i, i32 0, i32 24
  %142 = ptrtoint ptr %result.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %.sink.i.i, ptr %result.i163.i.i, align 4
  %143 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load.i165.i.i = load i8, ptr %rd.i.i, align 4
  %bf.set.i166.i.i = or i8 %bf.load.i165.i.i, -128
  store i8 %bf.set.i166.i.i, ptr %rd.i.i, align 4
  br label %if.end

if.end162.i:                                      ; preds = %while.cond.i.i.if.end162.i_crit_edge, %if.end145.i.if.end162.i_crit_edge
  %144 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %phase.i, align 4
  %inc165.i = add i32 %145, 1
  store volatile i32 %inc165.i, ptr %phase.i, align 4
  br label %sw.bb166.i

sw.bb166.i:                                       ; preds = %if.end162.i, %if.end.i.sw.bb166.i_crit_edge
  %146 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load168.i = load i8, ptr %failed.i, align 4
  %147 = and i8 %bf.load168.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %147)
  %.not.i = icmp eq i8 %147, 96
  br i1 %.not.i, label %if.then180.i, label %sw.bb166.i.if.end196.i_crit_edge

sw.bb166.i.if.end196.i_crit_edge:                 ; preds = %sw.bb166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

if.then180.i:                                     ; preds = %sw.bb166.i
  %mode.i = getelementptr i8, ptr %work, i32 -8
  %148 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mode.i, align 4
  %.off.i = add i32 %149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then186.i, label %if.then180.i.if.end196.i_crit_edge

if.then180.i.if.end196.i_crit_edge:               ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

if.then186.i:                                     ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv187.i = and i32 %7, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i342.i = add nuw nsw i32 %conv187.i, -18874366
  %150 = inttoptr i32 %add.i342.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 4) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 12) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 14) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 4) #10, !srcloc !135
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then186.i, %if.then180.i.if.end196.i_crit_edge, %sw.bb166.i.if.end196.i_crit_edge
  %151 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %phase.i, align 4
  %inc199.i = add i32 %152, 1
  store volatile i32 %inc199.i, ptr %phase.i, align 4
  br label %sw.bb200.i

sw.bb200.i:                                       ; preds = %if.end196.i, %if.end.i.sw.bb200.i_crit_edge
  %call201.i = tail call fastcc zeroext i8 @imm_wait(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %call201.i)
  %cmp203.not.i = icmp eq i8 %call201.i, -72
  br i1 %cmp203.not.i, label %if.end206.i, label %if.then205.i

if.then205.i:                                     ; preds = %sw.bb200.i
  %153 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur_cmd, align 4
  %tobool.not.i350.i = icmp eq ptr %154, null
  br i1 %tobool.not.i350.i, label %if.then205.i.if.end_crit_edge, label %if.then.i355.i

if.then205.i.if.end_crit_edge:                    ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i355.i:                                   ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  %result.i351.i = getelementptr inbounds %struct.scsi_cmnd, ptr %154, i32 0, i32 24
  %155 = ptrtoint ptr %result.i351.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 458752, ptr %result.i351.i, align 4
  %156 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load.i353.i = load i8, ptr %failed.i, align 4
  %bf.set.i354.i = or i8 %bf.load.i353.i, -128
  store i8 %bf.set.i354.i, ptr %failed.i, align 4
  br label %if.end

if.end206.i:                                      ; preds = %sw.bb200.i
  %call207.i = tail call fastcc i32 @imm_negotiate(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.i)
  %tobool208.not.i = icmp eq i32 %call207.i, 0
  br i1 %tobool208.not.i, label %if.end210.i, label %if.end206.i.if.end_crit_edge

if.end206.i.if.end_crit_edge:                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end210.i:                                      ; preds = %if.end206.i
  %call211.i = call fastcc i32 @imm_in(ptr noundef %add.ptr, ptr noundef nonnull %l.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.i)
  %tobool212.not.i = icmp eq i32 %call211.i, 0
  br i1 %tobool212.not.i, label %if.end210.i.if.end223.i_crit_edge, label %if.then213.i

if.end210.i.if.end223.i_crit_edge:                ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.i

if.then213.i:                                     ; preds = %if.end210.i
  %call214.i = call fastcc zeroext i8 @imm_wait(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %call214.i)
  %cmp216.i = icmp eq i8 %call214.i, -72
  br i1 %cmp216.i, label %if.then218.i, label %if.then213.i.if.end220.i_crit_edge

if.then213.i.if.end220.i_crit_edge:               ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220.i

if.then218.i:                                     ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #12
  %call219.i = call fastcc i32 @imm_in(ptr noundef %add.ptr, ptr noundef nonnull %h.i, i32 noundef 1) #10
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then218.i, %if.then213.i.if.end220.i_crit_edge
  %157 = ptrtoint ptr %l.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %l.i, align 1
  %159 = and i8 %158, -2
  %and222.i = zext i8 %159 to i32
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %160 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %and222.i, ptr %result.i, align 4
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.end220.i, %if.end210.i.if.end223.i_crit_edge
  %mode224.i = getelementptr i8, ptr %work, i32 -8
  %161 = ptrtoint ptr %mode224.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mode224.i, align 4
  %.off314.i = add i32 %162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off314.i)
  %switch315.i = icmp ult i32 %.off314.i, 2
  br i1 %switch315.i, label %if.then231.i, label %if.end223.i.if.end_crit_edge

if.end223.i.if.end_crit_edge:                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then231.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv232.i = and i32 %7, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  %add.i359.i = add nuw nsw i32 %conv232.i, -18874366
  %163 = inttoptr i32 %add.i359.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 4) #10, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 12) #10, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 14) #10, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 4) #10, !srcloc !135
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call242.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %if.end

if.then:                                          ; preds = %if.end98.i.i.if.then_crit_edge, %while.body.i.i.if.then_crit_edge, %sw.bb130.i.if.then_crit_edge, %sw.bb71.i.if.then_crit_edge, %sw.bb16.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %164 = load ptr, ptr @system_wq, align 4
  %call.i.i26 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %164, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %do.end.i, %if.then231.i, %if.end223.i.if.end_crit_edge, %if.end206.i.if.end_crit_edge, %if.then.i355.i, %if.then205.i.if.end_crit_edge, %cleanup.sink.split.i.i, %if.then64.i.i.if.end_crit_edge, %if.then35.i.i.if.end_crit_edge, %if.then121.i.if.end_crit_edge, %for.body.i.i.if.end_crit_edge, %if.then.i322.i, %if.then11.i.if.end_crit_edge, %if.then.i.i, %if.then2.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l.i) #10
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %165 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp = icmp sgt i32 %166, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %base.i, align 4
  %conv.i = trunc i32 %168 to i16
  %call.i = call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i, i8 noundef zeroext 48) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #10
  %169 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load.i28 = load i8, ptr %failed.i, align 4
  %bf.clear8.i = and i8 %bf.load.i28, -17
  store i8 %bf.clear8.i, ptr %failed.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i) #10
  %170 = and i8 %bf.load.i28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i29 = icmp eq i8 %170, 0
  br i1 %tobool.not.i29, label %if.then.i, label %if.end4.imm_pb_dismiss.exit_crit_edge

if.end4.imm_pb_dismiss.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_pb_dismiss.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr, align 4
  call void @parport_release(ptr noundef %172) #10
  br label %imm_pb_dismiss.exit

imm_pb_dismiss.exit:                              ; preds = %if.then.i, %if.end4.imm_pb_dismiss.exit_crit_edge
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %173 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %host_lock, align 4
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %174) #10
  %175 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %cur_cmd, align 4
  call void @scsi_done(ptr noundef %1) #10
  %176 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %177, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %imm_pb_dismiss.exit, %if.then
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imm_reset_pulse(i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %base, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 4) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %and = and i32 %base, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 64) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 13) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 4) #10, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imm_cpp(i16 noundef zeroext %ppb, i8 noundef zeroext %b) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %ppb to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i = add nuw nsw i32 %conv, -18874366
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 429496) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @arm_heavy_mb() #10
  %add2 = or i32 %conv, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -86) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 85) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #10
  %add27 = add nuw nsw i32 %conv, -18874367
  %7 = inttoptr i32 %add27 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  %9 = and i8 %8, -72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -121) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #10
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  %12 = and i8 %11, -72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 120) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #10
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  %15 = and i8 %14, 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %b) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 13) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %9)
  %cmp = icmp eq i8 %9, -72
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %12)
  %cmp92 = icmp eq i8 %12, 24
  %or.cond = select i1 %cmp, i1 %cmp92, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %cmp96 = icmp eq i8 %15, 48
  %or.cond130 = select i1 %or.cond, i1 %cmp96, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %15)
  %cmp107 = icmp ne i8 %15, 56
  %not.or.cond = xor i1 %or.cond, true
  %or.cond132 = select i1 %not.or.cond, i1 true, i1 %cmp107
  %spec.select = sext i1 %or.cond132 to i32
  %retval.0 = select i1 %or.cond130, i32 1, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imm_select(ptr nocapture noundef readonly %dev, i32 noundef %target) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %conv1 = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i = add nuw nsw i32 %conv1, -18874366
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #10, !srcloc !135
  %add4 = add nuw nsw i32 %conv1, -18874367
  %3 = inttoptr i32 %add4 to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %k.0 = phi i32 [ 500, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %dec = add nsw i32 %k.0, -1
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !159
  tail call void @arm_heavy_mb() #10
  %shl = shl nuw i32 1, %target
  %6 = trunc i32 %shl to i8
  %conv15 = or i8 %6, -128
  %add18 = or i32 %conv1, -18874368
  %7 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv15) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 13) #10, !srcloc !135
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %if.end
  %k.1 = phi i32 [ 500, %if.end ], [ %dec25, %do.body24.do.body24_crit_edge ]
  %dec25 = add nsw i32 %k.1, -1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool37.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec25)
  %tobool39.not = icmp eq i32 %dec25, 0
  %or.cond58 = select i1 %tobool37.not, i1 true, i1 %tobool39.not
  br i1 %or.cond58, label %do.end41, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.end41:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec25)
  %tobool44.not = icmp ne i32 %dec25, 0
  %cond = zext i1 %tobool44.not to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end41 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imm_out(ptr nocapture noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %call = tail call fastcc zeroext i8 @imm_wait(ptr noundef %dev)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp.not = icmp eq i32 %and, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.imm_fail.exit_crit_edge, label %if.then.i

if.then.imm_fail.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_fail.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 458752, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %imm_fail.exit

imm_fail.exit:                                    ; preds = %if.then.i, %if.then.imm_fail.exit_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %do.end36 [
    i32 5, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge69
    i32 3, label %if.end.sw.bb_crit_edge70
    i32 1, label %if.end.sw.bb32_crit_edge
    i32 2, label %if.end.sw.bb32_crit_edge71
  ]

if.end.sw.bb32_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb_crit_edge70:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge69:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge69, %if.end.sw.bb_crit_edge70
  %conv.i = and i32 %1, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874367
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %10) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @arm_heavy_mb() #10
  %11 = and i8 %10, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %11) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i = add nuw nsw i32 %conv.i, -18874366
  %12 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 4) #10, !srcloc !135
  %13 = ptrtoint ptr %buffer to i32
  %or = or i32 %13, %len
  %and5 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %add10 = add nuw nsw i32 %conv.i, -18874364
  %14 = inttoptr i32 %add10 to ptr
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef nonnull %14, ptr noundef %buffer, i32 noundef %shr) #10
  br label %if.end17

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_writesb(ptr noundef nonnull %14, ptr noundef %buffer, i32 noundef %len) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 12) #10, !srcloc !135
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 12) #10, !srcloc !135
  %base_hi.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.end17.cleanup_crit_edge, label %if.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %add.i63 = add i32 %19, 2
  %and.i64 = and i32 %add.i63, 1048575
  %add1.i65 = or i32 %and.i64, -18874368
  %20 = inttoptr i32 %add1.i65 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %22 = and i8 %21, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %22)
  %cmp4.i = icmp eq i8 %22, 96
  br i1 %cmp4.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i66 = icmp eq i8 %24, 0
  br i1 %tobool.not.i66, label %if.end19.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1073740) #10
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %cleanup

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge71
  %conv.i67 = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i.i = add nuw nsw i32 %conv.i67, -18874366
  %26 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %tobool.not7.i = icmp ult i32 %len, 2
  br i1 %tobool.not7.i, label %sw.bb32.imm_byte_out.exit_crit_edge, label %do.body.lr.ph.i

sw.bb32.imm_byte_out.exit_crit_edge:              ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_byte_out.exit

do.body.lr.ph.i:                                  ; preds = %sw.bb32
  %shr.i = ashr i32 %len, 1
  %add2.i = or i32 %conv.i67, -18874368
  %27 = inttoptr i32 %add2.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.09.i = phi i32 [ %shr.i, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %buffer.addr.08.i = phi ptr [ %buffer, %do.body.lr.ph.i ], [ %incdec.ptr8.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.08.i, i32 1
  %28 = ptrtoint ptr %buffer.addr.08.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buffer.addr.08.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %29) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @arm_heavy_mb() #10
  %incdec.ptr8.i = getelementptr i8, ptr %buffer.addr.08.i, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %31) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #10, !srcloc !135
  %dec.i = add i32 %i.09.i, -1
  %tobool.not.i68 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i68, label %do.body.i.imm_byte_out.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.imm_byte_out.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_byte_out.exit

imm_byte_out.exit:                                ; preds = %do.body.i.imm_byte_out.exit_crit_edge, %sw.bb32.imm_byte_out.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #10, !srcloc !135
  br label %cleanup

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %imm_byte_out.exit, %do.end.i, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %imm_fail.exit
  %retval.0.shrunk = phi i8 [ 0, %imm_fail.exit ], [ 0, %do.end36 ], [ 1, %imm_byte_out.exit ], [ %17, %if.end17.cleanup_crit_edge ], [ %17, %if.end.i.cleanup_crit_edge ], [ %17, %do.end.i ], [ %17, %for.body.i.cleanup_crit_edge ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @imm_wait(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %conv1 = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i = add nuw nsw i32 %conv1, -18874366
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #10, !srcloc !135
  %add4 = add nuw nsw i32 %conv1, -18874367
  %3 = inttoptr i32 %add4 to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %k.0 = phi i32 [ 5000, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  %dec = add nsw i32 %k.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp slt i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #10, !srcloc !135
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %and13 = and i8 %4, -72
  br label %cleanup

if.end:                                           ; preds = %do.end
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.imm_fail.exit_crit_edge, label %if.then.i

if.end.imm_fail.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_fail.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196608, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %imm_fail.exit

imm_fail.exit:                                    ; preds = %if.then.i, %if.end.imm_fail.exit_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #14
  br label %cleanup

cleanup:                                          ; preds = %imm_fail.exit, %if.then
  %retval.0 = phi i8 [ %and13, %if.then ], [ 0, %imm_fail.exit ]
  ret i8 %retval.0
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
define internal fastcc i32 @imm_negotiate(ptr nocapture noundef %tmp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.imm_struct, ptr %tmp, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base1, align 4
  %mode2 = getelementptr inbounds %struct.imm_struct, ptr %tmp, i32 0, i32 3
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %mode.0 = phi i8 [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %conv4 = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i = add nuw nsw i32 %conv4, -18874366
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 4) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %add6 = or i32 %conv4, -18874368
  %7 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %mode.0) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 6) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #10
  %add12 = add nuw nsw i32 %conv4, -18874367
  %10 = inttoptr i32 %add12 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  %12 = lshr i8 %11, 5
  %.lobit = and i8 %12, 1
  %13 = xor i8 %.lobit, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 7) #10, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 6) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %sw.epilog.if.end_crit_edge, label %do.end26

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end26:                                         ; preds = %sw.epilog
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %tmp, i32 0, i32 4
  %16 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end26.if.end_crit_edge, label %if.then.i

do.end26.if.end_crit_edge:                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 458752, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.imm_struct, ptr %tmp, i32 0, i32 7
  %19 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %do.end26.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %conv29 = zext i8 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv29, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imm_in(ptr nocapture noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %call = tail call fastcc zeroext i8 @imm_wait(ptr noundef %dev)
  %2 = and i8 %call, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %2)
  %cmp.not = icmp eq i8 %2, 24
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 458752, ptr %result.i, align 4
  %failed.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %failed.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %8, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 5, label %if.end.sw.bb9_crit_edge
    i32 4, label %if.end.sw.bb9_crit_edge86
    i32 3, label %if.end.sw.bb9_crit_edge87
  ]

if.end.sw.bb9_crit_edge87:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge86:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

sw.bb:                                            ; preds = %if.end
  %conv.i = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i.i = add nuw nsw i32 %conv.i, -18874366
  %10 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 4) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not8.i = icmp eq i32 %len, 0
  br i1 %tobool.not8.i, label %sw.bb.imm_nibble_in.exit_crit_edge, label %for.body.lr.ph.i

sw.bb.imm_nibble_in.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_nibble_in.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %add5.i = add nuw nsw i32 %conv.i, -18874367
  %11 = inttoptr i32 %add5.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buffer.addr.010.i = phi ptr [ %buffer, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ %len, %for.body.lr.ph.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 6) #10, !srcloc !135
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  %13 = lshr i8 %12, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 5) #10, !srcloc !135
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  %15 = and i8 %14, -16
  %or1.i = or i8 %15, %13
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.010.i, i32 1
  %16 = ptrtoint ptr %buffer.addr.010.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or1.i, ptr %buffer.addr.010.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 4) #10, !srcloc !135
  %dec.i = add i32 %i.09.i, -1
  %tobool.not.i64 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i64, label %for.body.i.imm_nibble_in.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.imm_nibble_in.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_nibble_in.exit

imm_nibble_in.exit:                               ; preds = %for.body.i.imm_nibble_in.exit_crit_edge, %sw.bb.imm_nibble_in.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 12) #10, !srcloc !135
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %conv.i65 = and i32 %1, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i.i66 = add nuw nsw i32 %conv.i65, -18874366
  %17 = inttoptr i32 %add.i.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 4) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not5.i = icmp eq i32 %len, 0
  br i1 %tobool.not5.i, label %sw.bb5.imm_byte_in.exit_crit_edge, label %for.body.lr.ph.i67

sw.bb5.imm_byte_in.exit_crit_edge:                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_byte_in.exit

for.body.lr.ph.i67:                               ; preds = %sw.bb5
  %add4.i = or i32 %conv.i65, -18874368
  %18 = inttoptr i32 %add4.i to ptr
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %for.body.lr.ph.i67
  %buffer.addr.07.i = phi ptr [ %buffer, %for.body.lr.ph.i67 ], [ %incdec.ptr.i68, %for.body.i71.for.body.i71_crit_edge ]
  %i.06.i = phi i32 [ %len, %for.body.lr.ph.i67 ], [ %dec.i69, %for.body.i71.for.body.i71_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 38) #10, !srcloc !135
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  %incdec.ptr.i68 = getelementptr i8, ptr %buffer.addr.07.i, i32 1
  %20 = ptrtoint ptr %buffer.addr.07.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %buffer.addr.07.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 37) #10, !srcloc !135
  %dec.i69 = add i32 %i.06.i, -1
  %tobool.not.i70 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i70, label %for.body.i71.imm_byte_in.exit_crit_edge, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i71

for.body.i71.imm_byte_in.exit_crit_edge:          ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_byte_in.exit

imm_byte_in.exit:                                 ; preds = %for.body.i71.imm_byte_in.exit_crit_edge, %sw.bb5.imm_byte_in.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 12) #10, !srcloc !135
  br label %cleanup

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge86, %if.end.sw.bb9_crit_edge87
  %conv.i74 = and i32 %1, 65535
  %add1.i = add nuw nsw i32 %conv.i74, -18874367
  %21 = inttoptr i32 %add1.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %22) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @arm_heavy_mb() #10
  %23 = and i8 %22, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %23) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %add.i76 = add nuw nsw i32 %conv.i74, -18874366
  %24 = inttoptr i32 %add.i76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 36) #10, !srcloc !135
  %25 = ptrtoint ptr %buffer to i32
  %or = or i32 %25, %len
  %and12 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %add17 = add nuw nsw i32 %conv.i74, -18874364
  %26 = inttoptr i32 %add17 to ptr
  br i1 %tobool.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef nonnull %26, ptr noundef %buffer, i32 noundef %shr) #10
  br label %if.end24

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_readsb(ptr noundef nonnull %26, ptr noundef %buffer, i32 noundef %len) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 44) #10, !srcloc !135
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 44) #10, !srcloc !135
  %base_hi.i = getelementptr inbounds %struct.imm_struct, ptr %dev, i32 0, i32 2
  %30 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %add.i81 = add i32 %31, 2
  %and.i82 = and i32 %add.i81, 1048575
  %add1.i83 = or i32 %and.i82, -18874368
  %32 = inttoptr i32 %add1.i83 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  %34 = and i8 %33, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %34)
  %cmp4.i = icmp eq i8 %34, 96
  br i1 %cmp4.i, label %if.end.i.for.body.i85_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.for.body.i85_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i85

for.body.i85:                                     ; preds = %if.end19.i.for.body.i85_crit_edge, %if.end.i.for.body.i85_crit_edge
  %i.027.i = phi i32 [ %inc.i, %if.end19.i.for.body.i85_crit_edge ], [ 0, %if.end.i.for.body.i85_crit_edge ]
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #10, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i84 = icmp eq i8 %36, 0
  br i1 %tobool.not.i84, label %if.end19.i, label %for.body.i85.cleanup_crit_edge

for.body.i85.cleanup_crit_edge:                   ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %for.body.i85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #10
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end19.i.for.body.i85_crit_edge

if.end19.i.for.body.i85_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i85

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end.i, %for.body.i85.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %imm_byte_in.exit, %imm_nibble_in.exit, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0.shrunk = phi i8 [ 0, %do.end ], [ 1, %imm_byte_in.exit ], [ 1, %imm_nibble_in.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ], [ %29, %if.end24.cleanup_crit_edge ], [ %29, %if.end.i.cleanup_crit_edge ], [ %29, %do.end.i ], [ %29, %for.body.i85.cleanup_crit_edge ]
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
define internal i32 @imm_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
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
  %cur_cmd.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #14
  br label %imm_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %failed.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %failed.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %failed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %jstart.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 6
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
  %imm_tq.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %imm_tq.i, i32 noundef 0) #10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arbitration_lock) #10
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %call6.i.i = tail call i32 @parport_claim(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.end.i.imm_pb_claim.exit.i_crit_edge

if.end.i.imm_pb_claim.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imm_pb_claim.exit.i

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
  %base2.i.i.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %base2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %base2.i.i.i, align 4
  %26 = ptrtoint ptr %cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_cmd.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phase.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 22, i32 9
  %28 = ptrtoint ptr %phase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %phase.i.i.i, align 4
  br label %imm_pb_claim.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %waiting.i.i.i = getelementptr inbounds %struct.imm_struct, ptr %7, i32 0, i32 9
  %29 = ptrtoint ptr %waiting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %waiting.i.i.i, align 4
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %imm_pb_claim.exit.i

imm_pb_claim.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end.i.imm_pb_claim.exit.i_crit_edge
  %res.0.i.i = phi i8 [ 16, %if.end.i.imm_pb_claim.exit.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %if.else.i.i.i ]
  %31 = ptrtoint ptr %failed.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %failed.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  %bf.set.i.i = or i8 %bf.clear.i.i, %res.0.i.i
  store i8 %bf.set.i.i, ptr %failed.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arbitration_lock, i32 noundef %call2.i.i) #10
  br label %imm_queuecommand_lck.exit

imm_queuecommand_lck.exit:                        ; preds = %imm_pb_claim.exit.i, %do.end.i
  %32 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call2) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imm_abort(ptr noundef %cmd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cur_cmd = getelementptr inbounds %struct.imm_struct, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cur_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %sw.bb ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_reset(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.imm_struct, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %conv.i = trunc i32 %9 to i16
  %call.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i, i8 noundef zeroext 48) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_cmd = getelementptr inbounds %struct.imm_struct, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cur_cmd, align 4
  %base.i7 = getelementptr inbounds %struct.imm_struct, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i7, align 4
  %conv.i8 = trunc i32 %12 to i16
  %call.i9 = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i8, i8 noundef zeroext -32) #10
  %call1.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i8, i8 noundef zeroext 48) #10
  %mode.i = getelementptr inbounds %struct.imm_struct, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  %.off.i = add i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %..i = select i1 %switch.i, i8 40, i8 -32
  %call11.i = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i8, i8 noundef zeroext %..i) #10
  %15 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i7, align 4
  tail call fastcc void @imm_reset_pulse(i32 noundef %16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #10
  %18 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i7, align 4
  %conv.i11 = trunc i32 %19 to i16
  %call.i12 = tail call fastcc i32 @imm_cpp(i16 noundef zeroext %conv.i11, i8 noundef zeroext 48) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_adjust_queue(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %1, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imm_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %dev, i64 noundef %capacity, ptr nocapture noundef writeonly %ip) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %div27 = lshr i32 %add, 11
  %arrayidx4 = getelementptr i32, ptr %ip, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div27, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2099199, i32 %add)
  %cmp = icmp ugt i32 %add, 2099199
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %ip, align 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %arrayidx1, align 4
  %div14 = udiv i32 %add, 16065
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div14, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_show_info(ptr noundef %m, ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #10
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef %7) #10
  %mode = getelementptr inbounds %struct.imm_struct, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [7 x ptr], ptr @IMM_MODE_STRING, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_write_info(ptr nocapture noundef readonly %host, ptr noundef %buffer, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %length)
  %cmp = icmp sgt i32 %length, 5
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buffer, ptr noundef nonnull dereferenceable(6) @.str.52, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %buffer, i32 5
  %call3 = tail call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #10
  %mode = getelementptr inbounds %struct.imm_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %mode, align 4
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %length, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !122, !123}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_imm__285_1284_imm_driver_init6, !1, !"__initcall__kmod_imm__285_1284_imm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/imm.c", i32 1284, i32 1}
!2 = !{ptr @__exitcall_imm_driver_exit, !1, !"__exitcall_imm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file286, !4, !"__UNIQUE_ID_file286", i1 false, i1 false}
!4 = !{!"../drivers/scsi/imm.c", i32 1286, i32 1}
!5 = !{ptr @__UNIQUE_ID_license287, !4, !"__UNIQUE_ID_license287", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @imm_driver, !8, !"imm_driver", i1 false, i1 false}
!8 = !{!"../drivers/scsi/imm.c", i32 1278, i32 30}
!9 = !{ptr @imm_hosts, !10, !"imm_hosts", i1 false, i1 false}
!10 = !{!"../drivers/scsi/imm.c", i32 1118, i32 8}
!11 = !{ptr @__imm_attach.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/scsi/imm.c", i32 1148, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__imm_attach.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/scsi/imm.c", i32 1155, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/imm.c", i32 1188, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__imm_attach._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @__imm_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__imm_attach.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/imm.c", i32 1226, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__imm_attach.__key.8, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/imm.c", i32 63, i32 8}
!29 = !{ptr @arbitration_lock, !28, !"arbitration_lock", i1 false, i1 false}
!30 = !{ptr @device_check.cmd, !31, !"cmd", i1 false, i1 false}
!31 = !{!"../drivers/scsi/imm.c", i32 1007, i32 14}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/imm.c", i32 1024, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @device_check._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @device_check._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/imm.c", i32 1044, i32 4}
!39 = !{ptr @device_check._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @device_check._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @device_check._entry.16, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/imm.c", i32 1069, i32 4}
!43 = !{ptr @device_check._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/imm.c", i32 1074, i32 3}
!46 = !{ptr @device_check._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @device_check._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/imm.c", i32 1084, i32 2}
!50 = !{ptr @device_check._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @device_check._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/imm.h", i32 98, i32 21}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/imm.h", i32 99, i32 18}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/imm.h", i32 100, i32 15}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/imm.h", i32 101, i32 17}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/imm.h", i32 102, i32 18}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/imm.h", i32 108, i32 19}
!64 = !{ptr @IMM_MODE_STRING, !65, !"IMM_MODE_STRING", i1 false, i1 false}
!65 = !{!"../drivers/scsi/imm.h", i32 96, i32 14}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/imm.c", i32 360, i32 3}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @imm_out._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @imm_out._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/imm.c", i32 391, i32 3}
!73 = !{ptr @imm_out._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imm_out._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/imm.c", i32 214, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @imm_wait._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @imm_wait._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/imm.c", i32 294, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ecp_sync._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ecp_sync._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/imm.c", i32 908, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @imm_engine._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @imm_engine._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/imm.c", i32 259, i32 3}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @imm_negotiate._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @imm_negotiate._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/imm.c", i32 445, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @imm_in._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @imm_in._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/imm.c", i32 1103, i32 12}
!102 = !{ptr @imm_template, !103, !"imm_template", i1 false, i1 false}
!103 = !{!"../drivers/scsi/imm.c", i32 1098, i32 34}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/imm.c", i32 918, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imm_queuecommand_lck._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imm_queuecommand_lck._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/imm.c", i32 143, i32 16}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/imm.c", i32 143, i32 34}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/imm.c", i32 144, i32 16}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/imm.c", i32 145, i32 16}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/imm.c", i32 131, i32 39}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/imm.c", i32 135, i32 2}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @imm_write_info._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @imm_write_info._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2153718065}
!135 = !{i64 6182009}
!136 = !{i64 6182404}
!137 = !{i64 2154777497}
!138 = !{i64 2154759934}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2154350021, i64 2154350513, i64 2154350058, i64 2154350114, i64 2154350148, i64 2154350172, i64 2154350213, i64 2154350234, i64 2154350262, i64 2154350296}
!141 = !{i64 2154760366}
!142 = !{i64 2154760675}
!143 = !{i64 2154761050}
!144 = !{i64 2154756846}
!145 = !{i64 2154757580}
!146 = !{i64 2154769129}
!147 = !{i64 2154742346}
!148 = !{i64 2154743235}
!149 = !{i64 2154744124}
!150 = !{i64 2154745013}
!151 = !{i64 2154745980}
!152 = !{i64 2154746211}
!153 = !{i64 2154747178}
!154 = !{i64 2154747409}
!155 = !{i64 2154748376}
!156 = !{i64 2154748601}
!157 = !{i64 2154751203}
!158 = !{i64 2154752381}
!159 = !{i64 2154752676}
!160 = !{i64 2154753705}
!161 = !{i64 2154730505}
!162 = !{i64 2154730734}
!163 = !{i64 2154731095}
!164 = !{i64 2154738105}
!165 = !{i64 2154731700}
!166 = !{i64 2154732018}
!167 = !{i64 2154734321}
!168 = !{i64 2154734714}
!169 = !{i64 2154723144}
!170 = !{i64 2154725843}
!171 = !{i64 2154727390}
!172 = !{i64 2154735275}
!173 = !{i64 2154735620}
!174 = !{i64 2154736026}
!175 = !{i64 2154740202}
