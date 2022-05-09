; ModuleID = '/llk/IR_all_yes/drivers/scsi/sr.c_pt.bc'
source_filename = "../drivers/scsi/sr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdrom_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_cd = type { ptr, i32, ptr, i32, i32, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, %struct.kref, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }

@__UNIQUE_ID_description286 = internal constant [42 x i8] c"sr_mod.description=SCSI cdrom (sr) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [32 x i8] c"sr_mod.file=drivers/scsi/sr_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [19 x i8] c"sr_mod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias289 = internal constant [30 x i8] c"sr_mod.alias=block-major-11-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [26 x i8] c"sr_mod.alias=scsi:t-0x05*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [26 x i8] c"sr_mod.alias=scsi:t-0x04*\00", section ".modinfo", align 1
@sr_template = internal global { %struct.scsi_driver, [60 x i8] } { %struct.scsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @sr_probe, ptr null, ptr @sr_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr_pm_ops, ptr null, ptr null }, ptr null, ptr @sr_init_command, ptr null, ptr @sr_done, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sr\00", [29 x i8] zeroinitializer }, align 32
@__initcall__kmod_sr_mod__294_1079_init_sr6 = internal global ptr @init_sr, section ".initcall6.init", align 4
@__exitcall_exit_sr = internal global ptr @exit_sr, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [32 x i8] c"sr_mod.file=drivers/scsi/sr_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [19 x i8] c"sr_mod.license=GPL\00", section ".modinfo", align 1
@sr_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr_runtime_suspend, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sr_bio_compl_lkclass = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cd->lock\00", [22 x i8] zeroinitializer }, align 32
@sr_index_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sr_index_bits = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sr%d\00", [27 x i8] zeroinitializer }, align 32
@sr_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @sr_block_open, ptr @sr_block_release, ptr null, ptr @sr_block_ioctl, ptr null, ptr @sr_block_check_events, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sr_dops = internal constant { %struct.cdrom_device_ops, [36 x i8] } { %struct.cdrom_device_ops { ptr @sr_open, ptr @sr_release, ptr @sr_drive_status, ptr @sr_check_events, ptr @sr_tray_move, ptr @sr_lock_door, ptr @sr_select_speed, ptr null, ptr @sr_get_last_session, ptr @sr_get_mcn, ptr @sr_reset, ptr @sr_audio_ioctl, ptr @sr_packet, ptr @sr_read_cdda_bpc, i32 3931135 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Attached scsi CD-ROM %s\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_index_lock\00", [18 x i8] zeroinitializer }, align 32
@sr_ref_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sr_ref_mutex, i64 52), ptr getelementptr (i8, ptr @sr_ref_mutex, i64 52) }, ptr @sr_ref_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sr_ref_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr_ref_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"GET_EVENT and TUR disagree continuously, suppress GET_EVENT events\0A\00", [60 x i8] zeroinitializer }, align 32
@__const.sr_get_events.cmd = private unnamed_addr constant [10 x i8] c"J\01\00\00\10\00\00\00\08\00", align 1
@get_capabilities.loadmech = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.13, ptr @.str.13], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"caddy\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tray\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pop-up\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"changer\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cartridge changer\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"out of memory.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi-1 drive\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scsi3-mmc drive: %dx/%dx %s%s%s%s%s%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writer \00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvd-ram \00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cd/rw \00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xa/form2 \00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdda \00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported sector size %d.\00", [36 x i8] zeroinitializer }, align 32
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Doing sr request, block = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Finishing %u sectors\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Retry with 0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad sector size %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown sr command\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mismatch count %d, bytes %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unaligned transfer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %d/%u 512 byte blocks.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writing\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reading\00", [24 x i8] zeroinitializer }, align 32
@switch.table.sr_check_events = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 512, i64 2048, i64 2340, i64 2352]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"sr_template\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 95, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1076, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"sr_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 91, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"sr_bio_compl_lkclass\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 110, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 669, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"sr_index_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"sr_index_bits\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 107, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 684, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"sr_bdops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 612, i32 45 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"sr_dops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 129, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 736, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 108, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"sr_ref_mutex\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 115, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 310, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"loadmech\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 844, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 846, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 847, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 848, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 849, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 850, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 851, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 860, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 880, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 889, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 816, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 407, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 411, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 413, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 428, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 443, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 456, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 468, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 468, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [21 x i8] c"../drivers/scsi/sr.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 475, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [29 x i8] c"switch.table.sr_check_events\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_license296, ptr @__exitcall_exit_sr, ptr @__initcall__kmod_sr_mod__294_1079_init_sr6, ptr @exit_sr, ptr @sr_template, ptr @.str, ptr @sr_pm_ops, ptr @sr_bio_compl_lkclass, ptr @sr_probe.__key, ptr @.str.1, ptr @sr_index_lock, ptr @sr_index_bits, ptr @.str.2, ptr @sr_bdops, ptr @sr_dops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sr_ref_mutex, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @get_capabilities.loadmech, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.sr_check_events], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_template to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_bio_compl_lkclass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_index_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_index_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_dops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_ref_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_capabilities.loadmech to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sr_check_events to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_sr() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef nonnull @sr_template) #11
  tail call void @unregister_blkdev(i32 noundef 11, ptr noundef nonnull @.str) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sr() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_blkdev(i32 noundef 11, ptr noundef nonnull @.str, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @scsi_register_driver(ptr noundef nonnull @sr_template) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_blkdev(i32 noundef 11, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_probe(ptr noundef %dev) #2 align 64 {
entry:
  %data.i = alloca %struct.scsi_mode_data, align 4
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call = tail call i32 @scsi_autopm_get_device(ptr noundef %add.ptr) #11
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %switch = icmp eq i8 %2, 4
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 240) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref, align 4
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %5 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request_queue, align 4
  %call9 = tail call ptr @__alloc_disk_node(ptr noundef %6, i32 noundef -1, ptr noundef nonnull @sr_bio_compl_lkclass) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.fail_free_crit_edge, label %do.body

if.end8.fail_free_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_free

do.body:                                          ; preds = %if.end8
  %lock = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sr_probe.__key) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #11
  %call13 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @sr_index_bits, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 256
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sr_index_lock) #11
  br label %fail_put

if.end17:                                         ; preds = %do.body
  %rem.i = and i32 %call13, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div1.i = lshr i32 %call13, 5
  %add.ptr.i = getelementptr i32, ptr @sr_index_bits, i32 %div1.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sr_index_lock) #11
  %9 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %call9, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 1
  %10 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call13, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 2
  %11 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %minors, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 3
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.2, i32 noundef %call13)
  %fops = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 8
  %12 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sr_bdops, ptr %fops, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 5
  store i32 %or, ptr %flags, align 4
  %events = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 4
  %15 = ptrtoint ptr %events to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %events, align 4
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 5
  %16 = ptrtoint ptr %event_flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 7, ptr %event_flags, align 2
  %17 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %18, i32 noundef 3000) #11
  %device = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %device, align 8
  %disk20 = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %disk20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9, ptr %disk20, align 8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sr_template, ptr %call7.i.i, align 8
  %capacity = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2097151, ptr %capacity, align 4
  %changed = getelementptr i8, ptr %dev, i32 -100
  %23 = ptrtoint ptr %changed to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load = load i64, ptr %changed, align 4
  %bf.set = or i64 %bf.load, 4611686018427387904
  store i64 %bf.set, ptr %changed, align 4
  %media_present = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load22 = load i8, ptr %media_present, align 4
  %bf.set27 = and i8 %bf.load22, -93
  %bf.clear29 = or i8 %bf.set27, 68
  store i8 %bf.clear29, ptr %media_present, align 4
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %cdi to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sr_dops, ptr %cdi, align 8
  %handle = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %handle, align 8
  %mask = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mask, align 4
  %capacity37 = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %capacity37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %capacity37, align 4
  %name = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 11
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef %call13)
  %sector_size = getelementptr i8, ptr %dev, i32 -260
  %29 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2048, ptr %sector_size, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #11
  %30 = call ptr @memset(ptr %data.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #11
  %31 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %sshdr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i126 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 512) #14
  %tobool.not.i = icmp eq ptr %call7.i.i126, null
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 8
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.16, ptr noundef %34, ptr noundef %name, ptr noundef nonnull @.str.17) #11
  br label %get_capabilities.exit

