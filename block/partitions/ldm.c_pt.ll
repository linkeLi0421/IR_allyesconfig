; ModuleID = '/llk/IR_all_yes/block/partitions/ldm.c_pt.bc'
source_filename = "../block/partitions/ldm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.privhead = type { i16, i16, i64, i64, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.ldmdb = type { %struct.privhead, %struct.tocblock, %struct.vmdb, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.tocblock = type { [16 x i8], i64, i64, [16 x i8], i64, i64 }
%struct.vmdb = type { i16, i16, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.Sector = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.frag = type { %struct.list_head, i32, i8, i8, i8, [0 x i8] }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.vblk = type { [64 x i8], i64, i32, i8, i8, %union.anon.89, %struct.list_head }
%union.anon.89 = type { %struct.vblk_volu, [72 x i8] }
%struct.vblk_volu = type { [16 x i8], [16 x i8], [16 x i8], [4 x i8], i64, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@__func__.ldm_partition = private unnamed_addr constant [14 x i8] c"ldm_partition\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory.\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to read the VBLKs from the database.\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Parsed LDM database successfully.\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__func__.ldm_validate_partition_table = private unnamed_addr constant [29 x i8] c"ldm_validate_partition_table\00", align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disk read failed.\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Found W2K dynamic disk partition type.\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_ldm_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s%s(): %pV\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_ldm_printk\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/partitions/ldm.c\00", [41 x i8] zeroinitializer }, align 32
@_ldm_printk._entry_ptr = internal global ptr @_ldm_printk._entry, section ".printk_index", align 4
@ldm_validate_privheads.off = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 1856, i32 2047], [20 x i8] zeroinitializer }, align 32
@__func__.ldm_validate_privheads = private unnamed_addr constant [23 x i8] c"ldm_validate_privheads\00", align 1
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot find PRIVHEAD %d.\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Database extends beyond the end of the disk.\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disk and database overlap.\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Primary and backup PRIVHEADs don't match.\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Validated PRIVHEADs successfully.\00", [62 x i8] zeroinitializer }, align 32
@__func__.ldm_parse_privhead = private unnamed_addr constant [19 x i8] c"ldm_parse_privhead\00", align 1
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Cannot find PRIVHEAD structure. LDM database is corrupt. Aborting.\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Expected PRIVHEAD version 2.11 or 2.12, got %d.%d. Aborting.\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PRIVHEAD version %d.%d (Windows %s).\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vista\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2000/XP\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Database is normally %u bytes, it claims to be %llu bytes.\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PRIVHEAD disk size doesn't match real disk size\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PRIVHEAD contains an invalid GUID.\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Parsed PRIVHEAD successfully.\00", [34 x i8] zeroinitializer }, align 32
@ldm_validate_tocblocks.off = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 2045, i32 2046], [16 x i8] zeroinitializer }, align 32
@__func__.ldm_validate_tocblocks = private unnamed_addr constant [23 x i8] c"ldm_validate_tocblocks\00", align 1
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disk read failed for TOCBLOCK %d.\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to find a valid TOCBLOCK.\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"The bitmaps are out of range.  Giving up.\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TOCBLOCKs 0 and %d do not match.\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Validated %d TOCBLOCKs successfully.\00", [59 x i8] zeroinitializer }, align 32
@__func__.ldm_parse_tocblock = private unnamed_addr constant [19 x i8] c"ldm_parse_tocblock\00", align 1
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Cannot find TOCBLOCK, database may be corrupt.\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TOCBLOCK's first bitmap is '%s', should be '%s'.\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"TOCBLOCK's second bitmap is '%s', should be '%s'.\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Parsed TOCBLOCK successfully.\00", [34 x i8] zeroinitializer }, align 32
@__func__.ldm_validate_vmdb = private unnamed_addr constant [18 x i8] c"ldm_validate_vmdb\00", align 1
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Database is not in a consistent state.  Aborting.\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VBLKs start at offset 0x%04x.\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"VMDB exceeds allowed size specified by TOCBLOCK.  Database is corrupt.  Aborting.\00", [46 x i8] zeroinitializer }, align 32
@__func__.ldm_parse_vmdb = private unnamed_addr constant [15 x i8] c"ldm_parse_vmdb\00", align 1
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Cannot find the VMDB, database may be corrupt.\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Expected VMDB version %d.%d, got %d.%d. Aborting.\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Illegal VBLK size\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Parsed VMDB successfully.\00", [38 x i8] zeroinitializer }, align 32
@__func__.ldm_get_vblks = private unnamed_addr constant [14 x i8] c"ldm_get_vblks\00", align 1
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Expected to find a VBLK.\00", [39 x i8] zeroinitializer }, align 32
@__func__.ldm_ldmdb_add = private unnamed_addr constant [14 x i8] c"ldm_ldmdb_add\00", align 1
@__func__.ldm_parse_vblk = private unnamed_addr constant [15 x i8] c"ldm_parse_vblk\00", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VBLK header is corrupt.\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Parsed VBLK 0x%llx (type: 0x%02x) ok.\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to parse VBLK 0x%llx (type: 0x%02x).\00", [52 x i8] zeroinitializer }, align 32
@__func__.ldm_relative = private unnamed_addr constant [13 x i8] c"ldm_relative\00", align 1
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"!buffer\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"offset (%d) < 0\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"base (%d) > buflen (%d)\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"base (%d) + buffer[base] (%d) >= buflen (%d)\00", [51 x i8] zeroinitializer }, align 32
@__func__.ldm_get_vnum = private unnamed_addr constant [13 x i8] c"ldm_get_vnum\00", align 1
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Illegal length %d.\00", [45 x i8] zeroinitializer }, align 32
@__func__.ldm_get_vstr = private unnamed_addr constant [13 x i8] c"ldm_get_vstr\00", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Truncating string %d -> %d.\00", [36 x i8] zeroinitializer }, align 32
@__func__.ldm_parse_prt3 = private unnamed_addr constant [15 x i8] c"ldm_parse_prt3\00", align 1
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_objid %d < 0\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r_name %d < 0\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r_size %d < 0\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r_parent %d < 0\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r_diskid %d < 0\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_index %d < 0\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"len %d > BE32(buffer + 0x14) %d\00", [32 x i8] zeroinitializer }, align 32
@__func__.ldm_parse_vol5 = private unnamed_addr constant [15 x i8] c"ldm_parse_vol5\00", align 1
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_vtype %d < 0\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"r_disable_drive_letter %d < 0\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_child %d < 0\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r_id1 %d < 0\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r_id2 %d < 0\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_size2 %d < 0\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r_drive %d < 0\00", [17 x i8] zeroinitializer }, align 32
@__func__.ldm_frag_add = private unnamed_addr constant [13 x i8] c"ldm_frag_add\00", align 1
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Value of size is too small.\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"A VBLK claims to have %d parts.\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"REC value (%d) exceeds NUM value (%d)\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Duplicate VBLK, part %d.\00", [39 x i8] zeroinitializer }, align 32
@__func__.ldm_frag_commit = private unnamed_addr constant [16 x i8] c"ldm_frag_commit\00", align 1
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VBLK group %d is incomplete (0x%02x).\00", [58 x i8] zeroinitializer }, align 32
@__func__.ldm_create_data_partitions = private unnamed_addr constant [27 x i8] c"ldm_create_data_partitions\00", align 1
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can't find the ID of this disk in the database.\00", [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [LDM]\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 11, i64 12]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [9 x i64] [i64 7, i64 8, i64 50, i64 51, i64 52, i64 53, i64 68, i64 69, i64 81]
@__sancov_gen_cov_switch_values.81 = internal global [9 x i64] [i64 7, i64 8, i64 50, i64 51, i64 52, i64 53, i64 68, i64 69, i64 81]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1454, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1478, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1484, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 504, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 519, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 717, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 51, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 268, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 299, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 311, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 318, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 323, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 331, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 73, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 87, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 91, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 95, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 101, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 105, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 108, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 356, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 383, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 391, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 398, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 404, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 408, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 131, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 139, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 141, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 149, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 151, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 155, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 452, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 457, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 464, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 177, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 184, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 191, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 198, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1377, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1122, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1142, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1145, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 627, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 629, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 631, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 635, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 670, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 700, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 936, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 941, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 946, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 951, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 956, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 962, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 976, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1023, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1028, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1034, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1045, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1053, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1061, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1069, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1236, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1244, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1248, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1276, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1329, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 583, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 587, i32 22 }
@___asan_gen_.320 = private constant [26 x i8] c"../block/partitions/ldm.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 602, i32 22 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 45, i32 30 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @_ldm_printk._entry, ptr @_ldm_printk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ldm_validate_privheads.off, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ldm_validate_tocblocks.off, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ldm_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldm_validate_privheads.off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldm_validate_tocblocks.off to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldm_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !190

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !191
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call fastcc zeroext i1 @ldm_validate_partition_table(ptr noundef nonnull %state)
  br i1 %call, label %if.end11, label %do.end9.cleanup35_crit_edge

do.end9.cleanup35_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup35

if.end11:                                         ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 176) #16
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_partition, ptr noundef nonnull @.str.1)
  br label %out

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc zeroext i1 @ldm_validate_privheads(ptr noundef nonnull %state, ptr noundef nonnull %call7.i)
  br i1 %call16, label %if.end18, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end18:                                         ; preds = %if.end15
  %config_start = getelementptr inbounds %struct.privhead, ptr %call7.i, i32 0, i32 4
  %1 = ptrtoint ptr %config_start to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %config_start, align 8
  %conv = trunc i64 %2 to i32
  %call20 = tail call fastcc zeroext i1 @ldm_validate_tocblocks(ptr noundef nonnull %state, i32 noundef %conv, ptr noundef nonnull %call7.i)
  br i1 %call20, label %lor.lhs.false, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.end18
  %call21 = tail call fastcc zeroext i1 @ldm_validate_vmdb(ptr noundef nonnull %state, i32 noundef %conv, ptr noundef nonnull %call7.i)
  br i1 %call21, label %if.end23, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end23:                                         ; preds = %lor.lhs.false
  %v_dgrp = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %v_dgrp to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %v_dgrp, ptr %v_dgrp, align 8
  %prev.i = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v_dgrp, ptr %prev.i, align 4
  %v_disk = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %v_disk to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %v_disk, ptr %v_disk, align 8
  %prev.i63 = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v_disk, ptr %prev.i63, align 4
  %v_volu = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %v_volu to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %v_volu, ptr %v_volu, align 8
  %prev.i64 = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v_volu, ptr %prev.i64, align 4
  %v_comp = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 6
  %9 = ptrtoint ptr %v_comp to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %v_comp, ptr %v_comp, align 8
  %prev.i65 = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %v_comp, ptr %prev.i65, align 4
  %v_part = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 7
  %11 = ptrtoint ptr %v_part to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %v_part, ptr %v_part, align 8
  %prev.i66 = getelementptr inbounds %struct.ldmdb, ptr %call7.i, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %v_part, ptr %prev.i66, align 4
  %call24 = tail call fastcc zeroext i1 @ldm_get_vblks(ptr noundef nonnull %state, i32 noundef %conv, ptr noundef nonnull %call7.i)
  br i1 %call24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_partition, ptr noundef nonnull @.str.2)
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %call27 = tail call fastcc zeroext i1 @ldm_create_data_partitions(ptr noundef nonnull %state, ptr noundef nonnull %call7.i)
  br i1 %call27, label %if.then28, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_partition, ptr noundef nonnull @.str.4)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.then25
  %result.0 = phi i32 [ 1, %if.then28 ], [ -1, %if.end26.cleanup_crit_edge ], [ -1, %if.then25 ]
  %tobool.not.i = icmp eq ptr %v_dgrp, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !190

do.body4.i:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end9.i:                                        ; preds = %cleanup
  %13 = ptrtoint ptr %v_dgrp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v_dgrp, align 8
  %cmp.i.not21.i = icmp eq ptr %14, %v_dgrp
  br i1 %cmp.i.not21.i, label %do.end9.i.ldm_free_vblks.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.ldm_free_vblks.exit_crit_edge:          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %item.022.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %14, %do.end9.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0.i = load ptr, ptr %item.022.i, align 4
  %add.ptr.i = getelementptr i8, ptr %item.022.i, i32 -224
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %v_dgrp
  br i1 %cmp.i.not.i, label %for.body.i.ldm_free_vblks.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.ldm_free_vblks.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit

ldm_free_vblks.exit:                              ; preds = %for.body.i.ldm_free_vblks.exit_crit_edge, %do.end9.i.ldm_free_vblks.exit_crit_edge
  %tobool.not.i67 = icmp eq ptr %v_disk, null
  br i1 %tobool.not.i67, label %do.body4.i68, label %do.end9.i70, !prof !190

do.body4.i68:                                     ; preds = %ldm_free_vblks.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end9.i70:                                      ; preds = %ldm_free_vblks.exit
  %16 = ptrtoint ptr %v_disk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v_disk, align 8
  %cmp.i.not21.i69 = icmp eq ptr %17, %v_disk
  br i1 %cmp.i.not21.i69, label %do.end9.i70.ldm_free_vblks.exit76_crit_edge, label %do.end9.i70.for.body.i75_crit_edge

do.end9.i70.for.body.i75_crit_edge:               ; preds = %do.end9.i70
  br label %for.body.i75

do.end9.i70.ldm_free_vblks.exit76_crit_edge:      ; preds = %do.end9.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit76

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %do.end9.i70.for.body.i75_crit_edge
  %item.022.i71 = phi ptr [ %tmp.0.i72, %for.body.i75.for.body.i75_crit_edge ], [ %17, %do.end9.i70.for.body.i75_crit_edge ]
  %18 = ptrtoint ptr %item.022.i71 to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.0.i72 = load ptr, ptr %item.022.i71, align 4
  %add.ptr.i73 = getelementptr i8, ptr %item.022.i71, i32 -224
  tail call void @kfree(ptr noundef %add.ptr.i73) #13
  %cmp.i.not.i74 = icmp eq ptr %tmp.0.i72, %v_disk
  br i1 %cmp.i.not.i74, label %for.body.i75.ldm_free_vblks.exit76_crit_edge, label %for.body.i75.for.body.i75_crit_edge

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i75

for.body.i75.ldm_free_vblks.exit76_crit_edge:     ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit76

ldm_free_vblks.exit76:                            ; preds = %for.body.i75.ldm_free_vblks.exit76_crit_edge, %do.end9.i70.ldm_free_vblks.exit76_crit_edge
  %tobool.not.i77 = icmp eq ptr %v_volu, null
  br i1 %tobool.not.i77, label %do.body4.i78, label %do.end9.i80, !prof !190

do.body4.i78:                                     ; preds = %ldm_free_vblks.exit76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end9.i80:                                      ; preds = %ldm_free_vblks.exit76
  %19 = ptrtoint ptr %v_volu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %v_volu, align 8
  %cmp.i.not21.i79 = icmp eq ptr %20, %v_volu
  br i1 %cmp.i.not21.i79, label %do.end9.i80.ldm_free_vblks.exit86_crit_edge, label %do.end9.i80.for.body.i85_crit_edge

do.end9.i80.for.body.i85_crit_edge:               ; preds = %do.end9.i80
  br label %for.body.i85

do.end9.i80.ldm_free_vblks.exit86_crit_edge:      ; preds = %do.end9.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit86

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %do.end9.i80.for.body.i85_crit_edge
  %item.022.i81 = phi ptr [ %tmp.0.i82, %for.body.i85.for.body.i85_crit_edge ], [ %20, %do.end9.i80.for.body.i85_crit_edge ]
  %21 = ptrtoint ptr %item.022.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0.i82 = load ptr, ptr %item.022.i81, align 4
  %add.ptr.i83 = getelementptr i8, ptr %item.022.i81, i32 -224
  tail call void @kfree(ptr noundef %add.ptr.i83) #13
  %cmp.i.not.i84 = icmp eq ptr %tmp.0.i82, %v_volu
  br i1 %cmp.i.not.i84, label %for.body.i85.ldm_free_vblks.exit86_crit_edge, label %for.body.i85.for.body.i85_crit_edge

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i85

for.body.i85.ldm_free_vblks.exit86_crit_edge:     ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit86

ldm_free_vblks.exit86:                            ; preds = %for.body.i85.ldm_free_vblks.exit86_crit_edge, %do.end9.i80.ldm_free_vblks.exit86_crit_edge
  %tobool.not.i87 = icmp eq ptr %v_comp, null
  br i1 %tobool.not.i87, label %do.body4.i88, label %do.end9.i90, !prof !190

do.body4.i88:                                     ; preds = %ldm_free_vblks.exit86
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end9.i90:                                      ; preds = %ldm_free_vblks.exit86
  %22 = ptrtoint ptr %v_comp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v_comp, align 8
  %cmp.i.not21.i89 = icmp eq ptr %23, %v_comp
  br i1 %cmp.i.not21.i89, label %do.end9.i90.ldm_free_vblks.exit96_crit_edge, label %do.end9.i90.for.body.i95_crit_edge

do.end9.i90.for.body.i95_crit_edge:               ; preds = %do.end9.i90
  br label %for.body.i95

do.end9.i90.ldm_free_vblks.exit96_crit_edge:      ; preds = %do.end9.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit96

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %do.end9.i90.for.body.i95_crit_edge
  %item.022.i91 = phi ptr [ %tmp.0.i92, %for.body.i95.for.body.i95_crit_edge ], [ %23, %do.end9.i90.for.body.i95_crit_edge ]
  %24 = ptrtoint ptr %item.022.i91 to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.0.i92 = load ptr, ptr %item.022.i91, align 4
  %add.ptr.i93 = getelementptr i8, ptr %item.022.i91, i32 -224
  tail call void @kfree(ptr noundef %add.ptr.i93) #13
  %cmp.i.not.i94 = icmp eq ptr %tmp.0.i92, %v_comp
  br i1 %cmp.i.not.i94, label %for.body.i95.ldm_free_vblks.exit96_crit_edge, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i95

for.body.i95.ldm_free_vblks.exit96_crit_edge:     ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_free_vblks.exit96

ldm_free_vblks.exit96:                            ; preds = %for.body.i95.ldm_free_vblks.exit96_crit_edge, %do.end9.i90.ldm_free_vblks.exit96_crit_edge
  %tobool.not.i97 = icmp eq ptr %v_part, null
  br i1 %tobool.not.i97, label %do.body4.i98, label %do.end9.i100, !prof !190

do.body4.i98:                                     ; preds = %ldm_free_vblks.exit96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end9.i100:                                     ; preds = %ldm_free_vblks.exit96
  %25 = ptrtoint ptr %v_part to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v_part, align 8
  %cmp.i.not21.i99 = icmp eq ptr %26, %v_part
  br i1 %cmp.i.not21.i99, label %do.end9.i100.out_crit_edge, label %do.end9.i100.for.body.i105_crit_edge

do.end9.i100.for.body.i105_crit_edge:             ; preds = %do.end9.i100
  br label %for.body.i105

do.end9.i100.out_crit_edge:                       ; preds = %do.end9.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.i105:                                    ; preds = %for.body.i105.for.body.i105_crit_edge, %do.end9.i100.for.body.i105_crit_edge
  %item.022.i101 = phi ptr [ %tmp.0.i102, %for.body.i105.for.body.i105_crit_edge ], [ %26, %do.end9.i100.for.body.i105_crit_edge ]
  %27 = ptrtoint ptr %item.022.i101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.0.i102 = load ptr, ptr %item.022.i101, align 4
  %add.ptr.i103 = getelementptr i8, ptr %item.022.i101, i32 -224
  tail call void @kfree(ptr noundef %add.ptr.i103) #13
  %cmp.i.not.i104 = icmp eq ptr %tmp.0.i102, %v_part
  br i1 %cmp.i.not.i104, label %for.body.i105.out_crit_edge, label %for.body.i105.for.body.i105_crit_edge

for.body.i105.for.body.i105_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i105

for.body.i105.out_crit_edge:                      ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.body.i105.out_crit_edge, %do.end9.i100.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end18.out_crit_edge, %if.end15.out_crit_edge, %if.then14
  %result.1 = phi i32 [ -1, %lor.lhs.false.out_crit_edge ], [ -1, %if.end18.out_crit_edge ], [ -1, %if.end15.out_crit_edge ], [ -1, %if.then14 ], [ %result.0, %do.end9.i100.out_crit_edge ], [ %result.0, %for.body.i105.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #13
  br label %cleanup35

cleanup35:                                        ; preds = %out, %do.end9.cleanup35_crit_edge
  %retval.0 = phi i32 [ %result.1, %out ], [ 0, %do.end9.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_validate_partition_table(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #13
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !193
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !190

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 500, 0\0A.popsection", ""() #13, !srcloc !194
  unreachable

do.end9:                                          ; preds = %entry
  %call = call ptr @read_part_sector(ptr noundef nonnull %state, i64 noundef 0, ptr noundef nonnull %sect) #13
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ldm_validate_partition_table, ptr noundef nonnull @.str.6)
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %add.ptr = getelementptr i8, ptr %call, i32 510
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %2)
  %cmp.not = icmp eq i16 %2, 21930
  br i1 %cmp.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %if.end12
  %sys_ind = getelementptr i8, ptr %call, i32 450
  %3 = ptrtoint ptr %sys_ind to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sys_ind, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %4)
  %cmp20 = icmp eq i8 %4, 66
  br i1 %cmp20, label %if.end15.if.then25.critedge_crit_edge, label %for.inc

if.end15.if.then25.critedge_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.critedge

for.inc:                                          ; preds = %if.end15
  %sys_ind.1 = getelementptr i8, ptr %call, i32 466
  %5 = ptrtoint ptr %sys_ind.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sys_ind.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %6)
  %cmp20.1 = icmp eq i8 %6, 66
  br i1 %cmp20.1, label %for.inc.if.then25.critedge_crit_edge, label %for.inc.1

for.inc.if.then25.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.critedge

for.inc.1:                                        ; preds = %for.inc
  %sys_ind.2 = getelementptr i8, ptr %call, i32 482
  %7 = ptrtoint ptr %sys_ind.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sys_ind.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %8)
  %cmp20.2 = icmp eq i8 %8, 66
  br i1 %cmp20.2, label %for.inc.1.if.then25.critedge_crit_edge, label %for.inc.2

for.inc.1.if.then25.critedge_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.critedge

for.inc.2:                                        ; preds = %for.inc.1
  %sys_ind.3 = getelementptr i8, ptr %call, i32 498
  %9 = ptrtoint ptr %sys_ind.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sys_ind.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %10)
  %cmp20.3 = icmp eq i8 %10, 66
  br i1 %cmp20.3, label %for.inc.2.if.then25.critedge_crit_edge, label %for.inc.2.out_crit_edge

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.2.if.then25.critedge_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.critedge

if.then25.critedge:                               ; preds = %for.inc.2.if.then25.critedge_crit_edge, %for.inc.1.if.then25.critedge_crit_edge, %for.inc.if.then25.critedge_crit_edge, %if.end15.if.then25.critedge_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_validate_partition_table, ptr noundef nonnull @.str.7)
  br label %out

out:                                              ; preds = %if.then25.critedge, %for.inc.2.out_crit_edge, %if.end12.out_crit_edge
  %result.1.off0 = phi i1 [ false, %if.end12.out_crit_edge ], [ true, %if.then25.critedge ], [ false, %for.inc.2.out_crit_edge ]
  %11 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.0.load = load i32, ptr %sect, align 4
  %12 = inttoptr i32 %.fca.0.load to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %out._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !195

out._compound_head.exit.i.i_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %15, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %out._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %12, %out._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !190

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_validate_partition_table, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !200

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %if.then11
  %retval.0 = phi i1 [ false, %if.then11 ], [ %result.1.off0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ %result.1.off0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #13
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_ldm_printk(ptr noundef %level, ptr noundef %function, ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #13
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !193
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %level, ptr noundef %function, ptr noundef nonnull %vaf) #17
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_validate_privheads(ptr noundef %state, ptr noundef %ph1) unnamed_addr #0 align 64 {
entry:
  %ph = alloca [3 x ptr], align 4
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ph) #13
  %0 = getelementptr inbounds [3 x ptr], ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !193
  %2 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ph1, ptr %ph, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #13
  %3 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !193
  %tobool.not = icmp eq ptr %state, null
  %tobool2.not = icmp eq ptr %ph1, null
  %spec.select = or i1 %tobool.not, %tobool2.not
  br i1 %spec.select, label %do.body6, label %do.end11, !prof !190

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 276, 0\0A.popsection", ""() #13, !srcloc !201
  unreachable

do.end11:                                         ; preds = %entry
  %4 = getelementptr inbounds [3 x ptr], ptr %ph, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 56) #16
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i94 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 56) #16
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i94, ptr %4, align 4
  %tobool15.not = icmp eq ptr %call7.i, null
  %tobool17.not = icmp eq ptr %call7.i94, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.1)
  br label %out

if.end19:                                         ; preds = %do.end11
  %config_start = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 4
  %9 = ptrtoint ptr %config_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %config_start, align 8
  %call24150 = call ptr @read_part_sector(ptr noundef %state, i64 noundef 6, ptr noundef nonnull %sect) #13
  %tobool25.not151 = icmp eq ptr %call24150, null
  br i1 %tobool25.not151, label %if.end19.if.then26_crit_edge, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  br label %if.end27

if.end19.if.then26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

for.body:                                         ; preds = %for.inc
  %10 = ptrtoint ptr %config_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %config_start, align 8
  %arrayidx23 = getelementptr [3 x i32], ptr @ldm_validate_privheads.off, i32 0, i32 %inc
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx23, align 4
  %conv = sext i32 %13 to i64
  %add = add i64 %11, %conv
  %call24 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %add, ptr noundef nonnull %sect) #13
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.body.if.then26_crit_edge, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.if.then26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %for.body.if.then26_crit_edge, %if.end19.if.then26_crit_edge
  %14 = xor i1 %tobool25.not151, true
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.6)
  br label %out

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %call24153 = phi ptr [ %call24, %for.body.if.end27_crit_edge ], [ %call24150, %if.end19.if.end27_crit_edge ]
  %i.0109152 = phi i32 [ %inc, %for.body.if.end27_crit_edge ], [ 0, %if.end19.if.end27_crit_edge ]
  %arrayidx28 = getelementptr [3 x ptr], ptr %ph, i32 0, i32 %i.0109152
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx28, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %do.body5.i, label %do.end10.i, !prof !190

do.body5.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #13, !srcloc !202
  unreachable

do.end10.i:                                       ; preds = %if.end27
  %17 = ptrtoint ptr %call24153 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %call24153, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 5787769106053022020, i64 %18)
  %cmp.not.i = icmp eq i64 %18, 5787769106053022020
  br i1 %cmp.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.18) #13
  br label %ldm_parse_privhead.exit

if.end12.i:                                       ; preds = %do.end10.i
  %add.ptr.i = getelementptr i8, ptr %call24153, i32 12
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr.i, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %16, align 8
  %add.ptr14.i = getelementptr i8, ptr %call24153, i32 14
  %22 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr14.i, align 1
  %ver_minor.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %ver_minor.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ver_minor.i, align 2
  %add.ptr16.i = getelementptr i8, ptr %call24153, i32 283
  %25 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %add.ptr16.i, align 1
  %logical_disk_start.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 2
  %27 = ptrtoint ptr %logical_disk_start.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %logical_disk_start.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %call24153, i32 291
  %28 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %add.ptr18.i, align 1
  %logical_disk_size.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %logical_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %logical_disk_size.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %call24153, i32 299
  %31 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %add.ptr20.i, align 1
  %config_start.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 4
  %33 = ptrtoint ptr %config_start.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %config_start.i, align 8
  %add.ptr22.i = getelementptr i8, ptr %call24153, i32 307
  %34 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %add.ptr22.i, align 1
  %config_size.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 5
  %36 = ptrtoint ptr %config_size.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %config_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp25.i = icmp eq i16 %20, 2
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end12.i.if.then43.i_crit_edge

if.end12.i.if.then43.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %37 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %land.lhs.true.i.if.then43.i_crit_edge [
    i16 12, label %land.lhs.true.i.if.end48.i_crit_edge
    i16 11, label %if.end48.fold.split.i
  ]

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

land.lhs.true.i.if.then43.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43.i

if.then43.i:                                      ; preds = %land.lhs.true.i.if.then43.i_crit_edge, %if.end12.i.if.then43.i_crit_edge
  %conv45.i = zext i16 %20 to i32
  %conv47.i = zext i16 %23 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.19, i32 noundef %conv45.i, i32 noundef %conv47.i) #13
  br label %ldm_parse_privhead.exit

if.end48.fold.split.i:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48.fold.split.i, %land.lhs.true.i.if.end48.i_crit_edge
  %cond.i = phi ptr [ @.str.21, %land.lhs.true.i.if.end48.i_crit_edge ], [ @.str.22, %if.end48.fold.split.i ]
  %conv52.i = zext i16 %23 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef %conv52.i, ptr noundef nonnull %cond.i) #13
  %38 = ptrtoint ptr %config_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %config_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %39)
  %cmp56.not.i = icmp eq i64 %39, 2048
  br i1 %cmp56.not.i, label %if.end48.i.if.end60.i_crit_edge, label %if.then58.i

if.end48.i.if.end60.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.23, i32 noundef 2048, i64 noundef %39) #13
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.end48.i.if.end60.i_crit_edge
  %40 = ptrtoint ptr %logical_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %logical_disk_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp62.i = icmp eq i64 %41, 0
  br i1 %cmp62.i, label %if.end60.i.if.then70.i_crit_edge, label %lor.lhs.false64.i

if.end60.i.if.then70.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70.i

lor.lhs.false64.i:                                ; preds = %if.end60.i
  %42 = ptrtoint ptr %logical_disk_start.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %logical_disk_start.i, align 8
  %add.i = add i64 %43, %41
  %44 = ptrtoint ptr %config_start.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %config_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %45)
  %cmp68.i = icmp ugt i64 %add.i, %45
  br i1 %cmp68.i, label %lor.lhs.false64.i.if.then70.i_crit_edge, label %if.end71.i

