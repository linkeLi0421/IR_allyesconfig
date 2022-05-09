; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_edid_load.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_edid_load.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__drm_set_edid_firmware_path\22, \22a\22\09"
module asm "\09.weak\09__crc___drm_set_edid_firmware_path\09\09\09\09"
module asm "\09.long\09__crc___drm_set_edid_firmware_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drm_set_edid_firmware_path:\09\09\09\09\09"
module asm "\09.asciz \09\22__drm_set_edid_firmware_path\22\09\09\09\09\09"
module asm "__kstrtabns___drm_set_edid_firmware_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__drm_get_edid_firmware_path\22, \22a\22\09"
module asm "\09.weak\09__crc___drm_get_edid_firmware_path\09\09\09\09"
module asm "\09.long\09__crc___drm_get_edid_firmware_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drm_get_edid_firmware_path:\09\09\09\09\09"
module asm "\09.asciz \09\22__drm_get_edid_firmware_path\22\09\09\09\09\09"
module asm "__kstrtabns___drm_get_edid_firmware_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_edid_firmware = internal constant [18 x i8] c"drm.edid_firmware\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_edid_firmware = internal constant %struct.kparam_string { i32 4096, ptr @edid_firmware }, align 4
@__param_edid_firmware = internal constant %struct.kernel_param { ptr @__param_str_edid_firmware, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_edid_firmware } }, section "__param", align 4
@__UNIQUE_ID_edid_firmwaretype306 = internal constant [34 x i8] c"drm.parmtype=edid_firmware:string\00", section ".modinfo", align 1
@__UNIQUE_ID_edid_firmware307 = internal constant [115 x i8] c"drm.parm=edid_firmware:Do not probe monitor, use specified EDID blob from built-in data or /lib/firmware instead. \00", section ".modinfo", align 1
@edid_firmware = internal global { [4096 x i8], [1024 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab___drm_set_edid_firmware_path = external dso_local constant [0 x i8], align 1
@__kstrtabns___drm_set_edid_firmware_path = external dso_local constant [0 x i8], align 1
@__ksymtab___drm_set_edid_firmware_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drm_set_edid_firmware_path to i32), ptr @__kstrtab___drm_set_edid_firmware_path, ptr @__kstrtabns___drm_set_edid_firmware_path }, section "___ksymtab+__drm_set_edid_firmware_path", align 4
@__kstrtab___drm_get_edid_firmware_path = external dso_local constant [0 x i8], align 1
@__kstrtabns___drm_get_edid_firmware_path = external dso_local constant [0 x i8], align 1
@__ksymtab___drm_get_edid_firmware_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drm_get_edid_firmware_path to i32), ptr @__kstrtab___drm_get_edid_firmware_path, ptr @__kstrtabns___drm_get_edid_firmware_path }, section "___ksymtab+__drm_get_edid_firmware_path", align 4
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@generic_edid_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [40 x i8] zeroinitializer }, align 32
@generic_edid = internal constant { [6 x [128 x i8]], [192 x i8] } { [6 x [128 x i8]] [[128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m\1B\14x\EA^\C0\A4YJ\98% PT\01\00\00E@\01\01\01\01\01\01\01\01\01\01\01\01\01\01\A0\0F \001X\1C (\80\14\00\15\D0\10\00\00\1E\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=$&\05\00\0A      \00\00\00\FC\00Linux SVGA\0A  \00\C2", [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m#\1Ax\EA^\C0\A4YJ\98% PT\00\08\00a@\01\01\01\01\01\01\01\01\01\01\01\01\01\01d\19\00@A\00&0\08\906\00c\0A\11\00\00\18\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=/1\07\00\0A      \00\00\00\FC\00Linux XGA\0A   \00U", [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m,#x\EA^\C0\A4YJ\98% PT\00\00\00\81\80\01\01\01\01\01\01\01\01\01\01\01\01\01\010*\00\98Q\00*@0p\13\00\BCc\11\00\00\1E\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=>@\0B\00\0A      \00\00\00\FC\00Linux SXGA\0A  \00\A0", [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m7)x\EA^\C0\A4YJ\98% PT\00\00\00\A9@\01\01\01\01\01\01\01\01\01\01\01\01\01\01H?@0b\B02@@\C0\13\00+\A0!\00\00\1E\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=JL\11\00\0A      \00\00\00\FC\00Linux UXGA\0A  \00\9D", [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m+\1Bx\EA^\C0\A4YJ\98% PT\00\00\00\B3\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01!9\900b\1A'@h\B06\00\B5\11\11\00\00\1E\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=@B\0F\00\0A      \00\00\00\FC\00Linux WSXGA\0A \00&", [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D8\00\00\00\00\00\00\05\16\01\03m2\1Cx\EA^\C0\A4YJ\98% PT\00\00\00\D1\C0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02:\80\18q8-@X,E\00\F4\19\11\00\00\1E\00\00\00\FF\00Linux #0\0A    \00\00\00\FD\00;=BD\0F\00\0A      \00\00\00\FC\00Linux FHD\0A   \00\05"], [192 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to register EDID firmware platform device for connector \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Requesting EDID firmware \22%s\22 failed (err=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Size of EDID firmware \22%s\22 is invalid (expected %d, got %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Base block of EDID firmware \22%s\22 is invalid \00", [51 x i8] zeroinitializer }, align 32
@edid_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016[drm] Found %d valid extensions instead of %d in EDID data \22%s\22 for connector \22%s\22\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edid_load\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/drm_edid_load.c\00", [32 x i8] zeroinitializer }, align 32
@edid_load._entry_ptr = internal global ptr @edid_load._entry, section ".printk_index", align 4
@edid_load._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016[drm] Got %s EDID base block and %d extension%s from \22%s\22 for connector \22%s\22\0A\00", [48 x i8] zeroinitializer }, align 32
@edid_load._entry_ptr.11 = internal global ptr @edid_load._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"built-in\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edid/800x600.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edid/1024x768.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edid/1280x1024.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edid/1600x1200.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edid/1680x1050.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edid/1920x1080.bin\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"edid_firmware\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 20, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 28, i32 50 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 288, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"generic_edid_name\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 42, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"generic_edid\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 51, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 190, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 198, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 208, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 224, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 245, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 256, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 43, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 44, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 45, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 46, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 47, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/gpu/drm/drm_edid_load.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 48, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_edid_firmware307, ptr @__UNIQUE_ID_edid_firmwaretype306, ptr @__ksymtab___drm_get_edid_firmware_path, ptr @__ksymtab___drm_set_edid_firmware_path, ptr @__param_edid_firmware, ptr @edid_load._entry, ptr @edid_load._entry.9, ptr @edid_load._entry_ptr, ptr @edid_load._entry_ptr.11, ptr @edid_firmware, ptr @.str, ptr @.str.1, ptr @generic_edid_name, ptr @generic_edid, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_firmware to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edid_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edid to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_load._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drm_set_edid_firmware_path(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @edid_firmware, i32 noundef 4096, ptr noundef nonnull @.str, ptr noundef %path) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drm_get_edid_firmware_path(ptr noundef %buf, i32 noundef %bufsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str, ptr noundef nonnull @edid_firmware) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_load_edid_firmware(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %fw.i = alloca ptr, align 4
  %edidstr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edidstr) #6
  %2 = load i8, ptr @edid_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @kstrdup(ptr noundef nonnull @edid_firmware, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %edidstr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %edidstr, align 4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end16, %if.end5
  %fallback.0.ph = phi ptr [ %spec.select, %if.end16 ], [ null, %if.end5 ]
  br label %while.cond

while.cond:                                       ; preds = %if.then11.while.cond_crit_edge, %while.cond.outer
  %call6 = call ptr @strsep(ptr noundef nonnull %edidstr, ptr noundef nonnull @.str.1) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %while.cond.if.then23_crit_edge, label %while.body

while.cond.if.then23_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

while.body:                                       ; preds = %while.cond
  %call8 = call ptr @strchr(ptr noundef nonnull %call6, i32 noundef 58)
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %while.body
  %sub.ptr.lhs.cast = ptrtoint ptr %call8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call12 = call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %call6, i32 noundef %sub.ptr.sub)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %while.end, label %if.then11.while.cond_crit_edge

if.then11.while.cond_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp18.not = icmp eq i8 %5, 0
  %spec.select = select i1 %cmp18.not, ptr %fallback.0.ph, ptr %call6
  br label %while.cond.outer

while.end:                                        ; preds = %if.then11
  %add.ptr = getelementptr i8, ptr %call8, i32 1
  %tobool22.not = icmp eq ptr %add.ptr, null
  br i1 %tobool22.not, label %while.end.if.then23_crit_edge, label %while.end.if.end28_crit_edge

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.end.if.then23_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %while.end.if.then23_crit_edge, %while.cond.if.then23_crit_edge
  %tobool24.not = icmp eq ptr %fallback.0.ph, null
  br i1 %tobool24.not, label %if.then23.cleanup.sink.split_crit_edge, label %if.then23.if.end28_crit_edge

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23.cleanup.sink.split_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %while.end.if.end28_crit_edge
  %edidname.1 = phi ptr [ %add.ptr, %while.end.if.end28_crit_edge ], [ %fallback.0.ph, %if.then23.if.end28_crit_edge ]
  %call29 = call i32 @strlen(ptr noundef nonnull %edidname.1) #9
  %add.ptr30 = getelementptr i8, ptr %edidname.1, i32 %call29
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 -1
  %6 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp33 = icmp eq i8 %7, 10
  br i1 %cmp33, label %if.then35, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr31, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end28.if.end36_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fw.i, align 4
  %bad_edid_counter.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 48
  %10 = ptrtoint ptr %bad_edid_counter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bad_edid_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end36.lor.end.i_crit_edge, label %lor.rhs.i

if.end36.lor.end.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %12 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end36.lor.end.i_crit_edge
  %13 = phi i1 [ true, %if.end36.lor.end.i_crit_edge ], [ %tobool.i.i, %lor.rhs.i ]
  %call1.i = call i32 @match_string(ptr noundef nonnull @generic_edid_name, i32 noundef 6, ptr noundef nonnull %edidname.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.end12.thread.i, label %if.else.i

if.end12.thread.i:                                ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [6 x [128 x i8]], ptr @generic_edid, i32 0, i32 %call1.i
  br label %edid_size.exit.thread.i

if.else.i:                                        ; preds = %lor.end.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  %14 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 48)
  %16 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %14, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %name2.i.i.i, align 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %properties.i.i.i, align 8
  %22 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef %1) #6
  br label %edid_load.exit

if.end.i:                                         ; preds = %if.else.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i.i, i32 0, i32 3
  %call6.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %edidname.1, ptr noundef %dev.i) #6
  call void @platform_device_unregister(ptr noundef %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %edidname.1, i32 noundef %call6.i) #6
  %23 = inttoptr i32 %call6.i to ptr
  br label %edid_load.exit

if.end12.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %29)
  %cmp.i144.i = icmp slt i32 %29, 128
  br i1 %cmp.i144.i, label %edid_size.exit.i, label %if.end12.i.edid_size.exit.thread.i_crit_edge

if.end12.i.edid_size.exit.thread.i_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %edid_size.exit.thread.i

edid_size.exit.i:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.not.i = icmp eq i32 %29, 0
  br i1 %cmp14.not.i, label %edid_size.exit.i.if.end18.i_crit_edge, label %edid_size.exit.i.edid_size.exit152.i_crit_edge

edid_size.exit.i.edid_size.exit152.i_crit_edge:   ; preds = %edid_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %edid_size.exit152.i

edid_size.exit.i.if.end18.i_crit_edge:            ; preds = %edid_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

edid_size.exit.thread.i:                          ; preds = %if.end12.i.edid_size.exit.thread.i_crit_edge, %if.end12.thread.i
  %fwdata.1162.i = phi ptr [ %arrayidx.i, %if.end12.thread.i ], [ %27, %if.end12.i.edid_size.exit.thread.i_crit_edge ]
  %fwsize.1160.i = phi i32 [ 128, %if.end12.thread.i ], [ %29, %if.end12.i.edid_size.exit.thread.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %fwdata.1162.i, i32 126
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 7
  %mul.i.i = add nuw nsw i32 %add.i.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %fwsize.1160.i)
  %cmp14.not178.i = icmp eq i32 %mul.i.i, %fwsize.1160.i
  br i1 %cmp14.not178.i, label %edid_size.exit.thread.i.if.end18.i_crit_edge, label %edid_size.exit.thread.i.edid_size.exit152.i_crit_edge

edid_size.exit.thread.i.edid_size.exit152.i_crit_edge: ; preds = %edid_size.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %edid_size.exit152.i

edid_size.exit.thread.i.if.end18.i_crit_edge:     ; preds = %edid_size.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

edid_size.exit152.i:                              ; preds = %edid_size.exit.thread.i.edid_size.exit152.i_crit_edge, %edid_size.exit.i.edid_size.exit152.i_crit_edge
  %fwsize.1161182188.i = phi i32 [ %29, %edid_size.exit.i.edid_size.exit152.i_crit_edge ], [ %fwsize.1160.i, %edid_size.exit.thread.i.edid_size.exit152.i_crit_edge ]
  %retval.0.i151.i = phi i32 [ 0, %edid_size.exit.i.edid_size.exit152.i_crit_edge ], [ %mul.i.i, %edid_size.exit.thread.i.edid_size.exit152.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull %edidname.1, i32 noundef %retval.0.i151.i, i32 noundef %fwsize.1161182188.i) #6
  br label %out.i

if.end18.i:                                       ; preds = %edid_size.exit.thread.i.if.end18.i_crit_edge, %edid_size.exit.i.if.end18.i_crit_edge
  %fwsize.1161183.i = phi i32 [ %fwsize.1160.i, %edid_size.exit.thread.i.if.end18.i_crit_edge ], [ 0, %edid_size.exit.i.if.end18.i_crit_edge ]
  %fwdata.1163180.i = phi ptr [ %fwdata.1162.i, %edid_size.exit.thread.i.if.end18.i_crit_edge ], [ %27, %edid_size.exit.i.if.end18.i_crit_edge ]
  %call19.i = call ptr @kmemdup(ptr noundef %fwdata.1163180.i, i32 noundef %fwsize.1161183.i, i32 noundef 3264) #6
  %cmp20.i = icmp eq ptr %call19.i, null
  br i1 %cmp20.i, label %if.end18.i.out.i_crit_edge, label %if.end23.i

if.end18.i.out.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end23.i:                                       ; preds = %if.end18.i
  %edid_corrupt.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 49
  %call25.i = call zeroext i1 @drm_edid_block_valid(ptr noundef nonnull %call19.i, i32 noundef 0, i1 noundef zeroext %13, ptr noundef %edid_corrupt.i) #6
  br i1 %call25.i, label %for.cond.preheader.i, label %if.then26.i

for.cond.preheader.i:                             ; preds = %if.end23.i
  %arrayidx30.i = getelementptr i8, ptr %call19.i, i32 126
  %32 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp31.not168.i = icmp eq i8 %33, 0
  br i1 %cmp31.not168.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %bad_edid_counter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bad_edid_counter.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %bad_edid_counter.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef nonnull %edidname.1) #6
  call void @kfree(ptr noundef nonnull %call19.i) #6
  br label %out.i

for.body.i:                                       ; preds = %if.end39.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %valid_extensions.0171.i = phi i32 [ %spec.select.i, %if.end39.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0169.i = phi i32 [ %inc47.i, %if.end39.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add i32 %valid_extensions.0171.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i, i32 %add.i)
  %cmp33.not.i = icmp eq i32 %i.0169.i, %add.i
  br i1 %cmp33.not.i, label %for.body.if.end39_crit_edge.i, label %if.then35.i

for.body.if.end39_crit_edge.i:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i = shl i32 %i.0169.i, 7
  br label %if.end39.i

if.then35.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %add.i, 7
  %add.ptr.i = getelementptr i8, ptr %call19.i, i32 %mul.i
  %mul37.i = shl i32 %i.0169.i, 7
  %add.ptr38.i = getelementptr i8, ptr %call19.i, i32 %mul37.i
  %36 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr38.i, i32 128)
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %for.body.if.end39_crit_edge.i
  %mul40.pre-phi.i = phi i32 [ %.pre.i, %for.body.if.end39_crit_edge.i ], [ %mul37.i, %if.then35.i ]
  %add.ptr41.i = getelementptr i8, ptr %call19.i, i32 %mul40.pre-phi.i
  %call43.i = call zeroext i1 @drm_edid_block_valid(ptr noundef %add.ptr41.i, i32 noundef %i.0169.i, i1 noundef zeroext %13, ptr noundef null) #6
  %spec.select.i = select i1 %call43.i, i32 %add.i, i32 %valid_extensions.0171.i
  %inc47.i = add nuw nsw i32 %i.0169.i, 1
  %37 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx30.i, align 1
  %conv.i = zext i8 %38 to i32
  %cmp31.not.not.i = icmp ult i32 %i.0169.i, %conv.i
  br i1 %cmp31.not.not.i, label %if.end39.i.for.body.i_crit_edge, label %if.end39.i.for.end.i_crit_edge

if.end39.i.for.end.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end39.i.for.body.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end39.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa166.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %38, %if.end39.i.for.end.i_crit_edge ]
  %valid_extensions.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %spec.select.i, %if.end39.i.for.end.i_crit_edge ]
  %conv.le.i = zext i8 %.lcssa166.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %valid_extensions.0.lcssa.i, i32 %conv.le.i)
  %cmp50.not.i = icmp eq i32 %valid_extensions.0.lcssa.i, %conv.le.i
  br i1 %cmp50.not.i, label %for.end.i.do.end73.i_crit_edge, label %if.then52.i

