; ModuleID = '/llk/IR_all_yes/fs/nfs/blocklayout/dev.c_pt.bc'
source_filename = "../fs/nfs/blocklayout/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pnfs_block_dev = type { %struct.nfs4_deviceid_node, i64, i64, i32, ptr, i64, ptr, i64, i64, i8, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pnfs_device = type { %struct.nfs4_deviceid, i32, i32, i32, ptr, i32, i32, i8 }
%struct.pnfs_block_volume = type { i32, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { i32, i32, [4 x %struct.anon.170] }
%struct.anon.170 = type { i64, i32, [128 x i8] }
%struct.anon.173 = type { i64, i32, [64 x i32] }
%struct.anon.174 = type { i32, i32, i32, [256 x i8], i64 }
%struct.anon.171 = type { i64, i64, i32 }
%struct.anon.172 = type { i32, [64 x i32] }
%struct.pnfs_block_dev_map = type { i64, i64, i64, ptr }

@bl_free_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to unregister PR key.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bl_free_device\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/nfs/blocklayout/dev.c\00", [39 x i8] zeroinitializer }, align 32
@bl_free_device._entry_ptr = internal global ptr @bl_free_device._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_block_decode_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad signature count: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs4_block_decode_volume\00", [39 x i8] zeroinitializer }, align 32
@nfs4_block_decode_volume._entry_ptr = internal global ptr @nfs4_block_decode_volume._entry, section ".printk_index", align 4
@nfs4_block_decode_volume._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016signature too long: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nfs4_block_decode_volume._entry_ptr.8 = internal global ptr @nfs4_block_decode_volume._entry.6, section ".printk_index", align 4
@nfs4_block_decode_volume._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Too many volumes: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_block_decode_volume._entry_ptr.11 = internal global ptr @nfs4_block_decode_volume._entry.9, section ".printk_index", align 4
@nfs4_block_decode_volume._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_block_decode_volume._entry_ptr.13 = internal global ptr @nfs4_block_decode_volume._entry.12, section ".printk_index", align 4
@nfs4_block_decode_volume._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown volume type!\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_block_decode_volume._entry_ptr.16 = internal global ptr @nfs4_block_decode_volume._entry.14, section ".printk_index", align 4
@bl_parse_deviceid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported volume type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bl_parse_deviceid\00", [46 x i8] zeroinitializer }, align 32
@bl_parse_deviceid._entry_ptr = internal global ptr @bl_parse_deviceid._entry, section ".printk_index", align 4
@bl_parse_simple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014pNFS: failed to open device %d:%d (%ld)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bl_parse_simple\00", [16 x i8] zeroinitializer }, align 32
@bl_parse_simple._entry_ptr = internal global ptr @bl_parse_simple._entry, section ".printk_index", align 4
@bl_parse_simple._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016pNFS: using block device %s\0A\00", [33 x i8] zeroinitializer }, align 32
@bl_parse_simple._entry_ptr.23 = internal global ptr @bl_parse_simple._entry.21, section ".printk_index", align 4
@bl_map_concat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ran off loop!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bl_map_concat\00", [18 x i8] zeroinitializer }, align 32
@bl_map_concat._entry_ptr = internal global ptr @bl_map_concat._entry, section ".printk_index", align 4
@bl_map_stripe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: invalid chunk idx %d (%lld/%lld)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bl_map_stripe\00", [18 x i8] zeroinitializer }, align 32
@bl_map_stripe._entry_ptr = internal global ptr @bl_map_stripe._entry, section ".printk_index", align 4
@bl_parse_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pNFS: using block device %s (reservation key 0x%llx)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bl_parse_scsi\00", [18 x i8] zeroinitializer }, align 32
@bl_parse_scsi._entry_ptr = internal global ptr @bl_parse_scsi._entry, section ".printk_index", align 4
@bl_parse_scsi._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013pNFS: block device %s does not support reservations.\00", [41 x i8] zeroinitializer }, align 32
@bl_parse_scsi._entry_ptr.32 = internal global ptr @bl_parse_scsi._entry.30, section ".printk_index", align 4
@bl_parse_scsi._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pNFS: failed to register key for block device %s.\00", [44 x i8] zeroinitializer }, align 32
@bl_parse_scsi._entry_ptr.35 = internal global ptr @bl_parse_scsi._entry.33, section ".printk_index", align 4
@bl_validate_designator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013pNFS: unsupported designator (code set %d, type %d, len %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bl_validate_designator\00", [41 x i8] zeroinitializer }, align 32
@bl_validate_designator._entry_ptr = internal global ptr @bl_validate_designator._entry, section ".printk_index", align 4
@bl_validate_designator._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013pNFS: invalid designator (code set %d, type %d, len %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@bl_validate_designator._entry_ptr.40 = internal global ptr @bl_validate_designator._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"/dev/disk/by-id/dm-uuid-mpath-%d%*phN\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"/dev/disk/by-id/wwn-0x%*phN\00", [36 x i8] zeroinitializer }, align 32
@bl_open_udev_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014pNFS: failed to open device %s (%ld)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bl_open_udev_path\00", [46 x i8] zeroinitializer }, align 32
@bl_open_udev_path._entry_ptr = internal global ptr @bl_open_udev_path._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 16]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 34, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 70, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 82, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 112, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 130, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 159, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 490, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 248, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 258, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 192, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 208, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 374, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 379, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 387, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 288, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 295, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 340, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 314, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [28 x i8] c"../fs/nfs/blocklayout/dev.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 321, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @bl_free_device._entry, ptr @bl_free_device._entry_ptr, ptr @bl_map_concat._entry, ptr @bl_map_concat._entry_ptr, ptr @bl_map_stripe._entry, ptr @bl_map_stripe._entry_ptr, ptr @bl_open_udev_path._entry, ptr @bl_open_udev_path._entry_ptr, ptr @bl_parse_deviceid._entry, ptr @bl_parse_deviceid._entry_ptr, ptr @bl_parse_scsi._entry, ptr @bl_parse_scsi._entry.30, ptr @bl_parse_scsi._entry.33, ptr @bl_parse_scsi._entry_ptr, ptr @bl_parse_scsi._entry_ptr.32, ptr @bl_parse_scsi._entry_ptr.35, ptr @bl_parse_simple._entry, ptr @bl_parse_simple._entry.21, ptr @bl_parse_simple._entry_ptr, ptr @bl_parse_simple._entry_ptr.23, ptr @bl_validate_designator._entry, ptr @bl_validate_designator._entry.38, ptr @bl_validate_designator._entry_ptr, ptr @bl_validate_designator._entry_ptr.40, ptr @nfs4_block_decode_volume._entry, ptr @nfs4_block_decode_volume._entry.12, ptr @nfs4_block_decode_volume._entry.14, ptr @nfs4_block_decode_volume._entry.6, ptr @nfs4_block_decode_volume._entry.9, ptr @nfs4_block_decode_volume._entry_ptr, ptr @nfs4_block_decode_volume._entry_ptr.11, ptr @nfs4_block_decode_volume._entry_ptr.13, ptr @nfs4_block_decode_volume._entry_ptr.16, ptr @nfs4_block_decode_volume._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_free_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_block_decode_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_block_decode_volume._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_block_decode_volume._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_block_decode_volume._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_block_decode_volume._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_deviceid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_simple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_simple._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_map_concat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_map_stripe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_scsi._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_parse_scsi._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_validate_designator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_validate_designator._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_open_udev_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bl_free_deviceid_node(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bl_free_device(ptr noundef %d)
  %tobool.not = icmp eq ptr %d, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %d, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bl_free_device(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %nr_children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_children, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %nr_children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_children, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not = icmp eq i32 %3, 0
  br i1 %cmp27.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %children, align 4
  %arrayidx = getelementptr %struct.pnfs_block_dev, ptr %5, i32 %i.028
  tail call fastcc void @bl_free_device(ptr noundef %arrayidx)
  %inc = add nuw i32 %i.028, 1
  %6 = ptrtoint ptr %nr_children to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_children, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %children2 = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %children2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %children2, align 4
  tail call void @kfree(ptr noundef %9) #8
  br label %if.end15

if.else:                                          ; preds = %entry
  %pr_registered = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %pr_registered to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pr_registered, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.else.if.end9_crit_edge, label %if.then4

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.else
  %bdev = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pr_ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %pr_key = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %pr_key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pr_key, align 8
  %call = tail call i32 %21(ptr noundef %13, i64 noundef %23, i64 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %do.end

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then4.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %bdev10 = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 6
  %24 = ptrtoint ptr %bdev10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev10, align 8
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @blkdev_put(ptr noundef nonnull %25, i32 noundef 3) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bl_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  %xdr = alloca %struct.xdr_stream, align 4
  %buf = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xdr) #8
  %0 = call ptr @memset(ptr %xdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #8
  %1 = call ptr @memset(ptr %buf, i32 255, i32 44)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 4
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  %pglen = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %pglen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pglen, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %xdr, ptr noundef nonnull %buf, ptr noundef %3, i32 noundef %5) #8
  %call.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #8
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4
  %6 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call1 = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 4) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_free_scratch_crit_edge, label %if.end4

if.end.out_free_scratch_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_scratch

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1, align 4
  %or.i = or i32 %gfp_mask, 256
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 592) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end4.out_free_scratch_crit_edge, label %if.end7.i.i, !prof !94

if.end4.out_free_scratch_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_scratch

if.end7.i.i:                                      ; preds = %if.end4
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef %or.i) #12
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.out_free_scratch_crit_edge, label %for.cond.preheader