lor.lhs.false64.i.if.then70.i_crit_edge:          ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70.i

if.then70.i:                                      ; preds = %lor.lhs.false64.i.if.then70.i_crit_edge, %if.end60.i.if.then70.i_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.24) #13
  br label %ldm_parse_privhead.exit

if.end71.i:                                       ; preds = %lor.lhs.false64.i
  %add.ptr72.i = getelementptr i8, ptr %call24153, i32 48
  %disk_id.i = getelementptr inbounds %struct.privhead, ptr %16, i32 0, i32 6
  %call73.i = call i32 @uuid_parse(ptr noundef %add.ptr72.i, ptr noundef %disk_id.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.25) #13
  br label %ldm_parse_privhead.exit

if.end76.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_parse_privhead, ptr noundef nonnull @.str.26) #13
  br label %ldm_parse_privhead.exit

ldm_parse_privhead.exit:                          ; preds = %if.end76.i, %if.then75.i, %if.then70.i, %if.then43.i, %if.then11.i
  %retval.0.i = phi i1 [ false, %if.then11.i ], [ false, %if.then70.i ], [ false, %if.then75.i ], [ true, %if.end76.i ], [ false, %if.then43.i ]
  %46 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.0.load = load i32, ptr %sect, align 4
  %47 = inttoptr i32 %.fca.0.load to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %ldm_parse_privhead.exit._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !195

ldm_parse_privhead.exit._compound_head.exit.i.i_crit_edge: ; preds = %ldm_parse_privhead.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %ldm_parse_privhead.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %50, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %ldm_parse_privhead.exit._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %47, %ldm_parse_privhead.exit._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !190

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_validate_privheads, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !200

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i) #13
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %inc = add nuw nsw i32 %i.0109152, 1
  br i1 %retval.0.i, label %for.inc, label %if.then31

if.then31:                                        ; preds = %put_dev_sector.exit
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.13, i32 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0109152)
  %cmp33 = icmp ult i32 %i.0109152, 2
  br i1 %cmp33, label %if.then31.out_crit_edge, label %if.then31.for.end_crit_edge

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc:                                          ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then31.for.end_crit_edge
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %60 = ptrtoint ptr %config_start to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %config_start, align 8
  %62 = shl i64 %59, 32
  %conv41 = ashr exact i64 %62, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv41)
  %cmp42 = icmp ugt i64 %61, %conv41
  br i1 %cmp42, label %for.end.if.then52_crit_edge, label %lor.lhs.false44

for.end.if.then52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

lor.lhs.false44:                                  ; preds = %for.end
  %config_size = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 5
  %63 = ptrtoint ptr %config_size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %config_size, align 8
  %add48 = add i64 %64, %61
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %conv41)
  %cmp50 = icmp ugt i64 %add48, %conv41
  br i1 %cmp50, label %lor.lhs.false44.if.then52_crit_edge, label %if.end53

lor.lhs.false44.if.then52_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false44.if.then52_crit_edge, %for.end.if.then52_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.14)
  br label %out

if.end53:                                         ; preds = %lor.lhs.false44
  %logical_disk_start = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 2
  %65 = ptrtoint ptr %logical_disk_start to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %logical_disk_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %61)
  %cmp57 = icmp ugt i64 %66, %61
  br i1 %cmp57, label %if.end53.if.then68_crit_edge, label %lor.lhs.false59

if.end53.if.then68_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

lor.lhs.false59:                                  ; preds = %if.end53
  %logical_disk_size = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 3
  %67 = ptrtoint ptr %logical_disk_size to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %logical_disk_size, align 8
  %add63 = add i64 %68, %66
  call void @__sanitizer_cov_trace_cmp8(i64 %add63, i64 %61)
  %cmp66 = icmp ugt i64 %add63, %61
  br i1 %cmp66, label %lor.lhs.false59.if.then68_crit_edge, label %if.end69

lor.lhs.false59.if.then68_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false59.if.then68_crit_edge, %if.end53.if.then68_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.15)
  br label %out

if.end69:                                         ; preds = %lor.lhs.false59
  %call72 = call fastcc zeroext i1 @ldm_compare_privheads(ptr noundef %ph1, ptr noundef %call7.i)
  br i1 %call72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.16)
  br label %out

if.end74:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_validate_privheads, ptr noundef nonnull @.str.17)
  br label %out

out:                                              ; preds = %if.end74, %if.then73, %if.then68, %if.then52, %if.then31.out_crit_edge, %if.then26, %if.then18
  %result.2.off0 = phi i1 [ false, %if.then31.out_crit_edge ], [ %retval.0.i, %if.then52 ], [ %retval.0.i, %if.then68 ], [ true, %if.end74 ], [ %retval.0.i, %if.then73 ], [ %14, %if.then26 ], [ false, %if.then18 ]
  call void @kfree(ptr noundef %call7.i) #13
  call void @kfree(ptr noundef %call7.i94) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ph) #13
  ret i1 %result.2.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_validate_tocblocks(ptr noundef %state, i32 noundef %base, ptr noundef %ldb) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #13
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #13
  %2 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !193
  %tobool.not = icmp eq ptr %state, null
  %tobool1.not = icmp eq ptr %ldb, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #13, !srcloc !203
  unreachable

do.end10:                                         ; preds = %entry
  %3 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %toc = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %toc, ptr %tb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 192) #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %3, align 4
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.1)
  br label %err

if.end16:                                         ; preds = %do.end10
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 64
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %0, align 4
  %add.ptr20 = getelementptr i8, ptr %call7.i.i, i32 128
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr20, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16
  %nr_tbs.096 = phi i32 [ 0, %if.end16 ], [ %nr_tbs.2, %for.inc.for.body_crit_edge ]
  %i.095 = phi i32 [ 0, %if.end16 ], [ %inc31, %for.inc.for.body_crit_edge ]
  %arrayidx22 = getelementptr [4 x i32], ptr @ldm_validate_tocblocks.off, i32 0, i32 %i.095
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %10, %base
  %conv = zext i32 %add to i64
  %call23 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #13
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.27, i32 noundef %i.095)
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %arrayidx27 = getelementptr [4 x ptr], ptr %tb, i32 0, i32 %nr_tbs.096
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx27, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %do.body5.i, label %do.end8.i, !prof !190

do.body5.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #13, !srcloc !204
  unreachable

do.end8.i:                                        ; preds = %if.end26
  %13 = ptrtoint ptr %call23 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %call23, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6075148374373253963, i64 %14)
  %cmp.not.i = icmp eq i64 %14, 6075148374373253963
  br i1 %cmp.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_parse_tocblock, ptr noundef nonnull @.str.32) #13
  br label %ldm_parse_tocblock.exit.thread

if.end10.i:                                       ; preds = %do.end8.i
  %add.ptr.i = getelementptr i8, ptr %call23, i32 36
  %call11.i = call ptr @strncpy(ptr noundef nonnull %12, ptr noundef %add.ptr.i, i32 noundef 16) #13
  %arrayidx.i = getelementptr [16 x i8], ptr %12, i32 0, i32 15
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 1
  %add.ptr13.i = getelementptr i8, ptr %call23, i32 46
  %16 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr13.i, align 1
  %bitmap1_start.i = getelementptr inbounds %struct.tocblock, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %bitmap1_start.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %bitmap1_start.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %call23, i32 54
  %19 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %add.ptr15.i, align 1
  %bitmap1_size.i = getelementptr inbounds %struct.tocblock, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %bitmap1_size.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %bitmap1_size.i, align 8
  %call19.i = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(7) @.str.33, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp20.not.i, label %if.end24.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_parse_tocblock, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, ptr noundef nonnull %12) #13
  br label %ldm_parse_tocblock.exit.thread

if.end24.i:                                       ; preds = %if.end10.i
  %bitmap2_name.i = getelementptr inbounds %struct.tocblock, ptr %12, i32 0, i32 3
  %add.ptr26.i = getelementptr i8, ptr %call23, i32 70
  %call27.i = call ptr @strncpy(ptr noundef %bitmap2_name.i, ptr noundef %add.ptr26.i, i32 noundef 16) #13
  %arrayidx29.i = getelementptr %struct.tocblock, ptr %12, i32 0, i32 3, i32 15
  %22 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx29.i, align 1
  %add.ptr30.i = getelementptr i8, ptr %call23, i32 80
  %23 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %add.ptr30.i, align 1
  %bitmap2_start.i = getelementptr inbounds %struct.tocblock, ptr %12, i32 0, i32 4
  %25 = ptrtoint ptr %bitmap2_start.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %bitmap2_start.i, align 8
  %add.ptr32.i = getelementptr i8, ptr %call23, i32 88
  %26 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %add.ptr32.i, align 1
  %bitmap2_size.i = getelementptr inbounds %struct.tocblock, ptr %12, i32 0, i32 5
  %28 = ptrtoint ptr %bitmap2_size.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %bitmap2_size.i, align 8
  %call36.i = call i32 @strncmp(ptr noundef %bitmap2_name.i, ptr noundef nonnull dereferenceable(4) @.str.35, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.not.i = icmp eq i32 %call36.i, 0
  br i1 %cmp37.not.i, label %29, label %if.then38.i

if.then38.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_parse_tocblock, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef %bitmap2_name.i) #13
  br label %ldm_parse_tocblock.exit.thread

29:                                               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_parse_tocblock, ptr noundef nonnull @.str.37) #13
  %inc = add i32 %nr_tbs.096, 1
  br label %ldm_parse_tocblock.exit.thread

ldm_parse_tocblock.exit.thread:                   ; preds = %29, %if.then38.i, %if.then21.i, %if.then9.i
  %30 = phi i32 [ %inc, %29 ], [ %nr_tbs.096, %if.then9.i ], [ %nr_tbs.096, %if.then21.i ], [ %nr_tbs.096, %if.then38.i ]
  %31 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.0.load = load i32, ptr %sect, align 4
  %32 = inttoptr i32 %.fca.0.load to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %ldm_parse_tocblock.exit.thread._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !195

ldm_parse_tocblock.exit.thread._compound_head.exit.i.i_crit_edge: ; preds = %ldm_parse_tocblock.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %ldm_parse_tocblock.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %35, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %ldm_parse_tocblock.exit.thread._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %32, %ldm_parse_tocblock.exit.thread._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !190

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_validate_tocblocks, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !200

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.i.for.inc_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge, %if.then25
  %nr_tbs.2 = phi i32 [ %nr_tbs.096, %if.then25 ], [ %30, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge ], [ %30, %if.then.i4.i.i ]
  %inc31 = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc31, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_tbs.2)
  %tobool32.not = icmp eq i32 %nr_tbs.2, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.28)
  br label %err

if.end34:                                         ; preds = %for.end
  %bitmap1_start = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %bitmap1_start to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bitmap1_start, align 8
  %bitmap1_size = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %bitmap1_size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bitmap1_size, align 8
  %add37 = add i64 %42, %40
  %config_size = getelementptr inbounds %struct.privhead, ptr %ldb, i32 0, i32 5
  %43 = ptrtoint ptr %config_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %config_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add37, i64 %44)
  %cmp38 = icmp ugt i64 %add37, %44
  br i1 %cmp38, label %if.end34.if.then46_crit_edge, label %lor.lhs.false

if.end34.if.then46_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.end34
  %bitmap2_start = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %bitmap2_start to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bitmap2_start, align 8
  %bitmap2_size = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %bitmap2_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %bitmap2_size, align 8
  %add42 = add i64 %48, %46
  call void @__sanitizer_cov_trace_cmp8(i64 %add42, i64 %44)
  %cmp44 = icmp ugt i64 %add42, %44
  br i1 %cmp44, label %lor.lhs.false.if.then46_crit_edge, label %for.cond48.preheader

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

for.cond48.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_tbs.2)
  %cmp4997 = icmp sgt i32 %nr_tbs.2, 1
  br i1 %cmp4997, label %for.body51.lr.ph, label %for.cond48.preheader.for.end59_crit_edge

for.cond48.preheader.for.end59_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.body51.lr.ph:                                 ; preds = %for.cond48.preheader
  %toc.fr = freeze ptr %toc
  %tobool.not.i79 = icmp eq ptr %toc.fr, null
  %bitmap2_name.i88 = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 3
  br i1 %tobool.not.i79, label %for.body51.lr.ph.do.body5.i82.split_crit_edge, label %for.body51.lr.ph.for.body51_crit_edge

for.body51.lr.ph.for.body51_crit_edge:            ; preds = %for.body51.lr.ph
  br label %for.body51

for.body51.lr.ph.do.body5.i82.split_crit_edge:    ; preds = %for.body51.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i82.split

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.end34.if.then46_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.29)
  br label %err

for.body51:                                       ; preds = %for.inc57.for.body51_crit_edge, %for.body51.lr.ph.for.body51_crit_edge
  %i.198 = phi i32 [ %inc58, %for.inc57.for.body51_crit_edge ], [ 1, %for.body51.lr.ph.for.body51_crit_edge ]
  %arrayidx53 = getelementptr [4 x ptr], ptr %tb, i32 0, i32 %i.198
  %49 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx53, align 4
  %tobool1.not.i80 = icmp eq ptr %50, null
  br i1 %tobool1.not.i80, label %for.body51.do.body5.i82.split_crit_edge, label %do.end8.i84, !prof !190

for.body51.do.body5.i82.split_crit_edge:          ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i82.split

do.body5.i82.split:                               ; preds = %for.body51.do.body5.i82.split_crit_edge, %for.body51.lr.ph.do.body5.i82.split_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

do.end8.i84:                                      ; preds = %for.body51
  %bitmap1_start9.i = getelementptr inbounds %struct.tocblock, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bitmap1_start9.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bitmap1_start9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %52)
  %cmp.i = icmp eq i64 %40, %52
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end8.i84.if.then55_crit_edge

do.end8.i84.if.then55_crit_edge:                  ; preds = %do.end8.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

land.lhs.true.i:                                  ; preds = %do.end8.i84
  %bitmap1_size10.i = getelementptr inbounds %struct.tocblock, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %bitmap1_size10.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bitmap1_size10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %54)
  %cmp11.i = icmp eq i64 %42, %54
  br i1 %cmp11.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.then55_crit_edge

land.lhs.true.i.if.then55_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %bitmap2_start13.i = getelementptr inbounds %struct.tocblock, ptr %50, i32 0, i32 4
  %55 = ptrtoint ptr %bitmap2_start13.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bitmap2_start13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %56)
  %cmp14.i = icmp eq i64 %46, %56
  br i1 %cmp14.i, label %land.lhs.true15.i, label %land.lhs.true12.i.if.then55_crit_edge

land.lhs.true12.i.if.then55_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %bitmap2_size16.i = getelementptr inbounds %struct.tocblock, ptr %50, i32 0, i32 5
  %57 = ptrtoint ptr %bitmap2_size16.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bitmap2_size16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %58)
  %cmp17.i = icmp eq i64 %48, %58
  br i1 %cmp17.i, label %land.lhs.true18.i, label %land.lhs.true15.i.if.then55_crit_edge

land.lhs.true15.i.if.then55_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %call.i = call i32 @strncmp(ptr noundef nonnull %toc.fr, ptr noundef nonnull %50, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool21.not.i, label %ldm_compare_tocblocks.exit, label %land.lhs.true18.i.if.then55_crit_edge

land.lhs.true18.i.if.then55_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

ldm_compare_tocblocks.exit:                       ; preds = %land.lhs.true18.i
  %bitmap2_name23.i = getelementptr inbounds %struct.tocblock, ptr %50, i32 0, i32 3
  %call25.i = call i32 @strncmp(ptr noundef %bitmap2_name.i88, ptr noundef %bitmap2_name23.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %for.inc57, label %ldm_compare_tocblocks.exit.if.then55_crit_edge

ldm_compare_tocblocks.exit.if.then55_crit_edge:   ; preds = %ldm_compare_tocblocks.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55

if.then55:                                        ; preds = %ldm_compare_tocblocks.exit.if.then55_crit_edge, %land.lhs.true18.i.if.then55_crit_edge, %land.lhs.true15.i.if.then55_crit_edge, %land.lhs.true12.i.if.then55_crit_edge, %land.lhs.true.i.if.then55_crit_edge, %do.end8.i84.if.then55_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.30, i32 noundef %i.198)
  br label %err

for.inc57:                                        ; preds = %ldm_compare_tocblocks.exit
  %inc58 = add nuw nsw i32 %i.198, 1
  %exitcond101.not = icmp eq i32 %inc58, %nr_tbs.2
  br i1 %exitcond101.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body51_crit_edge

for.inc57.for.body51_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body51

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %for.cond48.preheader.for.end59_crit_edge
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_validate_tocblocks, ptr noundef nonnull @.str.31, i32 noundef %nr_tbs.2)
  br label %err

err:                                              ; preds = %for.end59, %if.then55, %if.then46, %if.then33, %if.then15
  %result.0.off0 = phi i1 [ false, %if.then46 ], [ false, %if.then55 ], [ true, %for.end59 ], [ false, %if.then33 ], [ false, %if.then15 ]
  call void @kfree(ptr noundef %call7.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #13
  ret i1 %result.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_validate_vmdb(ptr noundef %state, i32 noundef %base, ptr noundef %ldb) unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #13
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !193
  %tobool.not = icmp eq ptr %state, null
  %tobool1.not = icmp eq ptr %ldb, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

do.end10:                                         ; preds = %entry
  %add = add i32 %base, 17
  %conv = zext i32 %add to i64
  %call = call ptr @read_part_sector(ptr noundef nonnull %state, i64 noundef %conv, ptr noundef nonnull %sect) #13
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_vmdb, ptr noundef nonnull @.str.6)
  br label %cleanup

if.end15:                                         ; preds = %do.end10
  %vm11 = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2
  %tobool1.not.i = icmp eq ptr %vm11, null
  br i1 %tobool1.not.i, label %do.body5.i, label %do.end8.i, !prof !190

do.body5.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #13, !srcloc !207
  unreachable

do.end8.i:                                        ; preds = %if.end15
  %1 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1447904322, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 1447904322
  br i1 %cmp.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_parse_vmdb, ptr noundef nonnull @.str.41) #13
  br label %out

if.end10.i:                                       ; preds = %do.end8.i
  %add.ptr.i = getelementptr i8, ptr %call, i32 18
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr.i, align 1
  %5 = ptrtoint ptr %vm11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vm11, align 4
  %add.ptr12.i = getelementptr i8, ptr %call, i32 20
  %6 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr12.i, align 1
  %ver_minor.i = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %ver_minor.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ver_minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp15.not.i = icmp eq i16 %4, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp19.not.i = icmp eq i16 %7, 10
  %or.cond.i = select i1 %cmp15.not.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i, label %if.end26.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv23.i = zext i16 %4 to i32
  %conv25.i = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vmdb, ptr noundef nonnull @.str.42, i32 noundef 4, i32 noundef 10, i32 noundef %conv23.i, i32 noundef %conv25.i) #13
  br label %out

if.end26.i:                                       ; preds = %if.end10.i
  %add.ptr27.i = getelementptr i8, ptr %call, i32 8
  %9 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr27.i, align 1
  %vblk_size.i = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %vblk_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vblk_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp30.i = icmp eq i32 %10, 0
  br i1 %cmp30.i, label %if.then32.i, label %if.end18

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vmdb, ptr noundef nonnull @.str.43) #13
  br label %out

if.end18:                                         ; preds = %if.end26.i
  %add.ptr34.i = getelementptr i8, ptr %call, i32 12
  %12 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr34.i, align 1
  %vblk_offset.i = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %vblk_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vblk_offset.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %call, i32 4
  %15 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr36.i, align 1
  %last_vblk_seq.i = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %last_vblk_seq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_vblk_seq.i, align 4
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_parse_vmdb, ptr noundef nonnull @.str.44) #13
  %add.ptr = getelementptr i8, ptr %call, i32 16
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.not = icmp eq i16 %19, 1
  br i1 %cmp.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_vmdb, ptr noundef nonnull @.str.38)
  br label %out

if.end23:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %vblk_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vblk_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %21)
  %cmp24.not = icmp eq i32 %21, 512
  br i1 %cmp24.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ldm_validate_vmdb, ptr noundef nonnull @.str.39, i32 noundef %21)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %22 = ptrtoint ptr %vblk_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vblk_size.i, align 4
  %24 = ptrtoint ptr %last_vblk_seq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_vblk_seq.i, align 4
  %mul = mul i32 %25, %23
  %conv29 = zext i32 %mul to i64
  %bitmap1_size = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %bitmap1_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bitmap1_size, align 8
  %shl = shl i64 %27, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv29)
  %cmp30 = icmp ult i64 %shl, %conv29
  br i1 %cmp30, label %if.then32, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_validate_vmdb, ptr noundef nonnull @.str.40)
  br label %out

out:                                              ; preds = %if.then32, %if.end28.out_crit_edge, %if.then22, %if.then32.i, %if.then21.i, %if.then9.i
  %result.0.off0 = phi i1 [ false, %if.then22 ], [ false, %if.then32 ], [ true, %if.end28.out_crit_edge ], [ false, %if.then9.i ], [ false, %if.then21.i ], [ false, %if.then32.i ]
  %28 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.0.load = load i32, ptr %sect, align 4
  %29 = inttoptr i32 %.fca.0.load to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %out._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !195

out._compound_head.exit.i.i_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %32, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %out._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %29, %out._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !190

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_validate_vmdb, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !200

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %if.then14
  %retval.0 = phi i1 [ false, %if.then14 ], [ %result.0.off0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ %result.0.off0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #13
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_get_vblks(ptr noundef %state, i32 noundef %base, ptr noundef %ldb) unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  %frags = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #13
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frags) #13
  %1 = getelementptr inbounds %struct.list_head, ptr %frags, i32 0, i32 1
  %2 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %frags, ptr %frags, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %frags, ptr %1, align 4
  %tobool.not = icmp eq ptr %state, null
  %tobool1.not = icmp eq ptr %ldb, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1361, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end10:                                         ; preds = %entry
  %vblk_size = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %vblk_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vblk_size, align 4
  %div = sdiv i32 512, %5
  %vblk_offset = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %vblk_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vblk_offset, align 8
  %shr = lshr i32 %7, 9
  %last_vblk_seq = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %last_vblk_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_vblk_seq, align 4
  %mul = mul i32 %9, %5
  %shr13 = lshr i32 %mul, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr13)
  %cmp154 = icmp ult i32 %shr, %shr13
  br i1 %cmp154, label %for.body.lr.ph, label %do.end10.for.cond.i80.preheader_crit_edge

do.end10.for.cond.i80.preheader_crit_edge:        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i80.preheader

for.body.lr.ph:                                   ; preds = %do.end10
  %add = add i32 %base, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp19149 = icmp sgt i32 %div, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp.i = icmp slt i32 %5, 32
  %sub.i = add i32 %5, -16
  br label %for.body

for.body:                                         ; preds = %put_dev_sector.exit.for.body_crit_edge, %for.body.lr.ph
  %s.0155 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc45, %put_dev_sector.exit.for.body_crit_edge ]
  %add14 = add i32 %add, %s.0155
  %conv = zext i32 %add14 to i64
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #13
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %if.then16, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.body
  br i1 %cmp19149, label %for.cond18.preheader.for.body21_crit_edge, label %for.cond18.preheader.for.end_crit_edge

for.cond18.preheader.for.end_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond18.preheader.for.body21_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body21

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_get_vblks, ptr noundef nonnull @.str.6)
  br label %if.end51

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.cond18.preheader.for.body21_crit_edge
  %data.1151 = phi ptr [ %add.ptr43, %for.inc.for.body21_crit_edge ], [ %call, %for.cond18.preheader.for.body21_crit_edge ]
  %v.0150 = phi i32 [ %inc, %for.inc.for.body21_crit_edge ], [ 0, %for.cond18.preheader.for.body21_crit_edge ]
  %10 = ptrtoint ptr %data.1151 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data.1151, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1447185483, i32 %11)
  %cmp23.not = icmp eq i32 %11, 1447185483
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vblks, ptr noundef nonnull @.str.45)
  br label %out

if.end26:                                         ; preds = %for.body21
  %add.ptr = getelementptr i8, ptr %data.1151, i32 14
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr, align 1
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %13, label %if.then37 [
    i16 1, label %if.then31
    i16 0, label %if.end26.for.inc_crit_edge
  ]

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then31:                                        ; preds = %if.end26
  %call32 = call fastcc zeroext i1 @ldm_ldmdb_add(ptr noundef %data.1151, i32 noundef %5, ptr noundef %ldb)
  br i1 %call32, label %if.then31.for.inc_crit_edge, label %if.then31.out_crit_edge

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then37:                                        ; preds = %if.end26
  %tobool.not.i = icmp eq ptr %data.1151, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !190

do.body5.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1233, 0\0A.popsection", ""() #13, !srcloc !209
  unreachable

do.end10.i:                                       ; preds = %if.then37
  br i1 %cmp.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.70) #13
  br label %if.then49

if.end12.i:                                       ; preds = %do.end10.i
  %add.ptr.i = getelementptr i8, ptr %data.1151, i32 8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr.i, align 1
  %add.ptr13.i = getelementptr i8, ptr %data.1151, i32 12
  %17 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr13.i, align 1
  %conv.i = zext i16 %18 to i32
  %conv17.i = zext i16 %13 to i32
  %19 = add i16 %13, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %19)
  %20 = icmp ult i16 %19, -4
  br i1 %20, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.le210 = zext i16 %13 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.71, i32 noundef %conv17.i.le210) #13
  br label %if.then49

if.end23.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %13)
  %cmp24.not.i = icmp ult i16 %18, %13
  br i1 %cmp24.not.i, label %if.end23.i.for.cond.i_crit_edge, label %if.then26.i

if.end23.i.for.cond.i_crit_edge:                  ; preds = %if.end23.i
  br label %for.cond.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.le215 = zext i16 %18 to i32
  %conv17.i.le = zext i16 %13 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.72, i32 noundef %conv.i.le215, i32 noundef %conv17.i.le) #13
  br label %if.then49

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end23.i.for.cond.i_crit_edge
  %item.0.in.i = phi ptr [ %item.0.i, %for.body.i.for.cond.i_crit_edge ], [ %frags, %if.end23.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %item.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %item.0.i = load ptr, ptr %item.0.in.i, align 4
  %cmp.i130.not.i = icmp eq ptr %item.0.i, %frags
  br i1 %cmp.i130.not.i, label %if.end8.i.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %group33.i = getelementptr inbounds %struct.frag, ptr %item.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %group33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %group33.i, align 4
  %cmp34.i = icmp eq i32 %23, %16
  br i1 %cmp34.i, label %for.body.i.found.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.found.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

if.end8.i.i:                                      ; preds = %for.cond.i
  %mul.i = mul i32 %5, %conv17.i
  %add.i = add i32 %mul.i, 16
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool40.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.1) #13
  br label %out

if.end42.i:                                       ; preds = %if.end8.i.i
  %group43.i = getelementptr inbounds %struct.frag, ptr %call9.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %group43.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %group43.i, align 8
  %conv44.i = trunc i16 %13 to i8
  %num45.i = getelementptr inbounds %struct.frag, ptr %call9.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %num45.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv44.i, ptr %num45.i, align 4
  %conv46.i = trunc i16 %18 to i8
  %rec47.i = getelementptr inbounds %struct.frag, ptr %call9.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %rec47.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv46.i, ptr %rec47.i, align 1
  %shl.i = shl i32 255, %conv17.i
  %conv48.i = trunc i32 %shl.i to i8
  %map.i = getelementptr inbounds %struct.frag, ptr %call9.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv48.i, ptr %map.i, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %29, ptr noundef nonnull %frags) #13
  br i1 %call.i.i.i, label %if.end.i.i131.i, label %if.end42.i.found.i_crit_edge

if.end42.i.found.i_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

if.end.i.i131.i:                                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i, ptr %1, align 4
  %31 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %frags, ptr %call9.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call9.i.i, ptr %29, align 4
  br label %found.i

found.i:                                          ; preds = %if.end.i.i131.i, %if.end42.i.found.i_crit_edge, %for.body.i.found.i_crit_edge
  %f.0.i = phi ptr [ %call9.i.i, %if.end42.i.found.i_crit_edge ], [ %call9.i.i, %if.end.i.i131.i ], [ %item.0.i, %for.body.i.found.i_crit_edge ]
  %num49.i = getelementptr inbounds %struct.frag, ptr %f.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %num49.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num49.i, align 4
  %36 = zext i8 %35 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %36)
  %cmp51.not.i = icmp ult i16 %18, %36
  br i1 %cmp51.not.i, label %if.end56.i, label %if.then53.i

if.then53.i:                                      ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.le213 = zext i16 %18 to i32
  %conv50.i.le = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.72, i32 noundef %conv.i.le213, i32 noundef %conv50.i.le) #13
  br label %out

if.end56.i:                                       ; preds = %found.i
  %map57.i = getelementptr inbounds %struct.frag, ptr %f.0.i, i32 0, i32 4
  %37 = ptrtoint ptr %map57.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %map57.i, align 2
  %conv58.i = zext i8 %38 to i32
  %shl59.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl59.i, %conv58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool60.not.i, label %if.end66.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.le = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_add, ptr noundef nonnull @.str.73, i32 noundef %conv.i.le) #13
  %39 = ptrtoint ptr %map57.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %map57.i, align 2
  %41 = and i8 %40, 127
  store i8 %41, ptr %map57.i, align 2
  br label %out

if.end66.i:                                       ; preds = %if.end56.i
  %42 = trunc i32 %shl59.i to i8
  %conv70.i = or i8 %38, %42
  %43 = ptrtoint ptr %map57.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv70.i, ptr %map57.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool71.not.i = icmp eq i16 %18, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.end66.i.ldm_frag_add.exit_crit_edge