if.end.i:                                         ; preds = %if.end17
  %call2.i = call i32 @scsi_test_unit_ready(ptr noundef %34, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %sshdr.i) #11
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 8
  %call4.i = call i32 @scsi_mode_sense(ptr noundef %36, i32 noundef 0, i32 noundef 42, ptr noundef nonnull %call7.i.i126, i32 noundef 128, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %data.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %38)
  %cmp5.i = icmp ugt i32 %38, 128
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %header_length.i = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i, i32 0, i32 4
  %39 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %header_length.i, align 4
  %conv.i = zext i8 %40 to i32
  %block_descriptor_length.i = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i, i32 0, i32 1
  %41 = ptrtoint ptr %block_descriptor_length.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %block_descriptor_length.i, align 4
  %conv7.i = zext i16 %42 to i32
  %add.i = add nuw nsw i32 %conv7.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp9.i = icmp ugt i32 %add.i, %38
  br i1 %cmp9.i, label %lor.lhs.false6.i.if.then11.i_crit_edge, label %if.end18.i

lor.lhs.false6.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false6.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  %speed.i = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 5
  %43 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %speed.i, align 8
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask, align 4
  %or.i127 = or i32 %45, 3923992
  store i32 %or.i127, ptr %mask, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i126) #11
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %47, ptr noundef %name, ptr noundef nonnull @.str.19) #11
  br label %get_capabilities.exit

if.end18.i:                                       ; preds = %lor.lhs.false6.i
  %add24.i = add nuw nsw i32 %add.i, 8
  %arrayidx.i = getelementptr i8, ptr %call7.i.i126, i32 %add24.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx.i, align 1
  %50 = udiv i16 %49, 176
  %div.i = zext i16 %50 to i32
  %speed28.i = getelementptr inbounds %struct.scsi_cd, ptr %call7.i.i, i32 0, i32 8, i32 5
  %51 = ptrtoint ptr %speed28.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div.i, ptr %speed28.i, align 8
  %52 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %media_present, align 4
  %add29.i = add nuw nsw i32 %add.i, 5
  %arrayidx30.i = getelementptr i8, ptr %call7.i.i126, i32 %add29.i
  %53 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx30.i, align 1
  %55 = shl i8 %54, 3
  %bf.shl.i = and i8 %55, 8
  %bf.set.i = and i8 %bf.load.i, -25
  %bf.clear33.i = or i8 %bf.set.i, %bf.shl.i
  %bf.set34.i = or i8 %bf.clear33.i, 16
  store i8 %bf.set34.i, ptr %media_present, align 4
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 8
  %add39.i = add nuw nsw i32 %add.i, 14
  %arrayidx40.i = getelementptr i8, ptr %call7.i.i126, i32 %add39.i
  %58 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx40.i, align 1
  %60 = udiv i16 %59, 176
  %div43.i = zext i16 %60 to i32
  %add46.i = add nuw nsw i32 %add.i, 3
  %arrayidx47.i = getelementptr i8, ptr %call7.i.i126, i32 %add46.i
  %61 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = zext i8 %62 to i32
  %and49.i = and i32 %conv48.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %cond.i = select i1 %tobool50.not.i, ptr @.str.13, ptr @.str.21
  %and54.i = and i32 %conv48.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %cond56.i = select i1 %tobool55.not.i, ptr @.str.13, ptr @.str.22
  %add57.i = add nuw nsw i32 %add.i, 2
  %arrayidx58.i = getelementptr i8, ptr %call7.i.i126, i32 %add57.i
  %63 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx58.i, align 1
  %65 = and i8 %64, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool61.not.i = icmp eq i8 %65, 0
  %cond62.i = select i1 %tobool61.not.i, ptr @.str.13, ptr @.str.23
  %add63.i = add nuw nsw i32 %add.i, 4
  %arrayidx64.i = getelementptr i8, ptr %call7.i.i126, i32 %add63.i
  %66 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx64.i, align 1
  %68 = and i8 %67, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool67.not.i = icmp eq i8 %68, 0
  %cond68.i = select i1 %tobool67.not.i, ptr @.str.13, ptr @.str.24
  %69 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool73.not.i = icmp eq i8 %69, 0
  %cond74.i = select i1 %tobool73.not.i, ptr @.str.13, ptr @.str.25
  %add75.i = add nuw nsw i32 %add.i, 6
  %arrayidx76.i = getelementptr i8, ptr %call7.i.i126, i32 %add75.i
  %70 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx76.i, align 1
  %72 = lshr i8 %71, 5
  %73 = zext i8 %72 to i32
  %arrayidx78.i = getelementptr [8 x ptr], ptr @get_capabilities.loadmech, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx78.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %57, ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef %div43.i, i32 noundef %div.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond56.i, ptr noundef nonnull %cond62.i, ptr noundef nonnull %cond68.i, ptr noundef nonnull %cond74.i, ptr noundef %75) #11
  %76 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx76.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %77)
  %cmp83.i = icmp ult i8 %77, 32
  br i1 %cmp83.i, label %if.then85.i, label %if.end18.i.if.end89.i_crit_edge

if.end18.i.if.end89.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mask, align 4
  %or88.i = or i32 %79, 1
  store i32 %or88.i, ptr %mask, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %if.end18.i.if.end89.i_crit_edge
  %80 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx58.i, align 1
  %82 = and i8 %81, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp94.i = icmp eq i8 %82, 0
  br i1 %cmp94.i, label %if.then96.i, label %if.end89.i.if.end100.i_crit_edge

if.end89.i.if.end100.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i

if.then96.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask, align 4
  %or99.i = or i32 %84, 32768
  store i32 %or99.i, ptr %mask, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then96.i, %if.end89.i.if.end100.i_crit_edge
  %85 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx47.i, align 1
  %87 = and i8 %86, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp105.i = icmp eq i8 %87, 0
  br i1 %cmp105.i, label %if.then107.i, label %if.end100.i.if.end111.i_crit_edge

if.end100.i.if.end111.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then107.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mask, align 4
  %or110.i = or i32 %89, 131072
  store i32 %or110.i, ptr %mask, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then107.i, %if.end100.i.if.end111.i_crit_edge
  %90 = and i8 %86, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp116.i = icmp eq i8 %90, 0
  br i1 %cmp116.i, label %if.then118.i, label %if.end111.i.if.end122.i_crit_edge

if.end111.i.if.end122.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.i

if.then118.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mask, align 4
  %or121.i = or i32 %92, 65536
  store i32 %or121.i, ptr %mask, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then118.i, %if.end111.i.if.end122.i_crit_edge
  %93 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp127.i = icmp eq i8 %93, 0
  br i1 %cmp127.i, label %if.then129.i, label %if.end122.i.if.end133.i_crit_edge

if.end122.i.if.end133.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

if.then129.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mask, align 4
  %or132.i = or i32 %95, 16384
  store i32 %or132.i, ptr %mask, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then129.i, %if.end122.i.if.end133.i_crit_edge
  %96 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp138.i = icmp eq i8 %96, 0
  br i1 %cmp138.i, label %if.then140.i, label %if.end133.i.if.end144.i_crit_edge

if.end133.i.if.end144.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then140.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mask, align 4
  %or143.i = or i32 %98, 8192
  store i32 %or143.i, ptr %mask, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then140.i, %if.end133.i.if.end144.i_crit_edge
  %99 = and i8 %77, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp149.i = icmp eq i8 %99, 0
  br i1 %cmp149.i, label %if.then151.i, label %if.end144.i.if.end155.i_crit_edge

if.end144.i.if.end155.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155.i