if.end7.i.i.out_free_scratch_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_scratch

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp60.not = icmp eq i32 %9, 0
  br i1 %cmp60.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i44 = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 4) #8
  %tobool.not.i = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i, label %for.body.out_free_volumes_crit_edge, label %if.end.i

for.body.out_free_volumes_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end.i:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061
  %13 = ptrtoint ptr %call.i44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i44, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 16
  %16 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.body197.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb67.i
    i32 2, label %sw.bb77.i
    i32 3, label %sw.bb122.i
    i32 4, label %sw.bb171.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %call3.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 4) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %sw.bb.i.out_free_volumes_crit_edge, label %if.end6.i

sw.bb.i.out_free_volumes_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end6.i:                                        ; preds = %sw.bb.i
  %17 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call3.i, align 4
  %19 = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1
  %nr_sigs.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %nr_sigs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %nr_sigs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i = icmp sgt i32 %18, 4
  %or.cond.i = or i1 %tobool10.not.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.end23.i

do.body.i:                                        ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body.i.out_free_volumes_crit_edge, label %do.end.i, !prof !95

do.body.i.out_free_volumes_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %18) #11
  br label %out_free_volumes

if.end23.i:                                       ; preds = %if.end6.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25323.i = icmp sgt i32 %18, 0
  br i1 %cmp25323.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.for.inc_crit_edge

if.end23.i.for.inc_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end55.i.for.body.i_crit_edge, %if.end23.i.for.body.i_crit_edge
  %i.0324.i = phi i32 [ %inc.i, %if.end55.i.for.body.i_crit_edge ], [ 0, %if.end23.i.for.body.i_crit_edge ]
  %call26.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 12) #8
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %for.body.i.out_free_volumes_crit_edge, label %if.end29.i

for.body.i.out_free_volumes_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end29.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2, i32 %i.0324.i
  %23 = ptrtoint ptr %call26.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %call26.i, align 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx.i, align 16
  %add.ptr.i.i = getelementptr i32, ptr %call26.i, i32 2
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %sig_len.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2, i32 %i.0324.i, i32 1
  %28 = ptrtoint ptr %sig_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sig_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %27)
  %cmp38.i = icmp ugt i32 %27, 128
  br i1 %cmp38.i, label %do.end42.i, label %if.end48.i

do.end42.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %27) #11
  br label %out_free_volumes

if.end48.i:                                       ; preds = %if.end29.i
  %call52.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef %27) #8
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.end48.i.out_free_volumes_crit_edge, label %if.end55.i

if.end48.i.out_free_volumes_crit_edge:            ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end55.i:                                       ; preds = %if.end48.i
  %sig.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2, i32 %i.0324.i, i32 2
  %29 = ptrtoint ptr %sig_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sig_len.i, align 8
  %31 = call ptr @memcpy(ptr %sig.i, ptr %call52.i, i32 %30)
  %32 = add i32 %30, 15
  %add64.i = and i32 %32, -4
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %19, align 8
  %add66.i = add i32 %34, %add64.i
  store i32 %add66.i, ptr %19, align 8
  %inc.i = add nuw nsw i32 %i.0324.i, 1
  %35 = ptrtoint ptr %nr_sigs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_sigs.i, align 4
  %cmp25.i = icmp slt i32 %inc.i, %36
  br i1 %cmp25.i, label %if.end55.i.for.body.i_crit_edge, label %if.end55.i.for.inc_crit_edge

if.end55.i.for.inc_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end55.i.for.body.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sw.bb67.i:                                        ; preds = %if.end.i
  %call68.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 20) #8
  %tobool69.not.i = icmp eq ptr %call68.i, null
  br i1 %tobool69.not.i, label %sw.bb67.i.out_free_volumes_crit_edge, label %if.end71.i

sw.bb67.i.out_free_volumes_crit_edge:             ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end71.i:                                       ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1
  %38 = ptrtoint ptr %call68.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %call68.i, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %37, align 8
  %add.ptr.i311.i = getelementptr i32, ptr %call68.i, i32 2
  %len73.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %add.ptr.i311.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %add.ptr.i311.i, align 1
  %43 = ptrtoint ptr %len73.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %len73.i, align 16
  %add.ptr.i312.i = getelementptr i32, ptr %call68.i, i32 4
  %44 = ptrtoint ptr %add.ptr.i312.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i312.i, align 4
  %volume.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %volume.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %volume.i, align 8
  br label %for.inc

sw.bb77.i:                                        ; preds = %if.end.i
  %call78.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 4) #8
  %tobool79.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool79.not.i, label %sw.bb77.i.out_free_volumes_crit_edge, label %if.end81.i

sw.bb77.i.out_free_volumes_crit_edge:             ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end81.i:                                       ; preds = %sw.bb77.i
  %47 = ptrtoint ptr %call78.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call78.i, align 4
  %49 = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %48)
  %cmp85.i = icmp ugt i32 %48, 64
  br i1 %cmp85.i, label %do.body87.i, label %if.end106.i

