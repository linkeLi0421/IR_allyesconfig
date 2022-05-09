; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.feiyang_init_cmd = type { [2 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.feiyang = type { %struct.drm_panel, ptr, ptr, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }

@__initcall__kmod_panel_feiyang_fy07024di26a30d__302_260_feiyang_driver_init6 = internal global ptr @feiyang_driver_init, section ".initcall6.init", align 4
@feiyang_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @feiyang_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @feiyang_dsi_probe, ptr @feiyang_dsi_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_feiyang_driver_exit = internal global ptr @feiyang_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [77 x i8] c"panel_feiyang_fy07024di26a30d.author=Jagan Teki <jagan@amarulasolutions.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [86 x i8] c"panel_feiyang_fy07024di26a30d.description=Feiyang FY07024DI26A30-D MIPI-DSI LCD panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [87 x i8] c"panel_feiyang_fy07024di26a30d.file=drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [42 x i8] c"panel_feiyang_fy07024di26a30d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"feiyang-fy07024di26a30d\00", [40 x i8] zeroinitializer }, align 32
@feiyang_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"feiyang,fy07024di26a30d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@feiyang_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @feiyang_prepare, ptr @feiyang_enable, ptr @feiyang_disable, ptr @feiyang_unprepare, ptr @feiyang_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get dvdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get avdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@feiyang_init_cmds = internal constant { [7 x %struct.feiyang_init_cmd], [18 x i8] } { [7 x %struct.feiyang_init_cmd] [%struct.feiyang_init_cmd { [2 x i8] c"\80X" }, %struct.feiyang_init_cmd { [2 x i8] c"\81G" }, %struct.feiyang_init_cmd { [2 x i8] c"\82\D4" }, %struct.feiyang_init_cmd { [2 x i8] c"\83\88" }, %struct.feiyang_init_cmd { [2 x i8] c"\84\A9" }, %struct.feiyang_init_cmd { [2 x i8] c"\85\C3" }, %struct.feiyang_init_cmd { [2 x i8] c"\86\82" }], [18 x i8] zeroinitializer }, align 32
@feiyang_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 120, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"feiyang_unprepare\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@feiyang_unprepare._entry_ptr = internal global ptr @feiyang_unprepare._entry, section ".printk_index", align 4
@feiyang_unprepare._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 124, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@feiyang_unprepare._entry_ptr.14 = internal global ptr @feiyang_unprepare._entry.12, section ".printk_index", align 4
@feiyang_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 55000, i16 1024, i16 1334, i16 1354, i16 1444, i16 0, i16 600, i16 612, i16 614, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@feiyang_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 168, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"feiyang_get_modes\00", [46 x i8] zeroinitializer }, align 32
@feiyang_get_modes._entry_ptr = internal global ptr @feiyang_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"feiyang_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 252, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 256, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"feiyang_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 246, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"feiyang_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 179, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 202, i32 44 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 205, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 207, i32 44 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 210, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 212, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 215, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"feiyang_init_cmds\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 37, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 120, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 124, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"feiyang_default_mode\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 141, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [57 x i8] c"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 165, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_feiyang_driver_exit, ptr @__initcall__kmod_panel_feiyang_fy07024di26a30d__302_260_feiyang_driver_init6, ptr @feiyang_driver_exit, ptr @feiyang_get_modes._entry, ptr @feiyang_get_modes._entry_ptr, ptr @feiyang_unprepare._entry, ptr @feiyang_unprepare._entry.12, ptr @feiyang_unprepare._entry_ptr, ptr @feiyang_unprepare._entry_ptr.14, ptr @feiyang_driver, ptr @.str, ptr @feiyang_of_match, ptr @feiyang_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @feiyang_init_cmds, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @feiyang_default_mode, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_init_cmds to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_unprepare._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feiyang_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @feiyang_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @feiyang_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @feiyang_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.feiyang, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dsi, ptr %dsi1, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @feiyang_funcs, i32 noundef 16) #5
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %dvdd = getelementptr inbounds %struct.feiyang, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dvdd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %dvdd, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  %avdd = getelementptr inbounds %struct.feiyang, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %avdd, align 4
  %cmp.i75 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call14 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call24 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 3) #5
  %reset = getelementptr inbounds %struct.feiyang, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %reset, align 4
  %cmp.i76 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call24 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call34 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %lanes, align 8
  %call39 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.then40, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then27, %if.then17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then7 ], [ %call21, %if.then17 ], [ %call31, %if.then27 ], [ %call39, %if.then40 ], [ -12, %entry.cleanup_crit_edge ], [ %call34, %if.end32.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_dsi_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %dvdd = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup12_crit_edge

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 10) #5
  %avdd = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 3
  %4 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avdd, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup12_crit_edge

