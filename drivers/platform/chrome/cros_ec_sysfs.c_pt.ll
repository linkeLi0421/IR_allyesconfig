; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_sysfs.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.93 = type { ptr, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.82 }>
%union.anon.82 = type { %struct.anon.86, [4 x i8] }
%struct.anon.86 = type { i8, i8, i16, i32 }
%struct.ec_params_reboot_ec = type { i8, i8 }

@__initcall__kmod_cros_ec_sysfs__223_368_cros_ec_sysfs_driver_init6 = internal global ptr @cros_ec_sysfs_driver_init, section ".initcall6.init", align 4
@cros_ec_sysfs_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_sysfs_probe, ptr @cros_ec_sysfs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_sysfs_driver_exit = internal global ptr @cros_ec_sysfs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [57 x i8] c"cros_ec_sysfs.file=drivers/platform/chrome/cros_ec_sysfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [26 x i8] c"cros_ec_sysfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [63 x i8] c"cros_ec_sysfs.description=Expose the ChromeOS EC through sysfs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [43 x i8] c"cros_ec_sysfs.alias=platform:cros-ec-sysfs\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-sysfs\00", [18 x i8] zeroinitializer }, align 32
@cros_ec_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @cros_ec_ctrl_visible, ptr null, ptr @__ec_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cros_ec_sysfs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create attributes. err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cros_ec_sysfs_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/platform/chrome/cros_ec_sysfs.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_sysfs_probe._entry_ptr = internal global ptr @cros_ec_sysfs_probe._entry, section ".printk_index", align 4
@__ec_attrs = internal global [5 x ptr] [ptr @dev_attr_kb_wake_angle, ptr @dev_attr_reboot, ptr @dev_attr_version, ptr @dev_attr_flashinfo, ptr null], align 4
@dev_attr_kb_wake_angle = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kb_wake_angle_show, ptr @kb_wake_angle_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kb_wake_angle\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_attr_reboot = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reboot_show, ptr @reboot_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flashinfo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @flashinfo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reboot\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ro|rw|cancel|cold|disable-jump|hibernate|cold-ap-off\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" [at-shutdown]\0A\00", [16 x i8] zeroinitializer }, align 32
@reboot_store.words = internal constant { [8 x %struct.anon.93], [32 x i8] } { [8 x %struct.anon.93] [%struct.anon.93 { ptr @.str.11, i8 0, i8 0 }, %struct.anon.93 { ptr @.str.12, i8 1, i8 0 }, %struct.anon.93 { ptr @.str.13, i8 2, i8 0 }, %struct.anon.93 { ptr @.str.14, i8 8, i8 0 }, %struct.anon.93 { ptr @.str.15, i8 4, i8 0 }, %struct.anon.93 { ptr @.str.16, i8 5, i8 0 }, %struct.anon.93 { ptr @.str.17, i8 6, i8 0 }, %struct.anon.93 { ptr @.str.18, i8 -1, i8 2 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cancel\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cold-ap-off\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cold\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable-jump\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hibernate\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at-shutdown\00", [20 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@version_show.image_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RO\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RW\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RO version:    %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RW version:    %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware copy: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Build info:    XFER / EC ERROR %d / %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Build info:    %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chip info:     XFER / EC ERROR %d / %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Chip vendor:   %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Chip name:     %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Chip revision: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Board version: XFER / EC ERROR %d / %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Board version: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flashinfo\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"FlashSize %d\0AWriteSize %d\0AEraseSize %d\0AProtectSize %d\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"cros_ec_sysfs_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 360, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 362, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"cros_ec_attr_group\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 333, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 346, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"dev_attr_kb_wake_angle\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 311, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 267, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"dev_attr_reboot\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"dev_attr_flashinfo\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 308, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 31, i32 7 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 33, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 45, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 46, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 47, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 48, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 49, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 50, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 51, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 52, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 53, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 309, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"image_names\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 114, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 114, i32 45 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 114, i32 56 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 114, i32 62 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 142, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 144, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 146, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 148, i32 44 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 161, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 170, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 179, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 181, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 183, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 192, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 198, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 310, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [43 x i8] c"../drivers/platform/chrome/cros_ec_sysfs.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 231, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_cros_ec_sysfs_driver_exit, ptr @__initcall__kmod_cros_ec_sysfs__223_368_cros_ec_sysfs_driver_init6, ptr @cros_ec_sysfs_driver_exit, ptr @cros_ec_sysfs_probe._entry, ptr @cros_ec_sysfs_probe._entry_ptr, ptr @cros_ec_sysfs_driver, ptr @.str, ptr @cros_ec_attr_group, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dev_attr_kb_wake_angle, ptr @.str.6, ptr @.str.7, ptr @dev_attr_reboot, ptr @dev_attr_version, ptr @dev_attr_flashinfo, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @reboot_store.words, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @version_show.image_names, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sysfs_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sysfs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_kb_wake_angle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reboot to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flashinfo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_store.words to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_show.image_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sysfs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sysfs_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_sysfs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sysfs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sysfs_probe(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @sysfs_create_group(ptr noundef %3, ptr noundef nonnull @cros_ec_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sysfs_remove(ptr nocapture noundef readonly %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %3, ptr noundef nonnull @cros_ec_attr_group) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @cros_ec_ctrl_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, @dev_attr_kb_wake_angle
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_kb_wake_angle = getelementptr inbounds %struct.cros_ec_dev, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %has_kb_wake_angle to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_kb_wake_angle, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kb_wake_angle_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 272) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cmd_offset, align 2
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %conv, 43
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %command, align 4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %call7.i, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %data, align 4
  %6 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -1, ptr %6, align 1
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 13, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %insize, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ec_dev, align 8
  %call2 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %13) #8
  br label %exit

exit:                                             ; preds = %if.end5, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.exit_crit_edge ], [ %call9, %if.end5 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kb_wake_angle_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %angle = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %angle) #8
  %0 = ptrtoint ptr %angle to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %angle, align 2, !annotation !106
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %angle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 272) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_offset, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 43
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %command, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %call7.i, align 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %data, align 4
  %7 = ptrtoint ptr %angle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %angle, align 2
  %9 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %8, ptr %9, align 1
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 13, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %insize, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec_dev, align 8
  %call6 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %14, ptr noundef nonnull %call7.i) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  %call6.count = select i1 %cmp, i32 %call6, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.count, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %angle) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.9) #8
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %call
  %sub2 = sub i32 4096, %call
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.10) #8
  %add4 = add i32 %call3, %call
  ret i32 %add4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 22) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %flags = getelementptr inbounds %struct.ec_params_reboot_ec, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %flags, align 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not104113 = icmp eq i8 %3, 0
  br i1 %tobool2.not104113, label %if.end.exit_crit_edge, label %if.end.land.rhs.lr.ph_crit_edge

