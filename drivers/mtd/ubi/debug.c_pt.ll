; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/debug.c_pt.bc'
source_filename = "../drivers/mtd/ubi/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.76 }
%union.anon.76 = type { %struct.rb_node }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.75 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ubi_wl_entry = type { %union.anon.70, i32, i32 }
%union.anon.70 = type { %struct.rb_node }

@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dumping %d bytes of data from PEB %d, offset %d\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ubi_dump_ec_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Erase counter header dump:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubi_dump_ec_hdr\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/ubi/debug.c\00", [40 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr = internal global ptr @ubi_dump_ec_hdr._entry, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09magic          %#08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.9 = internal global ptr @ubi_dump_ec_hdr._entry.7, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09version        %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.12 = internal global ptr @ubi_dump_ec_hdr._entry.10, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09ec             %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.15 = internal global ptr @ubi_dump_ec_hdr._entry.13, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09vid_hdr_offset %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.18 = internal global ptr @ubi_dump_ec_hdr._entry.16, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09data_offset    %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.21 = internal global ptr @ubi_dump_ec_hdr._entry.19, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09image_seq      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.24 = internal global ptr @ubi_dump_ec_hdr._entry.22, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09hdr_crc        %#08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.27 = internal global ptr @ubi_dump_ec_hdr._entry.25, section ".printk_index", align 4
@ubi_dump_ec_hdr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013erase counter header hexdump:\0A\00", [63 x i8] zeroinitializer }, align 32
@ubi_dump_ec_hdr._entry_ptr.30 = internal global ptr @ubi_dump_ec_hdr._entry.28, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Volume identifier header dump:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_dump_vid_hdr\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr = internal global ptr @ubi_dump_vid_hdr._entry, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09magic     %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.35 = internal global ptr @ubi_dump_vid_hdr._entry.33, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.6, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09version   %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.38 = internal global ptr @ubi_dump_vid_hdr._entry.36, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09vol_type  %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.41 = internal global ptr @ubi_dump_vid_hdr._entry.39, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.6, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09copy_flag %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.44 = internal global ptr @ubi_dump_vid_hdr._entry.42, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.6, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09compat    %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.47 = internal global ptr @ubi_dump_vid_hdr._entry.45, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.6, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09vol_id    %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.50 = internal global ptr @ubi_dump_vid_hdr._entry.48, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.32, ptr @.str.6, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09lnum      %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.53 = internal global ptr @ubi_dump_vid_hdr._entry.51, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.32, ptr @.str.6, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09data_size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.56 = internal global ptr @ubi_dump_vid_hdr._entry.54, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.32, ptr @.str.6, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09used_ebs  %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.59 = internal global ptr @ubi_dump_vid_hdr._entry.57, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.32, ptr @.str.6, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09data_pad  %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.62 = internal global ptr @ubi_dump_vid_hdr._entry.60, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.32, ptr @.str.6, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09sqnum     %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.65 = internal global ptr @ubi_dump_vid_hdr._entry.63, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.32, ptr @.str.6, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09hdr_crc   %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.68 = internal global ptr @ubi_dump_vid_hdr._entry.66, section ".printk_index", align 4
@ubi_dump_vid_hdr._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.32, ptr @.str.6, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Volume identifier header hexdump:\0A\00", [59 x i8] zeroinitializer }, align 32
@ubi_dump_vid_hdr._entry_ptr.71 = internal global ptr @ubi_dump_vid_hdr._entry.69, section ".printk_index", align 4
@ubi_dump_vol_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.6, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Volume information dump:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_dump_vol_info\00", [46 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr = internal global ptr @ubi_dump_vol_info._entry, section ".printk_index", align 4
@ubi_dump_vol_info._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.6, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09vol_id          %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.76 = internal global ptr @ubi_dump_vol_info._entry.74, section ".printk_index", align 4
@ubi_dump_vol_info._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.6, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09reserved_pebs   %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.79 = internal global ptr @ubi_dump_vol_info._entry.77, section ".printk_index", align 4
@ubi_dump_vol_info._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.6, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09alignment       %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.82 = internal global ptr @ubi_dump_vol_info._entry.80, section ".printk_index", align 4
@ubi_dump_vol_info._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.6, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09data_pad        %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.85 = internal global ptr @ubi_dump_vol_info._entry.83, section ".printk_index", align 4
@ubi_dump_vol_info._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.6, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09vol_type        %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.88 = internal global ptr @ubi_dump_vol_info._entry.86, section ".printk_index", align 4
@ubi_dump_vol_info._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.6, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09name_len        %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.91 = internal global ptr @ubi_dump_vol_info._entry.89, section ".printk_index", align 4
@ubi_dump_vol_info._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.73, ptr @.str.6, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09usable_leb_size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.94 = internal global ptr @ubi_dump_vol_info._entry.92, section ".printk_index", align 4
@ubi_dump_vol_info._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.73, ptr @.str.6, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09used_ebs        %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.97 = internal global ptr @ubi_dump_vol_info._entry.95, section ".printk_index", align 4
@ubi_dump_vol_info._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.73, ptr @.str.6, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09used_bytes      %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.100 = internal global ptr @ubi_dump_vol_info._entry.98, section ".printk_index", align 4
@ubi_dump_vol_info._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.73, ptr @.str.6, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09last_eb_bytes   %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.103 = internal global ptr @ubi_dump_vol_info._entry.101, section ".printk_index", align 4
@ubi_dump_vol_info._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.73, ptr @.str.6, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09corrupted       %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.106 = internal global ptr @ubi_dump_vol_info._entry.104, section ".printk_index", align 4
@ubi_dump_vol_info._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.73, ptr @.str.6, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09upd_marker      %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.109 = internal global ptr @ubi_dump_vol_info._entry.107, section ".printk_index", align 4
@ubi_dump_vol_info._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.73, ptr @.str.6, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09skip_check      %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.112 = internal global ptr @ubi_dump_vol_info._entry.110, section ".printk_index", align 4
@ubi_dump_vol_info._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.73, ptr @.str.6, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09name            %s\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.115 = internal global ptr @ubi_dump_vol_info._entry.113, section ".printk_index", align 4
@ubi_dump_vol_info._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.73, ptr @.str.6, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013\091st 5 characters of name: %c%c%c%c%c\0A\00", [55 x i8] zeroinitializer }, align 32
@ubi_dump_vol_info._entry_ptr.118 = internal global ptr @ubi_dump_vol_info._entry.116, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.6, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Volume table record %d dump:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubi_dump_vtbl_record\00", [43 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr = internal global ptr @ubi_dump_vtbl_record._entry, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.120, ptr @.str.6, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.122 = internal global ptr @ubi_dump_vtbl_record._entry.121, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.120, ptr @.str.6, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.124 = internal global ptr @ubi_dump_vtbl_record._entry.123, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.120, ptr @.str.6, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.126 = internal global ptr @ubi_dump_vtbl_record._entry.125, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.120, ptr @.str.6, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.128 = internal global ptr @ubi_dump_vtbl_record._entry.127, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.120, ptr @.str.6, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.130 = internal global ptr @ubi_dump_vtbl_record._entry.129, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.120, ptr @.str.6, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.132 = internal global ptr @ubi_dump_vtbl_record._entry.131, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.120, ptr @.str.6, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09name            NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.135 = internal global ptr @ubi_dump_vtbl_record._entry.133, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.120, ptr @.str.6, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.137 = internal global ptr @ubi_dump_vtbl_record._entry.136, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.120, ptr @.str.6, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.139 = internal global ptr @ubi_dump_vtbl_record._entry.138, section ".printk_index", align 4
@ubi_dump_vtbl_record._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.120, ptr @.str.6, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013\09crc             %#08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ubi_dump_vtbl_record._entry_ptr.142 = internal global ptr @ubi_dump_vtbl_record._entry.140, section ".printk_index", align 4
@ubi_dump_av._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.6, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Volume attaching information dump:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubi_dump_av\00", [20 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr = internal global ptr @ubi_dump_av._entry, section ".printk_index", align 4
@ubi_dump_av._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.6, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09vol_id         %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.147 = internal global ptr @ubi_dump_av._entry.145, section ".printk_index", align 4
@ubi_dump_av._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09highest_lnum   %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.150 = internal global ptr @ubi_dump_av._entry.148, section ".printk_index", align 4
@ubi_dump_av._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.6, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09leb_count      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.153 = internal global ptr @ubi_dump_av._entry.151, section ".printk_index", align 4
@ubi_dump_av._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.144, ptr @.str.6, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09compat         %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.156 = internal global ptr @ubi_dump_av._entry.154, section ".printk_index", align 4
@ubi_dump_av._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.6, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09vol_type       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.159 = internal global ptr @ubi_dump_av._entry.157, section ".printk_index", align 4
@ubi_dump_av._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.144, ptr @.str.6, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09used_ebs       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.162 = internal global ptr @ubi_dump_av._entry.160, section ".printk_index", align 4
@ubi_dump_av._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.144, ptr @.str.6, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09last_data_size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.165 = internal global ptr @ubi_dump_av._entry.163, section ".printk_index", align 4
@ubi_dump_av._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.144, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09data_pad       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_dump_av._entry_ptr.168 = internal global ptr @ubi_dump_av._entry.166, section ".printk_index", align 4
@ubi_dump_aeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.6, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013eraseblock attaching information dump:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubi_dump_aeb\00", [19 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr = internal global ptr @ubi_dump_aeb._entry, section ".printk_index", align 4
@ubi_dump_aeb._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.6, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013\09ec       %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr.173 = internal global ptr @ubi_dump_aeb._entry.171, section ".printk_index", align 4
@ubi_dump_aeb._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.6, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013\09pnum     %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr.176 = internal global ptr @ubi_dump_aeb._entry.174, section ".printk_index", align 4
@ubi_dump_aeb._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.6, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013\09lnum     %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr.179 = internal global ptr @ubi_dump_aeb._entry.177, section ".printk_index", align 4
@ubi_dump_aeb._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.170, ptr @.str.6, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013\09scrub    %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr.182 = internal global ptr @ubi_dump_aeb._entry.180, section ".printk_index", align 4
@ubi_dump_aeb._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.170, ptr @.str.6, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013\09sqnum    %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@ubi_dump_aeb._entry_ptr.185 = internal global ptr @ubi_dump_aeb._entry.183, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.6, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Volume creation request dump:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_dump_mkvol_req\00", [45 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr = internal global ptr @ubi_dump_mkvol_req._entry, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.187, ptr @.str.6, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.189 = internal global ptr @ubi_dump_mkvol_req._entry.188, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.187, ptr @.str.6, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09alignment %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.192 = internal global ptr @ubi_dump_mkvol_req._entry.190, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.187, ptr @.str.6, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09bytes     %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.195 = internal global ptr @ubi_dump_mkvol_req._entry.193, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.187, ptr @.str.6, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.197 = internal global ptr @ubi_dump_mkvol_req._entry.196, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.187, ptr @.str.6, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013\09name_len  %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.200 = internal global ptr @ubi_dump_mkvol_req._entry.198, section ".printk_index", align 4
@ubi_dump_mkvol_req._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.187, ptr @.str.6, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013\091st 16 characters of name: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ubi_dump_mkvol_req._entry_ptr.203 = internal global ptr @ubi_dump_mkvol_req._entry.201, section ".printk_index", align 4
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@dfs_rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ubi_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.6, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013UBI error: cannot create \22ubi\22 debugfs directory, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_debugfs_init\00", [47 x i8] zeroinitializer }, align 32
@ubi_debugfs_init._entry_ptr = internal global ptr @ubi_debugfs_init._entry, section ".printk_index", align 4
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubi%d\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chk_gen\00", [24 x i8] zeroinitializer }, align 32
@dfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_file_read, ptr @dfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chk_io\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chk_fastmap\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tst_disable_bgt\00", [16 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tst_emulate_bitflips\00", [43 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tst_emulate_io_failures\00", [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tst_emulate_power_cut\00", [42 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tst_emulate_power_cut_min\00", [38 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tst_emulate_power_cut_max\00", [38 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"detailed_erase_block_info\00", [38 x i8] zeroinitializer }, align 32
@eraseblk_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @eraseblk_count_open, ptr null, ptr @eraseblk_count_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"XXXXXXXXXXXXXXX emulating a power cut XXXXXXXXXXXXXXXX\00", [41 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@eraseblk_count_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @eraseblk_count_seq_start, ptr @eraseblk_count_seq_stop, ptr @eraseblk_count_seq_next, ptr @eraseblk_count_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"physical_block_number\09erase_count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-22d\09%-11d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switch to read-only mode\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 34, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 39, i32 15 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 41, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 41, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 53, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 54, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 55, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 56, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 57, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 58, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 59, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 60, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 61, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 72, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 73, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 74, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 75, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 76, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 77, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 78, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 79, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 80, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 81, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 82, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 83, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 85, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 86, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 97, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 98, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 99, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 100, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 101, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 102, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 103, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 104, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 105, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 106, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 107, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 108, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 109, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 110, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 114, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 116, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 131, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 132, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 133, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 134, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 135, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 136, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 137, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 140, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 146, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 148, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 152, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 161, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 162, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 163, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 164, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 165, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 166, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 167, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 168, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 169, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 179, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 180, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 181, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 183, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 184, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 185, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 197, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 198, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 199, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 200, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 201, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 202, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 206, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 226, i32 35 }
@___asan_gen_.668 = private unnamed_addr constant [12 x i8] c"dfs_rootdir\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 213, i32 23 }
@___asan_gen_.671 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 230, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 512, i32 53 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 521, i32 39 }
@___asan_gen_.686 = private unnamed_addr constant [9 x i8] c"dfs_fops\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 381, i32 37 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 524, i32 38 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 527, i32 43 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 531, i32 43 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 535, i32 48 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 540, i32 51 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 545, i32 49 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 550, i32 45 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 554, i32 45 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 558, i32 22 }
@___asan_gen_.716 = private unnamed_addr constant [20 x i8] c"eraseblk_count_fops\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 488, i32 37 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 602, i32 15 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 276, i32 30 }
@___asan_gen_.726 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 156, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [23 x i8] c"eraseblk_count_seq_ops\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 453, i32 36 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 431, i32 15 }
@___asan_gen_.735 = private constant [27 x i8] c"../drivers/mtd/ubi/debug.c\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 448, i32 16 }
@___asan_gen_.737 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.738, i32 1160, i32 17 }
@llvm.compiler.used = appending global [244 x ptr] [ptr @ubi_debugfs_init._entry, ptr @ubi_debugfs_init._entry_ptr, ptr @ubi_dump_aeb._entry, ptr @ubi_dump_aeb._entry.171, ptr @ubi_dump_aeb._entry.174, ptr @ubi_dump_aeb._entry.177, ptr @ubi_dump_aeb._entry.180, ptr @ubi_dump_aeb._entry.183, ptr @ubi_dump_aeb._entry_ptr, ptr @ubi_dump_aeb._entry_ptr.173, ptr @ubi_dump_aeb._entry_ptr.176, ptr @ubi_dump_aeb._entry_ptr.179, ptr @ubi_dump_aeb._entry_ptr.182, ptr @ubi_dump_aeb._entry_ptr.185, ptr @ubi_dump_av._entry, ptr @ubi_dump_av._entry.145, ptr @ubi_dump_av._entry.148, ptr @ubi_dump_av._entry.151, ptr @ubi_dump_av._entry.154, ptr @ubi_dump_av._entry.157, ptr @ubi_dump_av._entry.160, ptr @ubi_dump_av._entry.163, ptr @ubi_dump_av._entry.166, ptr @ubi_dump_av._entry_ptr, ptr @ubi_dump_av._entry_ptr.147, ptr @ubi_dump_av._entry_ptr.150, ptr @ubi_dump_av._entry_ptr.153, ptr @ubi_dump_av._entry_ptr.156, ptr @ubi_dump_av._entry_ptr.159, ptr @ubi_dump_av._entry_ptr.162, ptr @ubi_dump_av._entry_ptr.165, ptr @ubi_dump_av._entry_ptr.168, ptr @ubi_dump_ec_hdr._entry, ptr @ubi_dump_ec_hdr._entry.10, ptr @ubi_dump_ec_hdr._entry.13, ptr @ubi_dump_ec_hdr._entry.16, ptr @ubi_dump_ec_hdr._entry.19, ptr @ubi_dump_ec_hdr._entry.22, ptr @ubi_dump_ec_hdr._entry.25, ptr @ubi_dump_ec_hdr._entry.28, ptr @ubi_dump_ec_hdr._entry.7, ptr @ubi_dump_ec_hdr._entry_ptr, ptr @ubi_dump_ec_hdr._entry_ptr.12, ptr @ubi_dump_ec_hdr._entry_ptr.15, ptr @ubi_dump_ec_hdr._entry_ptr.18, ptr @ubi_dump_ec_hdr._entry_ptr.21, ptr @ubi_dump_ec_hdr._entry_ptr.24, ptr @ubi_dump_ec_hdr._entry_ptr.27, ptr @ubi_dump_ec_hdr._entry_ptr.30, ptr @ubi_dump_ec_hdr._entry_ptr.9, ptr @ubi_dump_mkvol_req._entry, ptr @ubi_dump_mkvol_req._entry.188, ptr @ubi_dump_mkvol_req._entry.190, ptr @ubi_dump_mkvol_req._entry.193, ptr @ubi_dump_mkvol_req._entry.196, ptr @ubi_dump_mkvol_req._entry.198, ptr @ubi_dump_mkvol_req._entry.201, ptr @ubi_dump_mkvol_req._entry_ptr, ptr @ubi_dump_mkvol_req._entry_ptr.189, ptr @ubi_dump_mkvol_req._entry_ptr.192, ptr @ubi_dump_mkvol_req._entry_ptr.195, ptr @ubi_dump_mkvol_req._entry_ptr.197, ptr @ubi_dump_mkvol_req._entry_ptr.200, ptr @ubi_dump_mkvol_req._entry_ptr.203, ptr @ubi_dump_vid_hdr._entry, ptr @ubi_dump_vid_hdr._entry.33, ptr @ubi_dump_vid_hdr._entry.36, ptr @ubi_dump_vid_hdr._entry.39, ptr @ubi_dump_vid_hdr._entry.42, ptr @ubi_dump_vid_hdr._entry.45, ptr @ubi_dump_vid_hdr._entry.48, ptr @ubi_dump_vid_hdr._entry.51, ptr @ubi_dump_vid_hdr._entry.54, ptr @ubi_dump_vid_hdr._entry.57, ptr @ubi_dump_vid_hdr._entry.60, ptr @ubi_dump_vid_hdr._entry.63, ptr @ubi_dump_vid_hdr._entry.66, ptr @ubi_dump_vid_hdr._entry.69, ptr @ubi_dump_vid_hdr._entry_ptr, ptr @ubi_dump_vid_hdr._entry_ptr.35, ptr @ubi_dump_vid_hdr._entry_ptr.38, ptr @ubi_dump_vid_hdr._entry_ptr.41, ptr @ubi_dump_vid_hdr._entry_ptr.44, ptr @ubi_dump_vid_hdr._entry_ptr.47, ptr @ubi_dump_vid_hdr._entry_ptr.50, ptr @ubi_dump_vid_hdr._entry_ptr.53, ptr @ubi_dump_vid_hdr._entry_ptr.56, ptr @ubi_dump_vid_hdr._entry_ptr.59, ptr @ubi_dump_vid_hdr._entry_ptr.62, ptr @ubi_dump_vid_hdr._entry_ptr.65, ptr @ubi_dump_vid_hdr._entry_ptr.68, ptr @ubi_dump_vid_hdr._entry_ptr.71, ptr @ubi_dump_vol_info._entry, ptr @ubi_dump_vol_info._entry.101, ptr @ubi_dump_vol_info._entry.104, ptr @ubi_dump_vol_info._entry.107, ptr @ubi_dump_vol_info._entry.110, ptr @ubi_dump_vol_info._entry.113, ptr @ubi_dump_vol_info._entry.116, ptr @ubi_dump_vol_info._entry.74, ptr @ubi_dump_vol_info._entry.77, ptr @ubi_dump_vol_info._entry.80, ptr @ubi_dump_vol_info._entry.83, ptr @ubi_dump_vol_info._entry.86, ptr @ubi_dump_vol_info._entry.89, ptr @ubi_dump_vol_info._entry.92, ptr @ubi_dump_vol_info._entry.95, ptr @ubi_dump_vol_info._entry.98, ptr @ubi_dump_vol_info._entry_ptr, ptr @ubi_dump_vol_info._entry_ptr.100, ptr @ubi_dump_vol_info._entry_ptr.103, ptr @ubi_dump_vol_info._entry_ptr.106, ptr @ubi_dump_vol_info._entry_ptr.109, ptr @ubi_dump_vol_info._entry_ptr.112, ptr @ubi_dump_vol_info._entry_ptr.115, ptr @ubi_dump_vol_info._entry_ptr.118, ptr @ubi_dump_vol_info._entry_ptr.76, ptr @ubi_dump_vol_info._entry_ptr.79, ptr @ubi_dump_vol_info._entry_ptr.82, ptr @ubi_dump_vol_info._entry_ptr.85, ptr @ubi_dump_vol_info._entry_ptr.88, ptr @ubi_dump_vol_info._entry_ptr.91, ptr @ubi_dump_vol_info._entry_ptr.94, ptr @ubi_dump_vol_info._entry_ptr.97, ptr @ubi_dump_vtbl_record._entry, ptr @ubi_dump_vtbl_record._entry.121, ptr @ubi_dump_vtbl_record._entry.123, ptr @ubi_dump_vtbl_record._entry.125, ptr @ubi_dump_vtbl_record._entry.127, ptr @ubi_dump_vtbl_record._entry.129, ptr @ubi_dump_vtbl_record._entry.131, ptr @ubi_dump_vtbl_record._entry.133, ptr @ubi_dump_vtbl_record._entry.136, ptr @ubi_dump_vtbl_record._entry.138, ptr @ubi_dump_vtbl_record._entry.140, ptr @ubi_dump_vtbl_record._entry_ptr, ptr @ubi_dump_vtbl_record._entry_ptr.122, ptr @ubi_dump_vtbl_record._entry_ptr.124, ptr @ubi_dump_vtbl_record._entry_ptr.126, ptr @ubi_dump_vtbl_record._entry_ptr.128, ptr @ubi_dump_vtbl_record._entry_ptr.130, ptr @ubi_dump_vtbl_record._entry_ptr.132, ptr @ubi_dump_vtbl_record._entry_ptr.135, ptr @ubi_dump_vtbl_record._entry_ptr.137, ptr @ubi_dump_vtbl_record._entry_ptr.139, ptr @ubi_dump_vtbl_record._entry_ptr.142, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.134, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.191, ptr @.str.194, ptr @.str.199, ptr @.str.202, ptr @.str.204, ptr @dfs_rootdir, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @dfs_fops, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @eraseblk_count_fops, ptr @.str.218, ptr @.str.219, ptr @.str.222, ptr @eraseblk_count_seq_ops, ptr @.str.223, ptr @.str.224, ptr @.str.225], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_ec_hdr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vid_hdr._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vol_info._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_vtbl_record._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_av._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_aeb._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dump_mkvol_req._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eraseblk_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eraseblk_count_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_flash(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #12
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !358
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %1 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %peb_size, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef %len) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %pnum to i64
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv1, %conv
  %conv2 = sext i32 %offset to i64
  %add = add nsw i64 %mul, %conv2
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %3 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mtd, align 4
  %call3 = call i32 @mtd_read(ptr noundef %4, i64 noundef %add, i32 noundef %len, ptr noundef nonnull %read, ptr noundef nonnull %call) #12
  %5 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.then6 [
    i32 0, label %if.end.if.end7_crit_edge
    i32 -117, label %if.end.if.end7_crit_edge27
  ]

if.end.if.end7_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str, i32 noundef %call3, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %7) #12
  br label %out

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge27
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.1, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset) #12
  call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %call, i32 noundef %len, i1 noundef zeroext true) #12
  br label %out

