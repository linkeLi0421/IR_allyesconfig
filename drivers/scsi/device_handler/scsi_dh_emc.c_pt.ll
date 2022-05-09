; ModuleID = '/llk/IR_all_yes/drivers/scsi/device_handler/scsi_dh_emc.c_pt.bc'
source_filename = "../drivers/scsi/device_handler/scsi_dh_emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.clariion_dh_data = type { i32, [252 x i8], i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }

@clariion_dh = internal global { %struct.scsi_device_handler, [52 x i8] } { %struct.scsi_device_handler { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @clariion_check_sense, ptr @clariion_bus_attach, ptr @clariion_bus_detach, ptr @clariion_activate, ptr @clariion_prep_fn, ptr @clariion_set_params, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_scsi_dh_emc__282_540_clariion_init6 = internal global ptr @clariion_init, section ".initcall6.init", align 4
@__exitcall_clariion_exit = internal global ptr @clariion_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description283 = internal constant [51 x i8] c"scsi_dh_emc.description=EMC CX/AX/FC-family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [99 x i8] c"scsi_dh_emc.author=Mike Christie <michaelc@cs.wisc.edu>, Chandra Seetharaman <sekharan@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [57 x i8] c"scsi_dh_emc.file=drivers/scsi/device_handler/scsi_dh_emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [24 x i8] c"scsi_dh_emc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: connected to SP %c Port %d (%s, default SP %c)\0A\00", [44 x i8] zeroinitializer }, align 32
@lun_state = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FC\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: detected Clariion %s, flags %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Invalid information section length %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DGC\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FC (Legacy)\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Invalid array serial number length %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Invalid model number length %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: Detected in-progress ucode upgrade NDU operation while finding current active SP.\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid VPD page 0xC0 format\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ALUA failover mode detected\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Invalid failover mode %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not bound\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bound\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"owned\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %s trespass command sent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: at SP %c Port %d (%s, default SP %c)\0A\00", [54 x i8] zeroinitializer }, align 32
@short_trespass = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\22\02\01\FF", [24 x i8] zeroinitializer }, align 32
@long_trespass = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\00\00\00\00\00\00\00\00\22\09\01\FF\FF\00\00\00\00\00\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to send MODE SELECT: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: Found valid sense data 0x%2x, 0x%2x, 0x%2x while sending CLARiiON trespass command.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: Array Based Copy in progress while sending CLARiiON trespass command.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s: Detected in-progress ucode upgrade NDU operation while sending CLARiiON trespass command.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@clariion_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.31, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Failed to register scsi device handler.\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clariion_init\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/scsi/device_handler/scsi_dh_emc.c\00", [54 x i8] zeroinitializer }, align 32
@clariion_init._entry_ptr = internal global ptr @clariion_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"clariion_dh\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 513, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 514, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 493, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"lun_state\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 54, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 359, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 362, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 196, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 200, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 202, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 212, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 219, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 142, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 150, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 158, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 166, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 56, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 57, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 397, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 407, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"short_trespass\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 46, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"long_trespass\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 37, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 273, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 105, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 116, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 126, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 430, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [45 x i8] c"../drivers/scsi/device_handler/scsi_dh_emc.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 530, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_clariion_exit, ptr @__initcall__kmod_scsi_dh_emc__282_540_clariion_init6, ptr @clariion_exit, ptr @clariion_init._entry, ptr @clariion_init._entry_ptr, ptr @clariion_dh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lun_state, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @short_trespass, ptr @long_trespass, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clariion_dh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lun_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @short_trespass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_trespass to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clariion_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clariion_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @scsi_unregister_device_handler(ptr noundef nonnull @clariion_dh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_unregister_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clariion_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_register_device_handler(ptr noundef nonnull @clariion_dh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clariion_check_sense(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readonly %sense_hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 1
  %0 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sense_key, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 5, label %sw.bb6
    i8 6, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %3 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %asc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp eq i8 %4, 4
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %5 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ascq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp4 = icmp eq i8 %6, 3
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry
  %asc7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %7 = ptrtoint ptr %asc7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %asc7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %8)
  %cmp9 = icmp eq i8 %8, 37
  br i1 %cmp9, label %land.lhs.true11, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true11:                                  ; preds = %sw.bb6
  %ascq12 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %9 = ptrtoint ptr %ascq12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ascq12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp14 = icmp eq i8 %10, 1
  br i1 %cmp14, label %land.lhs.true11.return_crit_edge, label %land.lhs.true11.sw.epilog_crit_edge

