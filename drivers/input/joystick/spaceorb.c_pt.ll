; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/spaceorb.c_pt.bc'
source_filename = "../drivers/input/joystick/spaceorb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.spaceorb = type { ptr, i32, [64 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [48 x i8] c"spaceorb.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [78 x i8] c"spaceorb.description=SpaceTec SpaceOrb 360 and Avenger 6dof controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [46 x i8] c"spaceorb.file=drivers/input/joystick/spaceorb\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [21 x i8] c"spaceorb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_spaceorb__231_223_spaceorb_drv_init6 = internal global ptr @spaceorb_drv_init, section ".initcall6.init", align 4
@spaceorb_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @spaceorb_serio_ids, i8 0, ptr null, ptr @spaceorb_interrupt, ptr @spaceorb_connect, ptr null, ptr null, ptr @spaceorb_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_spaceorb_drv_exit = internal global ptr @spaceorb_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spaceorb\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SpaceTec SpaceOrb 360 and Avenger 6dof controller driver\00", [39 x i8] zeroinitializer }, align 32
@spaceorb_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 25 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@spaceorb_process_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016input: %s [%s] is %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spaceorb_process_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/joystick/spaceorb.c\00", [62 x i8] zeroinitializer }, align 32
@spaceorb_process_packet._entry_ptr = internal global ptr @spaceorb_process_packet._entry, section ".printk_index", align 4
@spaceorb_process_packet._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013spaceorb: Device error. [ \00", [35 x i8] zeroinitializer }, align 32
@spaceorb_process_packet._entry_ptr.7 = internal global ptr @spaceorb_process_packet._entry.5, section ".printk_index", align 4
@spaceorb_process_packet._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@spaceorb_process_packet._entry_ptr.10 = internal global ptr @spaceorb_process_packet._entry.8, section ".printk_index", align 4
@spaceorb_process_packet._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@spaceorb_process_packet._entry_ptr.13 = internal global ptr @spaceorb_process_packet._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EEPROM storing 0 failed\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Receive queue overflow\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Transmit queue timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bad packet\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Power brown-out\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EEPROM checksum error\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Hardware fault\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SpaceTec SpaceOrb 360 / Avenger\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 68, i64 69, i64 75, i64 82]
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"spaceorb_drv\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 212, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 223, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 216, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"spaceorb_serio_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 200, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 75, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 103, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 104, i32 52 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 105, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 50, i32 45 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 50, i32 72 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 50, i32 98 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 51, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 51, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 51, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 51, i32 61 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 159, i32 51 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [37 x i8] c"../drivers/input/joystick/spaceorb.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 161, i32 20 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_spaceorb_drv_exit, ptr @__initcall__kmod_spaceorb__231_223_spaceorb_drv_init6, ptr @spaceorb_drv_exit, ptr @spaceorb_process_packet._entry, ptr @spaceorb_process_packet._entry.11, ptr @spaceorb_process_packet._entry.5, ptr @spaceorb_process_packet._entry.8, ptr @spaceorb_process_packet._entry_ptr, ptr @spaceorb_process_packet._entry_ptr.10, ptr @spaceorb_process_packet._entry_ptr.13, ptr @spaceorb_process_packet._entry_ptr.7, ptr @spaceorb_drv, ptr @.str, ptr @.str.1, ptr @spaceorb_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_process_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_process_packet._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_process_packet._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceorb_process_packet._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceorb_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @spaceorb_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spaceorb_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_unregister_driver(ptr noundef nonnull @spaceorb_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceorb_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %tobool.not.not = icmp sgt i8 %data, -1
  br i1 %tobool.not.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %idx = getelementptr inbounds %struct.spaceorb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %data2.i = getelementptr inbounds %struct.spaceorb, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp slt i32 %3, 2
  br i1 %cmp.i, label %if.then2.if.end_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %c.0260.i = phi i8 [ %xor254.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %i.0259.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data2.i, i32 %i.0259.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %xor254.i = xor i8 %7, %c.0260.i
  %inc.i = add nuw nsw i32 %i.0259.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor254.i)
  %phi.cmp.i = icmp eq i8 %xor254.i, 0
  br i1 %phi.cmp.i, label %if.end8.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end8.i:                                        ; preds = %for.end.i
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data2.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end8.i.sw.epilog.i_crit_edge [
    i8 82, label %sw.bb.i
    i8 68, label %sw.bb30.i
    i8 75, label %sw.bb132.i
    i8 69, label %sw.bb150.i
  ]

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end8.i
  %sub.i = add nsw i32 %3, -1
  %arrayidx13.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx13.i, align 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp16267.i = icmp sgt i32 %13, 1
  br i1 %cmp16267.i, label %sw.bb.i.land.rhs.i_crit_edge, label %sw.bb.i.do.end.i_crit_edge

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.bb.i.land.rhs.i_crit_edge:                     ; preds = %sw.bb.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc24.i.land.rhs.i_crit_edge, %sw.bb.i.land.rhs.i_crit_edge
  %i.1268.i = phi i32 [ %inc25.i, %for.inc24.i.land.rhs.i_crit_edge ], [ 1, %sw.bb.i.land.rhs.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 %i.1268.i
  %14 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp21.i = icmp eq i8 %15, 32
  br i1 %cmp21.i, label %for.inc24.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc24.i:                                      ; preds = %land.rhs.i
  %inc25.i = add nuw nsw i32 %i.1268.i, 1
  %exitcond277.not.i = icmp eq i32 %inc25.i, %13
  br i1 %exitcond277.not.i, label %for.inc24.i.do.end.i_crit_edge, label %for.inc24.i.land.rhs.i_crit_edge

for.inc24.i.land.rhs.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc24.i.do.end.i_crit_edge:                   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc24.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 1, %sw.bb.i.do.end.i_crit_edge ], [ %13, %for.inc24.i.do.end.i_crit_edge ], [ %i.1268.i, %land.rhs.i.do.end.i_crit_edge ]
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %add.ptr.i = getelementptr i8, ptr %data2.i, i32 %i.1.lcssa.i
  %phys.i = getelementptr inbounds %struct.spaceorb, ptr %1, i32 0, i32 3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %17, ptr noundef %add.ptr.i, ptr noundef %phys.i) #9
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp32.not.i = icmp eq i32 %3, 12
  br i1 %cmp32.not.i, label %for.body39.preheader.i, label %sw.bb30.i.if.end_crit_edge