if.then151.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mask, align 4
  %or154.i = or i32 %101, 2
  store i32 %or154.i, ptr %mask, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then151.i, %if.end144.i.if.end155.i_crit_edge
  %102 = and i8 %77, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %102)
  %switch.i = icmp eq i8 %102, -128
  br i1 %switch.i, label %if.then169.i, label %if.end173.ithread-pre-split

if.then169.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #13
  %call171.i = call i32 @cdrom_number_of_slots(ptr noundef %cdi) #11
  %103 = ptrtoint ptr %capacity37 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call171.i, ptr %capacity37, align 4
  br label %if.end173.i

if.end173.ithread-pre-split:                      ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %capacity37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %capacity37, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.end173.ithread-pre-split, %if.then169.i
  %105 = phi i32 [ %.pr, %if.end173.ithread-pre-split ], [ %call171.i, %if.then169.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp176.i = icmp slt i32 %105, 2
  br i1 %cmp176.i, label %if.then178.i, label %if.end173.i.if.end182.i_crit_edge

if.end173.i.if.end182.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182.i

if.then178.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mask, align 4
  %or181.i = or i32 %107, 16
  store i32 %or181.i, ptr %mask, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then178.i, %if.end173.i.if.end182.i_crit_edge
  %108 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mask, align 4
  %and185.i = and i32 %109, 3293184
  call void @__sanitizer_cov_trace_const_cmp4(i32 3293184, i32 %and185.i)
  %cmp186.not.i = icmp eq i32 %and185.i, 3293184
  br i1 %cmp186.not.i, label %if.end182.i.if.end192.i_crit_edge, label %if.then188.i

if.end182.i.if.end192.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192.i

if.then188.i:                                     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load189.i = load i8, ptr %media_present, align 4
  %bf.set191.i = or i8 %bf.load189.i, -128
  store i8 %bf.set191.i, ptr %media_present, align 4
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then188.i, %if.end182.i.if.end192.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i126) #11
  br label %get_capabilities.exit

get_capabilities.exit:                            ; preds = %if.end192.i, %if.then11.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #11
  call void @sr_vendor_init(ptr noundef nonnull %call7.i.i) #11
  %111 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %capacity, align 4
  %conv42 = zext i32 %112 to i64
  call void @set_capacity(ptr noundef nonnull %call9, i64 noundef %conv42) #11
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call9, i32 0, i32 10
  %113 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i, ptr %private_data, align 8
  %call45 = call i32 @register_cdrom(ptr noundef nonnull %call9, ptr noundef %cdi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %fail_minor

if.end48:                                         ; preds = %get_capabilities.exit
  %114 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %request_queue, align 4
  call void @blk_pm_runtime_init(ptr noundef %115, ptr noundef %dev) #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %116 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  call fastcc void @sr_revalidate_disk(ptr noundef nonnull %call7.i.i)
  %call50 = call i32 @device_add_disk(ptr noundef %dev, ptr noundef nonnull %call9, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @kref_put(ptr noundef %kref)
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %name) #11
  %117 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device, align 8
  br label %cleanup

fail_minor:                                       ; preds = %get_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #11
  call void @_clear_bit(i32 noundef %call13, ptr noundef nonnull @sr_index_bits) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @sr_index_lock) #11
  br label %fail_put

fail_put:                                         ; preds = %fail_minor, %if.then16
  %error.0 = phi i32 [ -16, %if.then16 ], [ -12, %fail_minor ]
  call void @put_disk(ptr noundef nonnull %call9) #11
  call void @mutex_destroy(ptr noundef %lock) #11
  br label %fail_free

fail_free:                                        ; preds = %fail_put, %if.end8.fail_free_crit_edge
  %error.1 = phi i32 [ %error.0, %fail_put ], [ -12, %if.end8.fail_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end55, %if.then52, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %add.ptr.sink = phi ptr [ %118, %if.end55 ], [ %add.ptr, %entry.cleanup_crit_edge ], [ %add.ptr, %if.end.cleanup_crit_edge ], [ %add.ptr, %fail_free ], [ %add.ptr, %if.then52 ]
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %error.1, %fail_free ], [ %call50, %if.then52 ]
  call void @scsi_autopm_put_device(ptr noundef %add.ptr.sink) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_remove(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %call1 = tail call i32 @scsi_autopm_get_device(ptr noundef %3) #11
  %disk = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  tail call void @del_gendisk(ptr noundef %5) #11
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  %kref = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 10
  tail call fastcc void @kref_put(ptr noundef %kref)
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sr_init_command(ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %SCpnt, i32 -192
  %call1 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %SCpnt) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %cmp.not = icmp eq i8 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %6 = load i32, ptr @scsi_logging_level, align 4
  %7 = and i32 %6, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end.do.end11_crit_edge, label %do.body8, !prof !108

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.18, ptr noundef %SCpnt, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  br label %do.end11

do.end11:                                         ; preds = %do.body8, %if.end.do.end11_crit_edge
  %device = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %do.end11.do.body17_crit_edge, label %lor.lhs.false

do.end11.do.body17_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

lor.lhs.false:                                    ; preds = %do.end11
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 69
  %10 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdev_state.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end54 [
    i32 7, label %lor.lhs.false.do.body17_crit_edge
    i32 6, label %lor.lhs.false.do.body17_crit_edge239
    i32 4, label %lor.lhs.false.do.body17_crit_edge240
  ]

lor.lhs.false.do.body17_crit_edge240:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

lor.lhs.false.do.body17_crit_edge239:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false.do.body17_crit_edge, %lor.lhs.false.do.body17_crit_edge239, %lor.lhs.false.do.body17_crit_edge240, %do.end11.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %13 = load i32, ptr @scsi_logging_level, align 4
  %14 = and i32 %13, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %14)
  %cmp20 = icmp ugt i32 %14, 4194304
  br i1 %cmp20, label %do.body29, label %do.body17.do.body36_crit_edge, !prof !109

do.body17.do.body36_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.body29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %__data_len.i.i = getelementptr i8, ptr %SCpnt, i32 -160
  %15 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %16, 9
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.18, ptr noundef %SCpnt, ptr noundef nonnull @.str.28, i32 noundef %shr.i) #11
  br label %do.body36

do.body36:                                        ; preds = %do.body29, %do.body17.do.body36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %17 = load i32, ptr @scsi_logging_level, align 4
  %18 = and i32 %17, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %18)
  %cmp39 = icmp ugt i32 %18, 4194304
  br i1 %cmp39, label %do.body48, label %do.body36.out_crit_edge, !prof !109

do.body36.out_crit_edge:                          ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.18, ptr noundef %SCpnt, ptr noundef nonnull @.str.29, ptr noundef %SCpnt) #11
  br label %out

if.end54:                                         ; preds = %lor.lhs.false
  %changed = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 41
  %19 = ptrtoint ptr %changed to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load = load i64, ptr %changed, align 4
  %20 = and i64 %bf.load, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool56.not = icmp eq i64 %20, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.out_crit_edge

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end58:                                         ; preds = %if.end54
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 20
  %21 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sector_size, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %22, label %if.then67 [
    i32 512, label %if.end58.if.end68_crit_edge
    i32 1024, label %if.end58.if.end68_crit_edge241
    i32 2048, label %if.end58.if.end68_crit_edge242
  ]

if.end58.if.end68_crit_edge242:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end58.if.end68_crit_edge241:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then67:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %SCpnt, ptr noundef nonnull @.str.30, i32 noundef %22) #11
  br label %out

if.end68:                                         ; preds = %if.end58.if.end68_crit_edge, %if.end58.if.end68_crit_edge241, %if.end58.if.end68_crit_edge242
  %cmd_flags = getelementptr i8, ptr %SCpnt, i32 -180
  %24 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %25 to i8
  %26 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.bb
    i8 0, label %sw.bb76
  ]