do.body87.i:                                      ; preds = %if.end81.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %51 = load i32, ptr @nfs_debug, align 4
  %and88.i = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %do.body87.i.out_free_volumes_crit_edge, label %do.end99.i, !prof !95

do.body87.i.out_free_volumes_crit_edge:           ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

do.end99.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %48) #11
  br label %out_free_volumes

if.end106.i:                                      ; preds = %if.end81.i
  %mul.i = shl nuw nsw i32 %48, 2
  %call108.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef %mul.i) #8
  %tobool109.not.i = icmp eq ptr %call108.i, null
  br i1 %tobool109.not.i, label %if.end106.i.out_free_volumes_crit_edge, label %for.cond112.preheader.i

if.end106.i.out_free_volumes_crit_edge:           ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

for.cond112.preheader.i:                          ; preds = %if.end106.i
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp114320.not.i = icmp eq i32 %53, 0
  br i1 %cmp114320.not.i, label %for.cond112.preheader.i.for.inc_crit_edge, label %for.body115.lr.ph.i

for.cond112.preheader.i.for.inc_crit_edge:        ; preds = %for.cond112.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body115.lr.ph.i:                              ; preds = %for.cond112.preheader.i
  %volumes.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 1
  br label %for.body115.i

for.body115.i:                                    ; preds = %for.body115.i.for.body115.i_crit_edge, %for.body115.lr.ph.i
  %p.0322.i = phi ptr [ %call108.i, %for.body115.lr.ph.i ], [ %incdec.ptr116.i, %for.body115.i.for.body115.i_crit_edge ]
  %i.1321.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %inc120.i, %for.body115.i.for.body115.i_crit_edge ]
  %incdec.ptr116.i = getelementptr i32, ptr %p.0322.i, i32 1
  %54 = ptrtoint ptr %p.0322.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p.0322.i, align 4
  %arrayidx118.i = getelementptr [64 x i32], ptr %volumes.i, i32 0, i32 %i.1321.i
  %56 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx118.i, align 4
  %inc120.i = add nuw i32 %i.1321.i, 1
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 8
  %cmp114.i = icmp ult i32 %inc120.i, %58
  br i1 %cmp114.i, label %for.body115.i.for.body115.i_crit_edge, label %for.body115.i.for.inc_crit_edge

for.body115.i.for.inc_crit_edge:                  ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body115.i.for.body115.i_crit_edge:            ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body115.i

sw.bb122.i:                                       ; preds = %if.end.i
  %call123.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 12) #8
  %tobool124.not.i = icmp eq ptr %call123.i, null
  br i1 %tobool124.not.i, label %sw.bb122.i.out_free_volumes_crit_edge, label %if.end126.i

sw.bb122.i.out_free_volumes_crit_edge:            ; preds = %sw.bb122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end126.i:                                      ; preds = %sw.bb122.i
  %59 = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1
  %60 = ptrtoint ptr %call123.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %call123.i, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %59, align 8
  %add.ptr.i313.i = getelementptr i32, ptr %call123.i, i32 2
  %63 = ptrtoint ptr %add.ptr.i313.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i313.i, align 4
  %volumes_count130.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %volumes_count130.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %volumes_count130.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %64)
  %cmp132.i = icmp ugt i32 %64, 64
  br i1 %cmp132.i, label %do.body134.i, label %if.end153.i

do.body134.i:                                     ; preds = %if.end126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %66 = load i32, ptr @nfs_debug, align 4
  %and135.i = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %do.body134.i.out_free_volumes_crit_edge, label %do.end146.i, !prof !95

do.body134.i.out_free_volumes_crit_edge:          ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

do.end146.i:                                      ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #10
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %64) #11
  br label %out_free_volumes

if.end153.i:                                      ; preds = %if.end126.i
  %mul155.i = shl nuw nsw i32 %64, 2
  %call156.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef %mul155.i) #8
  %tobool157.not.i = icmp eq ptr %call156.i, null
  br i1 %tobool157.not.i, label %if.end153.i.out_free_volumes_crit_edge, label %for.cond160.preheader.i

if.end153.i.out_free_volumes_crit_edge:           ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

for.cond160.preheader.i:                          ; preds = %if.end153.i
  %67 = ptrtoint ptr %volumes_count130.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %volumes_count130.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp162317.not.i = icmp eq i32 %68, 0
  br i1 %cmp162317.not.i, label %for.cond160.preheader.i.for.inc_crit_edge, label %for.cond160.preheader.i.for.body163.i_crit_edge

for.cond160.preheader.i.for.body163.i_crit_edge:  ; preds = %for.cond160.preheader.i
  br label %for.body163.i

for.cond160.preheader.i.for.inc_crit_edge:        ; preds = %for.cond160.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body163.i:                                    ; preds = %for.body163.i.for.body163.i_crit_edge, %for.cond160.preheader.i.for.body163.i_crit_edge
  %p.1319.i = phi ptr [ %incdec.ptr164.i, %for.body163.i.for.body163.i_crit_edge ], [ %call156.i, %for.cond160.preheader.i.for.body163.i_crit_edge ]
  %i.2318.i = phi i32 [ %inc169.i, %for.body163.i.for.body163.i_crit_edge ], [ 0, %for.cond160.preheader.i.for.body163.i_crit_edge ]
  %incdec.ptr164.i = getelementptr i32, ptr %p.1319.i, i32 1
  %69 = ptrtoint ptr %p.1319.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %p.1319.i, align 4
  %arrayidx167.i = getelementptr %struct.anon.173, ptr %59, i32 0, i32 2, i32 %i.2318.i
  %71 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx167.i, align 4
  %inc169.i = add nuw i32 %i.2318.i, 1
  %72 = ptrtoint ptr %volumes_count130.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %volumes_count130.i, align 16
  %cmp162.i = icmp ult i32 %inc169.i, %73
  br i1 %cmp162.i, label %for.body163.i.for.body163.i_crit_edge, label %for.body163.i.for.inc_crit_edge

for.body163.i.for.inc_crit_edge:                  ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body163.i.for.body163.i_crit_edge:            ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body163.i

sw.bb171.i:                                       ; preds = %if.end.i
  %call172.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 12) #8
  %tobool173.not.i = icmp eq ptr %call172.i, null
  br i1 %tobool173.not.i, label %sw.bb171.i.out_free_volumes_crit_edge, label %if.end175.i

sw.bb171.i.out_free_volumes_crit_edge:            ; preds = %sw.bb171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end175.i:                                      ; preds = %sw.bb171.i
  %incdec.ptr176.i = getelementptr i32, ptr %call172.i, i32 1
  %74 = ptrtoint ptr %call172.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %call172.i, align 4
  %76 = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %76, align 8
  %incdec.ptr178.i = getelementptr i32, ptr %call172.i, i32 2
  %78 = ptrtoint ptr %incdec.ptr176.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr176.i, align 4
  %designator_type.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %designator_type.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %designator_type.i, align 4
  %81 = ptrtoint ptr %incdec.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr178.i, align 4
  %designator_len.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2
  %83 = ptrtoint ptr %designator_len.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %designator_len.i, align 16
  %call183.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef %82) #8
  %tobool184.not.i = icmp eq ptr %call183.i, null
  br i1 %tobool184.not.i, label %if.end175.i.out_free_volumes_crit_edge, label %if.end186.i