if.end66.i.ldm_frag_add.exit_crit_edge:           ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_frag_add.exit

if.then72.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  %data73.i = getelementptr inbounds %struct.frag, ptr %f.0.i, i32 0, i32 5
  %44 = call ptr @memcpy(ptr %data73.i, ptr %data.1151, i32 16)
  br label %ldm_frag_add.exit

ldm_frag_add.exit:                                ; preds = %if.then72.i, %if.end66.i.ldm_frag_add.exit_crit_edge
  %add.ptr75.i = getelementptr i8, ptr %data.1151, i32 16
  %add.ptr78.i = getelementptr %struct.frag, ptr %f.0.i, i32 1, i32 5
  %mul79.i = mul i32 %sub.i, %conv.i
  %add.ptr80.i = getelementptr i8, ptr %add.ptr78.i, i32 %mul79.i
  %45 = call ptr @memcpy(ptr %add.ptr80.i, ptr %add.ptr75.i, i32 %sub.i)
  br label %for.inc

for.inc:                                          ; preds = %ldm_frag_add.exit, %if.then31.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %inc = add nuw nsw i32 %v.0150, 1
  %add.ptr43 = getelementptr i8, ptr %data.1151, i32 %5
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond18.preheader.for.end_crit_edge
  %46 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.0.load = load i32, ptr %sect, align 4
  %47 = inttoptr i32 %.fca.0.load to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i76 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i76, label %for.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !195

for.end._compound_head.exit.i.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %50, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %for.end._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %47, %for.end._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !190

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_get_vblks, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !200

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i) #13
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %inc45 = add nuw nsw i32 %s.0155, 1
  %exitcond185.not = icmp eq i32 %inc45, %shr13
  br i1 %exitcond185.not, label %put_dev_sector.exit.for.cond.i80.preheader_crit_edge, label %put_dev_sector.exit.for.body_crit_edge

put_dev_sector.exit.for.body_crit_edge:           ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

put_dev_sector.exit.for.cond.i80.preheader_crit_edge: ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i80.preheader

for.cond.i80.preheader:                           ; preds = %put_dev_sector.exit.for.cond.i80.preheader_crit_edge, %do.end10.for.cond.i80.preheader_crit_edge
  br label %for.cond.i80

for.cond.i80:                                     ; preds = %if.end18.i.for.cond.i80_crit_edge, %for.cond.i80.preheader
  %item.0.in.i78 = phi ptr [ %item.0.i79, %if.end18.i.for.cond.i80_crit_edge ], [ %frags, %for.cond.i80.preheader ]
  %54 = ptrtoint ptr %item.0.in.i78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %item.0.i79 = load ptr, ptr %item.0.in.i78, align 4
  %cmp.i.not.i = icmp eq ptr %item.0.i79, %frags
  br i1 %cmp.i.not.i, label %for.cond.i80.if.end51_crit_edge, label %for.body.i82

for.cond.i80.if.end51_crit_edge:                  ; preds = %for.cond.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

for.body.i82:                                     ; preds = %for.cond.i80
  %map.i81 = getelementptr inbounds %struct.frag, ptr %item.0.i79, i32 0, i32 4
  %55 = ptrtoint ptr %map.i81 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %map.i81, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp.not.i = icmp eq i8 %56, -1
  br i1 %cmp.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i83 = zext i8 %56 to i32
  %group.i = getelementptr inbounds %struct.frag, ptr %item.0.i79, i32 0, i32 1
  %57 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %group.i, align 4
  call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_frag_commit, ptr noundef nonnull @.str.74, i32 noundef %58, i32 noundef %conv.i83) #13
  br label %if.end51

if.end18.i:                                       ; preds = %for.body.i82
  %data.i = getelementptr inbounds %struct.frag, ptr %item.0.i79, i32 0, i32 5
  %num.i = getelementptr inbounds %struct.frag, ptr %item.0.i79, i32 0, i32 2
  %59 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num.i, align 4
  %conv19.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %vblk_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vblk_size, align 4
  %mul.i84 = mul i32 %62, %conv19.i
  %call20.i = call fastcc zeroext i1 @ldm_ldmdb_add(ptr noundef %data.i, i32 noundef %mul.i84, ptr noundef %ldb) #13
  br i1 %call20.i, label %if.end18.i.for.cond.i80_crit_edge, label %if.end18.i.if.end51_crit_edge

if.end18.i.if.end51_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end18.i.for.cond.i80_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i80

out:                                              ; preds = %if.then61.i, %if.then53.i, %if.then41.i, %if.then31.out_crit_edge, %if.then25
  %tobool48.not = icmp eq ptr %data.1151, null
  br i1 %tobool48.not, label %out.if.end51_crit_edge, label %out.if.then49_crit_edge

out.if.then49_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %out.if.then49_crit_edge, %if.then26.i, %if.then22.i, %if.then11.i
  %63 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.0.load54 = load i32, ptr %sect, align 4
  %64 = inttoptr i32 %.fca.0.load54 to ptr
  %65 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i.i85 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85)
  %tobool.not.i.i.i86 = icmp eq i32 %and.i.i.i85, 0
  br i1 %tobool.not.i.i.i86, label %if.then49._compound_head.exit.i.i94_crit_edge, label %if.then.i.i.i89, !prof !195

if.then49._compound_head.exit.i.i94_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i.i94

if.then.i.i.i89:                                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i87 = add i32 %67, -1
  %.pre.i88 = inttoptr i32 %sub.i.i.i87 to ptr
  br label %_compound_head.exit.i.i94

_compound_head.exit.i.i94:                        ; preds = %if.then.i.i.i89, %if.then49._compound_head.exit.i.i94_crit_edge
  %.pre-phi.i90 = phi ptr [ %64, %if.then49._compound_head.exit.i.i94_crit_edge ], [ %.pre.i88, %if.then.i.i.i89 ]
  %_refcount.i.i.i.i.i.i91 = getelementptr inbounds %struct.page, ptr %.pre-phi.i90, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i91, i32 noundef 4) #13
  %68 = ptrtoint ptr %_refcount.i.i.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %_refcount.i.i.i.i.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i.i.i.i93 = icmp eq i32 %69, 0
  br i1 %cmp.i.i.i.i.i93, label %if.then.i.i.i.i.i95, label %do.end5.i.i.i.i.i99, !prof !190

if.then.i.i.i.i.i95:                              ; preds = %_compound_head.exit.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %.pre-phi.i90, ptr noundef nonnull @.str.8) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end5.i.i.i.i.i99:                              ; preds = %_compound_head.exit.i.i94
  %call.i.i.i10.i.i.i.i.i96 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i91, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i91, i32 1, i32 3, i32 1) #13
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i91, ptr %_refcount.i.i.i.i.i.i91, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i91) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i.i.i.i.i97 = extractvalue { i32, i32 } %70, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i97)
  %cmp.i.i.i.i.i.i.i.i98 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i97, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ldm_get_vblks, %if.then.i.i.i.i.i.i101)) #13
          to label %folio_put_testzero.exit.i.i.i102 [label %if.then.i.i.i.i.i.i101], !srcloc !200

if.then.i.i.i.i.i.i101:                           ; preds = %do.end5.i.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i100 = zext i1 %cmp.i.i.i.i.i.i.i.i98 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i90, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i100) #13
  br label %folio_put_testzero.exit.i.i.i102

folio_put_testzero.exit.i.i.i102:                 ; preds = %if.then.i.i.i.i.i.i101, %do.end5.i.i.i.i.i99
  br i1 %cmp.i.i.i.i.i.i.i.i98, label %if.then.i4.i.i103, label %folio_put_testzero.exit.i.i.i102.if.end51_crit_edge

folio_put_testzero.exit.i.i.i102.if.end51_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then.i4.i.i103:                                ; preds = %folio_put_testzero.exit.i.i.i102
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %.pre-phi.i90) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then.i4.i.i103, %folio_put_testzero.exit.i.i.i102.if.end51_crit_edge, %out.if.end51_crit_edge, %if.end18.i.if.end51_crit_edge, %if.then15.i, %for.cond.i80.if.end51_crit_edge, %if.then16
  %result.0.off0112 = phi i1 [ false, %out.if.end51_crit_edge ], [ false, %folio_put_testzero.exit.i.i.i102.if.end51_crit_edge ], [ false, %if.then.i4.i.i103 ], [ false, %if.then15.i ], [ false, %if.then16 ], [ %cmp.i.not.i, %for.cond.i80.if.end51_crit_edge ], [ %cmp.i.not.i, %if.end18.i.if.end51_crit_edge ]
  %71 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %frags, align 4
  %cmp.i.not21.i = icmp eq ptr %72, %frags
  br i1 %cmp.i.not21.i, label %if.end51.ldm_frag_free.exit_crit_edge, label %if.end51.for.body.i106_crit_edge

if.end51.for.body.i106_crit_edge:                 ; preds = %if.end51
  br label %for.body.i106

if.end51.ldm_frag_free.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_frag_free.exit

for.body.i106:                                    ; preds = %for.body.i106.for.body.i106_crit_edge, %if.end51.for.body.i106_crit_edge
  %item.022.i = phi ptr [ %tmp.0.i, %for.body.i106.for.body.i106_crit_edge ], [ %72, %if.end51.for.body.i106_crit_edge ]
  %73 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %tmp.0.i = load ptr, ptr %item.022.i, align 4
  call void @kfree(ptr noundef %item.022.i) #13
  %cmp.i.not.i105 = icmp eq ptr %tmp.0.i, %frags
  br i1 %cmp.i.not.i105, label %for.body.i106.ldm_frag_free.exit_crit_edge, label %for.body.i106.for.body.i106_crit_edge

for.body.i106.for.body.i106_crit_edge:            ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i106

for.body.i106.ldm_frag_free.exit_crit_edge:       ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_frag_free.exit

ldm_frag_free.exit:                               ; preds = %for.body.i106.ldm_frag_free.exit_crit_edge, %if.end51.ldm_frag_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frags) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #13
  ret i1 %result.0.off0112
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_create_data_partitions(ptr noundef %pp, ptr noundef readonly %ldb) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  %tobool1.not = icmp eq ptr %ldb, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end9.i, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #13, !srcloc !210
  unreachable

do.end9.i:                                        ; preds = %entry
  %v_disk.i = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 4
  %disk_id14.i = getelementptr inbounds %struct.privhead, ptr %ldb, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %item.0.in.i = phi ptr [ %v_disk.i, %do.end9.i ], [ %item.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %item.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %item.0.i = load ptr, ptr %item.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %item.0.i, %v_disk.i
  br i1 %cmp.i.not.i, label %for.cond.i.if.then12_crit_edge, label %for.body.i

for.cond.i.if.then12_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

for.body.i:                                       ; preds = %for.cond.i
  %vblk.i = getelementptr i8, ptr %item.0.i, i32 -144
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %vblk.i, ptr noundef dereferenceable(16) %disk_id14.i, i32 16) #19
  %cmp.i26.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i26.i, label %ldm_get_disk_objid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

ldm_get_disk_objid.exit:                          ; preds = %for.body.i
  %add.ptr.le.i = getelementptr i8, ptr %item.0.i, i32 -224
  %tobool11.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool11.not, label %ldm_get_disk_objid.exit.if.then12_crit_edge, label %if.end13

ldm_get_disk_objid.exit.if.then12_crit_edge:      ; preds = %ldm_get_disk_objid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %ldm_get_disk_objid.exit.if.then12_crit_edge, %for.cond.i.if.then12_crit_edge
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_create_data_partitions, ptr noundef nonnull @.str.75)
  br label %cleanup

if.end13:                                         ; preds = %ldm_get_disk_objid.exit
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %pp, i32 0, i32 6
  %1 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp_buf, align 4
  %call14 = tail call i32 @strlcat(ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef 4096) #13
  %v_part = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 7
  %3 = ptrtoint ptr %v_part to i32
  call void @__asan_load4_noabort(i32 %3)
  %item.048 = load ptr, ptr %v_part, align 4
  %cmp.i.not49 = icmp eq ptr %item.048, %v_part
  br i1 %cmp.i.not49, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %obj_id = getelementptr i8, ptr %item.0.i, i32 -160
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %pp, i32 0, i32 4
  %logical_disk_start = getelementptr inbounds %struct.privhead, ptr %ldb, i32 0, i32 2
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %pp, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %pp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %item.052 = phi ptr [ %item.048, %for.body.lr.ph ], [ %item.0, %for.inc.for.body_crit_edge ]
  %part_num.050 = phi i32 [ 1, %for.body.lr.ph ], [ %part_num.1, %for.inc.for.body_crit_edge ]
  %disk_id = getelementptr i8, ptr %item.052, i32 -112
  %4 = ptrtoint ptr %disk_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disk_id, align 8
  %6 = ptrtoint ptr %obj_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %obj_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp eq i64 %5, %7
  br i1 %cmp.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %8 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %part_num.050)
  %cmp.i42 = icmp sgt i32 %9, %part_num.050
  br i1 %cmp.i42, label %if.then.i, label %if.end21.put_partition.exit_crit_edge

if.end21.put_partition.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %size = getelementptr i8, ptr %item.052, i32 -136
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size, align 8
  %12 = ptrtoint ptr %logical_disk_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %logical_disk_start, align 8
  %vblk = getelementptr i8, ptr %item.052, i32 -144
  %14 = ptrtoint ptr %vblk to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vblk, align 8
  %add = add i64 %15, %13
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #13
  %16 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %17 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %18, i32 %part_num.050
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %arrayidx.i, align 8
  %20 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %20, i32 %part_num.050, i32 1
  %21 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %11, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.78, ptr noundef %name.i, i32 noundef %part_num.050) #13
  %22 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %23, ptr noundef nonnull %tmp.i, i32 noundef 4096) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #13
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.end21.put_partition.exit_crit_edge
  %inc = add i32 %part_num.050, 1
  br label %for.inc

for.inc:                                          ; preds = %put_partition.exit, %for.body.for.inc_crit_edge
  %part_num.1 = phi i32 [ %part_num.050, %for.body.for.inc_crit_edge ], [ %inc, %put_partition.exit ]
  %24 = ptrtoint ptr %item.052 to i32
  call void @__asan_load4_noabort(i32 %24)
  %item.0 = load ptr, ptr %item.052, align 4
  %cmp.i.not = icmp eq ptr %item.0, %v_part
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %25 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pp_buf, align 4
  %call24 = call i32 @strlcat(ptr noundef %26, ptr noundef nonnull @.str.77, i32 noundef 4096) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then12
  %tobool11.not45 = phi i1 [ true, %for.end ], [ false, %if.then12 ]
  ret i1 %tobool11.not45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_compare_privheads(ptr noundef readonly %ph1, ptr noundef readonly %ph2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ph1, null
  %tobool1.not = icmp eq ptr %ph2, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end8, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #13, !srcloc !211
  unreachable

do.end8:                                          ; preds = %entry
  %0 = ptrtoint ptr %ph1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ph1, align 8
  %2 = ptrtoint ptr %ph2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ph2, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %land.lhs.true, label %do.end8.land.end_crit_edge

do.end8.land.end_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %do.end8
  %ver_minor = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 1
  %4 = ptrtoint ptr %ver_minor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ver_minor, align 2
  %ver_minor13 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 1
  %6 = ptrtoint ptr %ver_minor13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ver_minor13, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp15 = icmp eq i16 %5, %7
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %logical_disk_start = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 2
  %8 = ptrtoint ptr %logical_disk_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %logical_disk_start, align 8
  %logical_disk_start18 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 2
  %10 = ptrtoint ptr %logical_disk_start18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %logical_disk_start18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp19 = icmp eq i64 %9, %11
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true17.land.end_crit_edge

land.lhs.true17.land.end_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %logical_disk_size = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 3
  %12 = ptrtoint ptr %logical_disk_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %logical_disk_size, align 8
  %logical_disk_size22 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 3
  %14 = ptrtoint ptr %logical_disk_size22 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %logical_disk_size22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp23 = icmp eq i64 %13, %15
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true21.land.end_crit_edge

land.lhs.true21.land.end_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %config_start = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 4
  %16 = ptrtoint ptr %config_start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %config_start, align 8
  %config_start26 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 4
  %18 = ptrtoint ptr %config_start26 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %config_start26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp27 = icmp eq i64 %17, %19
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true25.land.end_crit_edge

land.lhs.true25.land.end_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %config_size = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 5
  %20 = ptrtoint ptr %config_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %config_size, align 8
  %config_size30 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 5
  %22 = ptrtoint ptr %config_size30 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %config_size30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp31 = icmp eq i64 %21, %23
  br i1 %cmp31, label %land.rhs, label %land.lhs.true29.land.end_crit_edge

land.lhs.true29.land.end_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  %disk_id = getelementptr inbounds %struct.privhead, ptr %ph1, i32 0, i32 6
  %disk_id33 = getelementptr inbounds %struct.privhead, ptr %ph2, i32 0, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %disk_id, ptr noundef dereferenceable(16) %disk_id33, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true29.land.end_crit_edge, %land.lhs.true25.land.end_crit_edge, %land.lhs.true21.land.end_crit_edge, %land.lhs.true17.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %do.end8.land.end_crit_edge
  %24 = phi i1 [ false, %land.lhs.true29.land.end_crit_edge ], [ false, %land.lhs.true25.land.end_crit_edge ], [ false, %land.lhs.true21.land.end_crit_edge ], [ false, %land.lhs.true17.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %do.end8.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ldm_ldmdb_add(ptr noundef %data, i32 noundef %len, ptr noundef %ldb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %ldb, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #13, !srcloc !212
  unreachable

do.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 232) #16
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.then12, label %do.end10.i

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ldm_ldmdb_add, ptr noundef nonnull @.str.1)
  br label %cleanup44

do.end10.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp2.i.i = icmp slt i32 %len, 24
  br i1 %cmp2.i.i, label %if.then9.i.i, label %if.end11.i.i

if.then9.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef 24, i32 noundef %len) #13
  br label %if.then11.i

if.end11.i.i:                                     ; preds = %do.end10.i
  %arrayidx.i.i = getelementptr i8, ptr %data, i32 24
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %add12.i.i = add nuw nsw i32 %conv.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %len)
  %cmp13.not.i.i = icmp ult i32 %add12.i.i, %len
  br i1 %cmp13.not.i.i, label %ldm_relative.exit.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i, i32 noundef %len) #13
  br label %if.then11.i

ldm_relative.exit.i:                              ; preds = %if.end11.i.i
  %add22.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx.i = getelementptr i8, ptr %data, i32 18
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %flags.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %flags.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %data, i32 19
  %6 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13.i, align 1
  %type.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %type.i, align 1
  %tobool.not.i87.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i87.i, label %do.body4.i.i, label %do.end9.i.i, !prof !190

if.then11.i:                                      ; preds = %if.then15.i.i, %if.then9.i.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vblk, ptr noundef nonnull @.str.46) #13
  br label %if.then15

do.body4.i.i:                                     ; preds = %ldm_relative.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i.i:                                      ; preds = %ldm_relative.exit.i
  %9 = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %10 = icmp ult i8 %9, 8
  br i1 %10, label %while.body.i.i, label %if.else.i.i

while.body.i.i:                                   ; preds = %do.end9.i.i
  %block.addr.0.i.i = getelementptr i8, ptr %data, i32 25
  %11 = ptrtoint ptr %block.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %block.addr.0.i.i, align 1
  %conv16.i.i = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %tobool14.not.i.i = icmp eq i8 %2, 1
  br i1 %tobool14.not.i.i, label %while.body.i.i.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.1

while.body.i.i.ldm_get_vnum.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.1:                                 ; preds = %while.body.i.i
  %block.addr.0.i.i.1 = getelementptr i8, ptr %data, i32 26
  %shl.i.i.1 = shl nuw nsw i64 %conv16.i.i, 8
  %13 = ptrtoint ptr %block.addr.0.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %block.addr.0.i.i.1, align 1
  %conv16.i.i.1 = zext i8 %14 to i64
  %or.i.i.1 = or i64 %shl.i.i.1, %conv16.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %tobool14.not.i.i.1 = icmp eq i8 %2, 2
  br i1 %tobool14.not.i.i.1, label %while.body.i.i.1.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.2

while.body.i.i.1.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.2:                                 ; preds = %while.body.i.i.1
  %block.addr.0.i.i.2 = getelementptr i8, ptr %data, i32 27
  %shl.i.i.2 = shl nuw nsw i64 %or.i.i.1, 8
  %15 = ptrtoint ptr %block.addr.0.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block.addr.0.i.i.2, align 1
  %conv16.i.i.2 = zext i8 %16 to i64
  %or.i.i.2 = or i64 %shl.i.i.2, %conv16.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %tobool14.not.i.i.2 = icmp eq i8 %2, 3
  br i1 %tobool14.not.i.i.2, label %while.body.i.i.2.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.3

while.body.i.i.2.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.3:                                 ; preds = %while.body.i.i.2
  %block.addr.0.i.i.3 = getelementptr i8, ptr %data, i32 28
  %shl.i.i.3 = shl nuw nsw i64 %or.i.i.2, 8
  %17 = ptrtoint ptr %block.addr.0.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %block.addr.0.i.i.3, align 1
  %conv16.i.i.3 = zext i8 %18 to i64
  %or.i.i.3 = or i64 %shl.i.i.3, %conv16.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %tobool14.not.i.i.3 = icmp eq i8 %2, 4
  br i1 %tobool14.not.i.i.3, label %while.body.i.i.3.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.4

while.body.i.i.3.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.4:                                 ; preds = %while.body.i.i.3
  %block.addr.0.i.i.4 = getelementptr i8, ptr %data, i32 29
  %shl.i.i.4 = shl i64 %or.i.i.3, 8
  %19 = ptrtoint ptr %block.addr.0.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %block.addr.0.i.i.4, align 1
  %conv16.i.i.4 = zext i8 %20 to i64
  %or.i.i.4 = or i64 %shl.i.i.4, %conv16.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %tobool14.not.i.i.4 = icmp eq i8 %2, 5
  br i1 %tobool14.not.i.i.4, label %while.body.i.i.4.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.5

while.body.i.i.4.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.5:                                 ; preds = %while.body.i.i.4
  %block.addr.0.i.i.5 = getelementptr i8, ptr %data, i32 30
  %shl.i.i.5 = shl i64 %or.i.i.4, 8
  %21 = ptrtoint ptr %block.addr.0.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %block.addr.0.i.i.5, align 1
  %conv16.i.i.5 = zext i8 %22 to i64
  %or.i.i.5 = or i64 %shl.i.i.5, %conv16.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %tobool14.not.i.i.5 = icmp eq i8 %2, 6
  br i1 %tobool14.not.i.i.5, label %while.body.i.i.5.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.6

while.body.i.i.5.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.6:                                 ; preds = %while.body.i.i.5
  %block.addr.0.i.i.6 = getelementptr i8, ptr %data, i32 31
  %shl.i.i.6 = shl i64 %or.i.i.5, 8
  %23 = ptrtoint ptr %block.addr.0.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %block.addr.0.i.i.6, align 1
  %conv16.i.i.6 = zext i8 %24 to i64
  %or.i.i.6 = or i64 %shl.i.i.6, %conv16.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %tobool14.not.i.i.6 = icmp eq i8 %2, 7
  br i1 %tobool14.not.i.i.6, label %while.body.i.i.6.ldm_get_vnum.exit.i_crit_edge, label %while.body.i.i.7

while.body.i.i.6.ldm_get_vnum.exit.i_crit_edge:   ; preds = %while.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i

while.body.i.i.7:                                 ; preds = %while.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i.i.7 = getelementptr i8, ptr %data, i32 32
  %shl.i.i.7 = shl i64 %or.i.i.6, 8
  %25 = ptrtoint ptr %block.addr.0.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %block.addr.0.i.i.7, align 1
  %conv16.i.i.7 = zext i8 %26 to i64
  %or.i.i.7 = or i64 %shl.i.i.7, %conv16.i.i.7
  br label %ldm_get_vnum.exit.i

if.else.i.i:                                      ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i.i) #13
  br label %ldm_get_vnum.exit.i

ldm_get_vnum.exit.i:                              ; preds = %if.else.i.i, %while.body.i.i.7, %while.body.i.i.6.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.5.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.4.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.3.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.2.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.1.ldm_get_vnum.exit.i_crit_edge, %while.body.i.i.ldm_get_vnum.exit.i_crit_edge
  %tmp.1.i.i = phi i64 [ 0, %if.else.i.i ], [ %conv16.i.i, %while.body.i.i.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.1, %while.body.i.i.1.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.2, %while.body.i.i.2.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.3, %while.body.i.i.3.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.4, %while.body.i.i.4.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.5, %while.body.i.i.5.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.6, %while.body.i.i.6.ldm_get_vnum.exit.i_crit_edge ], [ %or.i.i.7, %while.body.i.i.7 ]
  %obj_id.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %obj_id.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %tmp.1.i.i, ptr %obj_id.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add22.i.i
  %tobool.not.i90.i = icmp eq ptr %add.ptr16.i, null
  br i1 %tobool.not.i90.i, label %do.body5.i.i, label %do.end10.i.i, !prof !190

do.body5.i.i:                                     ; preds = %ldm_get_vnum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10.i.i:                                     ; preds = %ldm_get_vnum.exit.i
  %28 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr16.i, align 1
  %conv.i91.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %29)
  %cmp.not.i.i = icmp ult i8 %29, 64
  br i1 %cmp.not.i.i, label %do.end10.i.i.ldm_get_vstr.exit.i_crit_edge, label %if.then12.i.i

do.end10.i.i.ldm_get_vstr.exit.i_crit_edge:       ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vstr.exit.i

if.then12.i.i:                                    ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv.i91.i, i32 noundef 64) #13
  br label %ldm_get_vstr.exit.i

ldm_get_vstr.exit.i:                              ; preds = %if.then12.i.i, %do.end10.i.i.ldm_get_vstr.exit.i_crit_edge
  %length.0.i.i = phi i32 [ 63, %if.then12.i.i ], [ %conv.i91.i, %do.end10.i.i.ldm_get_vstr.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr16.i, i32 1
  %30 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr.i.i, i32 %length.0.i.i)
  %arrayidx14.i.i = getelementptr i8, ptr %call7.i, i32 %length.0.i.i
  %31 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx14.i.i, align 1
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %33, label %ldm_get_vstr.exit.i.if.else.i_crit_edge [
    i8 50, label %if.end11.i.i.i
    i8 52, label %if.end11.i.i111.i
    i8 68, label %if.end11.i.i145.i
    i8 53, label %if.end11.i.i168.i
    i8 69, label %if.end11.i.i203.i
    i8 51, label %if.end11.i.i235.i
    i8 81, label %if.end11.i.i274.i
  ]

ldm_get_vstr.exit.i.if.else.i_crit_edge:          ; preds = %ldm_get_vstr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end11.i.i.i:                                   ; preds = %ldm_get_vstr.exit.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i.i = zext i8 %36 to i32
  %add12.i.i.i = add nuw nsw i32 %conv.i.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i.i, i32 %len)
  %cmp13.not.i.i.i = icmp ult i32 %add12.i.i.i, %len
  br i1 %cmp13.not.i.i.i, label %ldm_relative.exit.i.i, label %if.end.i422.thread.i

if.end.i422.thread.i:                             ; preds = %if.end11.i.i.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i.i, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i418695.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i418695.i, label %if.end.i422.thread.i.if.then9.i425.i_crit_edge, label %if.end.i399.thread.thread.i

if.end.i422.thread.i.if.then9.i425.i_crit_edge:   ; preds = %if.end.i422.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i425.i

if.end.i399.thread.thread.i:                      ; preds = %if.end.i422.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br label %if.end.i376.thread.i

ldm_relative.exit.i.i:                            ; preds = %if.end11.i.i.i
  %add.i414.i = add nuw nsw i32 %conv.i.i.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i414.i, i32 %len)
  %cmp2.i418.i = icmp ugt i32 %add.i414.i, %len
  br i1 %cmp2.i418.i, label %ldm_relative.exit.i.i.if.then9.i425.i_crit_edge, label %if.end11.i430.i

ldm_relative.exit.i.i.if.then9.i425.i_crit_edge:  ; preds = %ldm_relative.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i425.i

if.then9.i425.i:                                  ; preds = %ldm_relative.exit.i.i.if.then9.i425.i_crit_edge, %if.end.i422.thread.i.if.then9.i425.i_crit_edge
  %add.i414698707710.i = phi i32 [ 23, %if.end.i422.thread.i.if.then9.i425.i_crit_edge ], [ %add.i414.i, %ldm_relative.exit.i.i.if.then9.i425.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i414698707710.i, i32 noundef %len) #13
  br label %if.end.i399.thread.i

if.end11.i430.i:                                  ; preds = %ldm_relative.exit.i.i
  %arrayidx.i426.i = getelementptr i8, ptr %data, i32 %add.i414.i
  %37 = ptrtoint ptr %arrayidx.i426.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i426.i, align 1
  %conv.i427.i = zext i8 %38 to i32
  %add12.i428.i = add nuw nsw i32 %add.i414.i, %conv.i427.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i428.i, i32 %len)
  %cmp13.not.i429.i = icmp ult i32 %add12.i428.i, %len
  br i1 %cmp13.not.i429.i, label %ldm_relative.exit436.i, label %if.then15.i431.i

if.then15.i431.i:                                 ; preds = %if.end11.i430.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i414.i, i32 noundef %conv.i427.i, i32 noundef %len) #13
  br label %if.end.i399.thread.i

if.end.i399.thread.i:                             ; preds = %if.then15.i431.i, %if.then9.i425.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i395714.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i395714.i, label %if.end.i399.thread.i.if.then9.i402.i_crit_edge, label %if.end.i399.thread.i.if.end.i376.thread.i_crit_edge

if.end.i399.thread.i.if.end.i376.thread.i_crit_edge: ; preds = %if.end.i399.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i376.thread.i

if.end.i399.thread.i.if.then9.i402.i_crit_edge:   ; preds = %if.end.i399.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i402.i