if.end.land.rhs.lr.ph_crit_edge:                  ; preds = %if.end
  br label %land.rhs.lr.ph

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.rhs.lr.ph:                                   ; preds = %while.end53.land.rhs.lr.ph_crit_edge, %if.end.land.rhs.lr.ph_crit_edge
  %4 = phi i8 [ %25, %while.end53.land.rhs.lr.ph_crit_edge ], [ %3, %if.end.land.rhs.lr.ph_crit_edge ]
  %offset.0115 = phi i32 [ %offset.2.lcssa, %while.end53.land.rhs.lr.ph_crit_edge ], [ 0, %if.end.land.rhs.lr.ph_crit_edge ]
  %got_cmd.0114 = phi i32 [ %got_cmd.1, %while.end53.land.rhs.lr.ph_crit_edge ], [ 0, %if.end.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %while.body8.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = phi i8 [ %4, %land.rhs.lr.ph ], [ %10, %while.body8.land.rhs_crit_edge ]
  %offset.1105 = phi i32 [ %offset.0115, %land.rhs.lr.ph ], [ %inc, %while.body8.land.rhs_crit_edge ]
  %conv = zext i8 %5 to i32
  %arrayidx5 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %for.cond.preheader, label %while.body8

for.cond.preheader:                               ; preds = %land.rhs
  %arrayidx.le = getelementptr i8, ptr %buf, i32 %offset.1105
  %call20 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.11, ptr noundef %arrayidx.le, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.preheader.if.else_crit_edge, label %for.inc

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.body8:                                      ; preds = %land.rhs
  %inc = add i32 %offset.1105, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %while.body8.while.end54_crit_edge, label %while.body8.land.rhs_crit_edge

while.body8.land.rhs_crit_edge:                   ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body8.while.end54_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end54

if.then26:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %or99 = or i8 %12, 2
  store i8 %or99, ptr %flags, align 1
  br label %for.end

if.else:                                          ; preds = %for.inc.5.if.else_crit_edge, %for.inc.4.if.else_crit_edge, %for.inc.3.if.else_crit_edge, %for.inc.2.if.else_crit_edge, %for.inc.1.if.else_crit_edge, %for.inc.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %i.0107.lcssa.ph = phi i32 [ 0, %for.cond.preheader.if.else_crit_edge ], [ 1, %for.inc.if.else_crit_edge ], [ 2, %for.inc.1.if.else_crit_edge ], [ 3, %for.inc.2.if.else_crit_edge ], [ 4, %for.inc.3.if.else_crit_edge ], [ 5, %for.inc.4.if.else_crit_edge ], [ 6, %for.inc.5.if.else_crit_edge ]
  %cmd = getelementptr [8 x %struct.anon.93], ptr @reboot_store.words, i32 0, i32 %i.0107.lcssa.ph, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %data, align 4
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %call20.1 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.12, ptr noundef %arrayidx.le, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %tobool21.not.1 = icmp eq i32 %call20.1, 0
  br i1 %tobool21.not.1, label %for.inc.if.else_crit_edge, label %for.inc.1

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.1:                                        ; preds = %for.inc
  %call20.2 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.13, ptr noundef %arrayidx.le, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2)
  %tobool21.not.2 = icmp eq i32 %call20.2, 0
  br i1 %tobool21.not.2, label %for.inc.1.if.else_crit_edge, label %for.inc.2