for.end.i.do.end73.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73.i

if.then52.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx55.i = getelementptr i8, ptr %call19.i, i32 127
  %39 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx55.i, align 1
  %41 = trunc i32 %valid_extensions.0.lcssa.i to i8
  %42 = sub i8 %.lcssa166.i, %41
  %conv58.i = add i8 %42, %40
  store i8 %conv58.i, ptr %arrayidx55.i, align 1
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %valid_extensions.0.lcssa.i, i32 noundef %conv.le.i, ptr noundef %edidname.1, ptr noundef %1) #10
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %arrayidx30.i, align 1
  %add64.i = shl i32 %valid_extensions.0.lcssa.i, 7
  %mul65.i = add i32 %add64.i, 128
  %call66.i = call noalias ptr @krealloc(ptr noundef nonnull %call19.i, i32 noundef %mul65.i, i32 noundef 3264) #11
  %tobool67.not.i = icmp eq ptr %call66.i, null
  %spec.select143.i = select i1 %tobool67.not.i, ptr %call19.i, ptr %call66.i
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.then52.i, %for.end.i.do.end73.i_crit_edge
  %edid.1.i = phi ptr [ %spec.select143.i, %if.then52.i ], [ %call19.i, %for.end.i.do.end73.i_crit_edge ]
  %cond.i = select i1 %cmp.i, ptr @.str.12, ptr @.str.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %valid_extensions.0.lcssa.i)
  %cmp77.i = icmp eq i32 %valid_extensions.0.lcssa.i, 1
  %cond79.i = select i1 %cmp77.i, ptr @.str.14, ptr @.str.15
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond.i, i32 noundef %valid_extensions.0.lcssa.i, ptr noundef nonnull %cond79.i, ptr noundef %edidname.1, ptr noundef %1) #10
  br label %out.i