sw.bb30.i.if.end_crit_edge:                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body39.preheader.i:                           ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx43.i, align 1
  %xor45253.i = xor i8 %19, 83
  store i8 %xor45253.i, ptr %arrayidx43.i, align 1
  %arrayidx43.1.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx43.1.i, align 1
  %xor45253.1.i = xor i8 %21, 112
  store i8 %xor45253.1.i, ptr %arrayidx43.1.i, align 1
  %arrayidx43.2.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx43.2.i, align 1
  %xor45253.2.i = xor i8 %23, 97
  store i8 %xor45253.2.i, ptr %arrayidx43.2.i, align 1
  %arrayidx43.3.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx43.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx43.3.i, align 1
  %xor45253.3.i = xor i8 %25, 99
  store i8 %xor45253.3.i, ptr %arrayidx43.3.i, align 1
  %arrayidx43.4.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %arrayidx43.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43.4.i, align 1
  %xor45253.4.i = xor i8 %27, 101
  store i8 %xor45253.4.i, ptr %arrayidx43.4.i, align 1
  %arrayidx43.5.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %arrayidx43.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx43.5.i, align 1
  %xor45253.5.i = xor i8 %29, 87
  store i8 %xor45253.5.i, ptr %arrayidx43.5.i, align 1
  %arrayidx43.6.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 8
  %30 = ptrtoint ptr %arrayidx43.6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx43.6.i, align 1
  %xor45253.6.i = xor i8 %31, 97
  store i8 %xor45253.6.i, ptr %arrayidx43.6.i, align 1
  %arrayidx43.7.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %arrayidx43.7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx43.7.i, align 1
  %xor45253.7.i = xor i8 %33, 114
  store i8 %xor45253.7.i, ptr %arrayidx43.7.i, align 1
  %arrayidx43.8.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %arrayidx43.8.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx43.8.i, align 1
  %xor45253.8.i = xor i8 %35, 101
  store i8 %xor45253.8.i, ptr %arrayidx43.8.i, align 1
  %conv51.i = zext i8 %xor45253.i to i32
  %shl.i = shl nuw nsw i32 %conv51.i, 3
  %36 = lshr i8 %xor45253.1.i, 4
  %37 = zext i8 %36 to i32
  %or.i = or i32 %shl.i, %37
  %38 = and i8 %21, 15
  %and.i = zext i8 %38 to i32
  %shl57.i = shl nuw nsw i32 %and.i, 6
  %39 = lshr i8 %xor45253.2.i, 1
  %40 = zext i8 %39 to i32
  %or61.i = or i32 %shl57.i, %40
  %conv64.i = zext i8 %xor45253.2.i to i32
  %and65.i = shl nuw nsw i32 %conv64.i, 9
  %shl66.i = and i32 %and65.i, 512
  %conv68.i = zext i8 %xor45253.3.i to i32
  %shl69.i = shl nuw nsw i32 %conv68.i, 2
  %41 = lshr i32 %conv64.i, 5
  %or70.i = or i32 %shl66.i, %41
  %or74.i = or i32 %or70.i, %shl69.i
  %42 = and i8 %xor45253.4.i, 31
  %and78.i = zext i8 %42 to i32
  %shl79.i = shl nuw nsw i32 %and78.i, 5
  %43 = lshr i8 %xor45253.5.i, 2
  %44 = zext i8 %43 to i32
  %or83.i = or i32 %shl79.i, %44
  %conv86.i = zext i8 %xor45253.5.i to i32
  %and87.i = shl nuw nsw i32 %conv86.i, 8
  %shl88.i = and i32 %and87.i, 768
  %conv90.i = zext i8 %xor45253.6.i to i32
  %shl91.i = shl nuw nsw i32 %conv90.i, 1
  %45 = lshr i32 %conv86.i, 6
  %or92.i = or i32 %shl88.i, %45
  %or96.i = or i32 %or92.i, %shl91.i
  %46 = and i8 %xor45253.7.i, 63
  %and100.i = zext i8 %46 to i32
  %shl101.i = shl nuw nsw i32 %and100.i, 4
  %47 = lshr i8 %xor45253.8.i, 3
  %48 = zext i8 %47 to i32
  %or105.i = or i32 %shl101.i, %48
  %and114.i = shl nuw nsw i32 %conv51.i, 4
  %49 = and i32 %and114.i, 1024
  %sub116.i = sub nsw i32 %or.i, %49
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub116.i) #6
  %and114.1.i = shl nuw nsw i32 %and.i, 7
  %50 = and i32 %and114.1.i, 1024
  %sub116.1.i = sub nsw i32 %or61.i, %50
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub116.1.i) #6
  %and114.2.i = shl nuw nsw i32 %or74.i, 1
  %51 = and i32 %and114.2.i, 1024
  %sub116.2.i = sub nsw i32 %or74.i, %51
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 2, i32 noundef %sub116.2.i) #6
  %and114.3.i = shl nuw nsw i32 %and78.i, 6
  %52 = and i32 %and114.3.i, 1024
  %sub116.3.i = sub nsw i32 %or83.i, %52
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 3, i32 noundef %sub116.3.i) #6
  %and114.4.i = shl nuw nsw i32 %conv86.i, 9
  %53 = and i32 %and114.4.i, 1024
  %sub116.4.i = sub nsw i32 %or96.i, %53
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 4, i32 noundef %sub116.4.i) #6
  %and114.5.i = shl nuw nsw i32 %and100.i, 5
  %54 = and i32 %and114.5.i, 1024
  %sub116.5.i = sub nsw i32 %or105.i, %54
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 5, i32 noundef %sub116.5.i) #6
  %arrayidx125.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx125.i, align 1
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 310, i32 noundef %58) #6
  %59 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx125.i, align 1
  %61 = lshr i8 %60, 1
  %62 = and i8 %61, 1
  %63 = zext i8 %62 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 311, i32 noundef %63) #6
  %64 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx125.i, align 1
  %66 = lshr i8 %65, 2
  %67 = and i8 %66, 1
  %68 = zext i8 %67 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 308, i32 noundef %68) #6
  %69 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx125.i, align 1
  %71 = lshr i8 %70, 3
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 307, i32 noundef %73) #6
  %74 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx125.i, align 1
  %76 = lshr i8 %75, 4
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %78) #6
  %79 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx125.i, align 1
  %81 = lshr i8 %80, 5
  %82 = and i8 %81, 1
  %83 = zext i8 %82 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %83) #6
  br label %sw.epilog.i