ldm_relative.exit436.i:                           ; preds = %if.end11.i430.i
  %add21.i432.i = add nuw nsw i32 %conv.i.i.i, 2
  %add22.i433.i = add nuw nsw i32 %add21.i432.i, %conv.i427.i
  %add.i391.i = add nuw nsw i32 %add22.i433.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i391.i, i32 %len)
  %cmp2.i395.i = icmp ugt i32 %add.i391.i, %len
  br i1 %cmp2.i395.i, label %ldm_relative.exit436.i.if.then9.i402.i_crit_edge, label %if.end11.i407.i

ldm_relative.exit436.i.if.then9.i402.i_crit_edge: ; preds = %ldm_relative.exit436.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i402.i

if.then9.i402.i:                                  ; preds = %ldm_relative.exit436.i.if.then9.i402.i_crit_edge, %if.end.i399.thread.i.if.then9.i402.i_crit_edge
  %retval.0.i435718732.i = phi i32 [ -1, %if.end.i399.thread.i.if.then9.i402.i_crit_edge ], [ %add22.i433.i, %ldm_relative.exit436.i.if.then9.i402.i_crit_edge ]
  %add.i391719728731.i = phi i32 [ 23, %if.end.i399.thread.i.if.then9.i402.i_crit_edge ], [ %add.i391.i, %ldm_relative.exit436.i.if.then9.i402.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i391719728731.i, i32 noundef %len) #13
  br label %if.end.i376.thread.i

if.end11.i407.i:                                  ; preds = %ldm_relative.exit436.i
  %arrayidx.i403.i = getelementptr i8, ptr %data, i32 %add.i391.i
  %39 = ptrtoint ptr %arrayidx.i403.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i403.i, align 1
  %conv.i404.i = zext i8 %40 to i32
  %add12.i405.i = add nuw nsw i32 %add.i391.i, %conv.i404.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i405.i, i32 %len)
  %cmp13.not.i406.i = icmp ult i32 %add12.i405.i, %len
  br i1 %cmp13.not.i406.i, label %ldm_relative.exit413.i, label %if.then15.i408.i

if.then15.i408.i:                                 ; preds = %if.end11.i407.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i391.i, i32 noundef %conv.i404.i, i32 noundef %len) #13
  br label %if.end.i376.thread.i

if.end.i376.thread.i:                             ; preds = %if.then15.i408.i, %if.then9.i402.i, %if.end.i399.thread.i.if.end.i376.thread.i_crit_edge, %if.end.i399.thread.thread.i
  %retval.0.i435717.ph.i = phi i32 [ %retval.0.i435718732.i, %if.then9.i402.i ], [ %add22.i433.i, %if.then15.i408.i ], [ -1, %if.end.i399.thread.i.if.end.i376.thread.i_crit_edge ], [ -1, %if.end.i399.thread.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %len)
  %cmp2.i372737.i = icmp slt i32 %len, 28
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i372737.i, label %if.end.i376.thread.i.if.then9.i379.i_crit_edge, label %if.end.i376.thread.i.if.end.i353.thread.i_crit_edge

if.end.i376.thread.i.if.end.i353.thread.i_crit_edge: ; preds = %if.end.i376.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i353.thread.i

if.end.i376.thread.i.if.then9.i379.i_crit_edge:   ; preds = %if.end.i376.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i379.i

ldm_relative.exit413.i:                           ; preds = %if.end11.i407.i
  %add21.i409.i = add nuw nsw i32 %add22.i433.i, 1
  %add22.i410.i = add nuw nsw i32 %add21.i409.i, %conv.i404.i
  %add.i368.i = add nuw nsw i32 %add22.i410.i, 29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i368.i, i32 %len)
  %cmp2.i372.i = icmp ugt i32 %add.i368.i, %len
  br i1 %cmp2.i372.i, label %ldm_relative.exit413.i.if.then9.i379.i_crit_edge, label %if.end11.i384.i

ldm_relative.exit413.i.if.then9.i379.i_crit_edge: ; preds = %ldm_relative.exit413.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i379.i

if.then9.i379.i:                                  ; preds = %ldm_relative.exit413.i.if.then9.i379.i_crit_edge, %if.end.i376.thread.i.if.then9.i379.i_crit_edge
  %retval.0.i412743761.i = phi i32 [ -1, %if.end.i376.thread.i.if.then9.i379.i_crit_edge ], [ %add22.i410.i, %ldm_relative.exit413.i.if.then9.i379.i_crit_edge ]
  %add.i368744754760.i = phi i32 [ 28, %if.end.i376.thread.i.if.then9.i379.i_crit_edge ], [ %add.i368.i, %ldm_relative.exit413.i.if.then9.i379.i_crit_edge ]
  %retval.0.i435717740757759.i = phi i32 [ %retval.0.i435717.ph.i, %if.end.i376.thread.i.if.then9.i379.i_crit_edge ], [ %add22.i433.i, %ldm_relative.exit413.i.if.then9.i379.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i368744754760.i, i32 noundef %len) #13
  br label %if.end.i353.thread.i

if.end11.i384.i:                                  ; preds = %ldm_relative.exit413.i
  %arrayidx.i380.i = getelementptr i8, ptr %data, i32 %add.i368.i
  %41 = ptrtoint ptr %arrayidx.i380.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i380.i, align 1
  %conv.i381.i = zext i8 %42 to i32
  %add12.i382.i = add nuw nsw i32 %add.i368.i, %conv.i381.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i382.i, i32 %len)
  %cmp13.not.i383.i = icmp ult i32 %add12.i382.i, %len
  br i1 %cmp13.not.i383.i, label %ldm_relative.exit390.i, label %if.then15.i385.i

if.then15.i385.i:                                 ; preds = %if.end11.i384.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i368.i, i32 noundef %conv.i381.i, i32 noundef %len) #13
  br label %if.end.i353.thread.i

if.end.i353.thread.i:                             ; preds = %if.then15.i385.i, %if.then9.i379.i, %if.end.i376.thread.i.if.end.i353.thread.i_crit_edge
  %retval.0.i412742.ph.i = phi i32 [ %retval.0.i412743761.i, %if.then9.i379.i ], [ %add22.i410.i, %if.then15.i385.i ], [ -1, %if.end.i376.thread.i.if.end.i353.thread.i_crit_edge ]
  %retval.0.i435717739.ph.i = phi i32 [ %retval.0.i435717740757759.i, %if.then9.i379.i ], [ %add22.i433.i, %if.then15.i385.i ], [ %retval.0.i435717.ph.i, %if.end.i376.thread.i.if.end.i353.thread.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %len)
  %cmp2.i349767.i = icmp slt i32 %len, 44
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i349767.i, label %if.end.i353.thread.i.if.then9.i356.i_crit_edge, label %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge

if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge: ; preds = %if.end.i353.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_relative.exit367.i

if.end.i353.thread.i.if.then9.i356.i_crit_edge:   ; preds = %if.end.i353.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i356.i

ldm_relative.exit390.i:                           ; preds = %if.end11.i384.i
  %add21.i386.i = add nuw nsw i32 %add22.i410.i, 1
  %add22.i387.i = add nuw nsw i32 %add21.i386.i, %conv.i381.i
  %add.i345.i = add nuw nsw i32 %add22.i387.i, 45
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i345.i, i32 %len)
  %cmp2.i349.i = icmp ugt i32 %add.i345.i, %len
  br i1 %cmp2.i349.i, label %ldm_relative.exit390.i.if.then9.i356.i_crit_edge, label %if.end11.i361.i

ldm_relative.exit390.i.if.then9.i356.i_crit_edge: ; preds = %ldm_relative.exit390.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i356.i

if.then9.i356.i:                                  ; preds = %ldm_relative.exit390.i.if.then9.i356.i_crit_edge, %if.end.i353.thread.i.if.then9.i356.i_crit_edge
  %retval.0.i389775797.i = phi i32 [ -1, %if.end.i353.thread.i.if.then9.i356.i_crit_edge ], [ %add22.i387.i, %ldm_relative.exit390.i.if.then9.i356.i_crit_edge ]
  %add.i345776787796.i = phi i32 [ 44, %if.end.i353.thread.i.if.then9.i356.i_crit_edge ], [ %add.i345.i, %ldm_relative.exit390.i.if.then9.i356.i_crit_edge ]
  %retval.0.i435717739772790795.i = phi i32 [ %retval.0.i435717739.ph.i, %if.end.i353.thread.i.if.then9.i356.i_crit_edge ], [ %add22.i433.i, %ldm_relative.exit390.i.if.then9.i356.i_crit_edge ]
  %retval.0.i412742770792794.i = phi i32 [ %retval.0.i412742.ph.i, %if.end.i353.thread.i.if.then9.i356.i_crit_edge ], [ %add22.i410.i, %ldm_relative.exit390.i.if.then9.i356.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i345776787796.i, i32 noundef %len) #13
  br label %ldm_relative.exit367.i

if.end11.i361.i:                                  ; preds = %ldm_relative.exit390.i
  %arrayidx.i357.i = getelementptr i8, ptr %data, i32 %add.i345.i
  %43 = ptrtoint ptr %arrayidx.i357.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i357.i, align 1
  %conv.i358.i = zext i8 %44 to i32
  %add12.i359.i = add nuw nsw i32 %add.i345.i, %conv.i358.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i359.i, i32 %len)
  %cmp13.not.i360.i = icmp ult i32 %add12.i359.i, %len
  br i1 %cmp13.not.i360.i, label %if.end18.i365.i, label %if.then15.i362.i

if.then15.i362.i:                                 ; preds = %if.end11.i361.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i345.i, i32 noundef %conv.i358.i, i32 noundef %len) #13
  br label %ldm_relative.exit367.i

if.end18.i365.i:                                  ; preds = %if.end11.i361.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i363.i = add nuw nsw i32 %add22.i387.i, 1
  %add22.i364.i = add nuw nsw i32 %add21.i363.i, %conv.i358.i
  br label %ldm_relative.exit367.i

ldm_relative.exit367.i:                           ; preds = %if.end18.i365.i, %if.then15.i362.i, %if.then9.i356.i, %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge
  %retval.0.i389774.i = phi i32 [ %add22.i387.i, %if.then15.i362.i ], [ %add22.i387.i, %if.end18.i365.i ], [ %retval.0.i389775797.i, %if.then9.i356.i ], [ -1, %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge ]
  %retval.0.i435717739771.i = phi i32 [ %add22.i433.i, %if.then15.i362.i ], [ %add22.i433.i, %if.end18.i365.i ], [ %retval.0.i435717739772790795.i, %if.then9.i356.i ], [ %retval.0.i435717739.ph.i, %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge ]
  %retval.0.i412742769.i = phi i32 [ %add22.i410.i, %if.then15.i362.i ], [ %add22.i410.i, %if.end18.i365.i ], [ %retval.0.i412742770792794.i, %if.then9.i356.i ], [ %retval.0.i412742.ph.i, %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge ]
  %retval.0.i366.i = phi i32 [ -1, %if.then15.i362.i ], [ %add22.i364.i, %if.end18.i365.i ], [ -1, %if.then9.i356.i ], [ -1, %if.end.i353.thread.i.ldm_relative.exit367.i_crit_edge ]
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %47 = and i8 %46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool15.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool15.not.i.i, label %if.end19.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %ldm_relative.exit367.i
  %add.i322.i = add nsw i32 %retval.0.i366.i, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i366.i)
  %cmp.i324.i = icmp slt i32 %retval.0.i366.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322.i, i32 %len)
  %cmp2.i326.i = icmp sgt i32 %add.i322.i, %len
  %or.cond43.i327.i = or i1 %cmp.i324.i, %cmp2.i326.i
  br i1 %or.cond43.i327.i, label %if.end.i330.i, label %if.end11.i338.i

if.end.i330.i:                                    ; preds = %if.then16.i.i
  br i1 %cmp.i324.i, label %if.then6.i331.i, label %if.end.i330.i.if.end7.i332.i_crit_edge

if.end.i330.i.if.end7.i332.i_crit_edge:           ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i332.i

if.then6.i331.i:                                  ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i366.i) #13
  br label %if.end7.i332.i

if.end7.i332.i:                                   ; preds = %if.then6.i331.i, %if.end.i330.i.if.end7.i332.i_crit_edge
  br i1 %cmp2.i326.i, label %if.then9.i333.i, label %if.end7.i332.i.if.end.i310.thread.i_crit_edge

if.end7.i332.i.if.end.i310.thread.i_crit_edge:    ; preds = %if.end7.i332.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i310.thread.i

if.then9.i333.i:                                  ; preds = %if.end7.i332.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i322.i, i32 noundef %len) #13
  br label %if.end.i310.thread.i

if.end11.i338.i:                                  ; preds = %if.then16.i.i
  %arrayidx.i334.i = getelementptr i8, ptr %data, i32 %add.i322.i
  %48 = ptrtoint ptr %arrayidx.i334.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i334.i, align 1
  %conv.i335.i = zext i8 %49 to i32
  %add12.i336.i = add nuw nsw i32 %add.i322.i, %conv.i335.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i336.i, i32 %len)
  %cmp13.not.i337.i = icmp slt i32 %add12.i336.i, %len
  br i1 %cmp13.not.i337.i, label %ldm_relative.exit344.i, label %if.then15.i339.i

if.then15.i339.i:                                 ; preds = %if.end11.i338.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i322.i, i32 noundef %conv.i335.i, i32 noundef %len) #13
  br label %if.end.i310.thread.i

if.end.i310.thread.i:                             ; preds = %if.then15.i339.i, %if.then9.i333.i, %if.end7.i332.i.if.end.i310.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %len)
  %cmp2.i306801.i = icmp slt i32 %len, 45
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i306801.i, label %if.end.i310.thread.i.if.then9.i311.i_crit_edge, label %if.end.i310.thread.i.if.else.i_crit_edge

if.end.i310.thread.i.if.else.i_crit_edge:         ; preds = %if.end.i310.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i310.thread.i.if.then9.i311.i_crit_edge:   ; preds = %if.end.i310.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i311.i

ldm_relative.exit344.i:                           ; preds = %if.end11.i338.i
  %add21.i340.i = add nuw nsw i32 %retval.0.i366.i, 1
  %add22.i341.i = add nuw nsw i32 %add21.i340.i, %conv.i335.i
  %add.i303.i = add nuw nsw i32 %add22.i341.i, 46
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i303.i, i32 %len)
  %cmp2.i306.i = icmp sgt i32 %add.i303.i, %len
  br i1 %cmp2.i306.i, label %ldm_relative.exit344.i.if.then9.i311.i_crit_edge, label %if.end11.i316.i

ldm_relative.exit344.i.if.then9.i311.i_crit_edge: ; preds = %ldm_relative.exit344.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i311.i

if.then9.i311.i:                                  ; preds = %ldm_relative.exit344.i.if.then9.i311.i_crit_edge, %if.end.i310.thread.i.if.then9.i311.i_crit_edge
  %add.i303806815818.i = phi i32 [ 45, %if.end.i310.thread.i.if.then9.i311.i_crit_edge ], [ %add.i303.i, %ldm_relative.exit344.i.if.then9.i311.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i303806815818.i, i32 noundef %len) #13
  br label %if.else.i

if.end11.i316.i:                                  ; preds = %ldm_relative.exit344.i
  %arrayidx.i312.i = getelementptr i8, ptr %data, i32 %add.i303.i
  %50 = ptrtoint ptr %arrayidx.i312.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i312.i, align 1
  %conv.i313.i = zext i8 %51 to i32
  %add12.i314.i = add nuw nsw i32 %add.i303.i, %conv.i313.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i314.i, i32 %len)
  %cmp13.not.i315.i = icmp slt i32 %add12.i314.i, %len
  br i1 %cmp13.not.i315.i, label %if.end19.i.thread823.i, label %if.then15.i317.i

if.then15.i317.i:                                 ; preds = %if.end11.i316.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i303.i, i32 noundef %conv.i313.i, i32 noundef %len) #13
  br label %if.else.i

if.end19.i.thread823.i:                           ; preds = %if.end11.i316.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i.i = add nuw nsw i32 %add22.i341.i, 1
  %add22.i318.i = add nuw nsw i32 %add21.i.i, %conv.i313.i
  br label %if.end22.i.i

if.end19.i.i:                                     ; preds = %ldm_relative.exit367.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i366.i)
  %cmp.i.i = icmp slt i32 %retval.0.i366.i, 0
  br i1 %cmp.i.i, label %if.end19.i.i.if.else.i_crit_edge, label %if.end19.i.i.if.end22.i.i_crit_edge

if.end19.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i.i

if.end19.i.i.if.else.i_crit_edge:                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end22.i.i:                                     ; preds = %if.end19.i.i.if.end22.i.i_crit_edge, %if.end19.i.thread823.i
  %len.0.i828.i = phi i32 [ %add22.i318.i, %if.end19.i.thread823.i ], [ %retval.0.i366.i, %if.end19.i.i.if.end22.i.i_crit_edge ]
  %r_stripe.0.i827.i = phi i32 [ %add22.i341.i, %if.end19.i.thread823.i ], [ 0, %if.end19.i.i.if.end22.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %len.0.i828.i, 22
  %add.ptr.i98.i = getelementptr i8, ptr %data, i32 20
  %52 = ptrtoint ptr %add.ptr.i98.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr.i98.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %53)
  %cmp24.not.i.i = icmp eq i32 %add.i.i, %53
  br i1 %cmp24.not.i.i, label %if.end27.i.i, label %if.end22.i.i.if.else.i_crit_edge

if.end22.i.i.if.else.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  %vblk.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr29.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %retval.0.i435717739771.i
  %tobool.not.i87.i.i = icmp eq ptr %add.ptr29.i.i, null
  br i1 %tobool.not.i87.i.i, label %do.body5.i.i.i, label %do.end10.i.i.i, !prof !190

do.body5.i.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10.i.i.i:                                   ; preds = %if.end27.i.i
  %54 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr29.i.i, align 1
  %conv.i88.i.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %55)
  %cmp.not.i.i.i = icmp ult i8 %55, 16
  br i1 %cmp.not.i.i.i, label %do.end10.i.i.i.ldm_get_vstr.exit.i.i_crit_edge, label %if.then12.i.i.i

do.end10.i.i.i.ldm_get_vstr.exit.i.i_crit_edge:   ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vstr.exit.i.i

if.then12.i.i.i:                                  ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv.i88.i.i, i32 noundef 16) #13
  br label %ldm_get_vstr.exit.i.i

ldm_get_vstr.exit.i.i:                            ; preds = %if.then12.i.i.i, %do.end10.i.i.i.ldm_get_vstr.exit.i.i_crit_edge
  %length.0.i.i.i = phi i32 [ 15, %if.then12.i.i.i ], [ %conv.i88.i.i, %do.end10.i.i.i.ldm_get_vstr.exit.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr29.i.i, i32 1
  %56 = call ptr @memcpy(ptr %vblk.i.i, ptr %add.ptr.i.i.i, i32 %length.0.i.i.i)
  %arrayidx14.i.i.i = getelementptr i8, ptr %vblk.i.i, i32 %length.0.i.i.i
  %57 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx14.i.i.i, align 1
  %add31.i.i = add nsw i32 %retval.0.i412742769.i, 24
  %arrayidx32.i.i = getelementptr i8, ptr %data, i32 %add31.i.i
  %58 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx32.i.i, align 1
  %type.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1, i32 8
  %60 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %type.i.i, align 8
  %add.ptr33.i.i = getelementptr i8, ptr %data, i32 29
  %add.ptr34.i.i = getelementptr i8, ptr %add.ptr33.i.i, i32 %retval.0.i412742769.i
  %tobool.not.i89.i.i = icmp eq ptr %add.ptr34.i.i, null
  br i1 %tobool.not.i89.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !190

do.body4.i.i.i:                                   ; preds = %ldm_get_vstr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i.i.i:                                    ; preds = %ldm_get_vstr.exit.i.i
  %61 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr34.i.i, align 1
  %63 = add i8 %62, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %64 = icmp ult i8 %63, 8
  br i1 %64, label %while.body.i.i.preheader.i, label %if.else.i.i.i

while.body.i.i.preheader.i:                       ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = zext i8 %63 to i32
  %66 = add nsw i32 %retval.0.i412742769.i, 30
  %67 = add nuw nsw i32 %66, %65
  %uglygep.i = getelementptr i8, ptr %data, i32 %67
  %68 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %uglygep.i, align 1
  br label %ldm_get_vnum.exit.i.i

if.else.i.i.i:                                    ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i90.i.i = zext i8 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i90.i.i) #13
  br label %ldm_get_vnum.exit.i.i

ldm_get_vnum.exit.i.i:                            ; preds = %if.else.i.i.i, %while.body.i.i.preheader.i
  %tmp.1.i.off0.i.i = phi i8 [ 0, %if.else.i.i.i ], [ %69, %while.body.i.i.preheader.i ]
  %children.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1, i32 9
  %70 = ptrtoint ptr %children.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %tmp.1.i.off0.i.i, ptr %children.i.i, align 1
  %add.ptr37.i.i = getelementptr i8, ptr %data, i32 45
  %add.ptr38.i.i = getelementptr i8, ptr %add.ptr37.i.i, i32 %retval.0.i389774.i
  %tobool.not.i92.i.i = icmp eq ptr %add.ptr38.i.i, null
  br i1 %tobool.not.i92.i.i, label %do.body4.i93.i.i, label %do.end9.i94.i.i, !prof !190

do.body4.i93.i.i:                                 ; preds = %ldm_get_vnum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i94.i.i:                                  ; preds = %ldm_get_vnum.exit.i.i
  %71 = ptrtoint ptr %add.ptr38.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr38.i.i, align 1
  %73 = add i8 %72, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %73)
  %74 = icmp ult i8 %73, 8
  br i1 %74, label %while.body.i104.i.i, label %if.else.i106.i.i

while.body.i104.i.i:                              ; preds = %do.end9.i94.i.i
  %block.addr.0.i99.i.i = getelementptr i8, ptr %add.ptr38.i.i, i32 1
  %75 = ptrtoint ptr %block.addr.0.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %block.addr.0.i99.i.i, align 1
  %conv16.i101.i.i = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %tobool14.not.i103.i.i = icmp eq i8 %72, 1
  br i1 %tobool14.not.i103.i.i, label %while.body.i104.i.i.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.1

while.body.i104.i.i.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.1:                            ; preds = %while.body.i104.i.i
  %block.addr.0.i99.i.i.1 = getelementptr i8, ptr %block.addr.0.i99.i.i, i32 1
  %shl.i100.i.i.1 = shl nuw nsw i64 %conv16.i101.i.i, 8
  %77 = ptrtoint ptr %block.addr.0.i99.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %block.addr.0.i99.i.i.1, align 1
  %conv16.i101.i.i.1 = zext i8 %78 to i64
  %or.i102.i.i.1 = or i64 %shl.i100.i.i.1, %conv16.i101.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %tobool14.not.i103.i.i.1 = icmp eq i8 %72, 2
  br i1 %tobool14.not.i103.i.i.1, label %while.body.i104.i.i.1.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.2

while.body.i104.i.i.1.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.2:                            ; preds = %while.body.i104.i.i.1
  %block.addr.0.i99.i.i.2 = getelementptr i8, ptr %block.addr.0.i99.i.i.1, i32 1
  %shl.i100.i.i.2 = shl nuw nsw i64 %or.i102.i.i.1, 8
  %79 = ptrtoint ptr %block.addr.0.i99.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %block.addr.0.i99.i.i.2, align 1
  %conv16.i101.i.i.2 = zext i8 %80 to i64
  %or.i102.i.i.2 = or i64 %shl.i100.i.i.2, %conv16.i101.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %tobool14.not.i103.i.i.2 = icmp eq i8 %72, 3
  br i1 %tobool14.not.i103.i.i.2, label %while.body.i104.i.i.2.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.3

while.body.i104.i.i.2.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.3:                            ; preds = %while.body.i104.i.i.2
  %block.addr.0.i99.i.i.3 = getelementptr i8, ptr %block.addr.0.i99.i.i.2, i32 1
  %shl.i100.i.i.3 = shl nuw nsw i64 %or.i102.i.i.2, 8
  %81 = ptrtoint ptr %block.addr.0.i99.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %block.addr.0.i99.i.i.3, align 1
  %conv16.i101.i.i.3 = zext i8 %82 to i64
  %or.i102.i.i.3 = or i64 %shl.i100.i.i.3, %conv16.i101.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %72)
  %tobool14.not.i103.i.i.3 = icmp eq i8 %72, 4
  br i1 %tobool14.not.i103.i.i.3, label %while.body.i104.i.i.3.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.4

while.body.i104.i.i.3.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.4:                            ; preds = %while.body.i104.i.i.3
  %block.addr.0.i99.i.i.4 = getelementptr i8, ptr %block.addr.0.i99.i.i.3, i32 1
  %shl.i100.i.i.4 = shl i64 %or.i102.i.i.3, 8
  %83 = ptrtoint ptr %block.addr.0.i99.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %block.addr.0.i99.i.i.4, align 1
  %conv16.i101.i.i.4 = zext i8 %84 to i64
  %or.i102.i.i.4 = or i64 %shl.i100.i.i.4, %conv16.i101.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %72)
  %tobool14.not.i103.i.i.4 = icmp eq i8 %72, 5
  br i1 %tobool14.not.i103.i.i.4, label %while.body.i104.i.i.4.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.5

while.body.i104.i.i.4.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.5:                            ; preds = %while.body.i104.i.i.4
  %block.addr.0.i99.i.i.5 = getelementptr i8, ptr %block.addr.0.i99.i.i.4, i32 1
  %shl.i100.i.i.5 = shl i64 %or.i102.i.i.4, 8
  %85 = ptrtoint ptr %block.addr.0.i99.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %block.addr.0.i99.i.i.5, align 1
  %conv16.i101.i.i.5 = zext i8 %86 to i64
  %or.i102.i.i.5 = or i64 %shl.i100.i.i.5, %conv16.i101.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %72)
  %tobool14.not.i103.i.i.5 = icmp eq i8 %72, 6
  br i1 %tobool14.not.i103.i.i.5, label %while.body.i104.i.i.5.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.6

while.body.i104.i.i.5.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.6:                            ; preds = %while.body.i104.i.i.5
  %block.addr.0.i99.i.i.6 = getelementptr i8, ptr %block.addr.0.i99.i.i.5, i32 1
  %shl.i100.i.i.6 = shl i64 %or.i102.i.i.5, 8
  %87 = ptrtoint ptr %block.addr.0.i99.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %block.addr.0.i99.i.i.6, align 1
  %conv16.i101.i.i.6 = zext i8 %88 to i64
  %or.i102.i.i.6 = or i64 %shl.i100.i.i.6, %conv16.i101.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %72)
  %tobool14.not.i103.i.i.6 = icmp eq i8 %72, 7
  br i1 %tobool14.not.i103.i.i.6, label %while.body.i104.i.i.6.ldm_get_vnum.exit109.i.i_crit_edge, label %while.body.i104.i.i.7

while.body.i104.i.i.6.ldm_get_vnum.exit109.i.i_crit_edge: ; preds = %while.body.i104.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit109.i.i

while.body.i104.i.i.7:                            ; preds = %while.body.i104.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i99.i.i.7 = getelementptr i8, ptr %block.addr.0.i99.i.i.6, i32 1
  %shl.i100.i.i.7 = shl i64 %or.i102.i.i.6, 8
  %89 = ptrtoint ptr %block.addr.0.i99.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %block.addr.0.i99.i.i.7, align 1
  %conv16.i101.i.i.7 = zext i8 %90 to i64
  %or.i102.i.i.7 = or i64 %shl.i100.i.i.7, %conv16.i101.i.i.7
  br label %ldm_get_vnum.exit109.i.i

if.else.i106.i.i:                                 ; preds = %do.end9.i94.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i105.i.i = zext i8 %72 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i105.i.i) #13
  br label %ldm_get_vnum.exit109.i.i

ldm_get_vnum.exit109.i.i:                         ; preds = %if.else.i106.i.i, %while.body.i104.i.i.7, %while.body.i104.i.i.6.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.5.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.4.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.3.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.2.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.1.ldm_get_vnum.exit109.i.i_crit_edge, %while.body.i104.i.i.ldm_get_vnum.exit109.i.i_crit_edge
  %tmp.1.i107.i.i = phi i64 [ 0, %if.else.i106.i.i ], [ %conv16.i101.i.i, %while.body.i104.i.i.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.1, %while.body.i104.i.i.1.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.2, %while.body.i104.i.i.2.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.3, %while.body.i104.i.i.3.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.4, %while.body.i104.i.i.4.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.5, %while.body.i104.i.i.5.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.6, %while.body.i104.i.i.6.ldm_get_vnum.exit109.i.i_crit_edge ], [ %or.i102.i.i.7, %while.body.i104.i.i.7 ]
  %parent_id.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %91 = ptrtoint ptr %parent_id.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %tmp.1.i107.i.i, ptr %parent_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r_stripe.0.i827.i)
  %tobool40.not.i.i = icmp eq i32 %r_stripe.0.i827.i, 0
  br i1 %tobool40.not.i.i, label %ldm_get_vnum.exit109.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

ldm_get_vnum.exit109.i.i.cond.end.i.i_crit_edge:  ; preds = %ldm_get_vnum.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %ldm_get_vnum.exit109.i.i
  %add.ptr41.i.i = getelementptr i8, ptr %data, i32 %retval.0.i366.i
  %add.ptr42.i.i = getelementptr i8, ptr %add.ptr41.i.i, i32 46
  %tobool.not.i110.i.i = icmp eq ptr %add.ptr42.i.i, null
  br i1 %tobool.not.i110.i.i, label %do.body4.i111.i.i, label %do.end9.i112.i.i, !prof !190