if.end175.i.out_free_volumes_crit_edge:           ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end186.i:                                      ; preds = %if.end175.i
  %84 = ptrtoint ptr %designator_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %designator_len.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %85)
  %cmp188.i = icmp sgt i32 %85, 256
  br i1 %cmp188.i, label %if.end186.i.out_free_volumes_crit_edge, label %if.end190.i

if.end186.i.out_free_volumes_crit_edge:           ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end190.i:                                      ; preds = %if.end186.i
  %designator.i = getelementptr inbounds %struct.anon.174, ptr %76, i32 0, i32 3
  %86 = call ptr @memcpy(ptr %designator.i, ptr %call183.i, i32 %85)
  %call192.i = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 8) #8
  %tobool193.not.i = icmp eq ptr %call192.i, null
  br i1 %tobool193.not.i, label %if.end190.i.out_free_volumes_crit_edge, label %if.end195.i

if.end190.i.out_free_volumes_crit_edge:           ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end195.i:                                      ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #10
  %pr_key.i = getelementptr %struct.pnfs_block_volume, ptr %call8.i.i, i32 %i.061, i32 1, i32 0, i32 2, i32 1, i32 2, i32 108
  %87 = ptrtoint ptr %call192.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %call192.i, align 1
  %89 = ptrtoint ptr %pr_key.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %pr_key.i, align 8
  br label %for.inc

do.body197.i:                                     ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %90 = load i32, ptr @nfs_debug, align 4
  %and198.i = and i32 %90, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198.i)
  %tobool199.not.i = icmp eq i32 %and198.i, 0
  br i1 %tobool199.not.i, label %do.body197.i.out_free_volumes_crit_edge, label %do.end209.i, !prof !95

do.body197.i.out_free_volumes_crit_edge:          ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

do.end209.i:                                      ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #10
  %call211.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %out_free_volumes

for.inc:                                          ; preds = %if.end195.i, %for.body163.i.for.inc_crit_edge, %for.cond160.preheader.i.for.inc_crit_edge, %for.body115.i.for.inc_crit_edge, %for.cond112.preheader.i.for.inc_crit_edge, %if.end71.i, %if.end55.i.for.inc_crit_edge, %if.end23.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %for.end.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !95

for.end.kzalloc.exit_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %for.end
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %for.end.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %for.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %91 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef %or.i, i32 noundef 128) #13
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %kzalloc.exit.out_free_volumes_crit_edge, label %if.end17