for.inc.1.if.else_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.2:                                        ; preds = %for.inc.1
  %call20.3 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.14, ptr noundef %arrayidx.le, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3)
  %tobool21.not.3 = icmp eq i32 %call20.3, 0
  br i1 %tobool21.not.3, label %for.inc.2.if.else_crit_edge, label %for.inc.3

for.inc.2.if.else_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.3:                                        ; preds = %for.inc.2
  %call20.4 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.15, ptr noundef %arrayidx.le, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.4)
  %tobool21.not.4 = icmp eq i32 %call20.4, 0
  br i1 %tobool21.not.4, label %for.inc.3.if.else_crit_edge, label %for.inc.4

for.inc.3.if.else_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.4:                                        ; preds = %for.inc.3
  %call20.5 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.16, ptr noundef %arrayidx.le, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.5)
  %tobool21.not.5 = icmp eq i32 %call20.5, 0
  br i1 %tobool21.not.5, label %for.inc.4.if.else_crit_edge, label %for.inc.5

for.inc.4.if.else_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.5:                                        ; preds = %for.inc.4
  %call20.6 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.17, ptr noundef %arrayidx.le, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.6)
  %tobool21.not.6 = icmp eq i32 %call20.6, 0
  br i1 %tobool21.not.6, label %for.inc.5.if.else_crit_edge, label %for.inc.6