do.body4.i111.i.i:                                ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i112.i.i:                                 ; preds = %cond.true.i.i
  %92 = ptrtoint ptr %add.ptr42.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr42.i.i, align 1
  %94 = add i8 %93, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %94)
  %95 = icmp ult i8 %94, 8
  br i1 %95, label %while.body.i122.i.i, label %if.else.i124.i.i

while.body.i122.i.i:                              ; preds = %do.end9.i112.i.i
  %block.addr.0.i117.i.i = getelementptr i8, ptr %add.ptr42.i.i, i32 1
  %96 = ptrtoint ptr %block.addr.0.i117.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %block.addr.0.i117.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %tobool14.not.i121.i.i = icmp eq i8 %93, 1
  %extract.t = zext i8 %97 to i16
  br i1 %tobool14.not.i121.i.i, label %while.body.i122.i.i.cond.end.i.i_crit_edge, label %while.body.i122.i.i.1

while.body.i122.i.i.cond.end.i.i_crit_edge:       ; preds = %while.body.i122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.1:                            ; preds = %while.body.i122.i.i
  %conv16.i119.i.i = zext i8 %97 to i64
  %block.addr.0.i117.i.i.1 = getelementptr i8, ptr %block.addr.0.i117.i.i, i32 1
  %shl.i118.i.i.1 = shl nuw nsw i64 %conv16.i119.i.i, 8
  %98 = ptrtoint ptr %block.addr.0.i117.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %block.addr.0.i117.i.i.1, align 1
  %conv16.i119.i.i.1 = zext i8 %99 to i64
  %or.i120.i.i.1 = or i64 %shl.i118.i.i.1, %conv16.i119.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %tobool14.not.i121.i.i.1 = icmp eq i8 %93, 2
  %extract.t101 = trunc i64 %or.i120.i.i.1 to i16
  br i1 %tobool14.not.i121.i.i.1, label %while.body.i122.i.i.1.cond.end.i.i_crit_edge, label %while.body.i122.i.i.2

while.body.i122.i.i.1.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.2:                            ; preds = %while.body.i122.i.i.1
  %block.addr.0.i117.i.i.2 = getelementptr i8, ptr %block.addr.0.i117.i.i.1, i32 1
  %shl.i118.i.i.2 = shl nuw nsw i64 %or.i120.i.i.1, 8
  %100 = ptrtoint ptr %block.addr.0.i117.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %block.addr.0.i117.i.i.2, align 1
  %conv16.i119.i.i.2 = zext i8 %101 to i64
  %or.i120.i.i.2 = or i64 %shl.i118.i.i.2, %conv16.i119.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %93)
  %tobool14.not.i121.i.i.2 = icmp eq i8 %93, 3
  %extract.t102 = trunc i64 %or.i120.i.i.2 to i16
  br i1 %tobool14.not.i121.i.i.2, label %while.body.i122.i.i.2.cond.end.i.i_crit_edge, label %while.body.i122.i.i.3

while.body.i122.i.i.2.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.3:                            ; preds = %while.body.i122.i.i.2
  %block.addr.0.i117.i.i.3 = getelementptr i8, ptr %block.addr.0.i117.i.i.2, i32 1
  %shl.i118.i.i.3 = shl nuw nsw i64 %or.i120.i.i.2, 8
  %102 = ptrtoint ptr %block.addr.0.i117.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %block.addr.0.i117.i.i.3, align 1
  %conv16.i119.i.i.3 = zext i8 %103 to i64
  %or.i120.i.i.3 = or i64 %shl.i118.i.i.3, %conv16.i119.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %93)
  %tobool14.not.i121.i.i.3 = icmp eq i8 %93, 4
  %extract.t103 = trunc i64 %or.i120.i.i.3 to i16
  br i1 %tobool14.not.i121.i.i.3, label %while.body.i122.i.i.3.cond.end.i.i_crit_edge, label %while.body.i122.i.i.4

while.body.i122.i.i.3.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.4:                            ; preds = %while.body.i122.i.i.3
  %block.addr.0.i117.i.i.4 = getelementptr i8, ptr %block.addr.0.i117.i.i.3, i32 1
  %shl.i118.i.i.4 = shl nuw nsw i64 %conv16.i119.i.i.3, 8
  %104 = ptrtoint ptr %block.addr.0.i117.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %block.addr.0.i117.i.i.4, align 1
  %conv16.i119.i.i.4 = zext i8 %105 to i64
  %or.i120.i.i.4 = or i64 %shl.i118.i.i.4, %conv16.i119.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %93)
  %tobool14.not.i121.i.i.4 = icmp eq i8 %93, 5
  %extract.t104 = trunc i64 %or.i120.i.i.4 to i16
  br i1 %tobool14.not.i121.i.i.4, label %while.body.i122.i.i.4.cond.end.i.i_crit_edge, label %while.body.i122.i.i.5

while.body.i122.i.i.4.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.5:                            ; preds = %while.body.i122.i.i.4
  %block.addr.0.i117.i.i.5 = getelementptr i8, ptr %block.addr.0.i117.i.i.4, i32 1
  %shl.i118.i.i.5 = shl nuw nsw i64 %conv16.i119.i.i.4, 8
  %106 = ptrtoint ptr %block.addr.0.i117.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %block.addr.0.i117.i.i.5, align 1
  %conv16.i119.i.i.5 = zext i8 %107 to i64
  %or.i120.i.i.5 = or i64 %shl.i118.i.i.5, %conv16.i119.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %93)
  %tobool14.not.i121.i.i.5 = icmp eq i8 %93, 6
  %extract.t105 = trunc i64 %or.i120.i.i.5 to i16
  br i1 %tobool14.not.i121.i.i.5, label %while.body.i122.i.i.5.cond.end.i.i_crit_edge, label %while.body.i122.i.i.6

while.body.i122.i.i.5.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.6:                            ; preds = %while.body.i122.i.i.5
  %block.addr.0.i117.i.i.6 = getelementptr i8, ptr %block.addr.0.i117.i.i.5, i32 1
  %shl.i118.i.i.6 = shl nuw nsw i64 %conv16.i119.i.i.5, 8
  %108 = ptrtoint ptr %block.addr.0.i117.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %block.addr.0.i117.i.i.6, align 1
  %conv16.i119.i.i.6 = zext i8 %109 to i64
  %or.i120.i.i.6 = or i64 %shl.i118.i.i.6, %conv16.i119.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %93)
  %tobool14.not.i121.i.i.6 = icmp eq i8 %93, 7
  %extract.t106 = trunc i64 %or.i120.i.i.6 to i16
  br i1 %tobool14.not.i121.i.i.6, label %while.body.i122.i.i.6.cond.end.i.i_crit_edge, label %while.body.i122.i.i.7

while.body.i122.i.i.6.cond.end.i.i_crit_edge:     ; preds = %while.body.i122.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

while.body.i122.i.i.7:                            ; preds = %while.body.i122.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i117.i.i.7 = getelementptr i8, ptr %block.addr.0.i117.i.i.6, i32 1
  %shl.i118.i.i.7 = shl nuw nsw i64 %conv16.i119.i.i.6, 8
  %110 = ptrtoint ptr %block.addr.0.i117.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %block.addr.0.i117.i.i.7, align 1
  %conv16.i119.i.i.7 = zext i8 %111 to i64
  %or.i120.i.i.7 = or i64 %shl.i118.i.i.7, %conv16.i119.i.i.7
  %extract.t107 = trunc i64 %or.i120.i.i.7 to i16
  br label %cond.end.i.i

if.else.i124.i.i:                                 ; preds = %do.end9.i112.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i123.i.i = zext i8 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i123.i.i) #13
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.else.i124.i.i, %while.body.i122.i.i.7, %while.body.i122.i.i.6.cond.end.i.i_crit_edge, %while.body.i122.i.i.5.cond.end.i.i_crit_edge, %while.body.i122.i.i.4.cond.end.i.i_crit_edge, %while.body.i122.i.i.3.cond.end.i.i_crit_edge, %while.body.i122.i.i.2.cond.end.i.i_crit_edge, %while.body.i122.i.i.1.cond.end.i.i_crit_edge, %while.body.i122.i.i.cond.end.i.i_crit_edge, %ldm_get_vnum.exit109.i.i.cond.end.i.i_crit_edge
  %cond.off0.i.i = phi i16 [ 0, %ldm_get_vnum.exit109.i.i.cond.end.i.i_crit_edge ], [ 0, %if.else.i124.i.i ], [ %extract.t, %while.body.i122.i.i.cond.end.i.i_crit_edge ], [ %extract.t101, %while.body.i122.i.i.1.cond.end.i.i_crit_edge ], [ %extract.t102, %while.body.i122.i.i.2.cond.end.i.i_crit_edge ], [ %extract.t103, %while.body.i122.i.i.3.cond.end.i.i_crit_edge ], [ %extract.t104, %while.body.i122.i.i.4.cond.end.i.i_crit_edge ], [ %extract.t105, %while.body.i122.i.i.5.cond.end.i.i_crit_edge ], [ %extract.t106, %while.body.i122.i.i.6.cond.end.i.i_crit_edge ], [ %extract.t107, %while.body.i122.i.i.7 ]
  %chunksize.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1, i32 10
  %112 = ptrtoint ptr %chunksize.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %cond.off0.i.i, ptr %chunksize.i.i, align 2
  br label %if.end16

if.end11.i.i111.i:                                ; preds = %ldm_get_vstr.exit.i
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i108.i = zext i8 %114 to i32
  %add12.i.i109.i = add nuw nsw i32 %conv.i.i108.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i109.i, i32 %len)
  %cmp13.not.i.i110.i = icmp ult i32 %add12.i.i109.i, %len
  br i1 %cmp13.not.i.i110.i, label %ldm_relative.exit.i120.i, label %if.end.i491.thread.i

if.end.i491.thread.i:                             ; preds = %if.end11.i.i111.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i108.i, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i487832.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i487832.i, label %if.end.i491.thread.i.if.then9.i494.i_crit_edge, label %if.end.i468.thread.thread.i

if.end.i491.thread.i.if.then9.i494.i_crit_edge:   ; preds = %if.end.i491.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i494.i

if.end.i468.thread.thread.i:                      ; preds = %if.end.i491.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br label %if.end.i445.thread.thread.i

ldm_relative.exit.i120.i:                         ; preds = %if.end11.i.i111.i
  %add.i483.i = add nuw nsw i32 %conv.i.i108.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i483.i, i32 %len)
  %cmp2.i487.i = icmp ugt i32 %add.i483.i, %len
  br i1 %cmp2.i487.i, label %ldm_relative.exit.i120.i.if.then9.i494.i_crit_edge, label %if.end11.i499.i

ldm_relative.exit.i120.i.if.then9.i494.i_crit_edge: ; preds = %ldm_relative.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i494.i

if.then9.i494.i:                                  ; preds = %ldm_relative.exit.i120.i.if.then9.i494.i_crit_edge, %if.end.i491.thread.i.if.then9.i494.i_crit_edge
  %add.i483835844847.i = phi i32 [ 23, %if.end.i491.thread.i.if.then9.i494.i_crit_edge ], [ %add.i483.i, %ldm_relative.exit.i120.i.if.then9.i494.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i483835844847.i, i32 noundef %len) #13
  br label %if.end.i468.thread.i

if.end11.i499.i:                                  ; preds = %ldm_relative.exit.i120.i
  %arrayidx.i495.i = getelementptr i8, ptr %data, i32 %add.i483.i
  %115 = ptrtoint ptr %arrayidx.i495.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i495.i, align 1
  %conv.i496.i = zext i8 %116 to i32
  %add12.i497.i = add nuw nsw i32 %add.i483.i, %conv.i496.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i497.i, i32 %len)
  %cmp13.not.i498.i = icmp ult i32 %add12.i497.i, %len
  br i1 %cmp13.not.i498.i, label %ldm_relative.exit505.i, label %if.then15.i500.i

if.then15.i500.i:                                 ; preds = %if.end11.i499.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i483.i, i32 noundef %conv.i496.i, i32 noundef %len) #13
  br label %if.end.i468.thread.i

if.end.i468.thread.i:                             ; preds = %if.then15.i500.i, %if.then9.i494.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i464851.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i464851.i, label %if.end.i468.thread.i.if.then9.i471.i_crit_edge, label %if.end.i468.thread.i.if.end.i445.thread.thread.i_crit_edge

if.end.i468.thread.i.if.end.i445.thread.thread.i_crit_edge: ; preds = %if.end.i468.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i445.thread.thread.i

if.end.i468.thread.i.if.then9.i471.i_crit_edge:   ; preds = %if.end.i468.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i471.i

ldm_relative.exit505.i:                           ; preds = %if.end11.i499.i
  %add21.i501.i = add nuw nsw i32 %conv.i.i108.i, 2
  %add22.i502.i = add nuw nsw i32 %add21.i501.i, %conv.i496.i
  %add.i460.i = add nuw nsw i32 %add22.i502.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i460.i, i32 %len)
  %cmp2.i464.i = icmp ugt i32 %add.i460.i, %len
  br i1 %cmp2.i464.i, label %ldm_relative.exit505.i.if.then9.i471.i_crit_edge, label %if.end11.i476.i

ldm_relative.exit505.i.if.then9.i471.i_crit_edge: ; preds = %ldm_relative.exit505.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i471.i

if.then9.i471.i:                                  ; preds = %ldm_relative.exit505.i.if.then9.i471.i_crit_edge, %if.end.i468.thread.i.if.then9.i471.i_crit_edge
  %add.i460856865868.i = phi i32 [ 23, %if.end.i468.thread.i.if.then9.i471.i_crit_edge ], [ %add.i460.i, %ldm_relative.exit505.i.if.then9.i471.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i460856865868.i, i32 noundef %len) #13
  br label %if.end.i445.thread.i

if.end11.i476.i:                                  ; preds = %ldm_relative.exit505.i
  %arrayidx.i472.i = getelementptr i8, ptr %data, i32 %add.i460.i
  %117 = ptrtoint ptr %arrayidx.i472.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i472.i, align 1
  %conv.i473.i = zext i8 %118 to i32
  %add12.i474.i = add nuw nsw i32 %add.i460.i, %conv.i473.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i474.i, i32 %len)
  %cmp13.not.i475.i = icmp ult i32 %add12.i474.i, %len
  br i1 %cmp13.not.i475.i, label %ldm_relative.exit482.i, label %if.then15.i477.i

if.then15.i477.i:                                 ; preds = %if.end11.i476.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i460.i, i32 noundef %conv.i473.i, i32 noundef %len) #13
  br label %if.end.i445.thread.i

if.end.i445.thread.thread.i:                      ; preds = %if.end.i468.thread.i.if.end.i445.thread.thread.i_crit_edge, %if.end.i468.thread.thread.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br label %if.else.i

if.end.i445.thread.i:                             ; preds = %if.then15.i477.i, %if.then9.i471.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i441874.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i441874.i, label %if.end.i445.thread.i.if.then9.i448.i_crit_edge, label %if.end.i445.thread.i.if.else.i_crit_edge

if.end.i445.thread.i.if.else.i_crit_edge:         ; preds = %if.end.i445.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i445.thread.i.if.then9.i448.i_crit_edge:   ; preds = %if.end.i445.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i448.i

ldm_relative.exit482.i:                           ; preds = %if.end11.i476.i
  %add21.i478.i = add nuw nsw i32 %add22.i502.i, 1
  %add22.i479.i = add nuw nsw i32 %add21.i478.i, %conv.i473.i
  %add.i437.i = add nuw nsw i32 %add22.i479.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i437.i, i32 %len)
  %cmp2.i441.i = icmp ugt i32 %add.i437.i, %len
  br i1 %cmp2.i441.i, label %ldm_relative.exit482.i.if.then9.i448.i_crit_edge, label %if.end11.i453.i

ldm_relative.exit482.i.if.then9.i448.i_crit_edge: ; preds = %ldm_relative.exit482.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i448.i

if.then9.i448.i:                                  ; preds = %ldm_relative.exit482.i.if.then9.i448.i_crit_edge, %if.end.i445.thread.i.if.then9.i448.i_crit_edge
  %add.i437881891897.i = phi i32 [ 23, %if.end.i445.thread.i.if.then9.i448.i_crit_edge ], [ %add.i437.i, %ldm_relative.exit482.i.if.then9.i448.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i437881891897.i, i32 noundef %len) #13
  br label %if.else.i

if.end11.i453.i:                                  ; preds = %ldm_relative.exit482.i
  %arrayidx.i449.i = getelementptr i8, ptr %data, i32 %add.i437.i
  %119 = ptrtoint ptr %arrayidx.i449.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i449.i, align 1
  %conv.i450.i = zext i8 %120 to i32
  %add12.i451.i = add nuw nsw i32 %add.i437.i, %conv.i450.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i451.i, i32 %len)
  %cmp13.not.i452.i = icmp ult i32 %add12.i451.i, %len
  br i1 %cmp13.not.i452.i, label %ldm_relative.exit459.i, label %if.then15.i454.i

if.then15.i454.i:                                 ; preds = %if.end11.i453.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i437.i, i32 noundef %conv.i450.i, i32 noundef %len) #13
  br label %if.else.i

ldm_relative.exit459.i:                           ; preds = %if.end11.i453.i
  %add22.i456.i = add nuw nsw i32 %add22.i479.i, 13
  %add.i121.i = add nuw nsw i32 %add22.i456.i, %conv.i450.i
  %add.ptr.i122.i = getelementptr i8, ptr %data, i32 20
  %121 = ptrtoint ptr %add.ptr.i122.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %add.ptr.i122.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i121.i, i32 %122)
  %cmp17.not.i.i = icmp eq i32 %add.i121.i, %122
  br i1 %cmp17.not.i.i, label %if.end19.i124.i, label %ldm_relative.exit459.i.if.else.i_crit_edge

ldm_relative.exit459.i.if.else.i_crit_edge:       ; preds = %ldm_relative.exit459.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end19.i124.i:                                  ; preds = %ldm_relative.exit459.i
  %vblk.i123.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr21.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add22.i479.i
  %alt_name.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %tobool.not.i50.i.i = icmp eq ptr %add.ptr21.i.i, null
  br i1 %tobool.not.i50.i.i, label %do.body5.i.i125.i, label %do.end10.i.i127.i, !prof !190

do.body5.i.i125.i:                                ; preds = %if.end19.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10.i.i127.i:                                ; preds = %if.end19.i124.i
  %123 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %add.ptr21.i.i, align 1
  %conv.i51.i.i = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %124)
  %cmp.not.i.i126.i = icmp sgt i8 %124, -1
  br i1 %cmp.not.i.i126.i, label %do.end10.i.i127.i.sw.epilog.i_crit_edge, label %if.then12.i.i128.i

do.end10.i.i127.i.sw.epilog.i_crit_edge:          ; preds = %do.end10.i.i127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then12.i.i128.i:                               ; preds = %do.end10.i.i127.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv.i51.i.i, i32 noundef 128) #13
  br label %sw.epilog.i

if.end11.i.i145.i:                                ; preds = %ldm_get_vstr.exit.i
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i142.i = zext i8 %126 to i32
  %add12.i.i143.i = add nuw nsw i32 %conv.i.i142.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i143.i, i32 %len)
  %cmp13.not.i.i144.i = icmp ult i32 %add12.i.i143.i, %len
  br i1 %cmp13.not.i.i144.i, label %ldm_relative.exit.i152.i, label %if.end.i514.thread.i

if.end.i514.thread.i:                             ; preds = %if.end11.i.i145.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i142.i, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i510906.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i510906.i, label %if.end.i514.thread.i.if.then9.i517.i_crit_edge, label %if.end.i514.thread.i.if.else.i_crit_edge

if.end.i514.thread.i.if.else.i_crit_edge:         ; preds = %if.end.i514.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i514.thread.i.if.then9.i517.i_crit_edge:   ; preds = %if.end.i514.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i517.i

ldm_relative.exit.i152.i:                         ; preds = %if.end11.i.i145.i
  %add.i506.i = add nuw nsw i32 %conv.i.i142.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i506.i, i32 %len)
  %cmp2.i510.i = icmp ugt i32 %add.i506.i, %len
  br i1 %cmp2.i510.i, label %ldm_relative.exit.i152.i.if.then9.i517.i_crit_edge, label %if.end11.i522.i

ldm_relative.exit.i152.i.if.then9.i517.i_crit_edge: ; preds = %ldm_relative.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i517.i

if.then9.i517.i:                                  ; preds = %ldm_relative.exit.i152.i.if.then9.i517.i_crit_edge, %if.end.i514.thread.i.if.then9.i517.i_crit_edge
  %add.i506909918921.i = phi i32 [ 23, %if.end.i514.thread.i.if.then9.i517.i_crit_edge ], [ %add.i506.i, %ldm_relative.exit.i152.i.if.then9.i517.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i506909918921.i, i32 noundef %len) #13
  br label %if.else.i

if.end11.i522.i:                                  ; preds = %ldm_relative.exit.i152.i
  %arrayidx.i518.i = getelementptr i8, ptr %data, i32 %add.i506.i
  %127 = ptrtoint ptr %arrayidx.i518.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i518.i, align 1
  %conv.i519.i = zext i8 %128 to i32
  %add12.i520.i = add nuw nsw i32 %add.i506.i, %conv.i519.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i520.i, i32 %len)
  %cmp13.not.i521.i = icmp ult i32 %add12.i520.i, %len
  br i1 %cmp13.not.i521.i, label %ldm_relative.exit528.i, label %if.then15.i523.i

if.then15.i523.i:                                 ; preds = %if.end11.i522.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i506.i, i32 noundef %conv.i519.i, i32 noundef %len) #13
  br label %if.else.i

ldm_relative.exit528.i:                           ; preds = %if.end11.i522.i
  %add21.i524.i = add nuw nsw i32 %conv.i.i142.i, 2
  %add22.i525.i = add nuw nsw i32 %add21.i524.i, %conv.i519.i
  %add.i153.i = add nuw nsw i32 %add22.i525.i, 45
  %add.ptr.i154.i = getelementptr i8, ptr %data, i32 20
  %129 = ptrtoint ptr %add.ptr.i154.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %add.ptr.i154.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i153.i, i32 %130)
  %cmp15.not.i.i = icmp eq i32 %add.i153.i, %130
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %ldm_relative.exit528.i.if.else.i_crit_edge

ldm_relative.exit528.i.if.else.i_crit_edge:       ; preds = %ldm_relative.exit528.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end17.i.i:                                     ; preds = %ldm_relative.exit528.i
  call void @__sanitizer_cov_trace_pc() #15
  %vblk.i155.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr19.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add22.i525.i
  %131 = call ptr @memcpy(ptr %vblk.i155.i, ptr %add.ptr19.i.i, i32 16)
  br label %if.end16

if.end11.i.i168.i:                                ; preds = %ldm_get_vstr.exit.i
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i165.i = zext i8 %133 to i32
  %add12.i.i166.i = add nuw nsw i32 %conv.i.i165.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i166.i, i32 %len)
  %cmp13.not.i.i167.i = icmp ult i32 %add12.i.i166.i, %len
  br i1 %cmp13.not.i.i167.i, label %ldm_relative.exit.i176.i, label %if.end.i606.thread.i

if.end.i606.thread.i:                             ; preds = %if.end11.i.i168.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i165.i, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i602927.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i602927.i, label %if.end.i606.thread.i.if.then9.i609.i_crit_edge, label %if.end.i583.thread.thread.i

if.end.i606.thread.i.if.then9.i609.i_crit_edge:   ; preds = %if.end.i606.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i609.i

if.end.i583.thread.thread.i:                      ; preds = %if.end.i606.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br label %ldm_relative.exit597.i

ldm_relative.exit.i176.i:                         ; preds = %if.end11.i.i168.i
  %add.i598.i = add nuw nsw i32 %conv.i.i165.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i598.i, i32 %len)
  %cmp2.i602.i = icmp ugt i32 %add.i598.i, %len
  br i1 %cmp2.i602.i, label %ldm_relative.exit.i176.i.if.then9.i609.i_crit_edge, label %if.end11.i614.i

ldm_relative.exit.i176.i.if.then9.i609.i_crit_edge: ; preds = %ldm_relative.exit.i176.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i609.i

if.then9.i609.i:                                  ; preds = %ldm_relative.exit.i176.i.if.then9.i609.i_crit_edge, %if.end.i606.thread.i.if.then9.i609.i_crit_edge
  %add.i598930939942.i = phi i32 [ 23, %if.end.i606.thread.i.if.then9.i609.i_crit_edge ], [ %add.i598.i, %ldm_relative.exit.i176.i.if.then9.i609.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i598930939942.i, i32 noundef %len) #13
  br label %if.end.i583.thread.i

if.end11.i614.i:                                  ; preds = %ldm_relative.exit.i176.i
  %arrayidx.i610.i = getelementptr i8, ptr %data, i32 %add.i598.i
  %134 = ptrtoint ptr %arrayidx.i610.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i610.i, align 1
  %conv.i611.i = zext i8 %135 to i32
  %add12.i612.i = add nuw nsw i32 %add.i598.i, %conv.i611.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i612.i, i32 %len)
  %cmp13.not.i613.i = icmp ult i32 %add12.i612.i, %len
  br i1 %cmp13.not.i613.i, label %ldm_relative.exit620.i, label %if.then15.i615.i

if.then15.i615.i:                                 ; preds = %if.end11.i614.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i598.i, i32 noundef %conv.i611.i, i32 noundef %len) #13
  br label %if.end.i583.thread.i

if.end.i583.thread.i:                             ; preds = %if.then15.i615.i, %if.then9.i609.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i579946.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i579946.i, label %if.end.i583.thread.i.if.then9.i586.i_crit_edge, label %if.end.i583.thread.i.ldm_relative.exit597.i_crit_edge

if.end.i583.thread.i.ldm_relative.exit597.i_crit_edge: ; preds = %if.end.i583.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_relative.exit597.i

if.end.i583.thread.i.if.then9.i586.i_crit_edge:   ; preds = %if.end.i583.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i586.i

ldm_relative.exit620.i:                           ; preds = %if.end11.i614.i
  %add21.i616.i = add nuw nsw i32 %conv.i.i165.i, 2
  %add22.i617.i = add nuw nsw i32 %add21.i616.i, %conv.i611.i
  %add.i575.i = add nuw nsw i32 %add22.i617.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i575.i, i32 %len)
  %cmp2.i579.i = icmp ugt i32 %add.i575.i, %len
  br i1 %cmp2.i579.i, label %ldm_relative.exit620.i.if.then9.i586.i_crit_edge, label %if.end11.i591.i

ldm_relative.exit620.i.if.then9.i586.i_crit_edge: ; preds = %ldm_relative.exit620.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i586.i

if.then9.i586.i:                                  ; preds = %ldm_relative.exit620.i.if.then9.i586.i_crit_edge, %if.end.i583.thread.i.if.then9.i586.i_crit_edge
  %retval.0.i619950964.i = phi i32 [ -1, %if.end.i583.thread.i.if.then9.i586.i_crit_edge ], [ %add22.i617.i, %ldm_relative.exit620.i.if.then9.i586.i_crit_edge ]
  %add.i575951960963.i = phi i32 [ 23, %if.end.i583.thread.i.if.then9.i586.i_crit_edge ], [ %add.i575.i, %ldm_relative.exit620.i.if.then9.i586.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i575951960963.i, i32 noundef %len) #13
  br label %ldm_relative.exit597.i

if.end11.i591.i:                                  ; preds = %ldm_relative.exit620.i
  %arrayidx.i587.i = getelementptr i8, ptr %data, i32 %add.i575.i
  %136 = ptrtoint ptr %arrayidx.i587.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i587.i, align 1
  %conv.i588.i = zext i8 %137 to i32
  %add12.i589.i = add nuw nsw i32 %add.i575.i, %conv.i588.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i589.i, i32 %len)
  %cmp13.not.i590.i = icmp ult i32 %add12.i589.i, %len
  br i1 %cmp13.not.i590.i, label %if.end18.i595.i, label %if.then15.i592.i

if.then15.i592.i:                                 ; preds = %if.end11.i591.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i575.i, i32 noundef %conv.i588.i, i32 noundef %len) #13
  br label %ldm_relative.exit597.i

if.end18.i595.i:                                  ; preds = %if.end11.i591.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i593.i = add nuw nsw i32 %add22.i617.i, 1
  %add22.i594.i = add nuw nsw i32 %add21.i593.i, %conv.i588.i
  br label %ldm_relative.exit597.i

ldm_relative.exit597.i:                           ; preds = %if.end18.i595.i, %if.then15.i592.i, %if.then9.i586.i, %if.end.i583.thread.i.ldm_relative.exit597.i_crit_edge, %if.end.i583.thread.thread.i
  %retval.0.i619949.i = phi i32 [ %add22.i617.i, %if.then15.i592.i ], [ %add22.i617.i, %if.end18.i595.i ], [ %retval.0.i619950964.i, %if.then9.i586.i ], [ -1, %if.end.i583.thread.i.ldm_relative.exit597.i_crit_edge ], [ -1, %if.end.i583.thread.thread.i ]
  %retval.0.i596.i = phi i32 [ -1, %if.then15.i592.i ], [ %add22.i594.i, %if.end18.i595.i ], [ -1, %if.then9.i586.i ], [ -1, %if.end.i583.thread.i.ldm_relative.exit597.i_crit_edge ], [ -1, %if.end.i583.thread.thread.i ]
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i, align 1
  %140 = and i8 %139, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool13.not.i.i = icmp eq i8 %140, 0
  br i1 %tobool13.not.i.i, label %if.end17.i179.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %ldm_relative.exit597.i
  %add.i552.i = add nsw i32 %retval.0.i596.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i596.i)
  %cmp.i554.i = icmp slt i32 %retval.0.i596.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i552.i, i32 %len)
  %cmp2.i556.i = icmp sgt i32 %add.i552.i, %len
  %or.cond43.i557.i = or i1 %cmp.i554.i, %cmp2.i556.i
  br i1 %or.cond43.i557.i, label %if.end.i560.i, label %if.end11.i568.i