sw.bb132.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp134.not.i = icmp eq i32 %3, 5
  br i1 %cmp134.not.i, label %for.cond138.preheader.i, label %sw.bb132.i.if.end_crit_edge

sw.bb132.i.if.end_crit_edge:                      ; preds = %sw.bb132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond138.preheader.i:                          ; preds = %sw.bb132.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx143.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx143.i, align 1
  %86 = and i8 %85, 1
  %87 = zext i8 %86 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 310, i32 noundef %87) #6
  %88 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx143.i, align 1
  %90 = lshr i8 %89, 1
  %91 = and i8 %90, 1
  %92 = zext i8 %91 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 311, i32 noundef %92) #6
  %93 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx143.i, align 1
  %95 = lshr i8 %94, 2
  %96 = and i8 %95, 1
  %97 = zext i8 %96 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 308, i32 noundef %97) #6
  %98 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx143.i, align 1
  %100 = lshr i8 %99, 3
  %101 = and i8 %100, 1
  %102 = zext i8 %101 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 307, i32 noundef %102) #6
  %103 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx143.i, align 1
  %105 = lshr i8 %104, 4
  %106 = and i8 %105, 1
  %107 = zext i8 %106 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %107) #6
  %108 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx143.i, align 1
  %110 = lshr i8 %109, 5
  %111 = and i8 %110, 1
  %112 = zext i8 %111 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %112) #6
  br label %sw.epilog.i