kzalloc.exit.out_free_volumes_crit_edge:          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.end17:                                         ; preds = %kzalloc.exit
  %sub = add i32 %9, -1
  %call18 = call fastcc i32 @bl_parse_deviceid(ptr noundef %server, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call8.i.i, i32 noundef %sub, i32 noundef %gfp_mask)
  call void @nfs4_init_deviceid_node(ptr noundef nonnull %call7.i.i, ptr noundef %server, ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end17.out_free_volumes_crit_edge, label %if.then21

if.end17.out_free_volumes_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_volumes

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @nfs4_mark_deviceid_unavailable(ptr noundef nonnull %call7.i.i) #8
  br label %out_free_volumes

out_free_volumes:                                 ; preds = %if.then21, %if.end17.out_free_volumes_crit_edge, %kzalloc.exit.out_free_volumes_crit_edge, %do.end209.i, %do.body197.i.out_free_volumes_crit_edge, %if.end190.i.out_free_volumes_crit_edge, %if.end186.i.out_free_volumes_crit_edge, %if.end175.i.out_free_volumes_crit_edge, %sw.bb171.i.out_free_volumes_crit_edge, %if.end153.i.out_free_volumes_crit_edge, %do.end146.i, %do.body134.i.out_free_volumes_crit_edge, %sw.bb122.i.out_free_volumes_crit_edge, %if.end106.i.out_free_volumes_crit_edge, %do.end99.i, %do.body87.i.out_free_volumes_crit_edge, %sw.bb77.i.out_free_volumes_crit_edge, %sw.bb67.i.out_free_volumes_crit_edge, %if.end48.i.out_free_volumes_crit_edge, %do.end42.i, %for.body.i.out_free_volumes_crit_edge, %do.end.i, %do.body.i.out_free_volumes_crit_edge, %sw.bb.i.out_free_volumes_crit_edge, %for.body.out_free_volumes_crit_edge
  %node.0 = phi ptr [ %call7.i.i, %if.then21 ], [ %call7.i.i, %if.end17.out_free_volumes_crit_edge ], [ null, %kzalloc.exit.out_free_volumes_crit_edge ], [ null, %do.end42.i ], [ null, %do.end.i ], [ null, %do.body.i.out_free_volumes_crit_edge ], [ null, %do.end99.i ], [ null, %do.body87.i.out_free_volumes_crit_edge ], [ null, %do.end146.i ], [ null, %do.body134.i.out_free_volumes_crit_edge ], [ null, %do.end209.i ], [ null, %do.body197.i.out_free_volumes_crit_edge ], [ null, %for.body.i.out_free_volumes_crit_edge ], [ null, %if.end48.i.out_free_volumes_crit_edge ], [ null, %for.body.out_free_volumes_crit_edge ], [ null, %sw.bb.i.out_free_volumes_crit_edge ], [ null, %sw.bb67.i.out_free_volumes_crit_edge ], [ null, %sw.bb77.i.out_free_volumes_crit_edge ], [ null, %if.end106.i.out_free_volumes_crit_edge ], [ null, %sw.bb122.i.out_free_volumes_crit_edge ], [ null, %if.end153.i.out_free_volumes_crit_edge ], [ null, %sw.bb171.i.out_free_volumes_crit_edge ], [ null, %if.end175.i.out_free_volumes_crit_edge ], [ null, %if.end186.i.out_free_volumes_crit_edge ], [ null, %if.end190.i.out_free_volumes_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %out_free_scratch

out_free_scratch:                                 ; preds = %out_free_volumes, %if.end7.i.i.out_free_scratch_crit_edge, %if.end4.out_free_scratch_crit_edge, %if.end.out_free_scratch_crit_edge
  %node.1 = phi ptr [ %node.0, %out_free_volumes ], [ null, %if.end7.i.i.out_free_scratch_crit_edge ], [ null, %if.end.out_free_scratch_crit_edge ], [ null, %if.end4.out_free_scratch_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %out_free_scratch, %entry.out_crit_edge
  %node.2 = phi ptr [ %node.1, %out_free_scratch ], [ null, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xdr) #8
  ret ptr %node.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bl_parse_deviceid(ptr noundef %server, ptr nocapture noundef %d, ptr noundef %volumes, i32 noundef %idx, i32 noundef %gfp_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @bl_resolve_deviceid(ptr noundef %server, ptr noundef %arrayidx, i32 noundef %gfp_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call ptr @blkdev_get_by_dev(i32 noundef %call.i, i32 noundef 3, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %call.i, 20
  %and.i = and i32 %call.i, 1048575
  %3 = ptrtoint ptr %call1.i to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %shr.i, i32 noundef %and.i, i32 noundef %3) #11
  br label %return

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bdev8.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 6
  %4 = ptrtoint ptr %bdev8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %bdev8.i, align 8
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %call1.i, i32 0, i32 1
  %5 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %6, 9
  %len.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl.i.i, ptr %len.i, align 8
  %map.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 10
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bl_map_simple, ptr %map.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %call1.i, i32 0, i32 17
  %9 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_disk.i, align 8
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 3
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %disk_name.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %11 = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1
  %volume.i = getelementptr inbounds %struct.anon.171, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %volume.i, align 8
  %call.i40 = tail call fastcc i32 @bl_parse_deviceid(ptr noundef %server, ptr noundef %d, ptr noundef %volumes, i32 noundef %13, i32 noundef %gfp_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i43, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i43:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %11, align 8
  %disk_offset.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 7
  %16 = ptrtoint ptr %disk_offset.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %disk_offset.i, align 8
  %len.i42 = getelementptr inbounds %struct.anon.171, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %len.i42 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len.i42, align 8
  %len1.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %len1.i, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  %20 = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 128) #8
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kcalloc.exit.thread, label %if.end7.i.i82, !prof !94

kcalloc.exit.thread:                              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %children.i117 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 4
  %25 = ptrtoint ptr %children.i117 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %children.i117, align 4
  br label %return

if.end7.i.i82:                                    ; preds = %sw.bb3
  %26 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #12
  %children.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 4
  %27 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %children.i, align 4
  %tobool.not.i46 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i46, label %if.end7.i.i82.return_crit_edge, label %for.cond.i.preheader

if.end7.i.i82.return_crit_edge:                   ; preds = %if.end7.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.cond.i.preheader:                             ; preds = %if.end7.i.i82
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i128.not = icmp eq i32 %29, 0
  br i1 %cmp.i128.not, label %for.cond.i.preheader.for.end.i_crit_edge, label %for.body.i.lr.ph

for.cond.i.preheader.for.end.i_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.lr.ph:                                 ; preds = %for.cond.i.preheader
  %nr_children.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %i.0.i130 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc17.i, %if.end10.i.for.body.i_crit_edge ]
  %len.0.i129 = phi i64 [ 0, %for.body.i.lr.ph ], [ %add16.i, %if.end10.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %children.i, align 4
  %arrayidx4.i = getelementptr %struct.pnfs_block_dev, ptr %31, i32 %i.0.i130
  %arrayidx6.i = getelementptr %struct.anon.172, ptr %20, i32 0, i32 1, i32 %i.0.i130
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i, align 4
  %call7.i = tail call fastcc i32 @bl_parse_deviceid(ptr noundef %server, ptr noundef %arrayidx4.i, ptr noundef %volumes, i32 noundef %33, i32 noundef %gfp_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10.i:                                       ; preds = %for.body.i
  %34 = ptrtoint ptr %nr_children.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_children.i, align 8
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %nr_children.i, align 8
  %36 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %children.i, align 4
  %start.i = getelementptr %struct.pnfs_block_dev, ptr %37, i32 %i.0.i130, i32 1
  %38 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %start.i, align 8
  %add.i = add i64 %39, %len.0.i129
  store i64 %add.i, ptr %start.i, align 8
  %40 = load ptr, ptr %children.i, align 4
  %len15.i = getelementptr %struct.pnfs_block_dev, ptr %40, i32 %i.0.i130, i32 2
  %41 = ptrtoint ptr %len15.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %len15.i, align 8
  %add16.i = add i64 %42, %len.0.i129
  %inc17.i = add nuw i32 %i.0.i130, 1
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %20, align 8
  %cmp.i = icmp ult i32 %inc17.i, %44
  br i1 %cmp.i, label %if.end10.i.for.body.i_crit_edge, label %if.end10.i.for.end.i_crit_edge

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end10.i.for.end.i_crit_edge, %for.cond.i.preheader.for.end.i_crit_edge
  %len.0.i.lcssa = phi i64 [ 0, %for.cond.i.preheader.for.end.i_crit_edge ], [ %add16.i, %if.end10.i.for.end.i_crit_edge ]
  %len18.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 2
  %45 = ptrtoint ptr %len18.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %len.0.i.lcssa, ptr %len18.i, align 8
  %map.i47 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 10
  %46 = ptrtoint ptr %map.i47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bl_map_concat, ptr %map.i47, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %47 = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1
  %volumes_count.i = getelementptr inbounds %struct.anon.173, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %volumes_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %volumes_count.i, align 8
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 128) #8
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %kcalloc.exit115.thread, label %if.end7.i.i113, !prof !94

kcalloc.exit115.thread:                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %children.i50120 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 4
  %52 = ptrtoint ptr %children.i50120 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %children.i50120, align 4
  br label %return

if.end7.i.i113:                                   ; preds = %sw.bb5
  %53 = extractvalue { i32, i1 } %50, 0
  %call8.i.i112 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3520) #12
  %children.i50 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 4
  %54 = ptrtoint ptr %children.i50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i.i112, ptr %children.i50, align 4
  %tobool.not.i51 = icmp eq ptr %call8.i.i112, null
  br i1 %tobool.not.i51, label %if.end7.i.i113.return_crit_edge, label %for.cond.i55.preheader

if.end7.i.i113.return_crit_edge:                  ; preds = %if.end7.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.cond.i55.preheader:                           ; preds = %if.end7.i.i113
  %55 = ptrtoint ptr %volumes_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %volumes_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i54125.not = icmp eq i32 %56, 0
  br i1 %cmp.i54125.not, label %for.cond.i55.preheader.for.end.i67_crit_edge, label %for.body.i60.lr.ph

for.cond.i55.preheader.for.end.i67_crit_edge:     ; preds = %for.cond.i55.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i67

for.body.i60.lr.ph:                               ; preds = %for.cond.i55.preheader
  %nr_children.i61 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 3
  br label %for.body.i60

for.body.i60:                                     ; preds = %if.end10.i64.for.body.i60_crit_edge, %for.body.i60.lr.ph
  %i.0.i53127 = phi i32 [ 0, %for.body.i60.lr.ph ], [ %inc14.i, %if.end10.i64.for.body.i60_crit_edge ]
  %len.0.i52126 = phi i64 [ 0, %for.body.i60.lr.ph ], [ %add.i63, %if.end10.i64.for.body.i60_crit_edge ]
  %57 = ptrtoint ptr %children.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %children.i50, align 4
  %arrayidx4.i56 = getelementptr %struct.pnfs_block_dev, ptr %58, i32 %i.0.i53127
  %arrayidx6.i57 = getelementptr %struct.anon.173, ptr %47, i32 0, i32 2, i32 %i.0.i53127
  %59 = ptrtoint ptr %arrayidx6.i57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx6.i57, align 4
  %call7.i58 = tail call fastcc i32 @bl_parse_deviceid(ptr noundef %server, ptr noundef %arrayidx4.i56, ptr noundef %volumes, i32 noundef %60, i32 noundef %gfp_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i58)
  %tobool8.not.i59 = icmp eq i32 %call7.i58, 0
  br i1 %tobool8.not.i59, label %if.end10.i64, label %for.body.i60.return_crit_edge

for.body.i60.return_crit_edge:                    ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10.i64:                                     ; preds = %for.body.i60
  %61 = ptrtoint ptr %nr_children.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_children.i61, align 8
  %inc.i62 = add i32 %62, 1
  store i32 %inc.i62, ptr %nr_children.i61, align 8
  %63 = ptrtoint ptr %children.i50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %children.i50, align 4
  %len13.i = getelementptr %struct.pnfs_block_dev, ptr %64, i32 %i.0.i53127, i32 2
  %65 = ptrtoint ptr %len13.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %len13.i, align 8
  %add.i63 = add i64 %66, %len.0.i52126
  %inc14.i = add nuw i32 %i.0.i53127, 1
  %67 = ptrtoint ptr %volumes_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %volumes_count.i, align 8
  %cmp.i54 = icmp ult i32 %inc14.i, %68
  br i1 %cmp.i54, label %if.end10.i64.for.body.i60_crit_edge, label %if.end10.i64.for.end.i67_crit_edge

if.end10.i64.for.end.i67_crit_edge:               ; preds = %if.end10.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i67

if.end10.i64.for.body.i60_crit_edge:              ; preds = %if.end10.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i60

for.end.i67:                                      ; preds = %if.end10.i64.for.end.i67_crit_edge, %for.cond.i55.preheader.for.end.i67_crit_edge
  %len.0.i52.lcssa = phi i64 [ 0, %for.cond.i55.preheader.for.end.i67_crit_edge ], [ %add.i63, %if.end10.i64.for.end.i67_crit_edge ]
  %len15.i65 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 2
  %69 = ptrtoint ptr %len15.i65 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %len.0.i52.lcssa, ptr %len15.i65, align 8
  %70 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %47, align 8
  %chunk_size16.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 5
  %72 = ptrtoint ptr %chunk_size16.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %chunk_size16.i, align 8
  %map.i66 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 10
  %73 = ptrtoint ptr %map.i66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @bl_map_stripe, ptr %map.i66, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %74 = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1
  %designator_type.i.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %designator_type.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %designator_type.i.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %76, label %do.end26.i.i [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb9.i.i
    i32 1, label %sw.bb7.do.end.i.i_crit_edge
    i32 8, label %sw.bb7.do.end.i.i_crit_edge165
  ]

sw.bb7.do.end.i.i_crit_edge165:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

sw.bb7.do.end.i.i_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

sw.bb.i.i:                                        ; preds = %sw.bb7
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.not.i.i = icmp eq i32 %79, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.i.return_crit_edge

sw.bb.i.i.return_crit_edge:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i:                                       ; preds = %sw.bb.i.i
  %designator_len.i.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2
  %80 = ptrtoint ptr %designator_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %designator_len.i.i, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %81, label %if.end.i.i.return_crit_edge [
    i32 8, label %if.end.i.i.if.end.i69_crit_edge
    i32 10, label %if.end.i.i.if.end.i69_crit_edge166
    i32 16, label %if.end.i.i.if.end.i69_crit_edge167
  ]

if.end.i.i.if.end.i69_crit_edge167:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i69

if.end.i.i.if.end.i69_crit_edge166:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i69

if.end.i.i.if.end.i69_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i69

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb9.i.i:                                       ; preds = %sw.bb7
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp11.not.i.i = icmp eq i32 %84, 1
  br i1 %cmp11.not.i.i, label %bl_validate_designator.exit.i, label %sw.bb9.i.i.return_crit_edge

sw.bb9.i.i.return_crit_edge:                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.i.i:                                       ; preds = %sw.bb7.do.end.i.i_crit_edge, %sw.bb7.do.end.i.i_crit_edge165
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %74, align 8
  %designator_len24.i.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2
  %87 = ptrtoint ptr %designator_len24.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %designator_len24.i.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %86, i32 noundef %76, i32 noundef %88) #11
  br label %return

do.end26.i.i:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %74, align 8
  %designator_len30.i.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %designator_len30.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %designator_len30.i.i, align 8
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %90, i32 noundef %76, i32 noundef %92) #11
  br label %return

bl_validate_designator.exit.i:                    ; preds = %sw.bb9.i.i
  %designator_len14.i.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %designator_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %designator_len14.i.i, align 8
  %95 = add i32 %94, -8
  %switch.and.i.i = and i32 %95, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bl_validate_designator.exit.i.if.end.i69_crit_edge, label %bl_validate_designator.exit.i.return_crit_edge

bl_validate_designator.exit.i.return_crit_edge:   ; preds = %bl_validate_designator.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

bl_validate_designator.exit.i.if.end.i69_crit_edge: ; preds = %bl_validate_designator.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i69

if.end.i69:                                       ; preds = %bl_validate_designator.exit.i.if.end.i69_crit_edge, %if.end.i.i.if.end.i69_crit_edge, %if.end.i.i.if.end.i69_crit_edge166, %if.end.i.i.if.end.i69_crit_edge167
  %designator_len.i2.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2
  %96 = ptrtoint ptr %designator_len.i2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %designator_len.i2.i, align 8
  %designator.i.i = getelementptr inbounds %struct.anon.174, ptr %74, i32 0, i32 3
  %call.i3.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.41, i32 noundef %76, i32 noundef %97, ptr noundef %designator.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i.i, label %if.end.i69.if.then3.i_crit_edge, label %bl_open_dm_mpath_udev_path.exit.i

if.end.i69.if.then3.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

bl_open_dm_mpath_udev_path.exit.i:                ; preds = %if.end.i69
  %call2.i.i = tail call ptr @blkdev_get_by_path(ptr noundef nonnull %call.i3.i, i32 noundef 3, ptr noundef null) #8
  tail call void @kfree(ptr noundef nonnull %call.i3.i) #8
  %cmp.i.i70 = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %bl_open_dm_mpath_udev_path.exit.i.if.then3.i_crit_edge, label %bl_open_dm_mpath_udev_path.exit.i.if.end5.i_crit_edge

bl_open_dm_mpath_udev_path.exit.i.if.end5.i_crit_edge: ; preds = %bl_open_dm_mpath_udev_path.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

bl_open_dm_mpath_udev_path.exit.i.if.then3.i_crit_edge: ; preds = %bl_open_dm_mpath_udev_path.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %bl_open_dm_mpath_udev_path.exit.i.if.then3.i_crit_edge, %if.end.i69.if.then3.i_crit_edge
  %98 = ptrtoint ptr %designator_len.i2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %designator_len.i2.i, align 8
  %call.i8.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.42, i32 noundef %99, ptr noundef %designator.i.i) #8
  %tobool.not.i9.i = icmp eq ptr %call.i8.i, null
  br i1 %tobool.not.i9.i, label %if.then3.i.if.then7.i_crit_edge, label %if.end.i11.i

if.then3.i.if.then7.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.end.i11.i:                                     ; preds = %if.then3.i
  %call2.i10.i = tail call ptr @blkdev_get_by_path(ptr noundef nonnull %call.i8.i, i32 noundef 3, ptr noundef null) #8
  %cmp.i.i.i = icmp ugt ptr %call2.i10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i12.i, label %if.end.i11.i.if.end7.i.i_crit_edge

if.end.i11.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

do.end.i12.i:                                     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %call2.i10.i to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %call.i8.i, i32 noundef %100) #11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end.i12.i, %if.end.i11.i.if.end7.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i8.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end7.i.i, %bl_open_dm_mpath_udev_path.exit.i.if.end5.i_crit_edge
  %bdev.0.i = phi ptr [ %call2.i.i, %bl_open_dm_mpath_udev_path.exit.i.if.end5.i_crit_edge ], [ %call2.i10.i, %if.end7.i.i ]
  %cmp.i14.i = icmp ugt ptr %bdev.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14.i, label %if.end5.i.if.then7.i_crit_edge, label %if.end9.i