if.end.i560.i:                                    ; preds = %if.then14.i.i
  br i1 %cmp.i554.i, label %if.then6.i561.i, label %if.end.i560.i.if.end7.i562.i_crit_edge

if.end.i560.i.if.end7.i562.i_crit_edge:           ; preds = %if.end.i560.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i562.i

if.then6.i561.i:                                  ; preds = %if.end.i560.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i596.i) #13
  br label %if.end7.i562.i

if.end7.i562.i:                                   ; preds = %if.then6.i561.i, %if.end.i560.i.if.end7.i562.i_crit_edge
  br i1 %cmp2.i556.i, label %if.then9.i563.i, label %if.end7.i562.i.if.end.i537.thread.i_crit_edge

if.end7.i562.i.if.end.i537.thread.i_crit_edge:    ; preds = %if.end7.i562.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i537.thread.i

if.then9.i563.i:                                  ; preds = %if.end7.i562.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i552.i, i32 noundef %len) #13
  br label %if.end.i537.thread.i

if.end11.i568.i:                                  ; preds = %if.then14.i.i
  %arrayidx.i564.i = getelementptr i8, ptr %data, i32 %add.i552.i
  %141 = ptrtoint ptr %arrayidx.i564.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i564.i, align 1
  %conv.i565.i = zext i8 %142 to i32
  %add12.i566.i = add nuw nsw i32 %add.i552.i, %conv.i565.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i566.i, i32 %len)
  %cmp13.not.i567.i = icmp slt i32 %add12.i566.i, %len
  br i1 %cmp13.not.i567.i, label %ldm_relative.exit574.i, label %if.then15.i569.i

if.then15.i569.i:                                 ; preds = %if.end11.i568.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i552.i, i32 noundef %conv.i565.i, i32 noundef %len) #13
  br label %if.end.i537.thread.i

if.end.i537.thread.i:                             ; preds = %if.then15.i569.i, %if.then9.i563.i, %if.end7.i562.i.if.end.i537.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %len)
  %cmp2.i533968.i = icmp slt i32 %len, 35
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i533968.i, label %if.end.i537.thread.i.if.then9.i540.i_crit_edge, label %if.end.i537.thread.i.if.else.i_crit_edge

if.end.i537.thread.i.if.else.i_crit_edge:         ; preds = %if.end.i537.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i537.thread.i.if.then9.i540.i_crit_edge:   ; preds = %if.end.i537.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i540.i

ldm_relative.exit574.i:                           ; preds = %if.end11.i568.i
  %add21.i570.i = add nuw nsw i32 %retval.0.i596.i, 1
  %add22.i571.i = add nuw nsw i32 %add21.i570.i, %conv.i565.i
  %add.i529.i = add nuw nsw i32 %add22.i571.i, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i529.i, i32 %len)
  %cmp2.i533.i = icmp sgt i32 %add.i529.i, %len
  br i1 %cmp2.i533.i, label %ldm_relative.exit574.i.if.then9.i540.i_crit_edge, label %if.end11.i545.i

ldm_relative.exit574.i.if.then9.i540.i_crit_edge: ; preds = %ldm_relative.exit574.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i540.i

if.then9.i540.i:                                  ; preds = %ldm_relative.exit574.i.if.then9.i540.i_crit_edge, %if.end.i537.thread.i.if.then9.i540.i_crit_edge
  %add.i529971980983.i = phi i32 [ 35, %if.end.i537.thread.i.if.then9.i540.i_crit_edge ], [ %add.i529.i, %ldm_relative.exit574.i.if.then9.i540.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i529971980983.i, i32 noundef %len) #13
  br label %if.else.i

if.end11.i545.i:                                  ; preds = %ldm_relative.exit574.i
  %arrayidx.i541.i = getelementptr i8, ptr %data, i32 %add.i529.i
  %143 = ptrtoint ptr %arrayidx.i541.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i541.i, align 1
  %conv.i542.i = zext i8 %144 to i32
  %add12.i543.i = add nuw nsw i32 %add.i529.i, %conv.i542.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i543.i, i32 %len)
  %cmp13.not.i544.i = icmp slt i32 %add12.i543.i, %len
  br i1 %cmp13.not.i544.i, label %if.end17.i179.thread986.i, label %if.then15.i546.i

if.then15.i546.i:                                 ; preds = %if.end11.i545.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i529.i, i32 noundef %conv.i542.i, i32 noundef %len) #13
  br label %if.else.i

if.end17.i179.thread986.i:                        ; preds = %if.end11.i545.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i547.i = add nuw nsw i32 %add22.i571.i, 1
  %add22.i548.i = add nuw nsw i32 %add21.i547.i, %conv.i542.i
  br label %if.end20.i.i

if.end17.i179.i:                                  ; preds = %ldm_relative.exit597.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i596.i)
  %cmp.i178.i = icmp slt i32 %retval.0.i596.i, 0
  br i1 %cmp.i178.i, label %if.end17.i179.i.if.else.i_crit_edge, label %if.end17.i179.i.if.end20.i.i_crit_edge

if.end17.i179.i.if.end20.i.i_crit_edge:           ; preds = %if.end17.i179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i.i

if.end17.i179.i.if.else.i_crit_edge:              ; preds = %if.end17.i179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end20.i.i:                                     ; preds = %if.end17.i179.i.if.end20.i.i_crit_edge, %if.end17.i179.thread986.i
  %len.0.i177989.i = phi i32 [ %add22.i548.i, %if.end17.i179.thread986.i ], [ %retval.0.i596.i, %if.end17.i179.i.if.end20.i.i_crit_edge ]
  %add.i180.i = add nuw nsw i32 %len.0.i177989.i, 12
  %add.ptr.i181.i = getelementptr i8, ptr %data, i32 20
  %145 = ptrtoint ptr %add.ptr.i181.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %add.ptr.i181.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i180.i, i32 %146)
  %cmp22.not.i.i = icmp eq i32 %add.i180.i, %146
  br i1 %cmp22.not.i.i, label %if.end25.i.i, label %if.end20.i.i.if.else.i_crit_edge

if.end20.i.i.if.else.i_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end25.i.i:                                     ; preds = %if.end20.i.i
  %vblk.i182.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr27.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %retval.0.i619949.i
  %tobool.not.i52.i.i = icmp eq ptr %add.ptr27.i.i, null
  br i1 %tobool.not.i52.i.i, label %do.body5.i.i183.i, label %do.end10.i.i185.i, !prof !190

do.body5.i.i183.i:                                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10.i.i185.i:                                ; preds = %if.end25.i.i
  %147 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr27.i.i, align 1
  %conv.i53.i.i = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %148)
  %cmp.not.i.i184.i = icmp ult i8 %148, 64
  br i1 %cmp.not.i.i184.i, label %do.end10.i.i185.i.ldm_parse_dgr3.exit.i_crit_edge, label %if.then12.i.i186.i

do.end10.i.i185.i.ldm_parse_dgr3.exit.i_crit_edge: ; preds = %do.end10.i.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_parse_dgr3.exit.i

if.then12.i.i186.i:                               ; preds = %do.end10.i.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv.i53.i.i, i32 noundef 64) #13
  br label %ldm_parse_dgr3.exit.i

ldm_parse_dgr3.exit.i:                            ; preds = %if.then12.i.i186.i, %do.end10.i.i185.i.ldm_parse_dgr3.exit.i_crit_edge
  %length.0.i.i187.i = phi i32 [ 63, %if.then12.i.i186.i ], [ %conv.i53.i.i, %do.end10.i.i185.i.ldm_parse_dgr3.exit.i_crit_edge ]
  %add.ptr.i.i188.i = getelementptr i8, ptr %add.ptr27.i.i, i32 1
  %149 = call ptr @memcpy(ptr %vblk.i182.i, ptr %add.ptr.i.i188.i, i32 %length.0.i.i187.i)
  %arrayidx14.i.i189.i = getelementptr i8, ptr %vblk.i182.i, i32 %length.0.i.i187.i
  %150 = ptrtoint ptr %arrayidx14.i.i189.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx14.i.i189.i, align 1
  br label %if.end16

if.end11.i.i203.i:                                ; preds = %ldm_get_vstr.exit.i
  %151 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i200.i = zext i8 %152 to i32
  %add12.i.i201.i = add nuw nsw i32 %conv.i.i200.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i201.i, i32 %len)
  %cmp13.not.i.i202.i = icmp ult i32 %add12.i.i201.i, %len
  br i1 %cmp13.not.i.i202.i, label %ldm_relative.exit.i210.i, label %if.end.i675.thread.i

if.end.i675.thread.i:                             ; preds = %if.end11.i.i203.i
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i200.i, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp2.i671993.i = icmp slt i32 %len, 23
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i671993.i, label %if.end.i675.thread.i.if.then9.i678.i_crit_edge, label %if.end.i675.thread.i.ldm_relative.exit689.i_crit_edge

if.end.i675.thread.i.ldm_relative.exit689.i_crit_edge: ; preds = %if.end.i675.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_relative.exit689.i

if.end.i675.thread.i.if.then9.i678.i_crit_edge:   ; preds = %if.end.i675.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i678.i

ldm_relative.exit.i210.i:                         ; preds = %if.end11.i.i203.i
  %add22.i.i205.i = add nuw nsw i32 %conv.i.i200.i, 1
  %add.i667.i = add nuw nsw i32 %conv.i.i200.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i667.i, i32 %len)
  %cmp2.i671.i = icmp ugt i32 %add.i667.i, %len
  br i1 %cmp2.i671.i, label %ldm_relative.exit.i210.i.if.then9.i678.i_crit_edge, label %if.end11.i683.i

ldm_relative.exit.i210.i.if.then9.i678.i_crit_edge: ; preds = %ldm_relative.exit.i210.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i678.i

if.then9.i678.i:                                  ; preds = %ldm_relative.exit.i210.i.if.then9.i678.i_crit_edge, %if.end.i675.thread.i.if.then9.i678.i_crit_edge
  %add.i66799710061011.i = phi i32 [ 23, %if.end.i675.thread.i.if.then9.i678.i_crit_edge ], [ %add.i667.i, %ldm_relative.exit.i210.i.if.then9.i678.i_crit_edge ]
  %retval.0.i.i20799610081010.i = phi i32 [ -1, %if.end.i675.thread.i.if.then9.i678.i_crit_edge ], [ %add22.i.i205.i, %ldm_relative.exit.i210.i.if.then9.i678.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i66799710061011.i, i32 noundef %len) #13
  br label %ldm_relative.exit689.i

if.end11.i683.i:                                  ; preds = %ldm_relative.exit.i210.i
  %arrayidx.i679.i = getelementptr i8, ptr %data, i32 %add.i667.i
  %153 = ptrtoint ptr %arrayidx.i679.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i679.i, align 1
  %conv.i680.i = zext i8 %154 to i32
  %add12.i681.i = add nuw nsw i32 %add.i667.i, %conv.i680.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i681.i, i32 %len)
  %cmp13.not.i682.i = icmp ult i32 %add12.i681.i, %len
  br i1 %cmp13.not.i682.i, label %if.end18.i687.i, label %if.then15.i684.i

if.then15.i684.i:                                 ; preds = %if.end11.i683.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i667.i, i32 noundef %conv.i680.i, i32 noundef %len) #13
  br label %ldm_relative.exit689.i

if.end18.i687.i:                                  ; preds = %if.end11.i683.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i685.i = add nuw nsw i32 %conv.i.i200.i, 2
  %add22.i686.i = add nuw nsw i32 %add21.i685.i, %conv.i680.i
  br label %ldm_relative.exit689.i

ldm_relative.exit689.i:                           ; preds = %if.end18.i687.i, %if.then15.i684.i, %if.then9.i678.i, %if.end.i675.thread.i.ldm_relative.exit689.i_crit_edge
  %retval.0.i.i207995.i = phi i32 [ %add22.i.i205.i, %if.then15.i684.i ], [ %add22.i.i205.i, %if.end18.i687.i ], [ %retval.0.i.i20799610081010.i, %if.then9.i678.i ], [ -1, %if.end.i675.thread.i.ldm_relative.exit689.i_crit_edge ]
  %retval.0.i688.i = phi i32 [ -1, %if.then15.i684.i ], [ %add22.i686.i, %if.end18.i687.i ], [ -1, %if.then9.i678.i ], [ -1, %if.end.i675.thread.i.ldm_relative.exit689.i_crit_edge ]
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i, align 1
  %157 = and i8 %156, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool12.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool12.not.i.i, label %if.end16.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %ldm_relative.exit689.i
  %add.i644.i = add nsw i32 %retval.0.i688.i, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i688.i)
  %cmp.i646.i = icmp slt i32 %retval.0.i688.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i644.i, i32 %len)
  %cmp2.i648.i = icmp sgt i32 %add.i644.i, %len
  %or.cond43.i649.i = or i1 %cmp.i646.i, %cmp2.i648.i
  br i1 %or.cond43.i649.i, label %if.end.i652.i, label %if.end11.i660.i

if.end.i652.i:                                    ; preds = %if.then13.i.i
  br i1 %cmp.i646.i, label %if.then6.i653.i, label %if.end.i652.i.if.end7.i654.i_crit_edge

if.end.i652.i.if.end7.i654.i_crit_edge:           ; preds = %if.end.i652.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i654.i

if.then6.i653.i:                                  ; preds = %if.end.i652.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i688.i) #13
  br label %if.end7.i654.i

if.end7.i654.i:                                   ; preds = %if.then6.i653.i, %if.end.i652.i.if.end7.i654.i_crit_edge
  br i1 %cmp2.i648.i, label %if.then9.i655.i, label %if.end7.i654.i.if.end.i629.thread.i_crit_edge

if.end7.i654.i.if.end.i629.thread.i_crit_edge:    ; preds = %if.end7.i654.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i629.thread.i

if.then9.i655.i:                                  ; preds = %if.end7.i654.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i644.i, i32 noundef %len) #13
  br label %if.end.i629.thread.i

if.end11.i660.i:                                  ; preds = %if.then13.i.i
  %arrayidx.i656.i = getelementptr i8, ptr %data, i32 %add.i644.i
  %158 = ptrtoint ptr %arrayidx.i656.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i656.i, align 1
  %conv.i657.i = zext i8 %159 to i32
  %add12.i658.i = add nuw nsw i32 %add.i644.i, %conv.i657.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i658.i, i32 %len)
  %cmp13.not.i659.i = icmp slt i32 %add12.i658.i, %len
  br i1 %cmp13.not.i659.i, label %ldm_relative.exit666.i, label %if.then15.i661.i

if.then15.i661.i:                                 ; preds = %if.end11.i660.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i644.i, i32 noundef %conv.i657.i, i32 noundef %len) #13
  br label %if.end.i629.thread.i

if.end.i629.thread.i:                             ; preds = %if.then15.i661.i, %if.then9.i655.i, %if.end7.i654.i.if.end.i629.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %len)
  %cmp2.i6251015.i = icmp slt i32 %len, 67
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef -1) #13
  br i1 %cmp2.i6251015.i, label %if.end.i629.thread.i.if.then9.i632.i_crit_edge, label %if.end.i629.thread.i.if.else.i_crit_edge

if.end.i629.thread.i.if.else.i_crit_edge:         ; preds = %if.end.i629.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i629.thread.i.if.then9.i632.i_crit_edge:   ; preds = %if.end.i629.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i632.i

ldm_relative.exit666.i:                           ; preds = %if.end11.i660.i
  %add21.i662.i = add nuw nsw i32 %retval.0.i688.i, 1
  %add22.i663.i = add nuw nsw i32 %add21.i662.i, %conv.i657.i
  %add.i621.i = add nuw nsw i32 %add22.i663.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i621.i, i32 %len)
  %cmp2.i625.i = icmp sgt i32 %add.i621.i, %len
  br i1 %cmp2.i625.i, label %ldm_relative.exit666.i.if.then9.i632.i_crit_edge, label %if.end11.i637.i

ldm_relative.exit666.i.if.then9.i632.i_crit_edge: ; preds = %ldm_relative.exit666.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i632.i

if.then9.i632.i:                                  ; preds = %ldm_relative.exit666.i.if.then9.i632.i_crit_edge, %if.end.i629.thread.i.if.then9.i632.i_crit_edge
  %add.i621101810271030.i = phi i32 [ 67, %if.end.i629.thread.i.if.then9.i632.i_crit_edge ], [ %add.i621.i, %ldm_relative.exit666.i.if.then9.i632.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add.i621101810271030.i, i32 noundef %len) #13
  br label %if.else.i

if.end11.i637.i:                                  ; preds = %ldm_relative.exit666.i
  %arrayidx.i633.i = getelementptr i8, ptr %data, i32 %add.i621.i
  %160 = ptrtoint ptr %arrayidx.i633.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i633.i, align 1
  %conv.i634.i = zext i8 %161 to i32
  %add12.i635.i = add nuw nsw i32 %add.i621.i, %conv.i634.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i635.i, i32 %len)
  %cmp13.not.i636.i = icmp slt i32 %add12.i635.i, %len
  br i1 %cmp13.not.i636.i, label %if.end16.i.thread1033.i, label %if.then15.i638.i

if.then15.i638.i:                                 ; preds = %if.end11.i637.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add.i621.i, i32 noundef %conv.i634.i, i32 noundef %len) #13
  br label %if.else.i

if.end16.i.thread1033.i:                          ; preds = %if.end11.i637.i
  call void @__sanitizer_cov_trace_pc() #15
  %add21.i639.i = add nuw nsw i32 %add22.i663.i, 1
  %add22.i640.i = add nuw nsw i32 %add21.i639.i, %conv.i634.i
  br label %if.end19.i217.i

if.end16.i.i:                                     ; preds = %ldm_relative.exit689.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i688.i)
  %cmp.i214.i = icmp slt i32 %retval.0.i688.i, 0
  br i1 %cmp.i214.i, label %if.end16.i.i.if.else.i_crit_edge, label %if.end16.i.i.if.end19.i217.i_crit_edge

if.end16.i.i.if.end19.i217.i_crit_edge:           ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i217.i

if.end16.i.i.if.else.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end19.i217.i:                                  ; preds = %if.end16.i.i.if.end19.i217.i_crit_edge, %if.end16.i.thread1033.i
  %len.0.i2131036.i = phi i32 [ %add22.i640.i, %if.end16.i.thread1033.i ], [ %retval.0.i688.i, %if.end16.i.i.if.end19.i217.i_crit_edge ]
  %add.i215.i = add nuw nsw i32 %len.0.i2131036.i, 44
  %add.ptr.i216.i = getelementptr i8, ptr %data, i32 20
  %162 = ptrtoint ptr %add.ptr.i216.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %add.ptr.i216.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i215.i, i32 %163)
  %cmp21.not.i.i = icmp eq i32 %add.i215.i, %163
  br i1 %cmp21.not.i.i, label %if.end24.i.i, label %if.end19.i217.i.if.else.i_crit_edge

if.end19.i217.i.if.else.i_crit_edge:              ; preds = %if.end19.i217.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end24.i.i:                                     ; preds = %if.end19.i217.i
  %add.ptr26.i218.i = getelementptr i8, ptr %arrayidx.i.i, i32 %retval.0.i.i207995.i
  %tobool.not.i47.i.i = icmp eq ptr %add.ptr26.i218.i, null
  br i1 %tobool.not.i47.i.i, label %do.body5.i.i219.i, label %do.end10.i.i221.i, !prof !190

do.body5.i.i219.i:                                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10.i.i221.i:                                ; preds = %if.end24.i.i
  %164 = ptrtoint ptr %add.ptr26.i218.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %add.ptr26.i218.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %165)
  %cmp.not.i.i220.i = icmp ult i8 %165, 64
  br i1 %cmp.not.i.i220.i, label %do.end10.i.i221.i.if.end16_crit_edge, label %if.then12.i.i222.i

do.end10.i.i221.i.if.end16_crit_edge:             ; preds = %do.end10.i.i221.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12.i.i222.i:                               ; preds = %do.end10.i.i221.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i48.i.i = zext i8 %165 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv.i48.i.i, i32 noundef 64) #13
  br label %if.end16

if.end11.i.i235.i:                                ; preds = %ldm_get_vstr.exit.i
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i232.i = zext i8 %167 to i32
  %add12.i.i233.i = add nuw nsw i32 %conv.i.i232.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i233.i, i32 %len)
  %cmp13.not.i.i234.i = icmp ult i32 %add12.i.i233.i, %len
  br i1 %cmp13.not.i.i234.i, label %ldm_relative.exit.i239.i, label %if.then11.i.i

ldm_relative.exit.i239.i:                         ; preds = %if.end11.i.i235.i
  %add22.i.i237.i = add nuw nsw i32 %conv.i.i232.i, 1
  %call13.i238.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 24, i32 noundef %add22.i.i237.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i238.i)
  %cmp14.i.i = icmp slt i32 %call13.i238.i, 0
  br i1 %cmp14.i.i, label %if.then15.i240.i, label %if.end16.i242.i

if.then11.i.i:                                    ; preds = %if.end11.i.i235.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i232.i, i32 noundef %len) #13
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.55, i32 noundef -1) #13
  br label %if.else.i

if.then15.i240.i:                                 ; preds = %ldm_relative.exit.i239.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.56, i32 noundef %call13.i238.i) #13
  br label %if.else.i

if.end16.i242.i:                                  ; preds = %ldm_relative.exit.i239.i
  %call17.i241.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 52, i32 noundef %call13.i238.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i241.i)
  %cmp18.i.i = icmp slt i32 %call17.i241.i, 0
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i243.i

if.then19.i.i:                                    ; preds = %if.end16.i242.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.57, i32 noundef %call17.i241.i) #13
  br label %if.else.i

if.end20.i243.i:                                  ; preds = %if.end16.i242.i
  %call21.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 52, i32 noundef %call17.i241.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.end24.i245.i

if.then23.i.i:                                    ; preds = %if.end20.i243.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.58, i32 noundef %call21.i.i) #13
  br label %if.else.i

if.end24.i245.i:                                  ; preds = %if.end20.i243.i
  %call25.i244.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 52, i32 noundef %call21.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i244.i)
  %cmp26.i.i = icmp slt i32 %call25.i244.i, 0
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end24.i245.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.59, i32 noundef %call25.i244.i) #13
  br label %if.else.i

if.end28.i.i:                                     ; preds = %if.end24.i245.i
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i, align 1
  %170 = and i8 %169, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool29.not.i.i = icmp eq i8 %170, 0
  br i1 %tobool29.not.i.i, label %if.end28.i.i.if.end40.i.i_crit_edge, label %if.then30.i.i

if.end28.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  %call31.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 52, i32 noundef %call25.i244.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp32.i.i = icmp slt i32 %call31.i.i, 0
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.then30.i.i.if.end40.i.i_crit_edge

if.then30.i.i.if.end40.i.i_crit_edge:             ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i.i

if.then34.i.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.60, i32 noundef %call31.i.i) #13
  br label %if.else.i

if.end40.i.i:                                     ; preds = %if.then30.i.i.if.end40.i.i_crit_edge, %if.end28.i.i.if.end40.i.i_crit_edge
  %len.0.i247.i = phi i32 [ %call31.i.i, %if.then30.i.i.if.end40.i.i_crit_edge ], [ %call25.i244.i, %if.end28.i.i.if.end40.i.i_crit_edge ]
  %add.i248.i = add nuw i32 %len.0.i247.i, 28
  %add.ptr.i249.i = getelementptr i8, ptr %data, i32 20
  %171 = ptrtoint ptr %add.ptr.i249.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %add.ptr.i249.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i248.i, i32 %172)
  %cmp42.i.i = icmp ugt i32 %add.i248.i, %172
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.end47.i.i

if.then44.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_prt3, ptr noundef nonnull @.str.62, i32 noundef %add.i248.i, i32 noundef %172) #13
  br label %if.else.i

if.end47.i.i:                                     ; preds = %if.end40.i.i
  %vblk.i250.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr48.i.i = getelementptr i8, ptr %data, i32 36
  %add.ptr49.i.i = getelementptr i8, ptr %add.ptr48.i.i, i32 %call13.i238.i
  %173 = ptrtoint ptr %add.ptr49.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %add.ptr49.i.i, align 1
  %175 = ptrtoint ptr %vblk.i250.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %vblk.i250.i, align 8
  %add.ptr51.i.i = getelementptr i8, ptr %data, i32 44
  %add.ptr52.i.i = getelementptr i8, ptr %add.ptr51.i.i, i32 %call13.i238.i
  %176 = ptrtoint ptr %add.ptr52.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 8)
  %177 = load i64, ptr %add.ptr52.i.i, align 1
  %volume_offset.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %178 = ptrtoint ptr %volume_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %volume_offset.i.i, align 8
  %add.ptr54.i.i = getelementptr i8, ptr %data, i32 52
  %add.ptr55.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 %call13.i238.i
  %tobool.not.i130.i.i = icmp eq ptr %add.ptr55.i.i, null
  br i1 %tobool.not.i130.i.i, label %do.body4.i.i251.i, label %do.end9.i.i252.i, !prof !190

do.body4.i.i251.i:                                ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i.i252.i:                                 ; preds = %if.end47.i.i
  %179 = ptrtoint ptr %add.ptr55.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %add.ptr55.i.i, align 1
  %181 = add i8 %180, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %181)
  %182 = icmp ult i8 %181, 8
  br i1 %182, label %while.body.i.i258.i, label %if.else.i.i259.i

while.body.i.i258.i:                              ; preds = %do.end9.i.i252.i
  %block.addr.0.i.i256.i = getelementptr i8, ptr %add.ptr55.i.i, i32 1
  %183 = ptrtoint ptr %block.addr.0.i.i256.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %block.addr.0.i.i256.i, align 1
  %conv16.i.i.i = zext i8 %184 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %tobool14.not.i.i257.i = icmp eq i8 %180, 1
  br i1 %tobool14.not.i.i257.i, label %while.body.i.i258.i.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.1

while.body.i.i258.i.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.1:                            ; preds = %while.body.i.i258.i
  %block.addr.0.i.i256.i.1 = getelementptr i8, ptr %block.addr.0.i.i256.i, i32 1
  %shl.i.i.i.1 = shl nuw nsw i64 %conv16.i.i.i, 8
  %185 = ptrtoint ptr %block.addr.0.i.i256.i.1 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %block.addr.0.i.i256.i.1, align 1
  %conv16.i.i.i.1 = zext i8 %186 to i64
  %or.i.i.i.1 = or i64 %shl.i.i.i.1, %conv16.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %180)
  %tobool14.not.i.i257.i.1 = icmp eq i8 %180, 2
  br i1 %tobool14.not.i.i257.i.1, label %while.body.i.i258.i.1.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.2

while.body.i.i258.i.1.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.2:                            ; preds = %while.body.i.i258.i.1
  %block.addr.0.i.i256.i.2 = getelementptr i8, ptr %block.addr.0.i.i256.i.1, i32 1
  %shl.i.i.i.2 = shl nuw nsw i64 %or.i.i.i.1, 8
  %187 = ptrtoint ptr %block.addr.0.i.i256.i.2 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %block.addr.0.i.i256.i.2, align 1
  %conv16.i.i.i.2 = zext i8 %188 to i64
  %or.i.i.i.2 = or i64 %shl.i.i.i.2, %conv16.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %180)
  %tobool14.not.i.i257.i.2 = icmp eq i8 %180, 3
  br i1 %tobool14.not.i.i257.i.2, label %while.body.i.i258.i.2.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.3

while.body.i.i258.i.2.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.3:                            ; preds = %while.body.i.i258.i.2
  %block.addr.0.i.i256.i.3 = getelementptr i8, ptr %block.addr.0.i.i256.i.2, i32 1
  %shl.i.i.i.3 = shl nuw nsw i64 %or.i.i.i.2, 8
  %189 = ptrtoint ptr %block.addr.0.i.i256.i.3 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %block.addr.0.i.i256.i.3, align 1
  %conv16.i.i.i.3 = zext i8 %190 to i64
  %or.i.i.i.3 = or i64 %shl.i.i.i.3, %conv16.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %180)
  %tobool14.not.i.i257.i.3 = icmp eq i8 %180, 4
  br i1 %tobool14.not.i.i257.i.3, label %while.body.i.i258.i.3.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.4

while.body.i.i258.i.3.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.4:                            ; preds = %while.body.i.i258.i.3
  %block.addr.0.i.i256.i.4 = getelementptr i8, ptr %block.addr.0.i.i256.i.3, i32 1
  %shl.i.i.i.4 = shl i64 %or.i.i.i.3, 8
  %191 = ptrtoint ptr %block.addr.0.i.i256.i.4 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %block.addr.0.i.i256.i.4, align 1
  %conv16.i.i.i.4 = zext i8 %192 to i64
  %or.i.i.i.4 = or i64 %shl.i.i.i.4, %conv16.i.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %180)
  %tobool14.not.i.i257.i.4 = icmp eq i8 %180, 5
  br i1 %tobool14.not.i.i257.i.4, label %while.body.i.i258.i.4.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.5

while.body.i.i258.i.4.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.5:                            ; preds = %while.body.i.i258.i.4
  %block.addr.0.i.i256.i.5 = getelementptr i8, ptr %block.addr.0.i.i256.i.4, i32 1
  %shl.i.i.i.5 = shl i64 %or.i.i.i.4, 8
  %193 = ptrtoint ptr %block.addr.0.i.i256.i.5 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %block.addr.0.i.i256.i.5, align 1
  %conv16.i.i.i.5 = zext i8 %194 to i64
  %or.i.i.i.5 = or i64 %shl.i.i.i.5, %conv16.i.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %180)
  %tobool14.not.i.i257.i.5 = icmp eq i8 %180, 6
  br i1 %tobool14.not.i.i257.i.5, label %while.body.i.i258.i.5.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.6