if.end.cleanup12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

if.end6:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #5
  %reset = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 200) #5
  %call8 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @feiyang_init_cmds, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup12_crit_edge, label %for.cond

if.end6.cleanup12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond:                                         ; preds = %if.end6
  %call8.1 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 1), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %cmp9.1 = icmp slt i32 %call8.1, 0
  br i1 %cmp9.1, label %for.cond.cleanup12_crit_edge, label %for.cond.1

for.cond.cleanup12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond.1:                                       ; preds = %for.cond
  %call8.2 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 2), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %cmp9.2 = icmp slt i32 %call8.2, 0
  br i1 %cmp9.2, label %for.cond.1.cleanup12_crit_edge, label %for.cond.2

for.cond.1.cleanup12_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond.2:                                       ; preds = %for.cond.1
  %call8.3 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 3), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %cmp9.3 = icmp slt i32 %call8.3, 0
  br i1 %cmp9.3, label %for.cond.2.cleanup12_crit_edge, label %for.cond.3

for.cond.2.cleanup12_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond.3:                                       ; preds = %for.cond.2
  %call8.4 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 4), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %cmp9.4 = icmp slt i32 %call8.4, 0
  br i1 %cmp9.4, label %for.cond.3.cleanup12_crit_edge, label %for.cond.4

for.cond.3.cleanup12_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond.4:                                       ; preds = %for.cond.3
  %call8.5 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 5), i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5)
  %cmp9.5 = icmp slt i32 %call8.5, 0
  br i1 %cmp9.5, label %for.cond.4.cleanup12_crit_edge, label %for.cond.5

for.cond.4.cleanup12_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  %call8.6 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x %struct.feiyang_init_cmd], ptr @feiyang_init_cmds, i32 0, i32 6), i32 noundef 2) #5
  %10 = call i32 @llvm.smin.i32(i32 %call8.6, i32 0)
  br label %cleanup12

cleanup12:                                        ; preds = %for.cond.5, %for.cond.4.cleanup12_crit_edge, %for.cond.3.cleanup12_crit_edge, %for.cond.2.cleanup12_crit_edge, %for.cond.1.cleanup12_crit_edge, %for.cond.cleanup12_crit_edge, %if.end6.cleanup12_crit_edge, %if.end.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.2 = phi i32 [ %call2, %entry.cleanup12_crit_edge ], [ %call3, %if.end.cleanup12_crit_edge ], [ %call8, %if.end6.cleanup12_crit_edge ], [ %call8.1, %for.cond.cleanup12_crit_edge ], [ %call8.2, %for.cond.1.cleanup12_crit_edge ], [ %call8.3, %for.cond.2.cleanup12_crit_edge ], [ %call8.4, %for.cond.3.cleanup12_crit_edge ], [ %call8.5, %for.cond.4.cleanup12_crit_edge ], [ %10, %for.cond.5 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 200) #5
  %dsi = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi, align 4
  %call3 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %call3) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  tail call void @msleep(i32 noundef 200) #5
  %reset = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 4
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #5
  %avdd = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 3
  %10 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %avdd, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %11) #5
  tail call void @msleep(i32 noundef 10) #5
  %dvdd = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 2
  %12 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvdd, align 4
  %call12 = tail call i32 @regulator_disable(ptr noundef %13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @feiyang_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @feiyang_default_mode) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dsi = getelementptr inbounds %struct.feiyang, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @feiyang_default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, i32 noundef 1024, i32 noundef 600, i32 noundef %call4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_panel_feiyang_fy07024di26a30d__302_260_feiyang_driver_init6, !1, !"__initcall__kmod_panel_feiyang_fy07024di26a30d__302_260_feiyang_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_feiyang_driver_exit, !1, !"__exitcall_feiyang_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 256, i32 11}
!12 = !{ptr @feiyang_driver, !13, !"feiyang_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 252, i32 31}
!14 = !{ptr @feiyang_of_match, !15, !"feiyang_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 246, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 202, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 205, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 207, i32 44}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 210, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 212, i32 41}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 215, i32 10}
!28 = !{ptr @feiyang_funcs, !29, !"feiyang_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 179, i32 37}
!30 = !{ptr @feiyang_init_cmds, !31, !"feiyang_init_cmds", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 37, i32 38}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 120, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @feiyang_unprepare._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @feiyang_unprepare._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 124, i32 3}
!42 = !{ptr @feiyang_unprepare._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @feiyang_unprepare._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 165, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @feiyang_get_modes._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @feiyang_get_modes._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @feiyang_default_mode, !50, !"feiyang_default_mode", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c", i32 141, i32 38}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