if.end5.i.if.then7.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i.if.then7.i_crit_edge, %if.then3.i.if.then7.i_crit_edge
  %bdev.022.i = phi ptr [ %bdev.0.i, %if.end5.i.if.then7.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.i.if.then7.i_crit_edge ]
  %101 = ptrtoint ptr %bdev.022.i to i32
  br label %return

if.end9.i:                                        ; preds = %if.end5.i
  %bdev10.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 6
  %102 = ptrtoint ptr %bdev10.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %bdev.0.i, ptr %bdev10.i, align 8
  %bd_nr_sectors.i.i.i71 = getelementptr inbounds %struct.block_device, ptr %bdev.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %bd_nr_sectors.i.i.i71 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %bd_nr_sectors.i.i.i71, align 8
  %shl.i.i72 = shl i64 %104, 9
  %len.i73 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 2
  %105 = ptrtoint ptr %len.i73 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %shl.i.i72, ptr %len.i73, align 8
  %map.i74 = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 10
  %106 = ptrtoint ptr %map.i74 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @bl_map_simple, ptr %map.i74, align 4
  %pr_key.i = getelementptr %struct.pnfs_block_volume, ptr %volumes, i32 %idx, i32 1, i32 0, i32 2, i32 1, i32 2, i32 108
  %107 = ptrtoint ptr %pr_key.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %pr_key.i, align 8
  %pr_key13.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 8
  %109 = ptrtoint ptr %pr_key13.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %pr_key13.i, align 8
  %bd_disk.i75 = getelementptr inbounds %struct.block_device, ptr %bdev.0.i, i32 0, i32 17
  %110 = ptrtoint ptr %bd_disk.i75 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bd_disk.i75, align 8
  %disk_name.i76 = getelementptr inbounds %struct.gendisk, ptr %111, i32 0, i32 3
  %call16.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %disk_name.i76, i64 noundef %108) #11
  %112 = ptrtoint ptr %bdev10.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bdev10.i, align 8
  %bd_disk18.i = getelementptr inbounds %struct.block_device, ptr %113, i32 0, i32 17
  %114 = ptrtoint ptr %bd_disk18.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bd_disk18.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fops.i, align 8
  %pr_ops.i = getelementptr inbounds %struct.block_device_operations, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %pr_ops.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pr_ops.i, align 4
  %tobool.not.i78 = icmp eq ptr %119, null
  br i1 %tobool.not.i78, label %if.end9.i.out_blkdev_put.i_crit_edge, label %if.end29.i