out:                                              ; preds = %if.end7, %if.then6
  call void @vfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_ec_hdr(ptr noundef %ec_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %0 = ptrtoint ptr %ec_hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ec_hdr, align 1
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %1) #16
  %version = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 1
  %conv = zext i8 %3 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv) #16
  %ec = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 3
  %4 = ptrtoint ptr %ec to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %ec, align 1
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %5) #16
  %vid_hdr_offset = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 4
  %6 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %vid_hdr_offset, align 1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %7) #16
  %data_offset = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 5
  %8 = ptrtoint ptr %data_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data_offset, align 1
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %9) #16
  %image_seq = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 6
  %10 = ptrtoint ptr %image_seq to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %image_seq, align 1
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %11) #16
  %hdr_crc = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 8
  %12 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %hdr_crc, align 1
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %13) #16
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %ec_hdr, i32 noundef 64, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  %0 = ptrtoint ptr %vid_hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %vid_hdr, align 1
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %1) #16
  %version = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 1
  %conv = zext i8 %3 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv) #16
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 2
  %4 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vol_type, align 1
  %conv12 = zext i8 %5 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv12) #16
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 3
  %6 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %copy_flag, align 1
  %conv17 = zext i8 %7 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv17) #16
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 4
  %8 = ptrtoint ptr %compat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %compat, align 1
  %conv22 = zext i8 %9 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv22) #16
  %vol_id = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 5
  %10 = ptrtoint ptr %vol_id to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %vol_id, align 1
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %11) #16
  %lnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 6
  %12 = ptrtoint ptr %lnum to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %lnum, align 1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %13) #16
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 8
  %14 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %data_size, align 1
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %15) #16
  %used_ebs = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 9
  %16 = ptrtoint ptr %used_ebs to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %used_ebs, align 1
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %17) #16
  %data_pad = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 10
  %18 = ptrtoint ptr %data_pad to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %data_pad, align 1
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %19) #16
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 13
  %20 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %sqnum, align 1
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i64 noundef %21) #16
  %hdr_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 15
  %22 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %hdr_crc, align 1
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %23) #16
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %vid_hdr, i32 noundef 64, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_vol_info(ptr noundef %vol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #16
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %1) #16
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 9
  %2 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_pebs, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %3) #16
  %alignment = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 15
  %4 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alignment, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %5) #16
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 16
  %6 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_pad, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7) #16
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 10
  %8 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_type, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %9) #16
  %name_len = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 17
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name_len, align 8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %11) #16
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 11
  %12 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usable_leb_size, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %13) #16
  %used_ebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 12
  %14 = ptrtoint ptr %used_ebs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used_ebs, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %15) #16
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 14
  %16 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %used_bytes, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i64 noundef %17) #16
  %last_eb_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 13
  %18 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_eb_bytes, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %19) #16
  %corrupted = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %20 = ptrtoint ptr %corrupted to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %corrupted, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %bf.cast) #16
  %21 = ptrtoint ptr %corrupted to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load48 = load i8, ptr %corrupted, align 8
  %bf.lshr49 = lshr i8 %bf.load48, 4
  %bf.clear50 = and i8 %bf.lshr49, 1
  %bf.cast51 = zext i8 %bf.clear50 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %bf.cast51) #16
  %22 = ptrtoint ptr %corrupted to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load56 = load i8, ptr %corrupted, align 8
  %bf.lshr57 = lshr i8 %bf.load56, 7
  %bf.cast58 = zext i8 %bf.lshr57 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %bf.cast58) #16
  %23 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %name_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %24)
  %cmp = icmp slt i32 %24, 128
  br i1 %cmp, label %land.lhs.true, label %entry.do.end72_crit_edge