sw.bb150.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp152.not.i = icmp eq i32 %3, 4
  br i1 %cmp152.not.i, label %do.end158.i, label %sw.bb150.i.if.end_crit_edge

sw.bb150.i.if.end_crit_edge:                      ; preds = %sw.bb150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end158.i:                                      ; preds = %sw.bb150.i
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %arrayidx165.i = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx165.i, align 1
  %115 = and i8 %114, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool169.not.i = icmp eq i8 %115, 0
  br i1 %tobool169.not.i, label %do.end158.i.for.inc178.i_crit_edge, label %do.end173.i

do.end158.i.for.inc178.i_crit_edge:               ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.i

do.end173.i:                                      ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #9
  br label %for.inc178.i

for.inc178.i:                                     ; preds = %do.end173.i, %do.end158.i.for.inc178.i_crit_edge
  %116 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx165.i, align 1
  %118 = and i8 %117, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool169.not.1.i = icmp eq i8 %118, 0
  br i1 %tobool169.not.1.i, label %for.inc178.i.for.inc178.1.i_crit_edge, label %do.end173.1.i

for.inc178.i.for.inc178.1.i_crit_edge:            ; preds = %for.inc178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.1.i

do.end173.1.i:                                    ; preds = %for.inc178.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) #9
  br label %for.inc178.1.i

for.inc178.1.i:                                   ; preds = %do.end173.1.i, %for.inc178.i.for.inc178.1.i_crit_edge
  %119 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx165.i, align 1
  %121 = and i8 %120, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool169.not.2.i = icmp eq i8 %121, 0
  br i1 %tobool169.not.2.i, label %for.inc178.1.i.for.inc178.2.i_crit_edge, label %do.end173.2.i

for.inc178.1.i.for.inc178.2.i_crit_edge:          ; preds = %for.inc178.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.2.i

do.end173.2.i:                                    ; preds = %for.inc178.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16) #9
  br label %for.inc178.2.i

for.inc178.2.i:                                   ; preds = %do.end173.2.i, %for.inc178.1.i.for.inc178.2.i_crit_edge
  %122 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx165.i, align 1
  %124 = and i8 %123, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool169.not.3.i = icmp eq i8 %124, 0
  br i1 %tobool169.not.3.i, label %for.inc178.2.i.for.inc178.3.i_crit_edge, label %do.end173.3.i

for.inc178.2.i.for.inc178.3.i_crit_edge:          ; preds = %for.inc178.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.3.i

do.end173.3.i:                                    ; preds = %for.inc178.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #9
  br label %for.inc178.3.i

for.inc178.3.i:                                   ; preds = %do.end173.3.i, %for.inc178.2.i.for.inc178.3.i_crit_edge
  %125 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx165.i, align 1
  %127 = and i8 %126, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool169.not.4.i = icmp eq i8 %127, 0
  br i1 %tobool169.not.4.i, label %for.inc178.3.i.for.inc178.4.i_crit_edge, label %do.end173.4.i

for.inc178.3.i.for.inc178.4.i_crit_edge:          ; preds = %for.inc178.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.4.i

do.end173.4.i:                                    ; preds = %for.inc178.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18) #9
  br label %for.inc178.4.i

for.inc178.4.i:                                   ; preds = %do.end173.4.i, %for.inc178.3.i.for.inc178.4.i_crit_edge
  %128 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx165.i, align 1
  %130 = and i8 %129, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool169.not.5.i = icmp eq i8 %130, 0
  br i1 %tobool169.not.5.i, label %for.inc178.4.i.for.inc178.5.i_crit_edge, label %do.end173.5.i

for.inc178.4.i.for.inc178.5.i_crit_edge:          ; preds = %for.inc178.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.5.i

do.end173.5.i:                                    ; preds = %for.inc178.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19) #9
  br label %for.inc178.5.i