for.inc.5.if.else_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc.6:                                        ; preds = %for.inc.5
  %call20.7 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.18, ptr noundef %arrayidx.le, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.7)
  %tobool21.not.7 = icmp eq i32 %call20.7, 0
  br i1 %tobool21.not.7, label %if.then26, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.else, %if.then26
  %got_cmd.1 = phi i32 [ %got_cmd.0114, %if.then26 ], [ 1, %if.else ], [ %got_cmd.0114, %for.inc.6.for.end_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool41.not109 = icmp eq i8 %17, 0
  br i1 %tobool41.not109, label %for.end.while.end53_crit_edge, label %for.end.land.rhs42_crit_edge

for.end.land.rhs42_crit_edge:                     ; preds = %for.end
  br label %land.rhs42

for.end.while.end53_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

land.rhs42:                                       ; preds = %while.body51.land.rhs42_crit_edge, %for.end.land.rhs42_crit_edge
  %18 = phi i8 [ %23, %while.body51.land.rhs42_crit_edge ], [ %17, %for.end.land.rhs42_crit_edge ]
  %offset.2110 = phi i32 [ %inc52, %while.body51.land.rhs42_crit_edge ], [ %offset.1105, %for.end.land.rhs42_crit_edge ]
  %conv40 = zext i8 %18 to i32
  %arrayidx45 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv40
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx45, align 1
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp48.not = icmp eq i8 %21, 0
  br i1 %cmp48.not, label %while.body51, label %land.rhs42.while.end53_crit_edge

land.rhs42.while.end53_crit_edge:                 ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

while.body51:                                     ; preds = %land.rhs42
  %inc52 = add i32 %offset.2110, 1
  %arrayidx39 = getelementptr i8, ptr %buf, i32 %inc52
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39, align 1
  %tobool41.not = icmp eq i8 %23, 0
  br i1 %tobool41.not, label %while.body51.while.end53_crit_edge, label %while.body51.land.rhs42_crit_edge

while.body51.land.rhs42_crit_edge:                ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs42

while.body51.while.end53_crit_edge:               ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

while.end53:                                      ; preds = %while.body51.while.end53_crit_edge, %land.rhs42.while.end53_crit_edge, %for.end.while.end53_crit_edge
  %offset.2.lcssa = phi i32 [ %offset.1105, %for.end.while.end53_crit_edge ], [ %inc52, %while.body51.while.end53_crit_edge ], [ %offset.2110, %land.rhs42.while.end53_crit_edge ]
  %arrayidx103 = getelementptr i8, ptr %buf, i32 %offset.2.lcssa
  %24 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx103, align 1
  %tobool2.not104 = icmp eq i8 %25, 0
  br i1 %tobool2.not104, label %while.end53.while.end54_crit_edge, label %while.end53.land.rhs.lr.ph_crit_edge

while.end53.land.rhs.lr.ph_crit_edge:             ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

while.end53.while.end54_crit_edge:                ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end54

while.end54:                                      ; preds = %while.end53.while.end54_crit_edge, %while.body8.while.end54_crit_edge
  %got_cmd.0.lcssa = phi i32 [ %got_cmd.0114, %while.body8.while.end54_crit_edge ], [ %got_cmd.1, %while.end53.while.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_cmd.0.lcssa)
  %tobool55.not = icmp eq i32 %got_cmd.0.lcssa, 0
  br i1 %tobool55.not, label %while.end54.exit_crit_edge, label %if.end57

while.end54.exit_crit_edge:                       ; preds = %while.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end57:                                         ; preds = %while.end54
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %call7.i, align 8
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %27 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cmd_offset, align 2
  %conv58 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv58, 210
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %command, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %31 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %insize, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ec_dev, align 8
  %call59 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %33, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  %spec.select = select i1 %cmp60, i32 %call59, i32 %count
  br label %exit

exit:                                             ; preds = %if.end57, %while.end54.exit_crit_edge, %if.end.exit_crit_edge
  %count.addr.0 = phi i32 [ -22, %while.end54.exit_crit_edge ], [ %spec.select, %if.end57 ], [ -22, %if.end.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 272) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i, align 8
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_offset, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %command, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %insize, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %outsize, align 8
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ec_dev, align 8
  %call1 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %8, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %arrayidx = getelementptr [32 x i8], ptr %data, i32 0, i32 31
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %version_string_rw = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 2, i32 3
  %arrayidx5 = getelementptr [32 x i8], ptr %version_string_rw, i32 0, i32 31
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx5, align 1
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef %data) #8
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %call9
  %sub12 = sub i32 4096, %call9
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.24, ptr noundef %version_string_rw) #8
  %add16 = add i32 %call15, %call9
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add16
  %sub18 = sub i32 4096, %add16
  %current_image = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 5, i32 4
  %11 = ptrtoint ptr %current_image to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp19 = icmp ult i32 %12, 3
  br i1 %cmp19, label %cond.true, label %if.end4.cond.end_crit_edge

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr [3 x ptr], ptr @version_show.image_names, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx22, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ @.str.26, %if.end4.cond.end_crit_edge ]
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.25, ptr noundef %cond) #8
  %add24 = add i32 %call23, %add16
  %15 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmd_offset, align 2
  %conv26 = zext i16 %16 to i32
  %add27 = add nuw nsw i32 %conv26, 4
  %17 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add27, ptr %command, align 4
  %18 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 252, ptr %insize, align 4
  %19 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec_dev, align 8
  %call31 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %20, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add24
  %sub36 = sub i32 4096, %add24
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 4
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result, align 8
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.27, i32 noundef %call31, i32 noundef %22) #8
  br label %if.end47

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr [0 x i8], ptr %data, i32 0, i32 251
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx40, align 1
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %add24
  %sub42 = sub i32 4096, %add24
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.28, ptr noundef %data) #8
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then34
  %call37.pn = phi i32 [ %call37, %if.then34 ], [ %call45, %if.else ]
  %count.0 = add i32 %call37.pn, %add24
  %24 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmd_offset, align 2
  %conv49 = zext i16 %25 to i32
  %add50 = add nuw nsw i32 %conv49, 5
  %26 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add50, ptr %command, align 4
  %27 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 96, ptr %insize, align 4
  %28 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ec_dev, align 8
  %call54 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %29, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %count.0
  %sub59 = sub i32 4096, %count.0
  %result60 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 4
  %30 = ptrtoint ptr %result60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %result60, align 8
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.29, i32 noundef %call54, i32 noundef %31) #8
  %add62 = add i32 %call61, %count.0
  br label %if.end87