entry.do.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 18
  %add = add nsw i32 %24, 1
  %call62 = tail call i32 @strnlen(ptr noundef %name, i32 noundef %add) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %24)
  %cmp64 = icmp eq i32 %call62, %24
  br i1 %cmp64, label %do.end66, label %land.lhs.true.do.end72_crit_edge

land.lhs.true.do.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72

do.end66:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name) #16
  br label %if.end

do.end72:                                         ; preds = %land.lhs.true.do.end72_crit_edge, %entry.do.end72_crit_edge
  %name74 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 18
  %25 = ptrtoint ptr %name74 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %name74, align 4
  %conv = zext i8 %26 to i32
  %arrayidx76 = getelementptr %struct.ubi_volume, ptr %vol, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %28 to i32
  %arrayidx79 = getelementptr %struct.ubi_volume, ptr %vol, i32 0, i32 18, i32 2
  %29 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx79, align 2
  %conv80 = zext i8 %30 to i32
  %arrayidx82 = getelementptr %struct.ubi_volume, ptr %vol, i32 0, i32 18, i32 3
  %31 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %32 to i32
  %arrayidx85 = getelementptr %struct.ubi_volume, ptr %vol, i32 0, i32 18, i32 4
  %33 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx85, align 4
  %conv86 = zext i8 %34 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv, i32 noundef %conv77, i32 noundef %conv80, i32 noundef %conv83, i32 noundef %conv86) #16
  br label %if.end