land.lhs.true11.sw.epilog_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true11.return_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb18:                                          ; preds = %entry
  %asc19 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %11 = ptrtoint ptr %asc19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %asc19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %12)
  %cmp21 = icmp eq i8 %12, 41
  br i1 %cmp21, label %land.lhs.true23, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true23:                                  ; preds = %sw.bb18
  %ascq24 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %13 = ptrtoint ptr %ascq24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ascq24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp26 = icmp eq i8 %14, 0
  br i1 %cmp26, label %land.lhs.true23.return_crit_edge, label %land.lhs.true23.sw.epilog_crit_edge

land.lhs.true23.sw.epilog_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true23.return_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %land.lhs.true23.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %land.lhs.true11.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %land.lhs.true23.return_crit_edge, %land.lhs.true11.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 8200, %sw.epilog ], [ 8194, %land.lhs.true.return_crit_edge ], [ 8194, %land.lhs.true11.return_crit_edge ], [ 8198, %land.lhs.true23.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clariion_bus_attach(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun_state = getelementptr inbounds %struct.clariion_dh_data, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %lun_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lun_state, align 8
  %default_sp = getelementptr inbounds %struct.clariion_dh_data, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %default_sp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %default_sp, align 8
  %current_sp = getelementptr inbounds %struct.clariion_dh_data, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %current_sp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %current_sp, align 4
  %inquiry.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 29
  %4 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inquiry.i, align 8
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %add.i.i = add i8 %7, 5
  %conv2.i.i = zext i8 %add.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %add.i.i)
  %cmp.i.i = icmp ult i8 %add.i.i, -96
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.end
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef %conv2.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %call.i.i = tail call i32 @strncmp(ptr noundef %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) @.str.7, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i.i.failed_crit_edge

if.then.i.i.failed_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end6.i.i:                                      ; preds = %if.end
  %arrayidx7.i.i = getelementptr i8, ptr %5, i32 160
  %8 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9.i.i = icmp eq i8 %9, 0
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then16.i.i_crit_edge, label %lor.lhs.false.i.i

if.end6.i.i.if.then16.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i.i

lor.lhs.false.i.i:                                ; preds = %if.end6.i.i
  %add12.i.i = add nuw nsw i32 %conv8.i.i, 161
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %conv2.i.i)
  %cmp14.i.i = icmp ugt i32 %add12.i.i, %conv2.i.i
  br i1 %cmp14.i.i, label %lor.lhs.false.i.i.if.then16.i.i_crit_edge, label %if.end18.i.i

lor.lhs.false.i.i.if.then16.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then16.i.i_crit_edge, %if.end6.i.i.if.then16.i.i_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %conv8.i.i) #10
  br label %failed

if.end18.i.i:                                     ; preds = %lor.lhs.false.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %5, i32 99
  %10 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp21.i.i = icmp eq i8 %11, 0
  %add27.i.i = add nuw nsw i32 %add12.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i.i, i32 %conv2.i.i)
  %cmp29.i.i = icmp ugt i32 %add27.i.i, %conv2.i.i
  %or.cond.i.i = select i1 %cmp21.i.i, i1 true, i1 %cmp29.i.i
  br i1 %or.cond.i.i, label %if.then31.i.i, label %if.end33.i.i

if.then31.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef %conv20.i.i) #10
  br label %failed

if.end33.i.i:                                     ; preds = %if.end18.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %5, i32 %add12.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp3868.i.i = icmp ugt i8 %11, 1
  br i1 %cmp3868.i.i, label %if.end33.i.i.land.rhs.i.i_crit_edge, label %if.end33.i.i.parse_sp_model.exit.i_crit_edge

if.end33.i.i.parse_sp_model.exit.i_crit_edge:     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_sp_model.exit.i

if.end33.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end33.i.i
  br label %land.rhs.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add i8 %sp_len.069.i.i, -1
  %conv37.i.i = zext i8 %dec.i.i to i32
  %cmp38.i.i = icmp ugt i8 %dec.i.i, 1
  br i1 %cmp38.i.i, label %while.cond.i.i.land.rhs.i.i_crit_edge, label %while.cond.i.i.parse_sp_model.exit.i_crit_edge