if.end9.i.out_blkdev_put.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_blkdev_put.i

if.end29.i:                                       ; preds = %if.end9.i
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %122 = ptrtoint ptr %pr_key13.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %pr_key13.i, align 8
  %call32.i = tail call i32 %121(ptr noundef %113, i64 noundef 0, i64 noundef %123, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end44.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %bdev10.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bdev10.i, align 8
  %bd_disk40.i = getelementptr inbounds %struct.block_device, ptr %125, i32 0, i32 17
  %126 = ptrtoint ptr %bd_disk40.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bd_disk40.i, align 8
  br label %out_blkdev_put.i

if.end44.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %pr_registered.i = getelementptr inbounds %struct.pnfs_block_dev, ptr %d, i32 0, i32 9
  %128 = ptrtoint ptr %pr_registered.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %pr_registered.i, align 8
  br label %return

out_blkdev_put.i:                                 ; preds = %do.end37.i, %if.end9.i.out_blkdev_put.i_crit_edge
  %.sink.i = phi ptr [ %127, %do.end37.i ], [ %115, %if.end9.i.out_blkdev_put.i_crit_edge ]
  %.str.34.sink.i = phi ptr [ @.str.34, %do.end37.i ], [ @.str.31, %if.end9.i.out_blkdev_put.i_crit_edge ]
  %error.0.i = phi i32 [ %call32.i, %do.end37.i ], [ -22, %if.end9.i.out_blkdev_put.i_crit_edge ]
  %disk_name41.i = getelementptr inbounds %struct.gendisk, ptr %.sink.i, i32 0, i32 3
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink.i, ptr noundef %disk_name41.i) #11
  %129 = ptrtoint ptr %bdev10.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bdev10.i, align 8
  tail call void @blkdev_put(ptr noundef %130, i32 noundef 3) #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %131 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %131, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end, !prof !95

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %out_blkdev_put.i, %if.end44.i, %if.then7.i, %bl_validate_designator.exit.i.return_crit_edge, %do.end26.i.i, %do.end.i.i, %sw.bb9.i.i.return_crit_edge, %if.end.i.i.return_crit_edge, %sw.bb.i.i.return_crit_edge, %for.end.i67, %for.body.i60.return_crit_edge, %if.end7.i.i113.return_crit_edge, %kcalloc.exit115.thread, %for.end.i, %for.body.i.return_crit_edge, %if.end7.i.i82.return_crit_edge, %kcalloc.exit.thread, %if.end.i43, %sw.bb1.return_crit_edge, %if.end7.i, %do.end.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.body.return_crit_edge ], [ -5, %do.end ], [ %3, %do.end.i ], [ 0, %if.end7.i ], [ -5, %sw.bb.return_crit_edge ], [ 0, %if.end.i43 ], [ %call.i40, %sw.bb1.return_crit_edge ], [ 0, %for.end.i ], [ -12, %if.end7.i.i82.return_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.end.i67 ], [ -12, %if.end7.i.i113.return_crit_edge ], [ -12, %kcalloc.exit115.thread ], [ %101, %if.then7.i ], [ %error.0.i, %out_blkdev_put.i ], [ 0, %if.end44.i ], [ -22, %bl_validate_designator.exit.i.return_crit_edge ], [ -22, %do.end26.i.i ], [ -22, %do.end.i.i ], [ -22, %sw.bb.i.i.return_crit_edge ], [ -22, %if.end.i.i.return_crit_edge ], [ -22, %sw.bb9.i.i.return_crit_edge ], [ %call7.i, %for.body.i.return_crit_edge ], [ %call7.i58, %for.body.i60.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_deviceid_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bl_resolve_deviceid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bl_map_simple(ptr nocapture noundef readonly %dev, i64 noundef %offset, ptr nocapture noundef writeonly %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start, align 8
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %map, align 8
  %len = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %len, align 8
  %len2 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %len2, align 8
  %disk_offset = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %disk_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %disk_offset, align 8
  %disk_offset3 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 2
  %8 = ptrtoint ptr %disk_offset3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %disk_offset3, align 8
  %bdev = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev, align 8
  %bdev4 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 3
  %11 = ptrtoint ptr %bdev4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bdev4, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bl_map_concat(ptr nocapture noundef readonly %dev, i64 noundef %offset, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %nr_children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_children, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp33 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %start = getelementptr %struct.pnfs_block_dev, ptr %3, i32 %i.031, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %offset)
  %cmp1 = icmp ugt i64 %5, %offset
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %len = getelementptr %struct.pnfs_block_dev, ptr %3, i32 %i.031, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp3.not = icmp ugt i64 %add, %offset
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le = getelementptr %struct.pnfs_block_dev, ptr %3, i32 %i.031
  %map4 = getelementptr %struct.pnfs_block_dev, ptr %3, i32 %i.031, i32 10
  %8 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map4, align 4
  %sub = sub i64 %offset, %5
  %call = tail call zeroext i1 %9(ptr noundef %arrayidx.le, i64 noundef %sub, ptr noundef %map) #8
  br label %cleanup14

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp ult i32 %inc, %1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.do.body_crit_edge ], [ %cmp, %for.inc.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup14_crit_edge, label %do.end, !prof !95

do.body.cleanup14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #11
  br label %cleanup14

cleanup14:                                        ; preds = %do.end, %do.body.cleanup14_crit_edge, %if.end
  %cmp26 = phi i1 [ %cmp.lcssa, %do.body.cleanup14_crit_edge ], [ %cmp.lcssa, %do.end ], [ %cmp33, %if.end ]
  ret i1 %cmp26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bl_map_stripe(ptr nocapture noundef readonly %dev, i64 noundef %offset, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_size = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %chunk_size, align 8
  %conv = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offset)
  %cmp164.i.i = icmp ult i64 %offset, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !95

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %offset to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %offset) #14, !srcloc !96
  %asmresult1.i.i.i = extractvalue { i64, i64 } %2, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %nr_children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %nr_children to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_children, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i)
  %cmp164.i = icmp ult i64 %dividend.addr.0.i.i, 4294967296
  br i1 %cmp164.i, label %div_u64_rem.exit.thread, label %if.else174.i, !prof !95