if.else63:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx, align 1
  %33 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx5, align 1
  %revision = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 4, i32 1
  %arrayidx68 = getelementptr [32 x i8], ptr %revision, i32 0, i32 31
  %34 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx68, align 1
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %count.0
  %sub70 = sub i32 4096, %count.0
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.30, ptr noundef %data) #8
  %add74 = add i32 %call73, %count.0
  %add.ptr75 = getelementptr i8, ptr %buf, i32 %add74
  %sub76 = sub i32 4096, %add74
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.31, ptr noundef %version_string_rw) #8
  %add80 = add i32 %add74, %call79
  %add.ptr81 = getelementptr i8, ptr %buf, i32 %add80
  %sub82 = sub i32 4096, %add80
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.32, ptr noundef %revision) #8
  %add86 = add i32 %add80, %call85
  br label %if.end87

if.end87:                                         ; preds = %if.else63, %if.then57
  %count.1 = phi i32 [ %add62, %if.then57 ], [ %add86, %if.else63 ]
  %35 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd_offset, align 2
  %conv89 = zext i16 %36 to i32
  %add90 = add nuw nsw i32 %conv89, 6
  %37 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add90, ptr %command, align 4
  %38 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %insize, align 4
  %39 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ec_dev, align 8
  %call94 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %40, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  %add.ptr98 = getelementptr i8, ptr %buf, i32 %count.1
  %sub99 = sub i32 4096, %count.1
  br i1 %cmp95, label %if.then97, label %if.else103