while.body.i.i258.i.5.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.6:                            ; preds = %while.body.i.i258.i.5
  %block.addr.0.i.i256.i.6 = getelementptr i8, ptr %block.addr.0.i.i256.i.5, i32 1
  %shl.i.i.i.6 = shl i64 %or.i.i.i.5, 8
  %195 = ptrtoint ptr %block.addr.0.i.i256.i.6 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %block.addr.0.i.i256.i.6, align 1
  %conv16.i.i.i.6 = zext i8 %196 to i64
  %or.i.i.i.6 = or i64 %shl.i.i.i.6, %conv16.i.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %180)
  %tobool14.not.i.i257.i.6 = icmp eq i8 %180, 7
  br i1 %tobool14.not.i.i257.i.6, label %while.body.i.i258.i.6.ldm_get_vnum.exit.i260.i_crit_edge, label %while.body.i.i258.i.7

while.body.i.i258.i.6.ldm_get_vnum.exit.i260.i_crit_edge: ; preds = %while.body.i.i258.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit.i260.i

while.body.i.i258.i.7:                            ; preds = %while.body.i.i258.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i.i256.i.7 = getelementptr i8, ptr %block.addr.0.i.i256.i.6, i32 1
  %shl.i.i.i.7 = shl i64 %or.i.i.i.6, 8
  %197 = ptrtoint ptr %block.addr.0.i.i256.i.7 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %block.addr.0.i.i256.i.7, align 1
  %conv16.i.i.i.7 = zext i8 %198 to i64
  %or.i.i.i.7 = or i64 %shl.i.i.i.7, %conv16.i.i.i.7
  br label %ldm_get_vnum.exit.i260.i

if.else.i.i259.i:                                 ; preds = %do.end9.i.i252.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i131.i.i = zext i8 %180 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i131.i.i) #13
  br label %ldm_get_vnum.exit.i260.i

ldm_get_vnum.exit.i260.i:                         ; preds = %if.else.i.i259.i, %while.body.i.i258.i.7, %while.body.i.i258.i.6.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.5.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.4.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.3.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.2.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.1.ldm_get_vnum.exit.i260.i_crit_edge, %while.body.i.i258.i.ldm_get_vnum.exit.i260.i_crit_edge
  %tmp.1.i.i.i = phi i64 [ 0, %if.else.i.i259.i ], [ %conv16.i.i.i, %while.body.i.i258.i.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.1, %while.body.i.i258.i.1.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.2, %while.body.i.i258.i.2.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.3, %while.body.i.i258.i.3.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.4, %while.body.i.i258.i.4.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.5, %while.body.i.i258.i.5.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.6, %while.body.i.i258.i.6.ldm_get_vnum.exit.i260.i_crit_edge ], [ %or.i.i.i.7, %while.body.i.i258.i.7 ]
  %size.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 0, i32 8
  %199 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %tmp.1.i.i.i, ptr %size.i.i, align 8
  %add.ptr58.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 %call17.i241.i
  %tobool.not.i133.i.i = icmp eq ptr %add.ptr58.i.i, null
  br i1 %tobool.not.i133.i.i, label %do.body4.i134.i.i, label %do.end9.i135.i.i, !prof !190

do.body4.i134.i.i:                                ; preds = %ldm_get_vnum.exit.i260.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i135.i.i:                                 ; preds = %ldm_get_vnum.exit.i260.i
  %200 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %add.ptr58.i.i, align 1
  %202 = add i8 %201, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %202)
  %203 = icmp ult i8 %202, 8
  br i1 %203, label %while.body.i145.i.i, label %if.else.i147.i.i

while.body.i145.i.i:                              ; preds = %do.end9.i135.i.i
  %block.addr.0.i140.i.i = getelementptr i8, ptr %add.ptr58.i.i, i32 1
  %204 = ptrtoint ptr %block.addr.0.i140.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %block.addr.0.i140.i.i, align 1
  %conv16.i142.i.i = zext i8 %205 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %201)
  %tobool14.not.i144.i.i = icmp eq i8 %201, 1
  br i1 %tobool14.not.i144.i.i, label %while.body.i145.i.i.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.1

while.body.i145.i.i.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.1:                            ; preds = %while.body.i145.i.i
  %block.addr.0.i140.i.i.1 = getelementptr i8, ptr %block.addr.0.i140.i.i, i32 1
  %shl.i141.i.i.1 = shl nuw nsw i64 %conv16.i142.i.i, 8
  %206 = ptrtoint ptr %block.addr.0.i140.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %block.addr.0.i140.i.i.1, align 1
  %conv16.i142.i.i.1 = zext i8 %207 to i64
  %or.i143.i.i.1 = or i64 %shl.i141.i.i.1, %conv16.i142.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %201)
  %tobool14.not.i144.i.i.1 = icmp eq i8 %201, 2
  br i1 %tobool14.not.i144.i.i.1, label %while.body.i145.i.i.1.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.2

while.body.i145.i.i.1.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.2:                            ; preds = %while.body.i145.i.i.1
  %block.addr.0.i140.i.i.2 = getelementptr i8, ptr %block.addr.0.i140.i.i.1, i32 1
  %shl.i141.i.i.2 = shl nuw nsw i64 %or.i143.i.i.1, 8
  %208 = ptrtoint ptr %block.addr.0.i140.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %block.addr.0.i140.i.i.2, align 1
  %conv16.i142.i.i.2 = zext i8 %209 to i64
  %or.i143.i.i.2 = or i64 %shl.i141.i.i.2, %conv16.i142.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %201)
  %tobool14.not.i144.i.i.2 = icmp eq i8 %201, 3
  br i1 %tobool14.not.i144.i.i.2, label %while.body.i145.i.i.2.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.3

while.body.i145.i.i.2.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.3:                            ; preds = %while.body.i145.i.i.2
  %block.addr.0.i140.i.i.3 = getelementptr i8, ptr %block.addr.0.i140.i.i.2, i32 1
  %shl.i141.i.i.3 = shl nuw nsw i64 %or.i143.i.i.2, 8
  %210 = ptrtoint ptr %block.addr.0.i140.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %block.addr.0.i140.i.i.3, align 1
  %conv16.i142.i.i.3 = zext i8 %211 to i64
  %or.i143.i.i.3 = or i64 %shl.i141.i.i.3, %conv16.i142.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %201)
  %tobool14.not.i144.i.i.3 = icmp eq i8 %201, 4
  br i1 %tobool14.not.i144.i.i.3, label %while.body.i145.i.i.3.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.4

while.body.i145.i.i.3.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.4:                            ; preds = %while.body.i145.i.i.3
  %block.addr.0.i140.i.i.4 = getelementptr i8, ptr %block.addr.0.i140.i.i.3, i32 1
  %shl.i141.i.i.4 = shl i64 %or.i143.i.i.3, 8
  %212 = ptrtoint ptr %block.addr.0.i140.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %block.addr.0.i140.i.i.4, align 1
  %conv16.i142.i.i.4 = zext i8 %213 to i64
  %or.i143.i.i.4 = or i64 %shl.i141.i.i.4, %conv16.i142.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %201)
  %tobool14.not.i144.i.i.4 = icmp eq i8 %201, 5
  br i1 %tobool14.not.i144.i.i.4, label %while.body.i145.i.i.4.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.5

while.body.i145.i.i.4.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.5:                            ; preds = %while.body.i145.i.i.4
  %block.addr.0.i140.i.i.5 = getelementptr i8, ptr %block.addr.0.i140.i.i.4, i32 1
  %shl.i141.i.i.5 = shl i64 %or.i143.i.i.4, 8
  %214 = ptrtoint ptr %block.addr.0.i140.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %block.addr.0.i140.i.i.5, align 1
  %conv16.i142.i.i.5 = zext i8 %215 to i64
  %or.i143.i.i.5 = or i64 %shl.i141.i.i.5, %conv16.i142.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %201)
  %tobool14.not.i144.i.i.5 = icmp eq i8 %201, 6
  br i1 %tobool14.not.i144.i.i.5, label %while.body.i145.i.i.5.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.6

while.body.i145.i.i.5.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.6:                            ; preds = %while.body.i145.i.i.5
  %block.addr.0.i140.i.i.6 = getelementptr i8, ptr %block.addr.0.i140.i.i.5, i32 1
  %shl.i141.i.i.6 = shl i64 %or.i143.i.i.5, 8
  %216 = ptrtoint ptr %block.addr.0.i140.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %block.addr.0.i140.i.i.6, align 1
  %conv16.i142.i.i.6 = zext i8 %217 to i64
  %or.i143.i.i.6 = or i64 %shl.i141.i.i.6, %conv16.i142.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %201)
  %tobool14.not.i144.i.i.6 = icmp eq i8 %201, 7
  br i1 %tobool14.not.i144.i.i.6, label %while.body.i145.i.i.6.ldm_get_vnum.exit150.i.i_crit_edge, label %while.body.i145.i.i.7

while.body.i145.i.i.6.ldm_get_vnum.exit150.i.i_crit_edge: ; preds = %while.body.i145.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit150.i.i

while.body.i145.i.i.7:                            ; preds = %while.body.i145.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i140.i.i.7 = getelementptr i8, ptr %block.addr.0.i140.i.i.6, i32 1
  %shl.i141.i.i.7 = shl i64 %or.i143.i.i.6, 8
  %218 = ptrtoint ptr %block.addr.0.i140.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %block.addr.0.i140.i.i.7, align 1
  %conv16.i142.i.i.7 = zext i8 %219 to i64
  %or.i143.i.i.7 = or i64 %shl.i141.i.i.7, %conv16.i142.i.i.7
  br label %ldm_get_vnum.exit150.i.i

if.else.i147.i.i:                                 ; preds = %do.end9.i135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i146.i.i = zext i8 %201 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i146.i.i) #13
  br label %ldm_get_vnum.exit150.i.i

ldm_get_vnum.exit150.i.i:                         ; preds = %if.else.i147.i.i, %while.body.i145.i.i.7, %while.body.i145.i.i.6.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.5.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.4.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.3.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.2.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.1.ldm_get_vnum.exit150.i.i_crit_edge, %while.body.i145.i.i.ldm_get_vnum.exit150.i.i_crit_edge
  %tmp.1.i148.i.i = phi i64 [ 0, %if.else.i147.i.i ], [ %conv16.i142.i.i, %while.body.i145.i.i.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.1, %while.body.i145.i.i.1.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.2, %while.body.i145.i.i.2.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.3, %while.body.i145.i.i.3.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.4, %while.body.i145.i.i.4.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.5, %while.body.i145.i.i.5.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.6, %while.body.i145.i.i.6.ldm_get_vnum.exit150.i.i_crit_edge ], [ %or.i143.i.i.7, %while.body.i145.i.i.7 ]
  %parent_id.i261.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1, i32 8
  %220 = ptrtoint ptr %parent_id.i261.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %tmp.1.i148.i.i, ptr %parent_id.i261.i, align 8
  %add.ptr61.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 %call21.i.i
  %tobool.not.i151.i.i = icmp eq ptr %add.ptr61.i.i, null
  br i1 %tobool.not.i151.i.i, label %do.body4.i152.i.i, label %do.end9.i153.i.i, !prof !190

do.body4.i152.i.i:                                ; preds = %ldm_get_vnum.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9.i153.i.i:                                 ; preds = %ldm_get_vnum.exit150.i.i
  %221 = ptrtoint ptr %add.ptr61.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %add.ptr61.i.i, align 1
  %223 = add i8 %222, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %223)
  %224 = icmp ult i8 %223, 8
  br i1 %224, label %while.body.i163.i.i, label %if.else.i165.i.i

while.body.i163.i.i:                              ; preds = %do.end9.i153.i.i
  %block.addr.0.i158.i.i = getelementptr i8, ptr %add.ptr61.i.i, i32 1
  %225 = ptrtoint ptr %block.addr.0.i158.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %block.addr.0.i158.i.i, align 1
  %conv16.i160.i.i = zext i8 %226 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %tobool14.not.i162.i.i = icmp eq i8 %222, 1
  br i1 %tobool14.not.i162.i.i, label %while.body.i163.i.i.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.1

while.body.i163.i.i.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.1:                            ; preds = %while.body.i163.i.i
  %block.addr.0.i158.i.i.1 = getelementptr i8, ptr %block.addr.0.i158.i.i, i32 1
  %shl.i159.i.i.1 = shl nuw nsw i64 %conv16.i160.i.i, 8
  %227 = ptrtoint ptr %block.addr.0.i158.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %block.addr.0.i158.i.i.1, align 1
  %conv16.i160.i.i.1 = zext i8 %228 to i64
  %or.i161.i.i.1 = or i64 %shl.i159.i.i.1, %conv16.i160.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %222)
  %tobool14.not.i162.i.i.1 = icmp eq i8 %222, 2
  br i1 %tobool14.not.i162.i.i.1, label %while.body.i163.i.i.1.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.2

while.body.i163.i.i.1.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.2:                            ; preds = %while.body.i163.i.i.1
  %block.addr.0.i158.i.i.2 = getelementptr i8, ptr %block.addr.0.i158.i.i.1, i32 1
  %shl.i159.i.i.2 = shl nuw nsw i64 %or.i161.i.i.1, 8
  %229 = ptrtoint ptr %block.addr.0.i158.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %block.addr.0.i158.i.i.2, align 1
  %conv16.i160.i.i.2 = zext i8 %230 to i64
  %or.i161.i.i.2 = or i64 %shl.i159.i.i.2, %conv16.i160.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %222)
  %tobool14.not.i162.i.i.2 = icmp eq i8 %222, 3
  br i1 %tobool14.not.i162.i.i.2, label %while.body.i163.i.i.2.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.3

while.body.i163.i.i.2.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.3:                            ; preds = %while.body.i163.i.i.2
  %block.addr.0.i158.i.i.3 = getelementptr i8, ptr %block.addr.0.i158.i.i.2, i32 1
  %shl.i159.i.i.3 = shl nuw nsw i64 %or.i161.i.i.2, 8
  %231 = ptrtoint ptr %block.addr.0.i158.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %block.addr.0.i158.i.i.3, align 1
  %conv16.i160.i.i.3 = zext i8 %232 to i64
  %or.i161.i.i.3 = or i64 %shl.i159.i.i.3, %conv16.i160.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %222)
  %tobool14.not.i162.i.i.3 = icmp eq i8 %222, 4
  br i1 %tobool14.not.i162.i.i.3, label %while.body.i163.i.i.3.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.4

while.body.i163.i.i.3.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.4:                            ; preds = %while.body.i163.i.i.3
  %block.addr.0.i158.i.i.4 = getelementptr i8, ptr %block.addr.0.i158.i.i.3, i32 1
  %shl.i159.i.i.4 = shl i64 %or.i161.i.i.3, 8
  %233 = ptrtoint ptr %block.addr.0.i158.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %block.addr.0.i158.i.i.4, align 1
  %conv16.i160.i.i.4 = zext i8 %234 to i64
  %or.i161.i.i.4 = or i64 %shl.i159.i.i.4, %conv16.i160.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %222)
  %tobool14.not.i162.i.i.4 = icmp eq i8 %222, 5
  br i1 %tobool14.not.i162.i.i.4, label %while.body.i163.i.i.4.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.5

while.body.i163.i.i.4.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.5:                            ; preds = %while.body.i163.i.i.4
  %block.addr.0.i158.i.i.5 = getelementptr i8, ptr %block.addr.0.i158.i.i.4, i32 1
  %shl.i159.i.i.5 = shl i64 %or.i161.i.i.4, 8
  %235 = ptrtoint ptr %block.addr.0.i158.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %block.addr.0.i158.i.i.5, align 1
  %conv16.i160.i.i.5 = zext i8 %236 to i64
  %or.i161.i.i.5 = or i64 %shl.i159.i.i.5, %conv16.i160.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %222)
  %tobool14.not.i162.i.i.5 = icmp eq i8 %222, 6
  br i1 %tobool14.not.i162.i.i.5, label %while.body.i163.i.i.5.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.6

while.body.i163.i.i.5.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.6:                            ; preds = %while.body.i163.i.i.5
  %block.addr.0.i158.i.i.6 = getelementptr i8, ptr %block.addr.0.i158.i.i.5, i32 1
  %shl.i159.i.i.6 = shl i64 %or.i161.i.i.5, 8
  %237 = ptrtoint ptr %block.addr.0.i158.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %block.addr.0.i158.i.i.6, align 1
  %conv16.i160.i.i.6 = zext i8 %238 to i64
  %or.i161.i.i.6 = or i64 %shl.i159.i.i.6, %conv16.i160.i.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %222)
  %tobool14.not.i162.i.i.6 = icmp eq i8 %222, 7
  br i1 %tobool14.not.i162.i.i.6, label %while.body.i163.i.i.6.ldm_get_vnum.exit168.i.i_crit_edge, label %while.body.i163.i.i.7

while.body.i163.i.i.6.ldm_get_vnum.exit168.i.i_crit_edge: ; preds = %while.body.i163.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ldm_get_vnum.exit168.i.i

while.body.i163.i.i.7:                            ; preds = %while.body.i163.i.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.i158.i.i.7 = getelementptr i8, ptr %block.addr.0.i158.i.i.6, i32 1
  %shl.i159.i.i.7 = shl i64 %or.i161.i.i.6, 8
  %239 = ptrtoint ptr %block.addr.0.i158.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %block.addr.0.i158.i.i.7, align 1
  %conv16.i160.i.i.7 = zext i8 %240 to i64
  %or.i161.i.i.7 = or i64 %shl.i159.i.i.7, %conv16.i160.i.i.7
  br label %ldm_get_vnum.exit168.i.i

if.else.i165.i.i:                                 ; preds = %do.end9.i153.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i164.i.i = zext i8 %222 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv.i164.i.i) #13
  br label %ldm_get_vnum.exit168.i.i

ldm_get_vnum.exit168.i.i:                         ; preds = %if.else.i165.i.i, %while.body.i163.i.i.7, %while.body.i163.i.i.6.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.5.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.4.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.3.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.2.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.1.ldm_get_vnum.exit168.i.i_crit_edge, %while.body.i163.i.i.ldm_get_vnum.exit168.i.i_crit_edge
  %tmp.1.i166.i.i = phi i64 [ 0, %if.else.i165.i.i ], [ %conv16.i160.i.i, %while.body.i163.i.i.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.1, %while.body.i163.i.i.1.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.2, %while.body.i163.i.i.2.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.3, %while.body.i163.i.i.3.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.4, %while.body.i163.i.i.4.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.5, %while.body.i163.i.i.5.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.6, %while.body.i163.i.i.6.ldm_get_vnum.exit168.i.i_crit_edge ], [ %or.i161.i.i.7, %while.body.i163.i.i.7 ]
  %disk_id.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 2
  %241 = ptrtoint ptr %disk_id.i.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %tmp.1.i166.i.i, ptr %disk_id.i.i, align 8
  %242 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %flags.i, align 4
  %244 = and i8 %243, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool65.not.i.i = icmp eq i8 %244, 0
  br i1 %tobool65.not.i.i, label %if.else69.i.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %ldm_get_vnum.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add67.i.i = add i32 %call25.i244.i, 53
  %arrayidx68.i.i = getelementptr i8, ptr %data, i32 %add67.i.i
  %245 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx68.i.i, align 1
  %partnum.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 2, i32 8
  %247 = ptrtoint ptr %partnum.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %partnum.i.i, align 8
  br label %if.end16

if.else69.i.i:                                    ; preds = %ldm_get_vnum.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %partnum70.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 2, i32 8
  %248 = ptrtoint ptr %partnum70.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %partnum70.i.i, align 8
  br label %if.end16

if.end11.i.i274.i:                                ; preds = %ldm_get_vstr.exit.i
  %249 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i271.i = zext i8 %250 to i32
  %add12.i.i272.i = add nuw nsw i32 %conv.i.i271.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i272.i, i32 %len)
  %cmp13.not.i.i273.i = icmp ult i32 %add12.i.i272.i, %len
  br i1 %cmp13.not.i.i273.i, label %ldm_relative.exit.i279.i, label %if.then11.i280.i

ldm_relative.exit.i279.i:                         ; preds = %if.end11.i.i274.i
  %add22.i.i276.i = add nuw nsw i32 %conv.i.i271.i, 1
  %call13.i277.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 24, i32 noundef %add22.i.i276.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i277.i)
  %cmp14.i278.i = icmp slt i32 %call13.i277.i, 0
  br i1 %cmp14.i278.i, label %if.then15.i281.i, label %if.end16.i284.i

if.then11.i280.i:                                 ; preds = %if.end11.i.i274.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef 24, i32 noundef %conv.i.i271.i, i32 noundef %len) #13
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.55, i32 noundef -1) #13
  br label %if.else.i

if.then15.i281.i:                                 ; preds = %ldm_relative.exit.i279.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.56, i32 noundef %call13.i277.i) #13
  br label %if.else.i

if.end16.i284.i:                                  ; preds = %ldm_relative.exit.i279.i
  %call17.i282.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 24, i32 noundef %call13.i277.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i282.i)
  %cmp18.i283.i = icmp slt i32 %call17.i282.i, 0
  br i1 %cmp18.i283.i, label %if.then19.i285.i, label %if.end20.i288.i

if.then19.i285.i:                                 ; preds = %if.end16.i284.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.63, i32 noundef %call17.i282.i) #13
  br label %if.else.i

if.end20.i288.i:                                  ; preds = %if.end16.i284.i
  %call21.i286.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 24, i32 noundef %call17.i282.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i286.i)
  %cmp22.i287.i = icmp slt i32 %call21.i286.i, 0
  br i1 %cmp22.i287.i, label %if.then23.i289.i, label %if.end24.i292.i

if.then23.i289.i:                                 ; preds = %if.end20.i288.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.64, i32 noundef %call21.i286.i) #13
  br label %if.else.i

if.end24.i292.i:                                  ; preds = %if.end20.i288.i
  %call25.i290.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 45, i32 noundef %call21.i286.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i290.i)
  %cmp26.i291.i = icmp slt i32 %call25.i290.i, 0
  br i1 %cmp26.i291.i, label %if.then27.i293.i, label %if.end28.i294.i

if.then27.i293.i:                                 ; preds = %if.end24.i292.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.65, i32 noundef %call25.i290.i) #13
  br label %if.else.i

if.end28.i294.i:                                  ; preds = %if.end24.i292.i
  %call29.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 61, i32 noundef %call25.i290.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp30.i.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i

if.then31.i.i:                                    ; preds = %if.end28.i294.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.57, i32 noundef %call29.i.i) #13
  br label %if.else.i

if.end32.i.i:                                     ; preds = %if.end28.i294.i
  %251 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx.i, align 1
  %253 = and i8 %252, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool33.not.i.i = icmp eq i8 %253, 0
  br i1 %tobool33.not.i.i, label %if.end32.i.i.if.end40.i297.i_crit_edge, label %if.then34.i296.i

if.end32.i.i.if.end40.i297.i_crit_edge:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i297.i

if.then34.i296.i:                                 ; preds = %if.end32.i.i
  %call35.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 82, i32 noundef %call29.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.then34.i296.i.if.end40.i297.i_crit_edge

if.then34.i296.i.if.end40.i297.i_crit_edge:       ; preds = %if.then34.i296.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i297.i

if.then38.i.i:                                    ; preds = %if.then34.i296.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.66, i32 noundef %call35.i.i) #13
  br label %if.else.i

if.end40.i297.i:                                  ; preds = %if.then34.i296.i.if.end40.i297.i_crit_edge, %if.end32.i.i.if.end40.i297.i_crit_edge
  %r_id1.0.i.i = phi i32 [ %call35.i.i, %if.then34.i296.i.if.end40.i297.i_crit_edge ], [ %call29.i.i, %if.end32.i.i.if.end40.i297.i_crit_edge ]
  %254 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx.i, align 1
  %256 = and i8 %255, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool44.not.i.i = icmp eq i8 %256, 0
  br i1 %tobool44.not.i.i, label %if.end40.i297.i.if.end52.i.i_crit_edge, label %if.then45.i.i

if.end40.i297.i.if.end52.i.i_crit_edge:           ; preds = %if.end40.i297.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i.i

if.then45.i.i:                                    ; preds = %if.end40.i297.i
  %call46.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 82, i32 noundef %r_id1.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %cmp47.i.i = icmp slt i32 %call46.i.i, 0
  br i1 %cmp47.i.i, label %if.then49.i.i, label %if.end52thread-pre-split.i.i

if.then49.i.i:                                    ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.67, i32 noundef %call46.i.i) #13
  br label %if.else.i

if.end52thread-pre-split.i.i:                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %257 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %.pr.i.i = load i8, ptr %arrayidx.i, align 1
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end52thread-pre-split.i.i, %if.end40.i297.i.if.end52.i.i_crit_edge
  %258 = phi i8 [ %.pr.i.i, %if.end52thread-pre-split.i.i ], [ %255, %if.end40.i297.i.if.end52.i.i_crit_edge ]
  %r_id2.0.i.i = phi i32 [ %call46.i.i, %if.end52thread-pre-split.i.i ], [ %r_id1.0.i.i, %if.end40.i297.i.if.end52.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %258)
  %tobool56.not.i.i = icmp sgt i8 %258, -1
  br i1 %tobool56.not.i.i, label %if.end52.i.i.if.end64.i.i_crit_edge, label %if.then57.i.i

if.end52.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i.i

if.then57.i.i:                                    ; preds = %if.end52.i.i
  %call58.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 82, i32 noundef %r_id2.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %cmp59.i.i = icmp slt i32 %call58.i.i, 0
  br i1 %cmp59.i.i, label %if.then61.i.i, label %if.then57.i.i.if.end64.i.i_crit_edge

if.then57.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i.i

if.then61.i.i:                                    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.68, i32 noundef %call58.i.i) #13
  br label %if.else.i

if.end64.i.i:                                     ; preds = %if.then57.i.i.if.end64.i.i_crit_edge, %if.end52.i.i.if.end64.i.i_crit_edge
  %r_size2.0.i.i = phi i32 [ %call58.i.i, %if.then57.i.i.if.end64.i.i_crit_edge ], [ %r_id2.0.i.i, %if.end52.i.i.if.end64.i.i_crit_edge ]
  %259 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i, align 1
  %261 = and i8 %260, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool68.not.i.i = icmp eq i8 %261, 0
  br i1 %tobool68.not.i.i, label %if.end64.i.i.if.end80.i.i_crit_edge, label %if.then69.i.i

if.end64.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i.i

if.then69.i.i:                                    ; preds = %if.end64.i.i
  %call70.i.i = tail call fastcc i32 @ldm_relative(ptr noundef nonnull %data, i32 noundef %len, i32 noundef 82, i32 noundef %r_size2.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i.i)
  %cmp71.i.i = icmp slt i32 %call70.i.i, 0
  br i1 %cmp71.i.i, label %if.then73.i.i, label %if.then69.i.i.if.end80.i.i_crit_edge

if.then69.i.i.if.end80.i.i_crit_edge:             ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i.i

if.then73.i.i:                                    ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.69, i32 noundef %call70.i.i) #13
  br label %if.else.i

if.end80.i.i:                                     ; preds = %if.then69.i.i.if.end80.i.i_crit_edge, %if.end64.i.i.if.end80.i.i_crit_edge
  %r_drive.0.i.i = phi i32 [ %call70.i.i, %if.then69.i.i.if.end80.i.i_crit_edge ], [ %r_size2.0.i.i, %if.end64.i.i.if.end80.i.i_crit_edge ]
  %add.i298.i = add nuw i32 %r_drive.0.i.i, 58
  %add.ptr.i299.i = getelementptr i8, ptr %data, i32 20
  %262 = ptrtoint ptr %add.ptr.i299.i to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %add.ptr.i299.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i298.i, i32 %263)
  %cmp82.i.i = icmp ugt i32 %add.i298.i, %263
  br i1 %cmp82.i.i, label %if.then84.i.i, label %if.end87.i.i

if.then84.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vol5, ptr noundef nonnull @.str.62, i32 noundef %add.i298.i, i32 noundef %263) #13
  br label %if.else.i

if.end87.i.i:                                     ; preds = %if.end80.i.i
  %vblk.i300.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  %add.ptr89.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %call13.i277.i
  tail call fastcc void @ldm_get_vstr(ptr noundef %add.ptr89.i.i, ptr noundef %vblk.i300.i, i32 noundef 16) #13
  %volume_state.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %add.ptr93.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %call21.i286.i
  %264 = call ptr @memcpy(ptr %volume_state.i.i, ptr %add.ptr93.i.i, i32 16)
  %add.ptr94.i.i = getelementptr i8, ptr %data, i32 61
  %add.ptr95.i.i = getelementptr i8, ptr %add.ptr94.i.i, i32 %call25.i290.i
  %call96.i.i = tail call fastcc i64 @ldm_get_vnum(ptr noundef %add.ptr95.i.i) #13
  %size.i301.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 4
  %265 = ptrtoint ptr %size.i301.i to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %call96.i.i, ptr %size.i301.i, align 8
  %add97.i.i = add nuw i32 %call29.i.i, 65
  %arrayidx98.i.i = getelementptr i8, ptr %data, i32 %add97.i.i
  %266 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx98.i.i, align 1
  %partition_type.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 5
  %268 = ptrtoint ptr %partition_type.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %partition_type.i.i, align 8
  %guid.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 2
  %add.ptr100.i.i = getelementptr i8, ptr %data, i32 66
  %add.ptr101.i.i = getelementptr i8, ptr %add.ptr100.i.i, i32 %call29.i.i
  %269 = call ptr @memcpy(ptr %guid.i.i, ptr %add.ptr101.i.i, i32 16)
  %270 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx.i, align 1
  %272 = and i8 %271, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool105.not.i.i = icmp eq i8 %272, 0
  br i1 %tobool105.not.i.i, label %if.end87.i.i.if.end16_crit_edge, label %if.then106.i.i