if.end:                                           ; preds = %do.end72, %do.end66
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_vtbl_record(ptr noundef %r, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len1 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 5
  %0 = ptrtoint ptr %name_len1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %name_len1, align 1
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %idx) #16
  %2 = ptrtoint ptr %r to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %r, align 1
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %3) #16
  %alignment = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %alignment to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %alignment, align 1
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %5) #16
  %data_pad = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 2
  %6 = ptrtoint ptr %data_pad to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data_pad, align 1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7) #16
  %vol_type = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 3
  %8 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vol_type, align 1
  %conv21 = zext i8 %9 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv21) #16
  %upd_marker = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 4
  %10 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %upd_marker, align 1
  %conv27 = zext i8 %11 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv27) #16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv) #16
  %name = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 6
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %do.end38, label %if.end

do.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %1)
  %cmp41 = icmp ult i16 %1, 128
  br i1 %cmp41, label %land.lhs.true, label %if.end.do.end58_crit_edge

if.end.do.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true:                                    ; preds = %if.end
  %add = add nuw nsw i32 %conv, 1
  %call45 = tail call i32 @strnlen(ptr noundef %name, i32 noundef %add) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %conv)
  %cmp46 = icmp eq i32 %call45, %conv
  br i1 %cmp46, label %do.end51, label %land.lhs.true.do.end58_crit_edge

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

do.end51:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name) #16
  br label %do.end79

do.end58:                                         ; preds = %land.lhs.true.do.end58_crit_edge, %if.end.do.end58_crit_edge
  %conv62 = zext i8 %13 to i32
  %arrayidx64 = getelementptr %struct.ubi_vtbl_record, ptr %r, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %15 to i32
  %arrayidx67 = getelementptr %struct.ubi_vtbl_record, ptr %r, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %17 to i32
  %arrayidx70 = getelementptr %struct.ubi_vtbl_record, ptr %r, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %19 to i32
  %arrayidx73 = getelementptr %struct.ubi_vtbl_record, ptr %r, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %21 to i32
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68, i32 noundef %conv71, i32 noundef %conv74) #16
  br label %do.end79