div_u64_rem.exit.thread:                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i = trunc i64 %dividend.addr.0.i.i to i32
  %rem170.i = urem i32 %conv169.i, %4
  br label %if.end12

if.else174.i:                                     ; preds = %div_u64.exit
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %dividend.addr.0.i.i) #14, !srcloc !96
  %asmresult.i261.i = extractvalue { i64, i64 } %5, 0
  %shr.i.i41 = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not = icmp ugt i32 %4, %conv.i.i
  br i1 %cmp.not, label %if.else174.i.if.end12_crit_edge, label %do.body

if.else174.i.if.end12_crit_edge:                  ; preds = %if.else174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.else174.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !95

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %conv.i.i, i64 noundef %offset, i64 noundef %1) #11
  br label %cleanup

if.end12:                                         ; preds = %if.else174.i.if.end12_crit_edge, %div_u64_rem.exit.thread
  %__rem.0.i159 = phi i32 [ %rem170.i, %div_u64_rem.exit.thread ], [ %conv.i.i, %if.else174.i.if.end12_crit_edge ]
  %mul = mul i64 %dividend.addr.0.i.i, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i146 = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i146, label %if.then168.i.i151, label %if.else174.i.i153, !prof !95

if.then168.i.i151:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i148 = trunc i64 %mul to i32
  %div172.i.i149 = udiv i32 %conv169.i.i148, %4
  %conv173.i.i150 = zext i32 %div172.i.i149 to i64
  br label %div_u64.exit155

if.else174.i.i153:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %mul) #14, !srcloc !96
  %asmresult1.i.i.i152 = extractvalue { i64, i64 } %7, 1
  br label %div_u64.exit155

div_u64.exit155:                                  ; preds = %if.else174.i.i153, %if.then168.i.i151
  %dividend.addr.0.i.i154 = phi i64 [ %conv173.i.i150, %if.then168.i.i151 ], [ %asmresult1.i.i.i152, %if.else174.i.i153 ]
  %children = getelementptr inbounds %struct.pnfs_block_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %children, align 4
  %arrayidx = getelementptr %struct.pnfs_block_dev, ptr %9, i32 %__rem.0.i159
  %map16 = getelementptr %struct.pnfs_block_dev, ptr %9, i32 %__rem.0.i159, i32 10
  %10 = ptrtoint ptr %map16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map16, align 4
  %call17 = tail call zeroext i1 %11(ptr noundef %arrayidx, i64 noundef %dividend.addr.0.i.i154, ptr noundef %map) #8
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %map, align 8
  %add = add i64 %13, %mul
  store i64 %add, ptr %map, align 8
  %disk_offset18 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 2
  %14 = ptrtoint ptr %disk_offset18 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %disk_offset18, align 8
  %add19 = add i64 %15, %dividend.addr.0.i.i154
  store i64 %add19, ptr %disk_offset18, align 8
  %16 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %chunk_size, align 8
  %len = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %len, align 8
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit155, %do.end, %do.body.cleanup_crit_edge
  %cmp.not160 = phi i1 [ false, %do.body.cleanup_crit_edge ], [ false, %do.end ], [ true, %div_u64.exit155 ]
  ret i1 %cmp.not160
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/blocklayout/dev.c", i32 34, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bl_free_device._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bl_free_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/blocklayout/dev.c", i32 70, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfs4_block_decode_volume._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs4_block_decode_volume._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfs/blocklayout/dev.c", i32 82, i32 5}
!15 = !{ptr @nfs4_block_decode_volume._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfs4_block_decode_volume._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/blocklayout/dev.c", i32 112, i32 4}
!19 = !{ptr @nfs4_block_decode_volume._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfs4_block_decode_volume._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @nfs4_block_decode_volume._entry.12, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../fs/nfs/blocklayout/dev.c", i32 130, i32 4}
!23 = !{ptr @nfs4_block_decode_volume._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/blocklayout/dev.c", i32 159, i32 3}
!26 = !{ptr @nfs4_block_decode_volume._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfs4_block_decode_volume._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfs/blocklayout/dev.c", i32 490, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bl_parse_deviceid._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @bl_parse_deviceid._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/blocklayout/dev.c", i32 248, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bl_parse_simple._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @bl_parse_simple._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/blocklayout/dev.c", i32 258, i32 2}
!40 = !{ptr @bl_parse_simple._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bl_parse_simple._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/blocklayout/dev.c", i32 192, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bl_map_concat._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bl_map_concat._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/blocklayout/dev.c", i32 208, i32 3}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bl_map_stripe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bl_map_stripe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfs/blocklayout/dev.c", i32 374, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bl_parse_scsi._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bl_parse_scsi._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/blocklayout/dev.c", i32 379, i32 3}
!59 = !{ptr @bl_parse_scsi._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bl_parse_scsi._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfs/blocklayout/dev.c", i32 387, i32 3}
!63 = !{ptr @bl_parse_scsi._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bl_parse_scsi._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfs/blocklayout/dev.c", i32 288, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bl_validate_designator._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bl_validate_designator._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nfs/blocklayout/dev.c", i32 295, i32 3}
!72 = !{ptr @bl_validate_designator._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bl_validate_designator._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nfs/blocklayout/dev.c", i32 340, i32 4}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/nfs/blocklayout/dev.c", i32 314, i32 34}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nfs/blocklayout/dev.c", i32 321, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @bl_open_udev_path._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @bl_open_udev_path._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2148689755, i64 2148690035, i64 2148690369, i64 2148690703}