out.i:                                            ; preds = %do.end73.i, %if.then26.i, %if.end18.i.out.i_crit_edge, %edid_size.exit152.i
  %edid.2.i = phi ptr [ inttoptr (i32 -22 to ptr), %edid_size.exit152.i ], [ %edid.1.i, %do.end73.i ], [ inttoptr (i32 -22 to ptr), %if.then26.i ], [ inttoptr (i32 -12 to ptr), %if.end18.i.out.i_crit_edge ]
  %44 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %45) #6
  br label %edid_load.exit

edid_load.exit:                                   ; preds = %out.i, %if.then8.i, %if.then4.i
  %retval.1.i = phi ptr [ %edid.2.i, %out.i ], [ %23, %if.then8.i ], [ %call.i.i.i, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %edid_load.exit, %if.then23.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %retval.1.i, %edid_load.exit ], [ inttoptr (i32 -2 to ptr), %if.then23.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edidstr) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_block_valid(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_edid_firmware, !1, !"__param_edid_firmware", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_edid_firmwaretype306, !1, !"__UNIQUE_ID_edid_firmwaretype306", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_edid_firmware307, !4, !"__UNIQUE_ID_edid_firmware307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 22, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 28, i32 50}
!7 = !{ptr @__ksymtab___drm_set_edid_firmware_path, !8, !"__ksymtab___drm_set_edid_firmware_path", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 32, i32 1}
!9 = !{ptr @__ksymtab___drm_get_edid_firmware_path, !10, !"__ksymtab___drm_get_edid_firmware_path", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 39, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 288, i32 38}
!13 = !{ptr @edid_firmware, !14, !"edid_firmware", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 20, i32 13}
!15 = !{ptr @__param_str_edid_firmware, !1, !"__param_str_edid_firmware", i1 false, i1 false}
!16 = !{ptr @__param_string_edid_firmware, !1, !"__param_string_edid_firmware", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 190, i32 4}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 198, i32 4}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 208, i32 3}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 224, i32 3}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 245, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @edid_load._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @edid_load._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 256, i32 2}
!33 = !{ptr @edid_load._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @edid_load._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 43, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 44, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 45, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 46, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 47, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 48, i32 2}
!51 = !{ptr @generic_edid_name, !52, !"generic_edid_name", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 42, i32 27}
!53 = !{ptr @generic_edid, !54, !"generic_edid", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/drm_edid_load.c", i32 51, i32 17}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