while.cond.i.i.parse_sp_model.exit.i_crit_edge:   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_sp_model.exit.i

while.cond.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i.land.rhs.i.i_crit_edge, %if.end33.i.i.land.rhs.i.i_crit_edge
  %conv3770.i.i = phi i32 [ %conv37.i.i, %while.cond.i.i.land.rhs.i.i_crit_edge ], [ %conv20.i.i, %if.end33.i.i.land.rhs.i.i_crit_edge ]
  %sp_len.069.i.i = phi i8 [ %dec.i.i, %while.cond.i.i.land.rhs.i.i_crit_edge ], [ %11, %if.end33.i.i.land.rhs.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %conv3770.i.i, -1
  %arrayidx41.i.i = getelementptr i8, ptr %arrayidx36.i.i, i32 %sub.i.i
  %12 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx41.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp43.i.i = icmp eq i8 %13, 32
  br i1 %cmp43.i.i, label %while.cond.i.i, label %land.rhs.i.i.parse_sp_model.exit.i_crit_edge

land.rhs.i.i.parse_sp_model.exit.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_sp_model.exit.i

parse_sp_model.exit.i:                            ; preds = %land.rhs.i.i.parse_sp_model.exit.i_crit_edge, %while.cond.i.i.parse_sp_model.exit.i_crit_edge, %if.end33.i.i.parse_sp_model.exit.i_crit_edge
  %conv37.lcssa.i.i = phi i32 [ %conv20.i.i, %if.end33.i.i.parse_sp_model.exit.i_crit_edge ], [ %conv37.i.i, %while.cond.i.i.parse_sp_model.exit.i_crit_edge ], [ %conv3770.i.i, %land.rhs.i.i.parse_sp_model.exit.i_crit_edge ]
  %arrayidx45.i.i = getelementptr i8, ptr %arrayidx36.i.i, i32 %conv37.lcssa.i.i
  %14 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx45.i.i, align 1
  %tobool.not.i = icmp eq ptr %arrayidx36.i.i, null
  br i1 %tobool.not.i, label %parse_sp_model.exit.i.failed_crit_edge, label %parse_sp_model.exit.i.if.end.i_crit_edge

parse_sp_model.exit.i.if.end.i_crit_edge:         ; preds = %parse_sp_model.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

parse_sp_model.exit.i.failed_crit_edge:           ; preds = %parse_sp_model.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end.i:                                         ; preds = %parse_sp_model.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %sp_model.0.i21.i = phi ptr [ %arrayidx36.i.i, %parse_sp_model.exit.i.if.end.i_crit_edge ], [ @.str.8, %if.then.i.i.if.end.i_crit_edge ]
  %15 = ptrtoint ptr %sp_model.0.i21.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %char0.i = load i8, ptr %sp_model.0.i21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool2.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.then5.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @strncmp(ptr noundef nonnull %sp_model.0.i21.i, ptr noundef nonnull dereferenceable(3) @.str.3, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.if.end3_crit_edge

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i, align 8
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %call7.i.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then5.i, %lor.lhs.false.i.if.end3_crit_edge
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, ptr noundef nonnull %sp_model.0.i21.i, i32 noundef %19) #10
  %call4 = tail call fastcc i32 @clariion_send_inquiry(ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end3.failed_crit_edge

if.end3.failed_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %current_sp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_sp, align 4
  %add = add i32 %21, 65
  %port = getelementptr inbounds %struct.clariion_dh_data, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %24 = ptrtoint ptr %lun_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lun_state, align 8
  %arrayidx = getelementptr [3 x ptr], ptr @lun_state, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %default_sp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %default_sp, align 8
  %add11 = add i32 %29, 65
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef %add, i32 noundef %23, ptr noundef %27, i32 noundef %add11) #10
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %30 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %handler_data, align 4
  br label %cleanup

failed:                                           ; preds = %if.end3.failed_crit_edge, %parse_sp_model.exit.i.failed_crit_edge, %if.then31.i.i, %if.then16.i.i, %if.then.i.i.failed_crit_edge
  %err.0 = phi i32 [ %call4, %if.end3.failed_crit_edge ], [ 3, %parse_sp_model.exit.i.failed_crit_edge ], [ 3, %if.then16.i.i ], [ 3, %if.then31.i.i ], [ 3, %if.then.i.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ 0, %if.end7 ], [ 15, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clariion_bus_detach(ptr nocapture noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %handler_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clariion_activate(ptr noundef %sdev, ptr noundef readonly %fn, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %call = tail call fastcc i32 @clariion_send_inquiry(ptr noundef %sdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %lun_state = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lun_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lun_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.end.done_crit_edge, label %if.end3

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @send_trespass_cmd(ptr noundef %sdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end3.done_crit_edge

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #10
  %call8 = tail call fastcc i32 @clariion_send_inquiry(ptr noundef %sdev, ptr noundef %1)
  br label %done

done:                                             ; preds = %if.end7, %if.end3.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %result.0 = phi i32 [ %call, %entry.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ %call4, %if.end3.done_crit_edge ], [ %call8, %if.end7 ]
  %current_sp = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %current_sp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_sp, align 4
  %add = add i32 %7, 65
  %port = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %lun_state12 = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %lun_state12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lun_state12, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @lun_state, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %default_sp = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %default_sp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %default_sp, align 4
  %add13 = add i32 %15, 65
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef %add, i32 noundef %9, ptr noundef %13, i32 noundef %add13) #10
  %tobool14.not = icmp eq ptr %fn, null
  br i1 %tobool14.not, label %done.if.end16_crit_edge, label %if.then15

done.if.end16_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %fn(ptr noundef %data, i32 noundef %result.0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %done.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clariion_prep_fn(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %lun_state = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lun_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lun_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_flags, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clariion_set_params(ptr noundef %sdev, ptr nocapture noundef readonly %params) #3 align 64 {
entry:
  %hr = alloca i32, align 4
  %st = alloca i32, align 4
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hr) #10
  %2 = ptrtoint ptr %hr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st) #10
  %3 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #10
  %4 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %argc, align 4, !annotation !86
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %params, ptr noundef nonnull @.str.28, ptr noundef nonnull %argc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1.not = icmp eq i32 %6, 2
  br i1 %cmp1.not, label %lor.lhs.false.while.cond_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %lor.lhs.false.while.cond_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %params, %lor.lhs.false.while.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %7 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p.0, align 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %incdec.ptr, ptr noundef nonnull @.str.28, ptr noundef nonnull %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %lor.lhs.false4, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %while.end
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp ugt i32 %10, 1
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.while.cond8_crit_edge

lor.lhs.false4.while.cond8_crit_edge:             ; preds = %lor.lhs.false4
  br label %while.cond8

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond8:                                      ; preds = %while.cond8.while.cond8_crit_edge, %lor.lhs.false4.while.cond8_crit_edge
  %p.1 = phi ptr [ %incdec.ptr9, %while.cond8.while.cond8_crit_edge ], [ %incdec.ptr, %lor.lhs.false4.while.cond8_crit_edge ]
  %incdec.ptr9 = getelementptr i8, ptr %p.1, i32 1
  %11 = ptrtoint ptr %p.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p.1, align 1
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %while.end12, label %while.cond8.while.cond8_crit_edge

while.cond8.while.cond8_crit_edge:                ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8

while.end12:                                      ; preds = %while.cond8
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %incdec.ptr9, ptr noundef nonnull @.str.28, ptr noundef nonnull %hr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %lor.lhs.false15, label %while.end12.cleanup_crit_edge

while.end12.cleanup_crit_edge:                    ; preds = %while.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false15:                                  ; preds = %while.end12
  %13 = ptrtoint ptr %hr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp16 = icmp ugt i32 %14, 1
  br i1 %cmp16, label %lor.lhs.false15.cleanup_crit_edge, label %if.end18

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false15
  %15 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp ne i32 %16, 0
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %and = and i32 %18, -4
  %masksel60 = zext i1 %tobool19.not to i32
  %storemerge = or i32 %and, %masksel60
  %19 = ptrtoint ptr %hr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool23.not = icmp eq i32 %20, 0
  %masksel = select i1 %tobool23.not, i32 0, i32 2
  %storemerge59 = or i32 %masksel, %storemerge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge59, ptr %1, align 4
  %lun_state = getelementptr inbounds %struct.clariion_dh_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %lun_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lun_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp31.not = icmp eq i32 %23, 2
  br i1 %cmp31.not, label %if.end33, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %lun_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %lun_state, align 4
  %call35 = call fastcc i32 @send_trespass_cmd(ptr noundef %sdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call fastcc i32 @clariion_send_inquiry(ptr noundef %sdev, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end33.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %while.end12.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %while.end12.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call39, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hr) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clariion_send_inquiry(ptr noundef %sdev, ptr noundef %csdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1
  %call = tail call i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext -64, ptr noundef %buffer, i32 noundef 252) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 48
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str) #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %arrayidx3.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp5.i = icmp ugt i8 %3, 2
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str) #10
  br label %if.end

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx10.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10.i, align 4
  %6 = and i8 %5, 15
  %and.i = zext i8 %6 to i32
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and.i, label %sw.default.i [
    i32 6, label %sw.bb.i
    i32 4, label %if.end8.i.sw.epilog.i_crit_edge
  ]

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str) #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef %and.i) #10
  br label %if.end

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end8.i.sw.epilog.i_crit_edge
  %arrayidx17.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %9 to i32
  %default_sp.i = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 4
  %10 = ptrtoint ptr %default_sp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv18.i, ptr %default_sp.i, align 4
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 4
  %conv21.i = zext i8 %12 to i32
  %lun_state.i = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 2
  %13 = ptrtoint ptr %lun_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv21.i, ptr %lun_state.i, align 4
  %arrayidx23.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23.i, align 4
  %conv24.i = zext i8 %15 to i32
  %current_sp.i = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 5
  %16 = ptrtoint ptr %current_sp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv24.i, ptr %current_sp.i, align 4
  %arrayidx26.i = getelementptr %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %18 to i32
  %port.i = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 3
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv27.i, ptr %port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp29.i = icmp eq i8 %12, 2
  %spec.select.i = select i1 %cmp29.i, i8 0, i8 2
  %20 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 66
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select.i, ptr %20, align 4
  %22 = ptrtoint ptr %default_sp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %default_sp.i, align 4
  %24 = ptrtoint ptr %current_sp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_sp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp36.i = icmp eq i32 %23, %25
  br i1 %cmp36.i, label %if.then38.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then38.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = or i8 %spec.select.i, -128
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then38.i, %sw.epilog.i.if.end_crit_edge, %sw.default.i, %if.then7.i, %if.then.i, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 8, %entry.if.end_crit_edge ], [ 2, %if.then.i ], [ 16, %if.then7.i ], [ 16, %sw.default.i ], [ 0, %if.then38.i ], [ 0, %sw.epilog.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_vpd_page(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_trespass_cmd(ptr noundef %sdev, ptr noundef %csdev) unnamed_addr #3 align 64 {
entry:
  %cdb = alloca [16 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #10
  %0 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 4
  %2 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 8
  %3 = call ptr @memset(ptr %cdb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #10
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %7 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %sshdr, align 8
  %8 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %csdev, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @short_trespass, i32 0, i32 6), align 1
  %11 = or i8 %10, -128
  store i8 %11, ptr getelementptr inbounds ([8 x i8], ptr @short_trespass, i32 0, i32 6), align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %cdb, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %0, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %1, align 1
  br label %do.end33

if.else:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @long_trespass, i32 0, i32 10), align 1
  %16 = or i8 %15, -128
  store i8 %16, ptr getelementptr inbounds ([19 x i8], ptr @long_trespass, i32 0, i32 10), align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.if.end18_crit_edge
  %17 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 85, ptr %cdb, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 19, ptr %2, align 1
  br label %do.end33

do.end33:                                         ; preds = %if.end18, %if.end
  %len.0 = phi i32 [ 8, %if.end ], [ 19, %if.end18 ]
  %page22.0 = phi ptr [ @short_trespass, %if.end ], [ @long_trespass, %if.end18 ]
  %buffer = getelementptr inbounds %struct.clariion_dh_data, ptr %csdev, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %buffer, ptr %page22.0, i32 %len.0)
  %call = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cdb, i32 noundef 1, ptr noundef %buffer, i32 noundef %len.0, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 600000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %do.end33.if.end47_crit_edge, label %if.then41

do.end33.if.end47_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %do.end33
  %20 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sshdr, align 8
  %22 = and i8 %21, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %22)
  %cmp.i = icmp eq i8 %22, 112
  br i1 %cmp.i, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.then41
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 2
  %conv1.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv2.i = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.24, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i) #10
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %30, label %if.then43.if.end47_crit_edge [
    i8 5, label %land.lhs.true.i
    i8 2, label %land.lhs.true19.i
  ]

if.then43.if.end47_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true.i:                                  ; preds = %if.then43
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp8.i = icmp eq i8 %33, 4
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end47_crit_edge

land.lhs.true.i.if.end47_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp13.i = icmp eq i8 %35, 0
  br i1 %cmp13.i, label %land.lhs.true10.i.if.end31.sink.split.i_crit_edge, label %land.lhs.true10.i.if.end47_crit_edge

land.lhs.true10.i.if.end47_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true10.i.if.end31.sink.split.i_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.i

land.lhs.true19.i:                                ; preds = %if.then43
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp22.i = icmp eq i8 %37, 4
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true19.i.if.end47_crit_edge

land.lhs.true19.i.if.end47_crit_edge:             ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp27.i = icmp eq i8 %39, 3
  br i1 %cmp27.i, label %land.lhs.true24.i.if.end31.sink.split.i_crit_edge, label %land.lhs.true24.i.if.end47_crit_edge

land.lhs.true24.i.if.end47_crit_edge:             ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true24.i.if.end31.sink.split.i_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %land.lhs.true24.i.if.end31.sink.split.i_crit_edge, %land.lhs.true10.i.if.end31.sink.split.i_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.26, %land.lhs.true10.i.if.end31.sink.split.i_crit_edge ], [ @.str.27, %land.lhs.true24.i.if.end31.sink.split.i_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull %.str.27.sink.i, ptr noundef nonnull @.str) #10
  br label %if.end47