sw.bb:                                            ; preds = %if.end68
  %writeable = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %writeable to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load70 = load i8, ptr %writeable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load70)
  %tobool73.not = icmp sgt i8 %bf.load70, -1
  br i1 %tobool73.not, label %sw.bb.out_crit_edge, label %if.end75

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end75:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %28 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmnd, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 42, ptr %29, align 1
  %media_written = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 8, i32 15
  %31 = ptrtoint ptr %media_written to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %media_written, align 1
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %cmnd77 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %32 = ptrtoint ptr %cmnd77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmnd77, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 40, ptr %33, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_dump_rq_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.31) #11
  br label %out

sw.epilog:                                        ; preds = %sw.bb76, %if.end75
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 0, i32 1
  %35 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp81235 = icmp sgt i32 %36, 0
  br i1 %cmp81235, label %for.body.preheader, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %sw.epilog
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17
  %37 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %size.0238 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0237 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0236 = phi ptr [ %call83, %for.body.for.body_crit_edge ], [ %38, %for.body.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0236, i32 0, i32 2
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %add = add i32 %40, %size.0238
  %inc = add nuw nsw i32 %i.0237, 1
  %call83 = tail call ptr @sg_next(ptr noundef %sg.0236) #11
  %exitcond.not = icmp eq i32 %inc, %36
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa, i32 %42)
  %cmp85.not = icmp eq i32 %size.0.lcssa, %42
  br i1 %cmp85.not, label %for.end.if.end95_crit_edge, label %if.then87

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then87:                                        ; preds = %for.end
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %SCpnt, ptr noundef nonnull @.str.32, i32 noundef %size.0.lcssa, i32 noundef %42) #11
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %size.0.lcssa)
  %cmp90 = icmp ugt i32 %44, %size.0.lcssa
  br i1 %cmp90, label %if.then92, label %if.then87.if.end95_crit_edge

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %size.0.lcssa, ptr %length.i, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then87.if.end95_crit_edge, %for.end.if.end95_crit_edge
  %__sector.i = getelementptr i8, ptr %SCpnt, i32 -152
  %46 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %__sector.i, align 8
  %conv97 = trunc i64 %47 to i32
  %shr98 = ashr i32 %22, 9
  %rem = urem i32 %conv97, %shr98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool99.not = icmp eq i32 %rem, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.end95.if.then104_crit_edge

if.end95.if.then104_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

lor.lhs.false100:                                 ; preds = %if.end95
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 4
  %rem102 = urem i32 %49, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem102)
  %tobool103.not = icmp eq i32 %rem102, 0
  br i1 %tobool103.not, label %if.end105, label %lor.lhs.false100.if.then104_crit_edge

lor.lhs.false100.if.then104_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.then104:                                       ; preds = %lor.lhs.false100.if.then104_crit_edge, %if.end95.if.then104_crit_edge
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.33, ptr noundef %SCpnt, ptr noundef nonnull @.str.34) #11
  br label %out

if.end105:                                        ; preds = %lor.lhs.false100
  %shr107 = lshr i32 %49, 9
  %div = udiv i32 %shr107, %shr98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %50 = load i32, ptr @scsi_logging_level, align 4
  %51 = and i32 %50, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %51)
  %cmp112 = icmp ugt i32 %51, 4194304
  br i1 %cmp112, label %do.body121, label %if.end105.do.end134_crit_edge, !prof !109

if.end105.do.end134_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end134

do.body121:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond128 = select i1 %tobool.i.not, ptr @.str.37, ptr @.str.36
  %__data_len.i.i232 = getelementptr i8, ptr %SCpnt, i32 -160
  %54 = ptrtoint ptr %__data_len.i.i232 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__data_len.i.i232, align 8
  %shr.i233 = lshr i32 %55, 9
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.18, ptr noundef %SCpnt, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond128, i32 noundef %div, i32 noundef %shr.i233) #11
  br label %do.end134

do.end134:                                        ; preds = %do.body121, %if.end105.do.end134_crit_edge
  %cmnd135 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %56 = ptrtoint ptr %cmnd135 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmnd135, align 4
  %arrayidx136 = getelementptr i8, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx136, align 1
  %59 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %__sector.i, align 8
  %conv138 = trunc i64 %60 to i32
  %div140 = udiv i32 %conv138, %shr98
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div)
  %cmp141 = icmp ugt i32 %div, 65535
  br i1 %cmp141, label %if.then143, label %do.end134.if.end146_crit_edge

do.end134.if.end146_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then143:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %22, 65535
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul, ptr %length.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %do.end134.if.end146_crit_edge
  %this_count.0 = phi i32 [ 65535, %if.then143 ], [ %div, %do.end134.if.end146_crit_edge ]
  %62 = ptrtoint ptr %cmnd135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmnd135, align 4
  %arrayidx148 = getelementptr i8, ptr %63, i32 2
  %64 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %div140, ptr %arrayidx148, align 1
  %65 = load ptr, ptr %cmnd135, align 4
  %arrayidx150 = getelementptr i8, ptr %65, i32 9
  %66 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx150, align 1
  %67 = load ptr, ptr %cmnd135, align 4
  %arrayidx152 = getelementptr i8, ptr %67, i32 6
  %68 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx152, align 1
  %conv153 = trunc i32 %this_count.0 to i16
  %69 = load ptr, ptr %cmnd135, align 4
  %arrayidx155 = getelementptr i8, ptr %69, i32 7
  %70 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %conv153, ptr %arrayidx155, align 1
  %71 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device, align 8
  %sector_size157 = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %sector_size157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sector_size157, align 4
  %transfersize = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 20
  %75 = ptrtoint ptr %transfersize to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %transfersize, align 4
  %shl = shl nuw nsw i32 %this_count.0, 9
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 19
  %76 = ptrtoint ptr %underflow to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl, ptr %underflow, align 4
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 9
  %77 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %allowed, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 14
  %78 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 10, ptr %cmd_len, align 4
  br label %cleanup

out:                                              ; preds = %if.then104, %sw.default, %sw.bb.out_crit_edge, %if.then67, %if.end54.out_crit_edge, %do.body48, %do.body36.out_crit_edge
  tail call void @scsi_free_sgtables(ptr noundef %SCpnt) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end146, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %out ], [ 0, %if.end146 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_done(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result1, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, i32 %3, i32 0
  %add.ptr.i.i = getelementptr i8, ptr %SCpnt, i32 -192
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  %10 = and i32 %1, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %.not = icmp eq i32 %10, 2
  br i1 %.not, label %land.lhs.true, label %entry.if.end58_crit_edge

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true:                                    ; preds = %entry
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 21
  %11 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sense_buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = and i8 %14, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %15)
  %cmp5 = icmp eq i8 %15, 112
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then:                                          ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %12, i32 2
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %18 = add nsw i32 %conv9, -1
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 31)
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %19, label %if.then.if.end58_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 6, label %if.then.sw.bb_crit_edge83
    i32 2, label %if.then.sw.bb_crit_edge84
    i32 0, label %sw.bb57
  ]

if.then.sw.bb_crit_edge84:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge83:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge83, %if.then.sw.bb_crit_edge84
  %21 = and i8 %14, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %sw.bb.if.end58_crit_edge, label %if.end

sw.bb.if.end58_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end:                                           ; preds = %sw.bb
  %arrayidx17 = getelementptr i8, ptr %12, i32 3
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx17, align 1
  %bio = getelementptr i8, ptr %SCpnt, i32 -144
  %24 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bio, align 8
  %cmp19.not = icmp eq ptr %25, null
  br i1 %cmp19.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bi_size = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %27, 9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  %block_sectors.0 = phi i32 [ %shr, %if.then21 ], [ 0, %if.end.if.end23_crit_edge ]
  %28 = tail call i32 @llvm.umax.i32(i32 %block_sectors.0, i32 4)
  %device = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 2
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 8
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %32)
  %cmp28 = icmp eq i32 %32, 2048
  %shl = shl i32 %23, 2
  %spec.select82 = select i1 %cmp28, i32 %shl, i32 %23
  %neg = sub nsw i32 0, %28
  %and32 = and i32 %spec.select82, %neg
  %conv33 = sext i32 %and32 to i64
  %__sector.i = getelementptr i8, ptr %SCpnt, i32 -152
  %33 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %__sector.i, align 8
  %35 = trunc i64 %34 to i32
  %sub35.tr = sub i32 %and32, %35
  %conv37 = shl i32 %sub35.tr, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv37)
  %cmp38 = icmp sgt i32 %conv37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37, i32 %3)
  %cmp40.not = icmp slt i32 %conv37, %3
  %or.cond = select i1 %cmp38, i1 %cmp40.not, i1 false
  %good_bytes.0 = select i1 %or.cond, i32 %conv37, i32 0
  %disk45 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 11
  %36 = ptrtoint ptr %disk45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk45, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv33)
  %cmp47 = icmp ugt i64 %41, %conv33
  br i1 %cmp47, label %land.lhs.true49, label %if.end23.if.end58_crit_edge