do.end79:                                         ; preds = %do.end58, %do.end51
  %crc = getelementptr inbounds %struct.ubi_vtbl_record, ptr %r, i32 0, i32 9
  %22 = ptrtoint ptr %crc to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %crc, align 1
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %23) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_av(ptr nocapture noundef readonly %av) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #16
  %0 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %av, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %1) #16
  %highest_lnum = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 1
  %2 = ptrtoint ptr %highest_lnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %highest_lnum, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %3) #16
  %leb_count = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 2
  %4 = ptrtoint ptr %leb_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %leb_count, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %5) #16
  %compat = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 7
  %6 = ptrtoint ptr %compat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compat, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %7) #16
  %vol_type = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 3
  %8 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_type, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %9) #16
  %used_ebs = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 4
  %10 = ptrtoint ptr %used_ebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used_ebs, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %11) #16
  %last_data_size = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 5
  %12 = ptrtoint ptr %last_data_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_data_size, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %13) #16
  %data_pad = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 6
  %14 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_pad, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %15) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_aeb(ptr nocapture noundef readonly %aeb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #16
  %0 = ptrtoint ptr %aeb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aeb, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %1) #16
  %pnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 1
  %2 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnum, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %do.end10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 3
  %4 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnum, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %5) #16
  %scrub = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 4
  %6 = ptrtoint ptr %scrub to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %scrub, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %bf.cast) #16
  %sqnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 5
  %7 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sqnum, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i64 noundef %8) #16
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_dump_mkvol_req(ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  %nm = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %nm) #12
  %0 = getelementptr inbounds [17 x i8], ptr %nm, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #16
  %1 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %req, align 1
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %2) #16
  %alignment = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %alignment to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %alignment, align 1
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %4) #16
  %bytes = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %bytes, align 1
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i64 noundef %6) #16
  %vol_type = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vol_type, align 1
  %conv = sext i8 %8 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv) #16
  %name_len = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 5
  %9 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %name_len, align 1
  %conv25 = sext i16 %10 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %conv25) #16
  %name = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %nm, ptr %name, i32 16)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %0, align 1
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull %nm) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %nm) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.204, ptr noundef null) #12
  store ptr %call, ptr @dfs_rootdir, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  %spec.select = select i1 %tobool.not.i, i32 -19, i32 %0
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %spec.select) #16
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dfs_rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_debugfs_init_dev(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi_num1 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  %0 = ptrtoint ptr %ubi_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ubi_num1, align 8
  %dfs_dir_name = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dfs_dir_name, i32 noundef 7, ptr noundef nonnull @.str.207, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp sgt i32 %call, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @dfs_rootdir, align 4
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef %dfs_dir_name, ptr noundef %2) #12
  %dfs_dir = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 5
  %3 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %dfs_dir, align 4
  %4 = inttoptr i32 %1 to ptr
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.208, i16 noundef zeroext 128, ptr noundef %call5, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_chk_gen = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 6
  %5 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %dfs_chk_gen, align 4
  %6 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfs_dir, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.209, i16 noundef zeroext 128, ptr noundef %7, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_chk_io = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 7
  %8 = ptrtoint ptr %dfs_chk_io to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %dfs_chk_io, align 4
  %9 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfs_dir, align 4
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.210, i16 noundef zeroext 128, ptr noundef %10, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_chk_fastmap = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 8
  %11 = ptrtoint ptr %dfs_chk_fastmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %dfs_chk_fastmap, align 4
  %12 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfs_dir, align 4
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.211, i16 noundef zeroext 128, ptr noundef %13, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_disable_bgt = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 9
  %14 = ptrtoint ptr %dfs_disable_bgt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %dfs_disable_bgt, align 4
  %15 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfs_dir, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.212, i16 noundef zeroext 128, ptr noundef %16, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_emulate_bitflips = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 10
  %17 = ptrtoint ptr %dfs_emulate_bitflips to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call15, ptr %dfs_emulate_bitflips, align 4
  %18 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfs_dir, align 4
  %call17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.213, i16 noundef zeroext 128, ptr noundef %19, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_emulate_io_failures = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 11
  %20 = ptrtoint ptr %dfs_emulate_io_failures to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %dfs_emulate_io_failures, align 4
  %21 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dfs_dir, align 4
  %call19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.214, i16 noundef zeroext 128, ptr noundef %22, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_emulate_power_cut = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 12
  %23 = ptrtoint ptr %dfs_emulate_power_cut to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call19, ptr %dfs_emulate_power_cut, align 4
  %24 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_dir, align 4
  %call21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.215, i16 noundef zeroext 128, ptr noundef %25, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 13
  %26 = ptrtoint ptr %dfs_power_cut_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call21, ptr %dfs_power_cut_min, align 4
  %27 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfs_dir, align 4
  %call23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.216, i16 noundef zeroext 128, ptr noundef %28, ptr noundef %4, ptr noundef nonnull @dfs_fops) #12
  %dfs_power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 14
  %29 = ptrtoint ptr %dfs_power_cut_max to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call23, ptr %dfs_power_cut_max, align 4
  %30 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dfs_dir, align 4
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.217, i16 noundef zeroext 256, ptr noundef %31, ptr noundef %4, ptr noundef nonnull @eraseblk_count_fops) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_debugfs_exit_dev(ptr nocapture noundef readonly %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dfs_dir = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 5
  %0 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_dbg_power_cut(ptr noundef %ubi, i32 noundef %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dbg, align 4
  %bf.clear = and i8 %bf.load, 3
  %bf.cast = zext i8 %bf.clear to i32
  %and = and i32 %bf.cast, %caller
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_cut_counter = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 1
  %1 = ptrtoint ptr %power_cut_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %power_cut_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %if.end
  %power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 2
  %3 = ptrtoint ptr %power_cut_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %power_cut_min, align 4
  %5 = ptrtoint ptr %power_cut_counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %power_cut_counter, align 4
  %power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83, i32 3
  %6 = ptrtoint ptr %power_cut_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_cut_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp10 = icmp ugt i32 %7, %4
  br i1 %cmp10, label %if.then11, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %7, %4
  %call = tail call i32 @prandom_u32() #12
  %rem = urem i32 %call, %sub
  %8 = ptrtoint ptr %power_cut_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_cut_counter, align 4
  %add = add i32 %9, %rem
  store i32 %add, ptr %power_cut_counter, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %dec = add i32 %2, -1
  %10 = ptrtoint ptr %power_cut_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %power_cut_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.218) #12
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %11 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.225) #12
  tail call void @dump_stack() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then11, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 1, %if.end25.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_file_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #12
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %call = tail call ptr @ubi_get_device(i32 noundef %2) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbg = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83
  %dfs_chk_gen = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 6
  %8 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfs_chk_gen, align 4
  %cmp = icmp eq ptr %4, %9
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %dbg, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  br label %if.end70

if.else:                                          ; preds = %if.end
  %dfs_chk_io = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 7
  %11 = ptrtoint ptr %dfs_chk_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfs_chk_io, align 4
  %cmp2 = icmp eq ptr %4, %12
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load4 = load i8, ptr %dbg, align 4
  %bf.lshr5 = lshr i8 %bf.load4, 6
  %bf.clear = and i8 %bf.lshr5, 1
  br label %if.end70

if.else7:                                         ; preds = %if.else
  %dfs_chk_fastmap = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 8
  %14 = ptrtoint ptr %dfs_chk_fastmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dfs_chk_fastmap, align 4
  %cmp8 = icmp eq ptr %4, %15
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load10 = load i8, ptr %dbg, align 4
  %bf.lshr11 = lshr i8 %bf.load10, 5
  %bf.clear12 = and i8 %bf.lshr11, 1
  br label %if.end70

if.else14:                                        ; preds = %if.else7
  %dfs_disable_bgt = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 9
  %17 = ptrtoint ptr %dfs_disable_bgt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfs_disable_bgt, align 4
  %cmp15 = icmp eq ptr %4, %18
  br i1 %cmp15, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load17 = load i8, ptr %dbg, align 4
  %bf.lshr18 = lshr i8 %bf.load17, 4
  %bf.clear19 = and i8 %bf.lshr18, 1
  br label %if.end70

if.else21:                                        ; preds = %if.else14
  %dfs_emulate_bitflips = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 10
  %20 = ptrtoint ptr %dfs_emulate_bitflips to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_emulate_bitflips, align 4
  %cmp22 = icmp eq ptr %4, %21
  br i1 %cmp22, label %if.then23, label %if.else28

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load24 = load i8, ptr %dbg, align 4
  %bf.lshr25 = lshr i8 %bf.load24, 3
  %bf.clear26 = and i8 %bf.lshr25, 1
  br label %if.end70

if.else28:                                        ; preds = %if.else21
  %dfs_emulate_io_failures = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 11
  %23 = ptrtoint ptr %dfs_emulate_io_failures to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dfs_emulate_io_failures, align 4
  %cmp29 = icmp eq ptr %4, %24
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load31 = load i8, ptr %dbg, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 2
  %bf.clear33 = and i8 %bf.lshr32, 1
  br label %if.end70

if.else35:                                        ; preds = %if.else28
  %dfs_emulate_power_cut = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 12
  %26 = ptrtoint ptr %dfs_emulate_power_cut to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dfs_emulate_power_cut, align 4
  %cmp36 = icmp eq ptr %4, %27
  br i1 %cmp36, label %if.then37, label %if.else46

if.then37:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load38 = load i8, ptr %dbg, align 4
  %bf.clear39 = and i8 %bf.load38, 3
  %bf.cast40 = zext i8 %bf.clear39 to i32
  %call41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.219, i32 noundef %bf.cast40)
  %call44 = call i32 @strlen(ptr noundef nonnull %buf) #17
  br label %out.sink.split

if.else46:                                        ; preds = %if.else35
  %dfs_power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 13
  %29 = ptrtoint ptr %dfs_power_cut_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dfs_power_cut_min, align 4
  %cmp47 = icmp eq ptr %4, %30
  br i1 %cmp47, label %if.then48, label %if.else55

if.then48:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  %power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 2
  %31 = ptrtoint ptr %power_cut_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %power_cut_min, align 4
  %call50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.219, i32 noundef %32)
  %call53 = call i32 @strlen(ptr noundef nonnull %buf) #17
  br label %out.sink.split

if.else55:                                        ; preds = %if.else46
  %dfs_power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 14
  %33 = ptrtoint ptr %dfs_power_cut_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dfs_power_cut_max, align 4
  %cmp56 = icmp eq ptr %4, %34
  br i1 %cmp56, label %if.then57, label %if.else55.out_crit_edge

if.else55.out_crit_edge:                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then57:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #14
  %power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 3
  %35 = ptrtoint ptr %power_cut_max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %power_cut_max, align 4
  %call59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.219, i32 noundef %36)
  %call62 = call i32 @strlen(ptr noundef nonnull %buf) #17
  br label %out.sink.split