if.else45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, i32 noundef %call) #10
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.end31.sink.split.i, %land.lhs.true24.i.if.end47_crit_edge, %land.lhs.true19.i.if.end47_crit_edge, %land.lhs.true10.i.if.end47_crit_edge, %land.lhs.true.i.if.end47_crit_edge, %if.then43.if.end47_crit_edge, %do.end33.if.end47_crit_edge
  %res.0 = phi i32 [ 8, %if.else45 ], [ 0, %do.end33.if.end47_crit_edge ], [ 1, %land.lhs.true24.i.if.end47_crit_edge ], [ 1, %land.lhs.true19.i.if.end47_crit_edge ], [ 1, %land.lhs.true10.i.if.end47_crit_edge ], [ 1, %land.lhs.true.i.if.end47_crit_edge ], [ 1, %if.then43.if.end47_crit_edge ], [ 2, %if.end31.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #10
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !64, !65, !67, !69, !71, !73, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_scsi_dh_emc__282_540_clariion_init6, !1, !"__initcall__kmod_scsi_dh_emc__282_540_clariion_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 540, i32 1}
!2 = !{ptr @__exitcall_clariion_exit, !3, !"__exitcall_clariion_exit", i1 false, i1 false}
!3 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 541, i32 1}
!4 = !{ptr @__UNIQUE_ID_description283, !5, !"__UNIQUE_ID_description283", i1 false, i1 false}
!5 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 543, i32 1}
!6 = !{ptr @__UNIQUE_ID_author284, !7, !"__UNIQUE_ID_author284", i1 false, i1 false}
!7 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 544, i32 1}
!8 = !{ptr @__UNIQUE_ID_file285, !9, !"__UNIQUE_ID_file285", i1 false, i1 false}
!9 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 545, i32 1}
!10 = !{ptr @__UNIQUE_ID_license286, !9, !"__UNIQUE_ID_license286", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 514, i32 11}
!13 = !{ptr @clariion_dh, !14, !"clariion_dh", i1 false, i1 false}
!14 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 513, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 493, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 359, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 362, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 196, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 200, i32 28}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 202, i32 15}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 212, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 219, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 142, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 150, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 158, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 166, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 56, i32 5}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 57, i32 5}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 58, i32 5}
!48 = !{ptr @lun_state, !49, !"lun_state", i1 false, i1 false}
!49 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 54, i32 21}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 397, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 407, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 273, i32 4}
!58 = !{ptr @short_trespass, !59, !"short_trespass", i1 false, i1 false}
!59 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 46, i32 22}
!60 = !{ptr @long_trespass, !61, !"long_trespass", i1 false, i1 false}
!61 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 37, i32 22}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 105, i32 2}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 116, i32 3}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 126, i32 3}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 430, i32 22}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/device_handler/scsi_dh_emc.c", i32 530, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @clariion_init._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @clariion_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