if.end23.if.end58_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true49:                                  ; preds = %if.end23
  %capacity = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 1
  %42 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %capacity, align 4
  %sub50 = sub i32 %43, %and32
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %sub50)
  %cmp51 = icmp ult i32 %sub50, 300
  br i1 %cmp51, label %if.then53, label %land.lhs.true49.if.end58_crit_edge

land.lhs.true49.if.end58_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then53:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @set_capacity(ptr noundef %37, i64 noundef %conv33) #11
  br label %if.end58

sw.bb57:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %sw.bb57, %if.then53, %land.lhs.true49.if.end58_crit_edge, %if.end23.if.end58_crit_edge, %sw.bb.if.end58_crit_edge, %if.then.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %entry.if.end58_crit_edge
  %good_bytes.1 = phi i32 [ %spec.select, %if.then.if.end58_crit_edge ], [ %3, %sw.bb57 ], [ %good_bytes.0, %if.then53 ], [ %good_bytes.0, %land.lhs.true49.if.end58_crit_edge ], [ %good_bytes.0, %if.end23.if.end58_crit_edge ], [ %spec.select, %sw.bb.if.end58_crit_edge ], [ %spec.select, %land.lhs.true.if.end58_crit_edge ], [ %spec.select, %entry.if.end58_crit_edge ]
  ret i32 %good_bytes.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_disk_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sr_vendor_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cdrom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pm_runtime_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sr_revalidate_disk(ptr noundef %cd) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [10 x i8], align 1
  %buffer.i = alloca [8 x i8], align 8
  %last_written.i = alloca i32, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #11
  %device = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %0 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sshdr, align 8
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 8
  %call = call i32 @scsi_test_unit_ready(ptr noundef %2, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %sshdr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8
  %call1 = call i32 @sr_cd_check(ptr noundef %cdi) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd.i) #11
  %3 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer.i) #11
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 37, ptr %cmd.i, align 1
  %5 = call ptr @memset(ptr %3, i32 0, i32 9)
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %buffer.i, align 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 8
  %call.i.i = call i32 @__scsi_execute(ptr noundef %8, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %buffer.i, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.do.end.i_crit_edge, label %do.body.i.1

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 37, ptr %cmd.i, align 1
  %10 = call ptr @memset(ptr %3, i32 0, i32 9)
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %buffer.i, align 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  %call.i.i.1 = call i32 @__scsi_execute(ptr noundef %13, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %buffer.i, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.1, label %do.body.i.1.do.end.i_crit_edge, label %do.body.i.2

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 37, ptr %cmd.i, align 1
  %15 = call ptr @memset(ptr %3, i32 0, i32 9)
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %buffer.i, align 8
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  %call.i.i.2 = call i32 @__scsi_execute(ptr noundef %18, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %buffer.i, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.2, %do.body.i.1.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %tobool.not.i.lcssa = phi i1 [ %tobool.not.i, %if.end.do.end.i_crit_edge ], [ %tobool.not.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %tobool.not.i.2, %do.body.i.2 ]
  %19 = getelementptr inbounds [8 x i8], ptr %buffer.i, i32 0, i32 4
  br i1 %tobool.not.i.lcssa, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %capacity.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 1
  %20 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2097151, ptr %capacity.i, align 4
  br label %get_sectorsize.exit

if.else.i:                                        ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_written.i) #11
  %21 = ptrtoint ptr %last_written.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %last_written.i, align 4, !annotation !110
  %22 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer.i, align 8
  %add.i = add i32 %23, 1
  %capacity8.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 1
  %24 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %capacity8.i, align 4
  %call9.i = call i32 @cdrom_get_last_written(ptr noundef %cdi, ptr noundef nonnull %last_written.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capacity8.i, align 4
  %27 = ptrtoint ptr %last_written.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_written.i, align 4
  %29 = call i32 @llvm.smax.i32(i32 %26, i32 %28) #11
  %30 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %capacity8.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i, %if.else.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %19, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %32, label %sw.default.i [
    i32 0, label %if.end.i.sw.bb16.i_crit_edge
    i32 2340, label %if.end.i.sw.bb16.i_crit_edge4
    i32 2352, label %if.end.i.sw.bb16.i_crit_edge5
    i32 2048, label %if.end.i.sw.bb16.i_crit_edge6
    i32 512, label %if.end.i.sw.epilog.i_crit_edge
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.sw.bb16.i_crit_edge6:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16.i

if.end.i.sw.bb16.i_crit_edge5:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16.i

if.end.i.sw.bb16.i_crit_edge4:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16.i

if.end.i.sw.bb16.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %if.end.i.sw.bb16.i_crit_edge, %if.end.i.sw.bb16.i_crit_edge4, %if.end.i.sw.bb16.i_crit_edge5, %if.end.i.sw.bb16.i_crit_edge6
  %34 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capacity8.i, align 4
  %mul.i = shl i32 %35, 2
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 8
  %name.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %37, ptr noundef %name.i, ptr noundef nonnull @.str.26, i32 noundef %32) #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb16.i
  %.sink.i = phi i32 [ 0, %sw.default.i ], [ %mul.i, %sw.bb16.i ]
  %sector_size.1.ph.i = phi i32 [ %32, %sw.default.i ], [ 2048, %sw.bb16.i ]
  %38 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink.i, ptr %capacity8.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.i.sw.epilog.i_crit_edge
  %sector_size.1.i = phi i32 [ %32, %if.end.i.sw.epilog.i_crit_edge ], [ %sector_size.1.ph.i, %sw.epilog.sink.split.i ]
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 8
  %sector_size23.i = getelementptr inbounds %struct.scsi_device, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %sector_size23.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sector_size.1.i, ptr %sector_size23.i, align 4
  %disk.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 11
  %42 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disk.i, align 8
  %44 = ptrtoint ptr %capacity8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %capacity8.i, align 4
  %conv.i = zext i32 %45 to i64
  call void @set_capacity(ptr noundef %43, i64 noundef %conv.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_written.i) #11
  br label %get_sectorsize.exit

get_sectorsize.exit:                              ; preds = %sw.epilog.i, %if.then.i
  %sector_size.2.i = phi i32 [ 2048, %if.then.i ], [ %sector_size.1.i, %sw.epilog.i ]
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 8
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %request_queue.i, align 4
  call void @blk_queue_logical_block_size(ptr noundef %49, i32 noundef %sector_size.2.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer.i) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #11
  br label %cleanup

cleanup:                                          ; preds = %get_sectorsize.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !108

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !113
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -228
  %disk1.i = getelementptr i8, ptr %kref, i32 4
  %1 = ptrtoint ptr %disk1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disk1.i, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #11
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_minor.i.i, align 4
  %and.i = and i32 %4, 1048575
  tail call void @_clear_bit(i32 noundef %and.i, ptr noundef nonnull @sr_index_bits) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sr_index_lock) #11
  %cdi.i = getelementptr i8, ptr %kref, i32 -196
  tail call void @unregister_cdrom(ptr noundef %cdi.i) #11
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private_data.i, align 8
  tail call void @put_disk(ptr noundef %2) #11
  %lock.i = getelementptr i8, ptr %kref, i32 -92
  tail call void @mutex_destroy(ptr noundef %lock.i) #11
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_block_open(ptr noundef %bdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.out.sink.split_crit_edge, label %if.end.i

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end.i:                                         ; preds = %entry
  %kref.i = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !109

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 8
  %call1.i = tail call i32 @scsi_device_get(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then2.i

if.then2.i:                                       ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @kref_put(ptr noundef %kref.i) #11
  br label %out.sink.split

if.end:                                           ; preds = %kref_get.exit.i
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 8
  %call1 = tail call i32 @scsi_autopm_get_device(ptr noundef %9) #11
  %call2 = tail call zeroext i1 @bdev_check_media_change(ptr noundef %bdev) #11
  br i1 %call2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sr_revalidate_disk(ptr noundef nonnull %3)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %lock = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 8
  %call5 = tail call i32 @cdrom_open(ptr noundef %cdi, ptr noundef %bdev, i32 noundef %mode) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @scsi_autopm_put_device(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end4.out_crit_edge, label %if.then8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  tail call fastcc void @kref_put(ptr noundef %kref.i) #11
  tail call void @scsi_device_put(ptr noundef %11) #11
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then8, %if.then2.i, %entry.out.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call5, %if.then8 ], [ -6, %entry.out.sink.split_crit_edge ], [ -6, %if.then2.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  br label %out

out:                                              ; preds = %out.sink.split, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_block_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %lock = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8
  tail call void @cdrom_release(ptr noundef %cdi, i32 noundef %mode) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %device.i = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  %kref.i = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 10
  tail call fastcc void @kref_put(ptr noundef %kref.i) #11
  tail call void @scsi_device_put(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_block_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %6 = inttoptr i32 %arg to ptr
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15
  %7 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 17) #11
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %and = and i32 %mode, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %call3 = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %5, i32 noundef %cmd, i1 noundef zeroext %cmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @scsi_autopm_get_device(ptr noundef %5) #11
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 8
  %call11 = tail call i32 @cdrom_ioctl(ptr noundef %cdi, ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, -38
  br i1 %cmp12.not, label %if.end15, label %if.end5.put_crit_edge

if.end5.put_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %put

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @scsi_ioctl(ptr noundef %5, i32 noundef %mode, i32 noundef %cmd, ptr noundef %6) #11
  br label %put

put:                                              ; preds = %if.end15, %if.end5.put_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end5.put_crit_edge ], [ %call16, %if.end15 ]
  tail call void @scsi_autopm_put_device(ptr noundef %5) #11
  br label %out

out:                                              ; preds = %put, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %ret.0, %put ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -515, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_block_check_events(ptr nocapture noundef readonly %disk, i32 noundef %clearing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %kref.i = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !109

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 8
  %call1.i = tail call i32 @scsi_device_get(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then2.i

if.then2.i:                                       ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @kref_put(ptr noundef %kref.i) #11
  br label %cleanup

if.end:                                           ; preds = %kref_get.exit.i
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 8
  %disk_events_disable_depth = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 45
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disk_events_disable_depth, i32 noundef 4) #11
  %8 = ptrtoint ptr %disk_events_disable_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %disk_events_disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @cdrom_check_events(ptr noundef %cdi, i32 noundef %clearing) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ]
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sr_ref_mutex, i32 noundef 0) #11
  tail call fastcc void @kref_put(ptr noundef %kref.i) #11
  tail call void @scsi_device_put(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bdev_check_media_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdrom_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_check_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_open(ptr nocapture noundef readonly %cdi, i32 noundef %purpose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %call = tail call i32 @scsi_block_when_processing_errors(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -6, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sr_release(ptr nocapture noundef %cdi) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_drive_status(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_check_events(ptr nocapture noundef readonly %cdi, i32 noundef %clearing, i32 noundef %slot) #2 align 64 {
entry:
  %buf.i = alloca [8 x i8], align 8
  %cmd.i = alloca [10 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #11
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 2147483647
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #11
  %6 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %buf.i, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd.i) #11
  %9 = call ptr @memcpy(ptr %cmd.i, ptr @__const.sr_get_events.cmd, i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #11
  %10 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %sshdr.i, align 8
  %call.i.i = call i32 @__scsi_execute(ptr noundef %5, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %buf.i, i32 noundef 8, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  %11 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sshdr.i, align 8
  %13 = and i8 %12, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 112
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %14 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp.i = icmp eq i8 %16, 6
  br i1 %cmp.i, label %land.lhs.true.i.sr_get_events.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.sr_get_events.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_get_events.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.sr_get_events.exit_crit_edge

if.end.i.sr_get_events.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_get_events.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp7.i = icmp ult i16 %18, 4
  br i1 %cmp7.i, label %lor.lhs.false.i.sr_get_events.exit_crit_edge, label %if.end10.i

lor.lhs.false.i.sr_get_events.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_get_events.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %6, align 2
  %20 = and i8 %bf.load.i, -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp eq i8 %20, 4
  br i1 %21, label %if.end19.i, label %if.end10.i.sr_get_events.exit_crit_edge

if.end10.i.sr_get_events.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_get_events.exit

if.end19.i:                                       ; preds = %if.end10.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load20.i = load i16, ptr %7, align 4
  %bf.lshr21.i = lshr i16 %bf.load20.i, 8
  %trunc.i = trunc i16 %bf.lshr21.i to i4
  %switch.tableidx = add i4 %trunc.i, -1
  %23 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %24 = icmp ult i4 %switch.tableidx, 3
  br i1 %24, label %switch.lookup, label %if.end19.i.sr_get_events.exit_crit_edge

if.end19.i.sr_get_events.exit_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_get_events.exit

switch.lookup:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = sext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sr_check_events, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sr_get_events.exit

sr_get_events.exit:                               ; preds = %switch.lookup, %if.end19.i.sr_get_events.exit_crit_edge, %if.end10.i.sr_get_events.exit_crit_edge, %lor.lhs.false.i.sr_get_events.exit_crit_edge, %if.end.i.sr_get_events.exit_crit_edge, %land.lhs.true.i.sr_get_events.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %land.lhs.true.i.sr_get_events.exit_crit_edge ], [ 0, %lor.lhs.false.i.sr_get_events.exit_crit_edge ], [ 0, %if.end.i.sr_get_events.exit_crit_edge ], [ 0, %if.end10.i.sr_get_events.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end19.i.sr_get_events.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #11
  %get_event_changed = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %get_event_changed, align 4
  %28 = trunc i32 %retval.0.i to i8
  %29 = shl nuw i8 %28, 6
  %30 = and i8 %29, 64
  %bf.set = or i8 %bf.load, %30
  store i8 %bf.set, ptr %get_event_changed, align 4
  %31 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %bf.cast7.not = icmp eq i8 %31, 0
  br i1 %bf.cast7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %sr_get_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and9 = and i32 %retval.0.i, 2
  br label %do_tur

if.end10:                                         ; preds = %sr_get_events.exit
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 8
  %changed = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 41
  %34 = ptrtoint ptr %changed to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load12 = load i64, ptr %changed, align 4
  %35 = and i64 %bf.load12, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool16.not = icmp eq i64 %35, 0
  br i1 %tobool16.not, label %if.end10.if.end27_crit_edge, label %if.then17

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %or18 = or i32 %retval.0.i, 1
  %bf.clear22 = and i64 %bf.load12, -4611686018427387905
  %36 = ptrtoint ptr %changed to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %bf.clear22, ptr %changed, align 4
  %37 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load24 = load i8, ptr %get_event_changed, align 4
  %bf.set26 = or i8 %bf.load24, -128
  store i8 %bf.set26, ptr %get_event_changed, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %if.end10.if.end27_crit_edge
  %events.0 = phi i32 [ %or18, %if.then17 ], [ %retval.0.i, %if.end10.if.end27_crit_edge ]
  %and28 = and i32 %clearing, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end27.do_tur_crit_edge

if.end27.do_tur_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_tur

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do_tur:                                           ; preds = %if.end27.do_tur_crit_edge, %if.then8
  %events.1 = phi i32 [ %and9, %if.then8 ], [ %events.0, %if.end27.do_tur_crit_edge ]
  %media_present = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load32 = load i8, ptr %media_present, align 4
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 8
  %call38 = call i32 @scsi_test_unit_ready(ptr noundef %40, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %sshdr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp.i160 = icmp slt i32 %call38, 0
  %41 = and i32 %call38, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %41)
  %cmp1.i = icmp eq i32 %41, 65536
  %or.cond.i = or i1 %cmp.i160, %cmp1.i
  br i1 %or.cond.i, label %do_tur.lor.rhs_crit_edge, label %if.end3.i

do_tur.lor.rhs_crit_edge:                         ; preds = %do_tur
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

if.end3.i:                                        ; preds = %do_tur
  %42 = trunc i32 %call38 to i8
  %trunc.i161 = and i8 %42, -2
  %43 = zext i8 %trunc.i161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %trunc.i161, label %if.end3.i.lor.rhs_crit_edge [
    i8 0, label %if.end3.i.lor.end_crit_edge
    i8 4, label %if.end3.i.lor.end_crit_edge167
    i8 16, label %if.end3.i.lor.end_crit_edge168
    i8 20, label %if.end3.i.lor.end_crit_edge169
    i8 34, label %if.end3.i.lor.end_crit_edge170
  ]

if.end3.i.lor.end_crit_edge170:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.end3.i.lor.end_crit_edge169:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.end3.i.lor.end_crit_edge168:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.end3.i.lor.end_crit_edge167:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.end3.i.lor.end_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.end3.i.lor.rhs_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end3.i.lor.rhs_crit_edge, %do_tur.lor.rhs_crit_edge
  %44 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sshdr, align 8
  %46 = and i8 %45, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %46)
  %cmp.i163 = icmp eq i8 %46, 112
  br i1 %cmp.i163, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %48)
  %cmp44.not = icmp eq i8 %48, 58
  %phi.sel = select i1 %cmp44.not, i8 0, i8 4
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %if.end3.i.lor.end_crit_edge, %if.end3.i.lor.end_crit_edge167, %if.end3.i.lor.end_crit_edge168, %if.end3.i.lor.end_crit_edge169, %if.end3.i.lor.end_crit_edge170
  %49 = phi i8 [ 0, %lor.rhs.lor.end_crit_edge ], [ %phi.sel, %land.rhs ], [ 4, %if.end3.i.lor.end_crit_edge ], [ 4, %if.end3.i.lor.end_crit_edge167 ], [ 4, %if.end3.i.lor.end_crit_edge168 ], [ 4, %if.end3.i.lor.end_crit_edge169 ], [ 4, %if.end3.i.lor.end_crit_edge170 ]
  %50 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load47 = load i8, ptr %media_present, align 4
  %bf.clear49 = and i8 %bf.load47, -5
  %bf.set50 = or i8 %bf.clear49, %49
  store i8 %bf.set50, ptr %media_present, align 4
  %51 = lshr i8 %bf.load32, 2
  %.lobit = and i8 %51, 1
  %bf.lshr55 = lshr exact i8 %49, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %bf.lshr55)
  %cmp58.not = icmp eq i8 %.lobit, %bf.lshr55
  br i1 %cmp58.not, label %lor.end.if.end66_crit_edge, label %if.then60

lor.end.if.end66_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then60:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 8
  %changed62 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 41
  %54 = ptrtoint ptr %changed62 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load63 = load i64, ptr %changed62, align 4
  %bf.set65 = or i64 %bf.load63, 4611686018427387904
  store i64 %bf.set65, ptr %changed62, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %lor.end.if.end66_crit_edge
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device, align 8
  %changed68 = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 41
  %57 = ptrtoint ptr %changed68 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %bf.load69 = load i64, ptr %changed68, align 4
  %58 = and i64 %bf.load69, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool73.not = icmp eq i64 %58, 0
  br i1 %tobool73.not, label %if.end85thread-pre-split, label %if.then74

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %or75 = or i32 %events.1, 1
  %bf.clear79 = and i64 %bf.load69, -4611686018427387905
  %59 = ptrtoint ptr %changed68 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %bf.clear79, ptr %changed68, align 4
  %60 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load82 = load i8, ptr %get_event_changed, align 4
  %bf.set84 = or i8 %bf.load82, -128
  store i8 %bf.set84, ptr %get_event_changed, align 4
  br label %if.end85

if.end85thread-pre-split:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load87.pr = load i8, ptr %get_event_changed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end85thread-pre-split, %if.then74
  %bf.load87 = phi i8 [ %bf.load87.pr, %if.end85thread-pre-split ], [ %bf.set84, %if.then74 ]
  %events.2 = phi i32 [ %events.1, %if.end85thread-pre-split ], [ %or75, %if.then74 ]
  %62 = and i8 %bf.load87, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %bf.cast90.not = icmp eq i8 %62, 0
  br i1 %bf.cast90.not, label %if.end92, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load87)
  %bf.cast96.not = icmp sgt i8 %bf.load87, -1
  br i1 %bf.cast96.not, label %if.then97, label %if.end92.if.end116_crit_edge

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then97:                                        ; preds = %if.end92
  %63 = and i8 %bf.load87, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %bf.cast102.not = icmp eq i8 %63, 0
  %tur_mismatch114 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 6
  br i1 %bf.cast102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.then97
  %64 = ptrtoint ptr %tur_mismatch114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tur_mismatch114, align 8
  %inc = add i32 %65, 1
  store i32 %inc, ptr %tur_mismatch114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %65)
  %cmp104 = icmp sgt i32 %65, 8
  br i1 %cmp104, label %if.then106, label %if.then103.if.end116_crit_edge

if.then103.if.end116_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 8
  %name = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %67, ptr noundef %name, ptr noundef nonnull @.str.9) #11
  %68 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load110 = load i8, ptr %get_event_changed, align 4
  %bf.set112 = or i8 %bf.load110, 32
  store i8 %bf.set112, ptr %get_event_changed, align 4
  br label %if.end116

if.else:                                          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %tur_mismatch114 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tur_mismatch114, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.else, %if.then106, %if.then103.if.end116_crit_edge, %if.end92.if.end116_crit_edge
  %70 = ptrtoint ptr %get_event_changed to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load118 = load i8, ptr %get_event_changed, align 4
  %bf.clear123 = and i8 %bf.load118, 63
  store i8 %bf.clear123, ptr %get_event_changed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.end85.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %events.2, %if.end116 ], [ 0, %entry.cleanup_crit_edge ], [ %events.0, %if.end27.cleanup_crit_edge ], [ %events.2, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_tray_move(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_lock_door(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_select_speed(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_get_last_session(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_get_mcn(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_audio_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_packet(ptr nocapture noundef readonly %cdi, ptr noundef %cgc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %2 = ptrtoint ptr %cgc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cgc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %3)
  %cmp = icmp eq i8 %3, 81
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %no_read_disc_info = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %no_read_disc_info to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load = load i64, ptr %no_read_disc_info, align 4
  %7 = and i64 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2 = icmp slt i32 %9, 1
  br i1 %cmp2, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3000, ptr %timeout, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call = tail call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef %cgc) #11
  %stat = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 3
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end6 ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_read_cdda_bpc(ptr nocapture noundef readonly %cdi, ptr noundef %ubuf, i32 noundef %lba, i32 noundef %nr, ptr nocapture noundef writeonly %last_sense) #2 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %disk1 = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 2
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %call = tail call ptr @scsi_alloc_request(ptr noundef %3, i32 noundef 34, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %nr, 2352
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %call6 = tail call i32 @blk_rq_map_user(ptr noundef %6, ptr noundef %call, ptr noundef null, ptr noundef %ubuf, i32 noundef %mul, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_put_request_crit_edge

if.end.out_put_request_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_request

if.end8:                                          ; preds = %if.end
  %cmd = getelementptr %struct.request, ptr %call, i32 1, i32 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -66, ptr %8, align 1
  %10 = load ptr, ptr %cmd, align 4
  %arrayidx10 = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %arrayidx10, align 1
  %shr = lshr i32 %lba, 24
  %conv = trunc i32 %shr to i8
  %12 = load ptr, ptr %cmd, align 4
  %arrayidx12 = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx12, align 1
  %shr13 = lshr i32 %lba, 16
  %conv15 = trunc i32 %shr13 to i8
  %14 = load ptr, ptr %cmd, align 4
  %arrayidx17 = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %arrayidx17, align 1
  %shr18 = lshr i32 %lba, 8
  %conv20 = trunc i32 %shr18 to i8
  %16 = load ptr, ptr %cmd, align 4
  %arrayidx22 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20, ptr %arrayidx22, align 1
  %conv24 = trunc i32 %lba to i8
  %18 = load ptr, ptr %cmd, align 4
  %arrayidx26 = getelementptr i8, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv24, ptr %arrayidx26, align 1
  %shr27 = lshr i32 %nr, 16
  %conv29 = trunc i32 %shr27 to i8
  %20 = load ptr, ptr %cmd, align 4
  %arrayidx31 = getelementptr i8, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv29, ptr %arrayidx31, align 1
  %shr32 = lshr i32 %nr, 8
  %conv34 = trunc i32 %shr32 to i8
  %22 = load ptr, ptr %cmd, align 4
  %arrayidx36 = getelementptr i8, ptr %22, i32 7
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv34, ptr %arrayidx36, align 1
  %conv38 = trunc i32 %nr to i8
  %24 = load ptr, ptr %cmd, align 4
  %arrayidx40 = getelementptr i8, ptr %24, i32 8
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv38, ptr %arrayidx40, align 1
  %26 = load ptr, ptr %cmd, align 4
  %arrayidx42 = getelementptr i8, ptr %26, i32 9
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -8, ptr %arrayidx42, align 1
  %cmd_len = getelementptr %struct.request, ptr %call, i32 1, i32 5
  %28 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 12, ptr %cmd_len, align 4
  %timeout = getelementptr inbounds %struct.request, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6000, ptr %timeout, align 4
  %bio43 = getelementptr inbounds %struct.request, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %bio43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bio43, align 8
  %call44 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call, i1 noundef zeroext false) #11
  %result = getelementptr %struct.request, ptr %call, i32 1, i32 6
  %32 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %if.end8.if.end49_crit_edge, label %if.then47

if.end8.if.end49_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #11
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %sense = getelementptr %struct.request, ptr %call, i32 1, i32 9
  %35 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %sshdr, align 8
  %36 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sense, align 4
  %sense_len = getelementptr %struct.request, ptr %call, i32 1, i32 7
  %38 = ptrtoint ptr %sense_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sense_len, align 4
  %call48 = call zeroext i1 @scsi_normalize_sense(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %sshdr) #11
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %34, align 1
  %42 = ptrtoint ptr %last_sense to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %last_sense, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end8.if.end49_crit_edge
  %ret.0 = phi i32 [ -5, %if.then47 ], [ 0, %if.end8.if.end49_crit_edge ]
  %call50 = call i32 @blk_rq_unmap_user(ptr noundef %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  %spec.select = select i1 %tobool51.not, i32 %ret.0, i32 -14
  br label %out_put_request

out_put_request:                                  ; preds = %if.end49, %if.end.out_put_request_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end.out_put_request_crit_edge ], [ %spec.select, %if.end49 ]
  call void @blk_mq_free_request(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put_request, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.1, %out_put_request ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_do_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_sense(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_number_of_slots(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_cd_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_get_last_written(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cdrom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr_runtime_suspend(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %media_present = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %media_present, align 4
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %. = select i1 %tobool1.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_dump_rq_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_free_sgtables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !71, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__UNIQUE_ID_description286, !1, !"__UNIQUE_ID_description286", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sr.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_file287, !3, !"__UNIQUE_ID_file287", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sr.c", i32 71, i32 1}
!4 = !{ptr @__UNIQUE_ID_license288, !3, !"__UNIQUE_ID_license288", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias289, !6, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!6 = !{!"../drivers/scsi/sr.c", i32 72, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias290, !8, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!8 = !{!"../drivers/scsi/sr.c", i32 73, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias291, !10, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!10 = !{!"../drivers/scsi/sr.c", i32 74, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/sr.c", i32 1076, i32 38}
!13 = !{ptr @__initcall__kmod_sr_mod__294_1079_init_sr6, !14, !"__initcall__kmod_sr_mod__294_1079_init_sr6", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sr.c", i32 1079, i32 1}
!15 = !{ptr @__exitcall_exit_sr, !16, !"__exitcall_exit_sr", i1 false, i1 false}
!16 = !{!"../drivers/scsi/sr.c", i32 1080, i32 1}
!17 = !{ptr @__UNIQUE_ID_file295, !18, !"__UNIQUE_ID_file295", i1 false, i1 false}
!18 = !{!"../drivers/scsi/sr.c", i32 1081, i32 1}
!19 = !{ptr @__UNIQUE_ID_license296, !18, !"__UNIQUE_ID_license296", i1 false, i1 false}
!20 = !{ptr @sr_template, !21, !"sr_template", i1 false, i1 false}
!21 = !{!"../drivers/scsi/sr.c", i32 95, i32 27}
!22 = !{ptr @sr_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/sr.c", i32 669, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/sr.c", i32 684, i32 27}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/sr.c", i32 736, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sr_bio_compl_lkclass, !31, !"sr_bio_compl_lkclass", i1 false, i1 false}
!31 = !{!"../drivers/scsi/sr.c", i32 110, i32 30}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/sr.c", i32 108, i32 8}
!34 = !{ptr @sr_index_lock, !33, !"sr_index_lock", i1 false, i1 false}
!35 = !{ptr @sr_index_bits, !36, !"sr_index_bits", i1 false, i1 false}
!36 = !{!"../drivers/scsi/sr.c", i32 107, i32 22}
!37 = !{ptr @sr_bdops, !38, !"sr_bdops", i1 false, i1 false}
!38 = !{!"../drivers/scsi/sr.c", i32 612, i32 45}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/sr.c", i32 115, i32 8}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sr_ref_mutex, !40, !"sr_ref_mutex", i1 false, i1 false}
!43 = !{ptr @sr_dops, !44, !"sr_dops", i1 false, i1 false}
!44 = !{!"../drivers/scsi/sr.c", i32 129, i32 38}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/sr.c", i32 310, i32 5}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/sr.c", i32 846, i32 3}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/sr.c", i32 847, i32 3}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/sr.c", i32 848, i32 3}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/sr.c", i32 849, i32 3}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/sr.c", i32 850, i32 3}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/sr.c", i32 851, i32 3}
!60 = !{ptr @get_capabilities.loadmech, !61, !"loadmech", i1 false, i1 false}
!61 = !{!"../drivers/scsi/sr.c", i32 844, i32 21}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/sr.c", i32 860, i32 3}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/sr.c", i32 880, i32 3}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/sr.c", i32 889, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/sr.c", i32 816, i32 4}
!77 = !{ptr @sr_pm_ops, !78, !"sr_pm_ops", i1 false, i1 false}
!78 = !{!"../drivers/scsi/sr.c", i32 91, i32 32}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/sr.c", i32 407, i32 2}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/sr.c", i32 411, i32 3}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/sr.c", i32 413, i32 3}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/sr.c", i32 428, i32 32}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/sr.c", i32 443, i32 25}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/sr.c", i32 456, i32 5}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/sr.c", i32 468, i32 15}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/sr.c", i32 468, i32 35}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/sr.c", i32 475, i32 2}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"auto-init"}
!111 = !{i64 2148454843}
!112 = !{i64 2148369283, i64 2148369315, i64 2148369344, i64 2148369378, i64 2148369409, i64 2148369432}
!113 = !{i64 2149330957}
!114 = !{i64 2148366818, i64 2148366850, i64 2148366879, i64 2148366913, i64 2148366944, i64 2148366967}