for.inc178.5.i:                                   ; preds = %do.end173.5.i, %for.inc178.4.i.for.inc178.5.i_crit_edge
  %131 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx165.i, align 1
  %133 = and i8 %132, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool169.not.6.i = icmp eq i8 %133, 0
  br i1 %tobool169.not.6.i, label %for.inc178.5.i.for.inc178.6.i_crit_edge, label %do.end173.6.i

for.inc178.5.i.for.inc178.6.i_crit_edge:          ; preds = %for.inc178.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178.6.i

do.end173.6.i:                                    ; preds = %for.inc178.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) #9
  br label %for.inc178.6.i

for.inc178.6.i:                                   ; preds = %do.end173.6.i, %for.inc178.5.i.for.inc178.6.i_crit_edge
  %call185.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %for.inc178.6.i, %for.cond138.preheader.i, %for.body39.preheader.i, %do.end.i, %if.end8.i.sw.epilog.i_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %sw.bb150.i.if.end_crit_edge, %sw.bb132.i.if.end_crit_edge, %sw.bb30.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %134 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %idx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %idx5 = getelementptr inbounds %struct.spaceorb, ptr %1, i32 0, i32 1
  %135 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %idx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %136)
  %cmp = icmp slt i32 %136, 64
  br i1 %cmp, label %if.then7, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i8 %data, 127
  %inc = add nsw i32 %136, 1
  %137 = ptrtoint ptr %idx5 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %inc, ptr %idx5, align 4
  %arrayidx = getelementptr %struct.spaceorb, ptr %1, i32 0, i32 2, i32 %136
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %and9, ptr %arrayidx, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end4.if.end13_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceorb_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #10
  %call1 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.spaceorb, ptr %call7.i.i, i32 0, i32 3
  %phys3 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %phys3)
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.22, ptr %call1, align 8
  %phys8 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %phys8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %phys, ptr %phys8, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 25, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %version, align 2
  %dev12 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev12, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 310, ptr noundef %keybit) #6
  tail call void @_set_bit(i32 noundef 311, ptr noundef %keybit) #6
  tail call void @_set_bit(i32 noundef 308, ptr noundef %keybit) #6
  tail call void @_set_bit(i32 noundef 307, ptr noundef %keybit) #6
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit) #6
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 2, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 3, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 4, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 5, i32 noundef -508, i32 noundef 508, i32 noundef 0, i32 noundef 0) #6
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call23 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end26:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %call28 = tail call i32 @input_register_device(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %fail3

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail3:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_close(ptr noundef %serio) #6
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call23, %if.end.fail2_crit_edge ], [ %call28, %fail3 ]
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spaceorb_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #6
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/spaceorb.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/spaceorb.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/spaceorb.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_spaceorb__231_223_spaceorb_drv_init6, !8, !"__initcall__kmod_spaceorb__231_223_spaceorb_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/spaceorb.c", i32 223, i32 1}
!9 = !{ptr @__exitcall_spaceorb_drv_exit, !8, !"__exitcall_spaceorb_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/spaceorb.c", i32 216, i32 17}
!13 = !{ptr @spaceorb_drv, !14, !"spaceorb_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/spaceorb.c", i32 212, i32 28}
!15 = !{ptr @spaceorb_serio_ids, !16, !"spaceorb_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/spaceorb.c", i32 200, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/spaceorb.c", i32 75, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spaceorb_process_packet._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @spaceorb_process_packet._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/spaceorb.c", i32 103, i32 4}
!25 = !{ptr @spaceorb_process_packet._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @spaceorb_process_packet._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/spaceorb.c", i32 104, i32 52}
!29 = !{ptr @spaceorb_process_packet._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @spaceorb_process_packet._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/spaceorb.c", i32 105, i32 4}
!33 = !{ptr @spaceorb_process_packet._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @spaceorb_process_packet._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"spaceorb_xor", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/spaceorb.c", i32 48, i32 22}
!37 = distinct !{null, !38, !"spaceorb_axes", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/spaceorb.c", i32 35, i32 12}
!39 = distinct !{null, !40, !"spaceorb_buttons", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/spaceorb.c", i32 34, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/spaceorb.c", i32 50, i32 45}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/spaceorb.c", i32 50, i32 72}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/spaceorb.c", i32 50, i32 98}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/spaceorb.c", i32 51, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/spaceorb.c", i32 51, i32 17}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/spaceorb.c", i32 51, i32 36}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/spaceorb.c", i32 51, i32 61}
!55 = distinct !{null, !56, !"spaceorb_errors", i1 false, i1 false}
!56 = !{!"../drivers/input/joystick/spaceorb.c", i32 50, i32 23}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/joystick/spaceorb.c", i32 159, i32 51}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/joystick/spaceorb.c", i32 161, i32 20}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