if.end70:                                         ; preds = %if.then30, %if.then23, %if.then16, %if.then9, %if.then3, %if.then1
  %val.0.in = phi i8 [ %bf.lshr, %if.then1 ], [ %bf.clear, %if.then3 ], [ %bf.clear12, %if.then9 ], [ %bf.clear19, %if.then16 ], [ %bf.clear26, %if.then23 ], [ %bf.clear33, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.in)
  %tobool71.not = icmp eq i8 %val.0.in, 0
  %. = select i1 %tobool71.not, i8 48, i8 49
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %., ptr %buf, align 8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %5, align 1
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %6, align 2
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end70, %if.then57, %if.then48, %if.then37
  %.sink = phi i32 [ 2, %if.end70 ], [ %call62, %if.then57 ], [ %call53, %if.then48 ], [ %call44, %if.then37 ]
  %call79 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.else55.out_crit_edge
  %count.addr.0 = phi i32 [ -22, %if.else55.out_crit_edge ], [ %call79, %out.sink.split ]
  call void @ubi_put_device(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_file_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #12
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !358
  %call = tail call ptr @ubi_get_device(i32 noundef %2) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbg = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83
  %7 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %7, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.222, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %7, i32 -1226833920) #18, !srcloc !359
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !360

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %7) #12
  %9 = call i32 @llvm.read_register.i32(metadata !348) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !361
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !363
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %7) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !363
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %7, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %7, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.then11.i.i, !prof !360

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %7, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end4:                                          ; preds = %if.end.i.i
  %dfs_power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 13
  %13 = ptrtoint ptr %dfs_power_cut_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dfs_power_cut_min, align 4
  %cmp5 = icmp eq ptr %4, %14
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %power_cut_min = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 2
  %call8 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef %power_cut_min) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %cmp9.not, i32 %count, i32 -22
  br label %out

if.else:                                          ; preds = %if.end4
  %dfs_power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 14
  %15 = ptrtoint ptr %dfs_power_cut_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfs_power_cut_max, align 4
  %cmp12 = icmp eq ptr %4, %16
  br i1 %cmp12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %power_cut_max = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 3
  %call15 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef %power_cut_max) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  %spec.select145 = select i1 %cmp16.not, i32 %count, i32 -22
  br label %out

if.else19:                                        ; preds = %if.else
  %dfs_emulate_power_cut = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 12
  %17 = ptrtoint ptr %dfs_emulate_power_cut to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfs_emulate_power_cut, align 4
  %cmp20 = icmp eq ptr %4, %18
  br i1 %cmp20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.else19
  %call23 = call i32 @kstrtoint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.else26, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = trunc i32 %20 to i8
  %22 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %dbg, align 4
  %bf.value = and i8 %21, 3
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %dbg, align 4
  br label %out

if.end30:                                         ; preds = %if.else19
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %24, label %if.end30.out_crit_edge [
    i8 49, label %if.end30.if.end42_crit_edge
    i8 48, label %if.then39
  ]

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end30.if.end42_crit_edge
  %storemerge = phi i32 [ 0, %if.then39 ], [ 1, %if.end30.if.end42_crit_edge ]
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %val, align 4
  %dfs_chk_gen = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 6
  %27 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfs_chk_gen, align 4
  %cmp43 = icmp eq ptr %4, %28
  br i1 %cmp43, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %29 = trunc i32 %storemerge to i8
  %30 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load46 = load i8, ptr %dbg, align 4
  %bf.shl = shl nuw i8 %29, 7
  %bf.clear48 = and i8 %bf.load46, 127
  %bf.set49 = or i8 %bf.clear48, %bf.shl
  store i8 %bf.set49, ptr %dbg, align 4
  br label %out

if.else51:                                        ; preds = %if.end42
  %dfs_chk_io = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 7
  %31 = ptrtoint ptr %dfs_chk_io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dfs_chk_io, align 4
  %cmp52 = icmp eq ptr %4, %32
  br i1 %cmp52, label %if.then54, label %if.else61

if.then54:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  %33 = trunc i32 %storemerge to i8
  %34 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load55 = load i8, ptr %dbg, align 4
  %bf.value56 = shl nuw nsw i8 %33, 6
  %bf.clear58 = and i8 %bf.load55, -65
  %bf.set59 = or i8 %bf.clear58, %bf.value56
  store i8 %bf.set59, ptr %dbg, align 4
  br label %out

if.else61:                                        ; preds = %if.else51
  %dfs_chk_fastmap = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 8
  %35 = ptrtoint ptr %dfs_chk_fastmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dfs_chk_fastmap, align 4
  %cmp62 = icmp eq ptr %4, %36
  br i1 %cmp62, label %if.then64, label %if.else71

if.then64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #14
  %37 = trunc i32 %storemerge to i8
  %38 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load65 = load i8, ptr %dbg, align 4
  %bf.value66 = shl nuw nsw i8 %37, 5
  %bf.clear68 = and i8 %bf.load65, -33
  %bf.set69 = or i8 %bf.clear68, %bf.value66
  store i8 %bf.set69, ptr %dbg, align 4
  br label %out

if.else71:                                        ; preds = %if.else61
  %dfs_disable_bgt = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 9
  %39 = ptrtoint ptr %dfs_disable_bgt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dfs_disable_bgt, align 4
  %cmp72 = icmp eq ptr %4, %40
  br i1 %cmp72, label %if.then74, label %if.else81

if.then74:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  %41 = trunc i32 %storemerge to i8
  %42 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load75 = load i8, ptr %dbg, align 4
  %bf.value76 = shl nuw nsw i8 %41, 4
  %bf.clear78 = and i8 %bf.load75, -17
  %bf.set79 = or i8 %bf.clear78, %bf.value76
  store i8 %bf.set79, ptr %dbg, align 4
  br label %out

if.else81:                                        ; preds = %if.else71
  %dfs_emulate_bitflips = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 10
  %43 = ptrtoint ptr %dfs_emulate_bitflips to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dfs_emulate_bitflips, align 4
  %cmp82 = icmp eq ptr %4, %44
  br i1 %cmp82, label %if.then84, label %if.else91

if.then84:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  %45 = trunc i32 %storemerge to i8
  %46 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load85 = load i8, ptr %dbg, align 4
  %bf.value86 = shl nuw nsw i8 %45, 3
  %bf.clear88 = and i8 %bf.load85, -9
  %bf.set89 = or i8 %bf.clear88, %bf.value86
  store i8 %bf.set89, ptr %dbg, align 4
  br label %out

if.else91:                                        ; preds = %if.else81
  %dfs_emulate_io_failures = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 83, i32 11
  %47 = ptrtoint ptr %dfs_emulate_io_failures to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dfs_emulate_io_failures, align 4
  %cmp92 = icmp eq ptr %4, %48
  br i1 %cmp92, label %if.then94, label %if.else91.out_crit_edge

if.else91.out_crit_edge:                          ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then94:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #14
  %49 = trunc i32 %storemerge to i8
  %50 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load95 = load i8, ptr %dbg, align 4
  %bf.value96 = shl nuw nsw i8 %49, 2
  %bf.clear98 = and i8 %bf.load95, -5
  %bf.set99 = or i8 %bf.clear98, %bf.value96
  store i8 %bf.set99, ptr %dbg, align 4
  br label %out