if.then97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %result100 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 4
  %41 = ptrtoint ptr %result100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result100, align 8
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98, i32 noundef %sub99, ptr noundef nonnull @.str.33, i32 noundef %call94, i32 noundef %42) #8
  %add102 = add i32 %call101, %count.1
  br label %exit

if.else103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data, align 4
  %conv108 = zext i16 %44 to i32
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98, i32 noundef %sub99, ptr noundef nonnull @.str.34, i32 noundef %conv108) #8
  %add110 = add i32 %call109, %count.1
  br label %exit

exit:                                             ; preds = %if.else103, %if.then97, %if.end.exit_crit_edge
  %count.2 = phi i32 [ %add102, %if.then97 ], [ %add110, %if.else103 ], [ %call1, %if.end.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.2, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flashinfo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i, align 8
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_offset, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 16
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %command, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %insize, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %outsize, align 8
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ec_dev, align 8
  %call1 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %8, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %write_block_size = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 1, i32 1
  %11 = ptrtoint ptr %write_block_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %write_block_size, align 8
  %erase_block_size = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 1, i32 2
  %13 = ptrtoint ptr %erase_block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erase_block_size, align 4
  %protect_block_size = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 1, i32 3
  %15 = ptrtoint ptr %protect_block_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %protect_block_size, align 8
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #8
  br label %exit

exit:                                             ; preds = %if.end4, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.exit_crit_edge ], [ %call5, %if.end4 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_cros_ec_sysfs__223_368_cros_ec_sysfs_driver_init6, !1, !"__initcall__kmod_cros_ec_sysfs__223_368_cros_ec_sysfs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 368, i32 1}
!2 = !{ptr @__exitcall_cros_ec_sysfs_driver_exit, !1, !"__exitcall_cros_ec_sysfs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 370, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description226, !7, !"__UNIQUE_ID_description226", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 371, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias227, !9, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 372, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 362, i32 11}
!12 = !{ptr @cros_ec_sysfs_driver, !13, !"cros_ec_sysfs_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 360, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 346, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_ec_sysfs_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_sysfs_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @cros_ec_attr_group, !23, !"cros_ec_attr_group", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 333, i32 37}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 311, i32 8}
!26 = !{ptr @dev_attr_kb_wake_angle, !25, !"dev_attr_kb_wake_angle", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 267, i32 34}
!29 = !{ptr @__ec_attrs, !30, !"__ec_attrs", i1 false, i1 false}
!30 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 313, i32 26}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 308, i32 8}
!33 = !{ptr @dev_attr_reboot, !32, !"dev_attr_reboot", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 31, i32 7}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 33, i32 7}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 46, i32 4}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 47, i32 4}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 48, i32 4}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 49, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 50, i32 4}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 51, i32 4}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 52, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 53, i32 4}
!54 = !{ptr @reboot_store.words, !55, !"words", i1 false, i1 false}
!55 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 45, i32 4}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 309, i32 8}
!58 = !{ptr @dev_attr_version, !57, !"dev_attr_version", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 114, i32 45}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 114, i32 56}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 114, i32 62}
!65 = !{ptr @version_show.image_names, !66, !"image_names", i1 false, i1 false}
!66 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 114, i32 28}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 142, i32 7}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 144, i32 7}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 146, i32 7}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 148, i32 44}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 156, i32 8}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 161, i32 8}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 170, i32 8}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 179, i32 8}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 181, i32 8}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 183, i32 8}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 192, i32 8}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 198, i32 8}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 310, i32 8}
!93 = !{ptr @dev_attr_flashinfo, !92, !"dev_attr_flashinfo", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/platform/chrome/cros_ec_sysfs.c", i32 231, i32 4}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{!"auto-init"}