if.end87.i.i.if.end16_crit_edge:                  ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then106.i.i:                                   ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr107.i.i = getelementptr i8, ptr %data, i32 82
  %add.ptr108.i.i = getelementptr i8, ptr %add.ptr107.i.i, i32 %call29.i.i
  %drive_hint.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 3
  tail call fastcc void @ldm_get_vstr(ptr noundef %add.ptr108.i.i, ptr noundef %drive_hint.i.i, i32 noundef 4) #13
  br label %if.end16

sw.epilog.i:                                      ; preds = %if.then12.i.i128.i, %do.end10.i.i127.i.sw.epilog.i_crit_edge
  %length.0.i.i129.i = phi i32 [ 127, %if.then12.i.i128.i ], [ %conv.i51.i.i, %do.end10.i.i127.i.sw.epilog.i_crit_edge ]
  %add.ptr.i.i130.i = getelementptr i8, ptr %add.ptr21.i.i, i32 1
  %273 = call ptr @memcpy(ptr %alt_name.i.i, ptr %add.ptr.i.i130.i, i32 %length.0.i.i129.i)
  %arrayidx14.i.i131.i = getelementptr i8, ptr %alt_name.i.i, i32 %length.0.i.i129.i
  %274 = ptrtoint ptr %arrayidx14.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %arrayidx14.i.i131.i, align 1
  %add.ptr23.i.i = getelementptr i8, ptr %data, i32 25
  %add.ptr24.i.i = getelementptr i8, ptr %add.ptr23.i.i, i32 %add22.i502.i
  %call25.i.i = tail call i32 @uuid_parse(ptr noundef %add.ptr24.i.i, ptr noundef %vblk.i123.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %sw.epilog.i.if.end16_crit_edge, label %sw.epilog.i.if.else.i_crit_edge

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

sw.epilog.i.if.end16_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.else.i:                                        ; preds = %sw.epilog.i.if.else.i_crit_edge, %if.then84.i.i, %if.then73.i.i, %if.then61.i.i, %if.then49.i.i, %if.then38.i.i, %if.then31.i.i, %if.then27.i293.i, %if.then23.i289.i, %if.then19.i285.i, %if.then15.i281.i, %if.then11.i280.i, %if.then44.i.i, %if.then34.i.i, %if.then27.i.i, %if.then23.i.i, %if.then19.i.i, %if.then15.i240.i, %if.then11.i.i, %if.end19.i217.i.if.else.i_crit_edge, %if.end16.i.i.if.else.i_crit_edge, %if.then15.i638.i, %if.then9.i632.i, %if.end.i629.thread.i.if.else.i_crit_edge, %if.end20.i.i.if.else.i_crit_edge, %if.end17.i179.i.if.else.i_crit_edge, %if.then15.i546.i, %if.then9.i540.i, %if.end.i537.thread.i.if.else.i_crit_edge, %ldm_relative.exit528.i.if.else.i_crit_edge, %if.then15.i523.i, %if.then9.i517.i, %if.end.i514.thread.i.if.else.i_crit_edge, %ldm_relative.exit459.i.if.else.i_crit_edge, %if.then15.i454.i, %if.then9.i448.i, %if.end.i445.thread.i.if.else.i_crit_edge, %if.end.i445.thread.thread.i, %if.end22.i.i.if.else.i_crit_edge, %if.end19.i.i.if.else.i_crit_edge, %if.then15.i317.i, %if.then9.i311.i, %if.end.i310.thread.i.if.else.i_crit_edge, %ldm_get_vstr.exit.i.if.else.i_crit_edge
  %275 = ptrtoint ptr %obj_id.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %obj_id.i, align 8
  %277 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %type.i, align 1
  %conv46.i = zext i8 %278 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_parse_vblk, ptr noundef nonnull @.str.48, i64 noundef %276, i32 noundef %conv46.i) #13
  br label %if.then15

if.then15:                                        ; preds = %if.else.i, %if.then11.i
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup44

if.end16:                                         ; preds = %sw.epilog.i.if.end16_crit_edge, %if.then106.i.i, %if.end87.i.i.if.end16_crit_edge, %if.else69.i.i, %if.then66.i.i, %if.then12.i.i222.i, %do.end10.i.i221.i.if.end16_crit_edge, %ldm_parse_dgr3.exit.i, %if.end17.i.i, %cond.end.i.i
  %279 = ptrtoint ptr %obj_id.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %obj_id.i, align 8
  %281 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %type.i, align 1
  %conv43.i = zext i8 %282 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ldm_parse_vblk, ptr noundef nonnull @.str.47, i64 noundef %280, i32 noundef %conv43.i) #13
  %283 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %type.i, align 1
  %285 = zext i8 %284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %284, label %if.end16.cleanup44_crit_edge [
    i8 53, label %if.end16.sw.bb_crit_edge
    i8 69, label %if.end16.sw.bb_crit_edge109
    i8 52, label %if.end16.sw.bb17_crit_edge
    i8 68, label %if.end16.sw.bb17_crit_edge110
    i8 81, label %sw.bb19
    i8 50, label %sw.bb21
    i8 51, label %sw.bb23
  ]

if.end16.sw.bb17_crit_edge110:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end16.sw.bb17_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end16.sw.bb_crit_edge109:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end16.cleanup44_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge109
  %list = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %v_dgrp = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 3
  %286 = ptrtoint ptr %v_dgrp to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %v_dgrp, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %v_dgrp, ptr noundef %287) #13
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.cleanup44_crit_edge

sw.bb.cleanup44_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %list, ptr %prev1.i.i, align 4
  %289 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %287, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %290 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %v_dgrp, ptr %prev3.i.i, align 4
  %291 = ptrtoint ptr %v_dgrp to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile ptr %list, ptr %v_dgrp, align 4
  br label %cleanup44

sw.bb17:                                          ; preds = %if.end16.sw.bb17_crit_edge, %if.end16.sw.bb17_crit_edge110
  %list18 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %v_disk = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 4
  %292 = ptrtoint ptr %v_disk to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %v_disk, align 4
  %call.i.i69 = tail call zeroext i1 @__list_add_valid(ptr noundef %list18, ptr noundef %v_disk, ptr noundef %293) #13
  br i1 %call.i.i69, label %if.end.i.i72, label %sw.bb17.cleanup44_crit_edge

sw.bb17.cleanup44_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i72:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i70 = getelementptr inbounds %struct.list_head, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %prev1.i.i70 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %list18, ptr %prev1.i.i70, align 4
  %295 = ptrtoint ptr %list18 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %293, ptr %list18, align 8
  %prev3.i.i71 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %296 = ptrtoint ptr %prev3.i.i71 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %v_disk, ptr %prev3.i.i71, align 4
  %297 = ptrtoint ptr %v_disk to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile ptr %list18, ptr %v_disk, align 4
  br label %cleanup44

sw.bb19:                                          ; preds = %if.end16
  %list20 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %v_volu = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 5
  %298 = ptrtoint ptr %v_volu to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %v_volu, align 4
  %call.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef %list20, ptr noundef %v_volu, ptr noundef %299) #13
  br i1 %call.i.i74, label %if.end.i.i77, label %sw.bb19.cleanup44_crit_edge

sw.bb19.cleanup44_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i77:                                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i75 = getelementptr inbounds %struct.list_head, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %prev1.i.i75 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %list20, ptr %prev1.i.i75, align 4
  %301 = ptrtoint ptr %list20 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %299, ptr %list20, align 8
  %prev3.i.i76 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %302 = ptrtoint ptr %prev3.i.i76 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %v_volu, ptr %prev3.i.i76, align 4
  %303 = ptrtoint ptr %v_volu to i32
  call void @__asan_store4_noabort(i32 %303)
  store volatile ptr %list20, ptr %v_volu, align 4
  br label %cleanup44

sw.bb21:                                          ; preds = %if.end16
  %list22 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %v_comp = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 6
  %304 = ptrtoint ptr %v_comp to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %v_comp, align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %list22, ptr noundef %v_comp, ptr noundef %305) #13
  br i1 %call.i.i79, label %if.end.i.i82, label %sw.bb21.cleanup44_crit_edge

sw.bb21.cleanup44_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i82:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i80 = getelementptr inbounds %struct.list_head, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %prev1.i.i80 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %list22, ptr %prev1.i.i80, align 4
  %307 = ptrtoint ptr %list22 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %305, ptr %list22, align 8
  %prev3.i.i81 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %308 = ptrtoint ptr %prev3.i.i81 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %v_comp, ptr %prev3.i.i81, align 4
  %309 = ptrtoint ptr %v_comp to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %list22, ptr %v_comp, align 4
  br label %cleanup44

sw.bb23:                                          ; preds = %if.end16
  %v_part = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 7
  %310 = ptrtoint ptr %v_part to i32
  call void @__asan_load4_noabort(i32 %310)
  %item.094 = load ptr, ptr %v_part, align 4
  %cmp.i.not95 = icmp eq ptr %item.094, %v_part
  br i1 %cmp.i.not95, label %sw.bb23.for.end_crit_edge, label %for.body.lr.ph

sw.bb23.for.end_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb23
  %disk_id30 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5, i32 0, i32 2
  %311 = ptrtoint ptr %disk_id30 to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %disk_id30, align 8
  %vblk29 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %item.096 = phi ptr [ %item.094, %for.body.lr.ph ], [ %item.0, %for.inc.for.body_crit_edge ]
  %disk_id = getelementptr i8, ptr %item.096, i32 -112
  %313 = ptrtoint ptr %disk_id to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %disk_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %314, i64 %312)
  %cmp = icmp eq i64 %314, %312
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %vblk = getelementptr i8, ptr %item.096, i32 -144
  %315 = ptrtoint ptr %vblk to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %vblk, align 8
  %317 = ptrtoint ptr %vblk29 to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %vblk29, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %316, i64 %318)
  %cmp35 = icmp ugt i64 %316, %318
  br i1 %cmp35, label %if.then37, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then37:                                        ; preds = %land.lhs.true
  %list38 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %item.096, i32 0, i32 1
  %319 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %prev.i, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %list38, ptr noundef %320, ptr noundef %item.096) #13
  br i1 %call.i.i84, label %if.end.i.i86, label %if.then37.cleanup44_crit_edge

if.then37.cleanup44_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i86:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %321 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %list38, ptr %prev.i, align 4
  %322 = ptrtoint ptr %list38 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %item.096, ptr %list38, align 8
  %prev3.i.i85 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %323 = ptrtoint ptr %prev3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %320, ptr %prev3.i.i85, align 4
  %324 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile ptr %list38, ptr %320, align 4
  br label %cleanup44

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %325 = ptrtoint ptr %item.096 to i32
  call void @__asan_load4_noabort(i32 %325)
  %item.0 = load ptr, ptr %item.096, align 4
  %cmp.i.not = icmp eq ptr %item.0, %v_part
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb23.for.end_crit_edge
  %list42 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6
  %prev.i87 = getelementptr inbounds %struct.ldmdb, ptr %ldb, i32 0, i32 7, i32 1
  %326 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %prev.i87, align 4
  %call.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef %list42, ptr noundef %327, ptr noundef %v_part) #13
  br i1 %call.i.i88, label %if.end.i.i90, label %for.end.cleanup44_crit_edge

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end.i.i90:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %328 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %list42, ptr %prev.i87, align 4
  %329 = ptrtoint ptr %list42 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %v_part, ptr %list42, align 8
  %prev3.i.i89 = getelementptr inbounds %struct.vblk, ptr %call7.i, i32 0, i32 6, i32 1
  %330 = ptrtoint ptr %prev3.i.i89 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %327, ptr %prev3.i.i89, align 4
  %331 = ptrtoint ptr %327 to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile ptr %list42, ptr %327, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.end.i.i90, %for.end.cleanup44_crit_edge, %if.end.i.i86, %if.then37.cleanup44_crit_edge, %if.end.i.i82, %sw.bb21.cleanup44_crit_edge, %if.end.i.i77, %sw.bb19.cleanup44_crit_edge, %if.end.i.i72, %sw.bb17.cleanup44_crit_edge, %if.end.i.i, %sw.bb.cleanup44_crit_edge, %if.end16.cleanup44_crit_edge, %if.then15, %if.then12
  %retval.2 = phi i1 [ false, %if.then15 ], [ false, %if.then12 ], [ true, %if.end16.cleanup44_crit_edge ], [ true, %sw.bb.cleanup44_crit_edge ], [ true, %if.end.i.i ], [ true, %sw.bb17.cleanup44_crit_edge ], [ true, %if.end.i.i72 ], [ true, %sw.bb19.cleanup44_crit_edge ], [ true, %if.end.i.i77 ], [ true, %sw.bb21.cleanup44_crit_edge ], [ true, %if.end.i.i82 ], [ true, %if.then37.cleanup44_crit_edge ], [ true, %if.end.i.i86 ], [ true, %for.end.cleanup44_crit_edge ], [ true, %if.end.i.i90 ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ldm_relative(ptr noundef readonly %buffer, i32 noundef %buflen, i32 noundef %base, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, %base
  %tobool.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp slt i32 %offset, 0
  %or.cond = or i1 %tobool.not, %cmp
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buflen)
  %cmp2 = icmp sgt i32 %add, %buflen
  %or.cond43 = or i1 %or.cond, %cmp2
  br i1 %or.cond43, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.49)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  br i1 %cmp, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.50, i32 noundef %offset)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  br i1 %cmp2, label %if.then9, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.51, i32 noundef %add, i32 noundef %buflen)
  br label %return

if.end11:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buffer, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add12 = add i32 %add, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %buflen)
  %cmp13.not = icmp slt i32 %add12, %buflen
  br i1 %cmp13.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_relative, ptr noundef nonnull @.str.52, i32 noundef %add, i32 noundef %conv, i32 noundef %buflen)
  br label %return

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %add21 = add nuw i32 %offset, 1
  %add22 = add nuw i32 %add21, %conv
  br label %return

return:                                           ; preds = %if.end18, %if.then15, %if.then9, %if.end7.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then15 ], [ %add22, %if.end18 ], [ -1, %if.then9 ], [ -1, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ldm_get_vnum(ptr noundef readonly %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !190

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9:                                          ; preds = %entry
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %block, align 1
  %2 = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %3 = icmp ult i8 %2, 8
  br i1 %3, label %while.body, label %if.else

while.body:                                       ; preds = %do.end9
  %block.addr.0 = getelementptr i8, ptr %block, i32 1
  %4 = ptrtoint ptr %block.addr.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %block.addr.0, align 1
  %conv16 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %tobool14.not = icmp eq i8 %1, 1
  br i1 %tobool14.not, label %while.body.if.end18_crit_edge, label %while.body.1

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.1:                                     ; preds = %while.body
  %block.addr.0.1 = getelementptr i8, ptr %block, i32 2
  %shl.1 = shl nuw nsw i64 %conv16, 8
  %6 = ptrtoint ptr %block.addr.0.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %block.addr.0.1, align 1
  %conv16.1 = zext i8 %7 to i64
  %or.1 = or i64 %shl.1, %conv16.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %tobool14.not.1 = icmp eq i8 %1, 2
  br i1 %tobool14.not.1, label %while.body.1.if.end18_crit_edge, label %while.body.2

while.body.1.if.end18_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.2:                                     ; preds = %while.body.1
  %block.addr.0.2 = getelementptr i8, ptr %block, i32 3
  %shl.2 = shl nuw nsw i64 %or.1, 8
  %8 = ptrtoint ptr %block.addr.0.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %block.addr.0.2, align 1
  %conv16.2 = zext i8 %9 to i64
  %or.2 = or i64 %shl.2, %conv16.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %tobool14.not.2 = icmp eq i8 %1, 3
  br i1 %tobool14.not.2, label %while.body.2.if.end18_crit_edge, label %while.body.3

while.body.2.if.end18_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.3:                                     ; preds = %while.body.2
  %block.addr.0.3 = getelementptr i8, ptr %block, i32 4
  %shl.3 = shl nuw nsw i64 %or.2, 8
  %10 = ptrtoint ptr %block.addr.0.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %block.addr.0.3, align 1
  %conv16.3 = zext i8 %11 to i64
  %or.3 = or i64 %shl.3, %conv16.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %tobool14.not.3 = icmp eq i8 %1, 4
  br i1 %tobool14.not.3, label %while.body.3.if.end18_crit_edge, label %while.body.4

while.body.3.if.end18_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.4:                                     ; preds = %while.body.3
  %block.addr.0.4 = getelementptr i8, ptr %block, i32 5
  %shl.4 = shl i64 %or.3, 8
  %12 = ptrtoint ptr %block.addr.0.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %block.addr.0.4, align 1
  %conv16.4 = zext i8 %13 to i64
  %or.4 = or i64 %shl.4, %conv16.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %tobool14.not.4 = icmp eq i8 %1, 5
  br i1 %tobool14.not.4, label %while.body.4.if.end18_crit_edge, label %while.body.5

while.body.4.if.end18_crit_edge:                  ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.5:                                     ; preds = %while.body.4
  %block.addr.0.5 = getelementptr i8, ptr %block, i32 6
  %shl.5 = shl i64 %or.4, 8
  %14 = ptrtoint ptr %block.addr.0.5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %block.addr.0.5, align 1
  %conv16.5 = zext i8 %15 to i64
  %or.5 = or i64 %shl.5, %conv16.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %tobool14.not.5 = icmp eq i8 %1, 6
  br i1 %tobool14.not.5, label %while.body.5.if.end18_crit_edge, label %while.body.6

while.body.5.if.end18_crit_edge:                  ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.6:                                     ; preds = %while.body.5
  %block.addr.0.6 = getelementptr i8, ptr %block, i32 7
  %shl.6 = shl i64 %or.5, 8
  %16 = ptrtoint ptr %block.addr.0.6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %block.addr.0.6, align 1
  %conv16.6 = zext i8 %17 to i64
  %or.6 = or i64 %shl.6, %conv16.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %tobool14.not.6 = icmp eq i8 %1, 7
  br i1 %tobool14.not.6, label %while.body.6.if.end18_crit_edge, label %while.body.7

while.body.6.if.end18_crit_edge:                  ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #15
  %block.addr.0.7 = getelementptr i8, ptr %block, i32 8
  %shl.7 = shl i64 %or.6, 8
  %18 = ptrtoint ptr %block.addr.0.7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %block.addr.0.7, align 1
  %conv16.7 = zext i8 %19 to i64
  %or.7 = or i64 %shl.7, %conv16.7
  br label %if.end18

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vnum, ptr noundef nonnull @.str.53, i32 noundef %conv)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %while.body.7, %while.body.6.if.end18_crit_edge, %while.body.5.if.end18_crit_edge, %while.body.4.if.end18_crit_edge, %while.body.3.if.end18_crit_edge, %while.body.2.if.end18_crit_edge, %while.body.1.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %tmp.1 = phi i64 [ 0, %if.else ], [ %conv16, %while.body.if.end18_crit_edge ], [ %or.1, %while.body.1.if.end18_crit_edge ], [ %or.2, %while.body.2.if.end18_crit_edge ], [ %or.3, %while.body.3.if.end18_crit_edge ], [ %or.4, %while.body.4.if.end18_crit_edge ], [ %or.5, %while.body.5.if.end18_crit_edge ], [ %or.6, %while.body.6.if.end18_crit_edge ], [ %or.7, %while.body.7 ]
  ret i64 %tmp.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldm_get_vstr(ptr noundef readonly %block, ptr noundef writeonly %buffer, i32 noundef %buflen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block, null
  %tobool1.not = icmp eq ptr %buffer, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/partitions/ldm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

do.end10:                                         ; preds = %entry
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %block, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %buflen)
  %cmp.not = icmp slt i32 %conv, %buflen
  br i1 %cmp.not, label %do.end10.if.end13_crit_edge, label %if.then12

do.end10.if.end13_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @_ldm_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ldm_get_vstr, ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %buflen)
  %sub = add i32 %buflen, -1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end10.if.end13_crit_edge
  %length.0 = phi i32 [ %sub, %if.then12 ], [ %conv, %do.end10.if.end13_crit_edge ]
  %add.ptr = getelementptr i8, ptr %block, i32 1
  %2 = call ptr @memcpy(ptr %buffer, ptr %add.ptr, i32 %length.0)
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 %length.0
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx14, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !108, !110, !112, !114, !115, !117, !119, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !165, !167, !169, !171, !172, !174, !175, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/ldm.c", i32 1454, i32 3}
!2 = !{ptr @__func__.ldm_partition, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/ldm.c", i32 1478, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/ldm.c", i32 1484, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../block/partitions/ldm.c", i32 504, i32 3}
!11 = !{ptr @__func__.ldm_validate_partition_table, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../block/partitions/ldm.c", i32 519, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/partitions/ldm.c", i32 51, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_ldm_printk._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @_ldm_printk._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ldm_validate_privheads.off, !24, !"off", i1 false, i1 false}
!24 = !{!"../block/partitions/ldm.c", i32 268, i32 19}
!25 = !{ptr @__func__.ldm_validate_privheads, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../block/partitions/ldm.c", i32 281, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/partitions/ldm.c", i32 299, i32 4}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/partitions/ldm.c", i32 311, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/partitions/ldm.c", i32 318, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/ldm.c", i32 323, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/partitions/ldm.c", i32 331, i32 2}
!38 = !{ptr @__func__.ldm_parse_privhead, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/partitions/ldm.c", i32 73, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../block/partitions/ldm.c", i32 87, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/partitions/ldm.c", i32 91, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../block/partitions/ldm.c", i32 95, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../block/partitions/ldm.c", i32 101, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../block/partitions/ldm.c", i32 105, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../block/partitions/ldm.c", i32 108, i32 2}
!55 = !{ptr @ldm_validate_tocblocks.off, !56, !"off", i1 false, i1 false}
!56 = !{!"../block/partitions/ldm.c", i32 356, i32 19}
!57 = !{ptr @__func__.ldm_validate_tocblocks, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/partitions/ldm.c", i32 369, i32 3}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../block/partitions/ldm.c", i32 383, i32 4}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../block/partitions/ldm.c", i32 391, i32 3}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../block/partitions/ldm.c", i32 398, i32 3}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../block/partitions/ldm.c", i32 404, i32 4}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../block/partitions/ldm.c", i32 408, i32 2}
!69 = !{ptr @__func__.ldm_parse_tocblock, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../block/partitions/ldm.c", i32 131, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../block/partitions/ldm.c", i32 139, i32 34}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../block/partitions/ldm.c", i32 141, i32 3}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../block/partitions/ldm.c", i32 149, i32 34}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../block/partitions/ldm.c", i32 151, i32 3}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../block/partitions/ldm.c", i32 155, i32 2}
!82 = !{ptr @__func__.ldm_validate_vmdb, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../block/partitions/ldm.c", i32 443, i32 3}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../block/partitions/ldm.c", i32 452, i32 3}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../block/partitions/ldm.c", i32 457, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../block/partitions/ldm.c", i32 464, i32 3}
!90 = !{ptr @__func__.ldm_parse_vmdb, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../block/partitions/ldm.c", i32 177, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../block/partitions/ldm.c", i32 184, i32 3}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../block/partitions/ldm.c", i32 191, i32 3}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../block/partitions/ldm.c", i32 198, i32 2}
!99 = !{ptr @__func__.ldm_get_vblks, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../block/partitions/ldm.c", i32 1371, i32 4}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../block/partitions/ldm.c", i32 1377, i32 5}
!103 = !{ptr @__func__.ldm_ldmdb_add, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../block/partitions/ldm.c", i32 1174, i32 3}
!105 = !{ptr @__func__.ldm_parse_vblk, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../block/partitions/ldm.c", i32 1122, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../block/partitions/ldm.c", i32 1142, i32 3}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../block/partitions/ldm.c", i32 1145, i32 3}
!112 = !{ptr @__func__.ldm_relative, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../block/partitions/ldm.c", i32 627, i32 4}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../block/partitions/ldm.c", i32 629, i32 4}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../block/partitions/ldm.c", i32 631, i32 4}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../block/partitions/ldm.c", i32 635, i32 3}
!121 = !{ptr @__func__.ldm_get_vnum, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../block/partitions/ldm.c", i32 670, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__func__.ldm_get_vstr, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../block/partitions/ldm.c", i32 700, i32 3}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__func__.ldm_parse_prt3, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../block/partitions/ldm.c", i32 936, i32 3}
!129 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../block/partitions/ldm.c", i32 941, i32 3}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../block/partitions/ldm.c", i32 946, i32 3}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../block/partitions/ldm.c", i32 951, i32 3}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../block/partitions/ldm.c", i32 956, i32 3}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../block/partitions/ldm.c", i32 962, i32 4}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../block/partitions/ldm.c", i32 971, i32 3}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../block/partitions/ldm.c", i32 976, i32 3}
!144 = !{ptr @__func__.ldm_parse_vol5, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../block/partitions/ldm.c", i32 1013, i32 3}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../block/partitions/ldm.c", i32 1023, i32 3}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../block/partitions/ldm.c", i32 1028, i32 3}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../block/partitions/ldm.c", i32 1034, i32 3}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../block/partitions/ldm.c", i32 1045, i32 4}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../block/partitions/ldm.c", i32 1053, i32 4}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../block/partitions/ldm.c", i32 1061, i32 4}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../block/partitions/ldm.c", i32 1069, i32 4}
!160 = !{ptr @__func__.ldm_frag_add, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../block/partitions/ldm.c", i32 1236, i32 3}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../block/partitions/ldm.c", i32 1244, i32 3}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../block/partitions/ldm.c", i32 1248, i32 3}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../block/partitions/ldm.c", i32 1276, i32 3}
!169 = !{ptr @__func__.ldm_frag_commit, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../block/partitions/ldm.c", i32 1329, i32 4}
!171 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @__func__.ldm_create_data_partitions, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../block/partitions/ldm.c", i32 583, i32 3}
!174 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../block/partitions/ldm.c", i32 587, i32 22}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../block/partitions/ldm.c", i32 602, i32 22}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../block/partitions/check.h", i32 45, i32 30}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{i64 2154641287, i64 2154641775, i64 2154641324, i64 2154641380, i64 2154641414, i64 2154641438, i64 2154641479, i64 2154641500, i64 2154641528, i64 2154641562}
!192 = !{i64 2154638399, i64 2154638887, i64 2154638436, i64 2154638492, i64 2154638526, i64 2154638550, i64 2154638591, i64 2154638612, i64 2154638640, i64 2154638674}
!193 = !{!"auto-init"}
!194 = !{i64 2154593061, i64 2154593548, i64 2154593098, i64 2154593154, i64 2154593188, i64 2154593212, i64 2154593253, i64 2154593274, i64 2154593302, i64 2154593336}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 2153236687, i64 2153237170, i64 2153236724, i64 2153236780, i64 2153236814, i64 2153236838, i64 2153236879, i64 2153236900, i64 2153236928, i64 2153236962}
!197 = !{i64 2148710109}
!198 = !{i64 2148624818, i64 2148624850, i64 2148624879, i64 2148624913, i64 2148624944, i64 2148624967}
!199 = !{i64 2148710338}
!200 = !{i64 2148242359, i64 2148242364, i64 2148242377, i64 2148242421, i64 2148242455, i64 2148242476}
!201 = !{i64 2154586019, i64 2154586506, i64 2154586056, i64 2154586112, i64 2154586146, i64 2154586170, i64 2154586211, i64 2154586232, i64 2154586260, i64 2154586294}
!202 = !{i64 2154576068, i64 2154576554, i64 2154576105, i64 2154576161, i64 2154576195, i64 2154576219, i64 2154576260, i64 2154576281, i64 2154576309, i64 2154576343}
!203 = !{i64 2154588653, i64 2154589140, i64 2154588690, i64 2154588746, i64 2154588780, i64 2154588804, i64 2154588845, i64 2154588866, i64 2154588894, i64 2154588928}
!204 = !{i64 2154578639, i64 2154579126, i64 2154578676, i64 2154578732, i64 2154578766, i64 2154578790, i64 2154578831, i64 2154578852, i64 2154578880, i64 2154578914}
!205 = !{i64 2154584414, i64 2154584901, i64 2154584451, i64 2154584507, i64 2154584541, i64 2154584565, i64 2154584606, i64 2154584627, i64 2154584655, i64 2154584689}
!206 = !{i64 2154591022, i64 2154591509, i64 2154591059, i64 2154591115, i64 2154591149, i64 2154591173, i64 2154591214, i64 2154591235, i64 2154591263, i64 2154591297}
!207 = !{i64 2154580778, i64 2154581265, i64 2154580815, i64 2154580871, i64 2154580905, i64 2154580929, i64 2154580970, i64 2154580991, i64 2154581019, i64 2154581053}
!208 = !{i64 2154636626, i64 2154637114, i64 2154636663, i64 2154636719, i64 2154636753, i64 2154636777, i64 2154636818, i64 2154636839, i64 2154636867, i64 2154636901}
!209 = !{i64 2154627013, i64 2154627501, i64 2154627050, i64 2154627106, i64 2154627140, i64 2154627164, i64 2154627205, i64 2154627226, i64 2154627254, i64 2154627288}
!210 = !{i64 2154597806, i64 2154598293, i64 2154597843, i64 2154597899, i64 2154597933, i64 2154597957, i64 2154597998, i64 2154598019, i64 2154598047, i64 2154598081}
!211 = !{i64 2154582821, i64 2154583308, i64 2154582858, i64 2154582914, i64 2154582948, i64 2154582972, i64 2154583013, i64 2154583034, i64 2154583062, i64 2154583096}
!212 = !{i64 2154623846, i64 2154624334, i64 2154623883, i64 2154623939, i64 2154623973, i64 2154623997, i64 2154624038, i64 2154624059, i64 2154624087, i64 2154624121}
!213 = !{i64 2154601293, i64 2154601780, i64 2154601330, i64 2154601386, i64 2154601420, i64 2154601444, i64 2154601485, i64 2154601506, i64 2154601534, i64 2154601568}
!214 = !{i64 2154602983, i64 2154603470, i64 2154603020, i64 2154603076, i64 2154603110, i64 2154603134, i64 2154603175, i64 2154603196, i64 2154603224, i64 2154603258}