out:                                              ; preds = %if.then94, %if.else91.out_crit_edge, %if.then84, %if.then74, %if.then64, %if.then54, %if.then45, %if.end30.out_crit_edge, %if.else26, %if.then21.out_crit_edge, %if.then13, %if.then6, %if.then11.i.i
  %count.addr.0 = phi i32 [ %count, %if.else26 ], [ %count, %if.then45 ], [ %count, %if.then54 ], [ %count, %if.then64 ], [ %count, %if.then74 ], [ %count, %if.then84 ], [ %count, %if.then94 ], [ %spec.select, %if.then6 ], [ %spec.select145, %if.then13 ], [ -22, %if.then21.out_crit_edge ], [ -22, %if.end30.out_crit_edge ], [ -22, %if.else91.out_crit_edge ], [ -14, %if.then11.i.i ]
  call void @ubi_put_device(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eraseblk_count_open(ptr nocapture noundef readonly %inode, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %f, ptr noundef nonnull @eraseblk_count_seq_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  %call1 = tail call ptr @ubi_get_device(i32 noundef %4) #12
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %private, align 8
  %tobool3.not = icmp eq ptr %call1, null
  %. = select i1 %tobool3.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eraseblk_count_release(ptr noundef %inode, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @ubi_put_device(ptr noundef %3) #12
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %f) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @eraseblk_count_seq_start(ptr nocapture noundef readonly %s, ptr noundef readonly %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peb_count, align 8
  %conv = sext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp slt i64 %3, %conv
  %pos. = select i1 %cmp, ptr %pos, ptr null
  ret ptr %pos.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @eraseblk_count_seq_stop(ptr nocapture noundef %s, ptr nocapture noundef %v) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @eraseblk_count_seq_next(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v, ptr noundef %pos) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peb_count, align 8
  %conv = sext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp = icmp slt i64 %inc, %conv
  %pos. = select i1 %cmp, ptr %pos, ptr null
  ret ptr %pos.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eraseblk_count_seq_show(ptr noundef %s, ptr nocapture noundef readonly %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.223) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iter, align 4
  %call = tail call i32 @ubi_io_is_bad(ptr noundef %1, i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lookuptbl, align 8
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iter, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ec, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.224, i32 noundef %15, i32 noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end5.thread, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_is_bad(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !288, !289, !290, !292, !293, !294, !296, !298, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !334, !336, !338, !340, !342, !344, !346}
!llvm.named.register.sp = !{!348}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/debug.c", i32 34, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ubi/debug.c", i32 39, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ubi/debug.c", i32 41, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/debug.c", i32 41, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/debug.c", i32 53, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ubi_dump_ec_hdr._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ubi_dump_ec_hdr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ubi/debug.c", i32 54, i32 2}
!16 = !{ptr @ubi_dump_ec_hdr._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ubi_dump_ec_hdr._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/ubi/debug.c", i32 55, i32 2}
!20 = !{ptr @ubi_dump_ec_hdr._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ubi_dump_ec_hdr._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/debug.c", i32 56, i32 2}
!24 = !{ptr @ubi_dump_ec_hdr._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ubi_dump_ec_hdr._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/debug.c", i32 57, i32 2}
!28 = !{ptr @ubi_dump_ec_hdr._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ubi_dump_ec_hdr._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/debug.c", i32 58, i32 2}
!32 = !{ptr @ubi_dump_ec_hdr._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ubi_dump_ec_hdr._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/debug.c", i32 59, i32 2}
!36 = !{ptr @ubi_dump_ec_hdr._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ubi_dump_ec_hdr._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/debug.c", i32 60, i32 2}
!40 = !{ptr @ubi_dump_ec_hdr._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ubi_dump_ec_hdr._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/debug.c", i32 61, i32 2}
!44 = !{ptr @ubi_dump_ec_hdr._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ubi_dump_ec_hdr._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/debug.c", i32 72, i32 2}
!48 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ubi_dump_vid_hdr._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ubi_dump_vid_hdr._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/ubi/debug.c", i32 73, i32 2}
!53 = !{ptr @ubi_dump_vid_hdr._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ubi_dump_vid_hdr._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/ubi/debug.c", i32 74, i32 2}
!57 = !{ptr @ubi_dump_vid_hdr._entry.36, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ubi_dump_vid_hdr._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.40, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/ubi/debug.c", i32 75, i32 2}
!61 = !{ptr @ubi_dump_vid_hdr._entry.39, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ubi_dump_vid_hdr._entry_ptr.41, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/debug.c", i32 76, i32 2}
!65 = !{ptr @ubi_dump_vid_hdr._entry.42, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ubi_dump_vid_hdr._entry_ptr.44, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/debug.c", i32 77, i32 2}
!69 = !{ptr @ubi_dump_vid_hdr._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ubi_dump_vid_hdr._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/ubi/debug.c", i32 78, i32 2}
!73 = !{ptr @ubi_dump_vid_hdr._entry.48, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ubi_dump_vid_hdr._entry_ptr.50, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/debug.c", i32 79, i32 2}
!77 = !{ptr @ubi_dump_vid_hdr._entry.51, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ubi_dump_vid_hdr._entry_ptr.53, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/ubi/debug.c", i32 80, i32 2}
!81 = !{ptr @ubi_dump_vid_hdr._entry.54, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ubi_dump_vid_hdr._entry_ptr.56, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/ubi/debug.c", i32 81, i32 2}
!85 = !{ptr @ubi_dump_vid_hdr._entry.57, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ubi_dump_vid_hdr._entry_ptr.59, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ubi/debug.c", i32 82, i32 2}
!89 = !{ptr @ubi_dump_vid_hdr._entry.60, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ubi_dump_vid_hdr._entry_ptr.62, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/ubi/debug.c", i32 83, i32 2}
!93 = !{ptr @ubi_dump_vid_hdr._entry.63, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ubi_dump_vid_hdr._entry_ptr.65, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.67, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/debug.c", i32 85, i32 2}
!97 = !{ptr @ubi_dump_vid_hdr._entry.66, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ubi_dump_vid_hdr._entry_ptr.68, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.70, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/debug.c", i32 86, i32 2}
!101 = !{ptr @ubi_dump_vid_hdr._entry.69, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ubi_dump_vid_hdr._entry_ptr.71, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.72, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/ubi/debug.c", i32 97, i32 2}
!105 = !{ptr @.str.73, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ubi_dump_vol_info._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ubi_dump_vol_info._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.75, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/ubi/debug.c", i32 98, i32 2}
!110 = !{ptr @ubi_dump_vol_info._entry.74, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ubi_dump_vol_info._entry_ptr.76, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/ubi/debug.c", i32 99, i32 2}
!114 = !{ptr @ubi_dump_vol_info._entry.77, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ubi_dump_vol_info._entry_ptr.79, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.81, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/ubi/debug.c", i32 100, i32 2}
!118 = !{ptr @ubi_dump_vol_info._entry.80, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ubi_dump_vol_info._entry_ptr.82, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ubi/debug.c", i32 101, i32 2}
!122 = !{ptr @ubi_dump_vol_info._entry.83, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ubi_dump_vol_info._entry_ptr.85, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.87, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/ubi/debug.c", i32 102, i32 2}
!126 = !{ptr @ubi_dump_vol_info._entry.86, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ubi_dump_vol_info._entry_ptr.88, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.90, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/ubi/debug.c", i32 103, i32 2}
!130 = !{ptr @ubi_dump_vol_info._entry.89, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ubi_dump_vol_info._entry_ptr.91, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.93, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/ubi/debug.c", i32 104, i32 2}
!134 = !{ptr @ubi_dump_vol_info._entry.92, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ubi_dump_vol_info._entry_ptr.94, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.96, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/ubi/debug.c", i32 105, i32 2}
!138 = !{ptr @ubi_dump_vol_info._entry.95, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ubi_dump_vol_info._entry_ptr.97, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.99, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/ubi/debug.c", i32 106, i32 2}
!142 = !{ptr @ubi_dump_vol_info._entry.98, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ubi_dump_vol_info._entry_ptr.100, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.102, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/ubi/debug.c", i32 107, i32 2}
!146 = !{ptr @ubi_dump_vol_info._entry.101, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ubi_dump_vol_info._entry_ptr.103, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.105, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/ubi/debug.c", i32 108, i32 2}
!150 = !{ptr @ubi_dump_vol_info._entry.104, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ubi_dump_vol_info._entry_ptr.106, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.108, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/ubi/debug.c", i32 109, i32 2}
!154 = !{ptr @ubi_dump_vol_info._entry.107, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ubi_dump_vol_info._entry_ptr.109, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.111, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/ubi/debug.c", i32 110, i32 2}
!158 = !{ptr @ubi_dump_vol_info._entry.110, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ubi_dump_vol_info._entry_ptr.112, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.114, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/debug.c", i32 114, i32 3}
!162 = !{ptr @ubi_dump_vol_info._entry.113, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ubi_dump_vol_info._entry_ptr.115, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.117, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/ubi/debug.c", i32 116, i32 3}
!166 = !{ptr @ubi_dump_vol_info._entry.116, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ubi_dump_vol_info._entry_ptr.118, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.119, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/ubi/debug.c", i32 131, i32 2}
!170 = !{ptr @.str.120, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ubi_dump_vtbl_record._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ubi_dump_vtbl_record._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @ubi_dump_vtbl_record._entry.121, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/mtd/ubi/debug.c", i32 132, i32 2}
!175 = !{ptr @ubi_dump_vtbl_record._entry_ptr.122, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @ubi_dump_vtbl_record._entry.123, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/mtd/ubi/debug.c", i32 133, i32 2}
!178 = !{ptr @ubi_dump_vtbl_record._entry_ptr.124, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @ubi_dump_vtbl_record._entry.125, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/mtd/ubi/debug.c", i32 134, i32 2}
!181 = !{ptr @ubi_dump_vtbl_record._entry_ptr.126, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @ubi_dump_vtbl_record._entry.127, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/debug.c", i32 135, i32 2}
!184 = !{ptr @ubi_dump_vtbl_record._entry_ptr.128, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @ubi_dump_vtbl_record._entry.129, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/mtd/ubi/debug.c", i32 136, i32 2}
!187 = !{ptr @ubi_dump_vtbl_record._entry_ptr.130, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @ubi_dump_vtbl_record._entry.131, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/mtd/ubi/debug.c", i32 137, i32 2}
!190 = !{ptr @ubi_dump_vtbl_record._entry_ptr.132, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.134, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/ubi/debug.c", i32 140, i32 3}
!193 = !{ptr @ubi_dump_vtbl_record._entry.133, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ubi_dump_vtbl_record._entry_ptr.135, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @ubi_dump_vtbl_record._entry.136, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/mtd/ubi/debug.c", i32 146, i32 3}
!197 = !{ptr @ubi_dump_vtbl_record._entry_ptr.137, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @ubi_dump_vtbl_record._entry.138, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/mtd/ubi/debug.c", i32 148, i32 3}
!200 = !{ptr @ubi_dump_vtbl_record._entry_ptr.139, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.141, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/ubi/debug.c", i32 152, i32 2}
!203 = !{ptr @ubi_dump_vtbl_record._entry.140, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @ubi_dump_vtbl_record._entry_ptr.142, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.143, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mtd/ubi/debug.c", i32 161, i32 2}
!207 = !{ptr @.str.144, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ubi_dump_av._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @ubi_dump_av._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.146, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/ubi/debug.c", i32 162, i32 2}
!212 = !{ptr @ubi_dump_av._entry.145, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ubi_dump_av._entry_ptr.147, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.149, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mtd/ubi/debug.c", i32 163, i32 2}
!216 = !{ptr @ubi_dump_av._entry.148, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @ubi_dump_av._entry_ptr.150, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.152, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/ubi/debug.c", i32 164, i32 2}
!220 = !{ptr @ubi_dump_av._entry.151, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @ubi_dump_av._entry_ptr.153, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.155, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/ubi/debug.c", i32 165, i32 2}
!224 = !{ptr @ubi_dump_av._entry.154, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ubi_dump_av._entry_ptr.156, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.158, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/ubi/debug.c", i32 166, i32 2}
!228 = !{ptr @ubi_dump_av._entry.157, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @ubi_dump_av._entry_ptr.159, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.161, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/ubi/debug.c", i32 167, i32 2}
!232 = !{ptr @ubi_dump_av._entry.160, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @ubi_dump_av._entry_ptr.162, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.164, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mtd/ubi/debug.c", i32 168, i32 2}
!236 = !{ptr @ubi_dump_av._entry.163, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @ubi_dump_av._entry_ptr.165, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.167, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mtd/ubi/debug.c", i32 169, i32 2}
!240 = !{ptr @ubi_dump_av._entry.166, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @ubi_dump_av._entry_ptr.168, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.169, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mtd/ubi/debug.c", i32 179, i32 2}
!244 = !{ptr @.str.170, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ubi_dump_aeb._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @ubi_dump_aeb._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.172, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mtd/ubi/debug.c", i32 180, i32 2}
!249 = !{ptr @ubi_dump_aeb._entry.171, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @ubi_dump_aeb._entry_ptr.173, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.175, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/ubi/debug.c", i32 181, i32 2}
!253 = !{ptr @ubi_dump_aeb._entry.174, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @ubi_dump_aeb._entry_ptr.176, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.178, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/ubi/debug.c", i32 183, i32 3}
!257 = !{ptr @ubi_dump_aeb._entry.177, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ubi_dump_aeb._entry_ptr.179, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.181, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mtd/ubi/debug.c", i32 184, i32 3}
!261 = !{ptr @ubi_dump_aeb._entry.180, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ubi_dump_aeb._entry_ptr.182, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.184, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/ubi/debug.c", i32 185, i32 3}
!265 = !{ptr @ubi_dump_aeb._entry.183, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ubi_dump_aeb._entry_ptr.185, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.186, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mtd/ubi/debug.c", i32 197, i32 2}
!269 = !{ptr @.str.187, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ubi_dump_mkvol_req._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ubi_dump_mkvol_req._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @ubi_dump_mkvol_req._entry.188, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/mtd/ubi/debug.c", i32 198, i32 2}
!274 = !{ptr @ubi_dump_mkvol_req._entry_ptr.189, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.191, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mtd/ubi/debug.c", i32 199, i32 2}
!277 = !{ptr @ubi_dump_mkvol_req._entry.190, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @ubi_dump_mkvol_req._entry_ptr.192, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.194, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mtd/ubi/debug.c", i32 200, i32 2}
!281 = !{ptr @ubi_dump_mkvol_req._entry.193, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @ubi_dump_mkvol_req._entry_ptr.195, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @ubi_dump_mkvol_req._entry.196, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/mtd/ubi/debug.c", i32 201, i32 2}
!285 = !{ptr @ubi_dump_mkvol_req._entry_ptr.197, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.199, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/mtd/ubi/debug.c", i32 202, i32 2}
!288 = !{ptr @ubi_dump_mkvol_req._entry.198, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @ubi_dump_mkvol_req._entry_ptr.200, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.202, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/mtd/ubi/debug.c", i32 206, i32 2}
!292 = !{ptr @ubi_dump_mkvol_req._entry.201, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @ubi_dump_mkvol_req._entry_ptr.203, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.204, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/mtd/ubi/debug.c", i32 226, i32 35}
!296 = !{ptr @.str.205, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/mtd/ubi/debug.c", i32 230, i32 3}
!298 = !{ptr @.str.206, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ubi_debugfs_init._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @ubi_debugfs_init._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.207, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mtd/ubi/debug.c", i32 512, i32 53}
!303 = !{ptr @.str.208, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mtd/ubi/debug.c", i32 521, i32 39}
!305 = !{ptr @.str.209, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mtd/ubi/debug.c", i32 524, i32 38}
!307 = !{ptr @.str.210, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mtd/ubi/debug.c", i32 527, i32 43}
!309 = !{ptr @.str.211, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mtd/ubi/debug.c", i32 531, i32 43}
!311 = !{ptr @.str.212, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mtd/ubi/debug.c", i32 535, i32 48}
!313 = !{ptr @.str.213, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mtd/ubi/debug.c", i32 540, i32 51}
!315 = !{ptr @.str.214, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/mtd/ubi/debug.c", i32 545, i32 49}
!317 = !{ptr @.str.215, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mtd/ubi/debug.c", i32 550, i32 45}
!319 = !{ptr @.str.216, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mtd/ubi/debug.c", i32 554, i32 45}
!321 = !{ptr @.str.217, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mtd/ubi/debug.c", i32 558, i32 22}
!323 = !{ptr @.str.218, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/mtd/ubi/debug.c", i32 602, i32 15}
!325 = !{ptr @dfs_rootdir, !326, !"dfs_rootdir", i1 false, i1 false}
!326 = !{!"../drivers/mtd/ubi/debug.c", i32 213, i32 23}
!327 = !{ptr @dfs_fops, !328, !"dfs_fops", i1 false, i1 false}
!328 = !{!"../drivers/mtd/ubi/debug.c", i32 381, i32 37}
!329 = !{ptr @.str.219, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/mtd/ubi/debug.c", i32 276, i32 30}
!331 = distinct !{null, !332, !"__already_done", i1 false, i1 false}
!332 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!333 = distinct !{null, !332, !"<string literal>", i1 false, i1 false}
!334 = distinct !{null, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!336 = !{ptr @.str.222, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!338 = !{ptr @eraseblk_count_fops, !339, !"eraseblk_count_fops", i1 false, i1 false}
!339 = !{!"../drivers/mtd/ubi/debug.c", i32 488, i32 37}
!340 = !{ptr @eraseblk_count_seq_ops, !341, !"eraseblk_count_seq_ops", i1 false, i1 false}
!341 = !{!"../drivers/mtd/ubi/debug.c", i32 453, i32 36}
!342 = !{ptr @.str.223, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/mtd/ubi/debug.c", i32 431, i32 15}
!344 = !{ptr @.str.224, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/mtd/ubi/debug.c", i32 448, i32 16}
!346 = !{ptr @.str.225, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/mtd/ubi/ubi.h", i32 1160, i32 17}
!348 = !{!"sp"}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{!"auto-init"}
!359 = !{i64 2152221529, i64 2152221554}
!360 = !{!"branch_weights", i32 2000, i32 1}
!361 = !{i64 4717084}
!362 = !{i64 4717281}
!363 = !{i64 2152202514}
