; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-mediatek.c_pt.bc'
source_filename = "../drivers/pwm/pwm-mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_mediatek_of_data = type { i32, i8, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_mediatek_chip = type { %struct.pwm_chip, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_mediatek__183_330_pwm_mediatek_driver_init6 = internal global ptr @pwm_mediatek_driver_init, section ".initcall6.init", align 4
@pwm_mediatek_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_mediatek_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_mediatek_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_mediatek_driver_exit = internal global ptr @pwm_mediatek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [54 x i8] c"pwm_mediatek.author=John Crispin <blogic@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [43 x i8] c"pwm_mediatek.file=drivers/pwm/pwm-mediatek\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [28 x i8] c"pwm_mediatek.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm-mediatek\00", [19 x i8] zeroinitializer }, align 32
@pwm_mediatek_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7628-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7628_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7629_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8516_pwm_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"top\00", [28 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clock: top fail: %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm_mediatek_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-mediatek.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry_ptr = internal global ptr @pwm_mediatek_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clock: main fail: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry_ptr.10 = internal global ptr @pwm_mediatek_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm%d\00", [26 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock: %s fail: %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry_ptr.14 = internal global ptr @pwm_mediatek_probe._entry.12, section ".printk_index", align 4
@pwm_mediatek_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_mediatek_config, ptr null, ptr @pwm_mediatek_enable, ptr @pwm_mediatek_disable }, [56 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwmchip_add() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pwm_mediatek_probe._entry_ptr.17 = internal global ptr @pwm_mediatek_probe._entry.15, section ".printk_index", align 4
@pwm_mediatek_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"period %d not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_mediatek_config\00", [44 x i8] zeroinitializer }, align 32
@pwm_mediatek_config._entry_ptr = internal global ptr @pwm_mediatek_config._entry, section ".printk_index", align 4
@pwm_mediatek_reg_offset = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 80, i32 144, i32 208, i32 272, i32 336, i32 400, i32 544], [32 x i8] zeroinitializer }, align 32
@mt2712_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 8, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt7622_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 6, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt7623_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 5, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt7628_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 4, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt7629_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 1, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt8183_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 4, i8 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@mt8516_pwm_data = internal constant { %struct.pwm_mediatek_of_data, [24 x i8] } { %struct.pwm_mediatek_of_data { i32 5, i8 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"pwm_mediatek_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 323, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 325, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"pwm_mediatek_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 311, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 229, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 231, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 236, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 238, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 246, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 250, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"pwm_mediatek_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 201, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 262, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 149, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"pwm_mediatek_reg_offset\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 62, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"mt2712_pwm_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 269, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"mt7622_pwm_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 275, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"mt7623_pwm_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 281, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"mt7628_pwm_data\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 287, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"mt7629_pwm_data\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 293, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"mt8183_pwm_data\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 299, i32 42 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"mt8516_pwm_data\00", align 1
@___asan_gen_.108 = private constant [30 x i8] c"../drivers/pwm/pwm-mediatek.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 305, i32 42 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_pwm_mediatek_driver_exit, ptr @__initcall__kmod_pwm_mediatek__183_330_pwm_mediatek_driver_init6, ptr @pwm_mediatek_config._entry, ptr @pwm_mediatek_config._entry_ptr, ptr @pwm_mediatek_driver_exit, ptr @pwm_mediatek_probe._entry, ptr @pwm_mediatek_probe._entry.12, ptr @pwm_mediatek_probe._entry.15, ptr @pwm_mediatek_probe._entry.8, ptr @pwm_mediatek_probe._entry_ptr, ptr @pwm_mediatek_probe._entry_ptr.10, ptr @pwm_mediatek_probe._entry_ptr.14, ptr @pwm_mediatek_probe._entry_ptr.17, ptr @pwm_mediatek_driver, ptr @.str, ptr @pwm_mediatek_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @pwm_mediatek_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @pwm_mediatek_reg_offset, ptr @mt2712_pwm_data, ptr @mt7622_pwm_data, ptr @mt7623_pwm_data, ptr @mt7628_pwm_data, ptr @mt7629_pwm_data, ptr @mt8183_pwm_data, ptr @mt8516_pwm_data], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mediatek_reg_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7628_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7629_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8516_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_mediatek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_mediatek_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_mediatek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_mediatek_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_mediatek_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %soc = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup81

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !72

devm_kcalloc.exit.thread:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %clk_pwms133 = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %clk_pwms133 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %clk_pwms133, align 4
  br label %cleanup81

devm_kcalloc.exit:                                ; preds = %if.end9
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #7
  %clk_pwms = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %clk_pwms, align 4
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %devm_kcalloc.exit.cleanup81_crit_edge, label %if.end16

devm_kcalloc.exit.cleanup81_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end16:                                         ; preds = %devm_kcalloc.exit
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %clk_top = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %clk_top to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %clk_top, align 4
  %cmp.i129 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %13) #10
  %14 = ptrtoint ptr %clk_top to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_top, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup81

if.end27:                                         ; preds = %if.end16
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %clk_main = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %clk_main to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %clk_main, align 4
  %cmp.i130 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %do.end35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end27
  %18 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp139.not = icmp eq i32 %21, 0
  br i1 %cmp139.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %22) #10
  %23 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_main, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup81

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0140 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #7
  %add = add nuw i32 %i.0140, 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %name, align 8
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %add)
  %call47 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %name) #7
  %27 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_pwms, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.0140
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call47, ptr %arrayidx, align 4
  %30 = load ptr, ptr %clk_pwms, align 4
  %arrayidx50 = getelementptr ptr, ptr %30, i32 %i.0140
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx50, align 4
  %cmp.i131 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %name, i32 noundef %33) #10
  %34 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_pwms, align 4
  %arrayidx62 = getelementptr ptr, ptr %35, i32 %i.0140
  %36 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx62, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #7
  br label %cleanup81

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #7
  %39 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %cmp = icmp ult i32 %add, %42
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %19, %for.cond.preheader.for.end_crit_edge ], [ %40, %cleanup.for.end_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @pwm_mediatek_ops, ptr %ops, align 4
  %45 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %.lcssa, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %npwm, align 4
  %call73 = call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end78, label %for.end.cleanup81_crit_edge

for.end.cleanup81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

do.end78:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call73) #10
  br label %cleanup81

cleanup81:                                        ; preds = %do.end78, %for.end.cleanup81_crit_edge, %cleanup.thread, %do.end35, %do.end, %devm_kcalloc.exit.cleanup81_crit_edge, %devm_kcalloc.exit.thread, %if.then6, %entry.cleanup81_crit_edge
  %retval.2 = phi i32 [ %2, %if.then6 ], [ %16, %do.end ], [ %25, %do.end35 ], [ %call73, %do.end78 ], [ -12, %entry.cleanup81_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup81_crit_edge ], [ 0, %for.end.cleanup81_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %38, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_mediatek_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @pwm_mediatek_clk_enable(ptr noundef %chip, ptr noundef %pwm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %has_ck_26m_sel = getelementptr inbounds %struct.pwm_mediatek_of_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %has_ck_26m_sel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_ck_26m_sel, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.body

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !75
  br label %if.end3

if.end3:                                          ; preds = %do.body, %if.end.if.end3_crit_edge
  %clk_pwms = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pwms, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %11) #7
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call4, i64 1000000000000) #11, !srcloc !76
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %conv189 = sext i32 %period_ns to i64
  %mul190 = mul nsw i64 %conv189, 1000
  %div1911249 = lshr i64 %asmresult1.i, 1
  %add192 = add i64 %div1911249, %mul190
  %conv194 = trunc i64 %asmresult1.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add192)
  %cmp395 = icmp ult i64 %add192, 4294967296
  br i1 %cmp395, label %if.then403, label %if.else409, !prof !77

if.then403:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %conv404 = trunc i64 %add192 to i32
  %div407 = udiv i32 %conv404, %conv194
  br label %if.end413

if.else409:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv194, i64 %add192) #11, !srcloc !76
  %asmresult1.i1282 = extractvalue { i64, i64 } %13, 1
  %extract.t1443 = trunc i64 %asmresult1.i1282 to i32
  br label %if.end413

if.end413:                                        ; preds = %if.else409, %if.then403
  %_tmp.0.off0 = phi i32 [ %div407, %if.then403 ], [ %extract.t1443, %if.else409 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %_tmp.0.off0)
  %cmp4171453 = icmp ugt i32 %_tmp.0.off0, 8191
  br i1 %cmp4171453, label %if.end413.while.body_crit_edge, label %if.end413.if.end656_crit_edge

if.end413.if.end656_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end656

if.end413.while.body_crit_edge:                   ; preds = %if.end413
  br label %while.body

while.body:                                       ; preds = %if.end646.while.body_crit_edge, %if.end413.while.body_crit_edge
  %clkdiv.01455 = phi i32 [ %inc, %if.end646.while.body_crit_edge ], [ 0, %if.end413.while.body_crit_edge ]
  %resolution.11454 = phi i64 [ %mul419, %if.end646.while.body_crit_edge ], [ %asmresult1.i, %if.end413.while.body_crit_edge ]
  %mul419 = shl i64 %resolution.11454, 1
  %inc = add i32 %clkdiv.01455, 1
  %div4241252 = and i64 %resolution.11454, 9223372036854775807
  %add425 = add i64 %div4241252, %mul190
  %conv427 = trunc i64 %mul419 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add425)
  %cmp628 = icmp ult i64 %add425, 4294967296
  br i1 %cmp628, label %if.then636, label %if.else642, !prof !77

if.then636:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv637 = trunc i64 %add425 to i32
  %div640 = udiv i32 %conv637, %conv427
  br label %if.end646

if.else642:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv427, i64 %add425) #11, !srcloc !76
  %asmresult1.i1307 = extractvalue { i64, i64 } %14, 1
  %extract.t1451 = trunc i64 %asmresult1.i1307 to i32
  br label %if.end646

if.end646:                                        ; preds = %if.else642, %if.then636
  %_tmp421.0.off0 = phi i32 [ %div640, %if.then636 ], [ %extract.t1451, %if.else642 ]
  %cmp417 = icmp ugt i32 %_tmp421.0.off0, 8191
  br i1 %cmp417, label %if.end646.while.body_crit_edge, label %while.end

if.end646.while.body_crit_edge:                   ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end646
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp650 = icmp ugt i32 %inc, 7
  br i1 %cmp650, label %if.then652, label %while.end.if.end656_crit_edge

while.end.if.end656_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end656

if.then652:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_pwms, align 4
  %17 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwpwm, align 8
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  %clk_main.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %clk_main.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_main.i, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  tail call void @clk_unprepare(ptr noundef %22) #7
  %clk_top.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %clk_top.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_top.i, align 4
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18, i32 noundef %period_ns) #10
  br label %cleanup

if.end656:                                        ; preds = %while.end.if.end656_crit_edge, %if.end413.if.end656_crit_edge
  %clkdiv.0.lcssa1465 = phi i32 [ %inc, %while.end.if.end656_crit_edge ], [ 0, %if.end413.if.end656_crit_edge ]
  %cnt_period.0.lcssa1464 = phi i32 [ %_tmp421.0.off0, %while.end.if.end656_crit_edge ], [ %_tmp.0.off0, %if.end413.if.end656_crit_edge ]
  %resolution.1.lcssa1463 = phi i64 [ %mul419, %while.end.if.end656_crit_edge ], [ %asmresult1.i, %if.end413.if.end656_crit_edge ]
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %pwm45_fixup = getelementptr inbounds %struct.pwm_mediatek_of_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pwm45_fixup to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pwm45_fixup, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool658.not = icmp eq i8 %30, 0
  br i1 %tobool658.not, label %if.end656.if.end665_crit_edge, label %land.lhs.true660

if.end656.if.end665_crit_edge:                    ; preds = %if.end656
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end665

land.lhs.true660:                                 ; preds = %if.end656
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp662 = icmp ugt i32 %32, 2
  %spec.select = select i1 %cmp662, i32 52, i32 48
  %spec.select1256 = select i1 %cmp662, i32 48, i32 44
  br label %if.end665

if.end665:                                        ; preds = %land.lhs.true660, %if.end656.if.end665_crit_edge
  %reg_thres.0 = phi i32 [ 48, %if.end656.if.end665_crit_edge ], [ %spec.select, %land.lhs.true660 ]
  %reg_width.0 = phi i32 [ 44, %if.end656.if.end665_crit_edge ], [ %spec.select1256, %land.lhs.true660 ]
  %conv668 = sext i32 %duty_ns to i64
  %mul669 = mul nsw i64 %conv668, 1000
  %div6701250 = lshr i64 %resolution.1.lcssa1463, 1
  %add671 = add i64 %div6701250, %mul669
  %conv673 = trunc i64 %resolution.1.lcssa1463 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add671)
  %cmp874 = icmp ult i64 %add671, 4294967296
  br i1 %cmp874, label %if.then882, label %if.else888, !prof !77

if.then882:                                       ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #9
  %conv883 = trunc i64 %add671 to i32
  %div886 = udiv i32 %conv883, %conv673
  br label %if.end892

if.else888:                                       ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv673, i64 %add671) #11, !srcloc !76
  %asmresult1.i1332 = extractvalue { i64, i64 } %33, 1
  %extract.t1447 = trunc i64 %asmresult1.i1332 to i32
  br label %if.end892

if.end892:                                        ; preds = %if.else888, %if.then882
  %_tmp667.0.off0 = phi i32 [ %div886, %if.then882 ], [ %extract.t1447, %if.else888 ]
  %34 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwpwm, align 8
  %or897 = or i32 %clkdiv.0.lcssa1465, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or897) #7
  %regs.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %arrayidx.i1333 = getelementptr [8 x i32], ptr @pwm_mediatek_reg_offset, i32 0, i32 %35
  %39 = ptrtoint ptr %arrayidx.i1333 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i1333, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #7, !srcloc !75
  %41 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hwpwm, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %cnt_period.0.lcssa1464) #7
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %arrayidx.i1335 = getelementptr [8 x i32], ptr @pwm_mediatek_reg_offset, i32 0, i32 %42
  %46 = ptrtoint ptr %arrayidx.i1335 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i1335, align 4
  %add.ptr.i1336 = getelementptr i8, ptr %45, i32 %47
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i1336, i32 %reg_width.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %43) #7, !srcloc !75
  %48 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwpwm, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %_tmp667.0.off0) #7
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %arrayidx.i1338 = getelementptr [8 x i32], ptr @pwm_mediatek_reg_offset, i32 0, i32 %49
  %53 = ptrtoint ptr %arrayidx.i1338 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i1338, align 4
  %add.ptr.i1339 = getelementptr i8, ptr %52, i32 %54
  %add.ptr1.i1340 = getelementptr i8, ptr %add.ptr.i1339, i32 %reg_thres.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i1340, i32 %50) #7, !srcloc !75
  %55 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_pwms, align 4
  %57 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hwpwm, align 8
  %arrayidx.i1343 = getelementptr ptr, ptr %56, i32 %58
  %59 = ptrtoint ptr %arrayidx.i1343 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i1343, align 4
  tail call void @clk_disable(ptr noundef %60) #7
  tail call void @clk_unprepare(ptr noundef %60) #7
  %clk_main.i1344 = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 3
  %61 = ptrtoint ptr %clk_main.i1344 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk_main.i1344, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  %clk_top.i1345 = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 2
  %63 = ptrtoint ptr %clk_top.i1345 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk_top.i1345, align 4
  tail call void @clk_disable(ptr noundef %64) #7
  tail call void @clk_unprepare(ptr noundef %64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end892, %if.then652, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then652 ], [ 0, %if.end892 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_mediatek_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @pwm_mediatek_clk_enable(ptr noundef %chip, ptr noundef %pwm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !79
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %5
  %or = or i32 %shl, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_mediatek_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !79
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !75
  %clk_pwms.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 4
  %9 = ptrtoint ptr %clk_pwms.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_pwms.i, align 4
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %clk_main.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %clk_main.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_main.i, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  %clk_top.i = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 2
  %17 = ptrtoint ptr %clk_top.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_top.i, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_mediatek_clk_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_top = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk_top to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_top, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %clk_main = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_main, align 4
  %call.i21 = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i25, label %if.end.clk_prepare_enable.exit28_crit_edge

if.end.clk_prepare_enable.exit28_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit28

if.end.i25:                                       ; preds = %if.end
  %call1.i23 = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i24, label %if.end.i25.if.end5_crit_edge, label %if.then3.i26

if.end.i25.if.end5_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3.i26:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit28

clk_prepare_enable.exit28:                        ; preds = %if.then3.i26, %if.end.clk_prepare_enable.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %call.i21, %if.end.clk_prepare_enable.exit28_crit_edge ], [ %call1.i23, %if.then3.i26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27)
  %cmp3 = icmp slt i32 %retval.0.i27, 0
  br i1 %cmp3, label %clk_prepare_enable.exit28.disable_clk_top_crit_edge, label %clk_prepare_enable.exit28.if.end5_crit_edge

clk_prepare_enable.exit28.if.end5_crit_edge:      ; preds = %clk_prepare_enable.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

clk_prepare_enable.exit28.disable_clk_top_crit_edge: ; preds = %clk_prepare_enable.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk_top

if.end5:                                          ; preds = %clk_prepare_enable.exit28.if.end5_crit_edge, %if.end.i25.if.end5_crit_edge
  %clk_pwms = getelementptr inbounds %struct.pwm_mediatek_chip, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %clk_pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pwms, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i29 = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %if.end5.clk_prepare_enable.exit36_crit_edge

if.end5.clk_prepare_enable.exit36_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit36

if.end.i33:                                       ; preds = %if.end5
  %call1.i31 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool2.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool2.not.i32, label %if.end.i33.cleanup_crit_edge, label %if.then3.i34

if.end.i33.cleanup_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %clk_prepare_enable.exit36

clk_prepare_enable.exit36:                        ; preds = %if.then3.i34, %if.end5.clk_prepare_enable.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %call.i29, %if.end5.clk_prepare_enable.exit36_crit_edge ], [ %call1.i31, %if.then3.i34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %cmp7 = icmp slt i32 %retval.0.i35, 0
  br i1 %cmp7, label %disable_clk_main, label %clk_prepare_enable.exit36.cleanup_crit_edge

clk_prepare_enable.exit36.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

disable_clk_main:                                 ; preds = %clk_prepare_enable.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %disable_clk_top

disable_clk_top:                                  ; preds = %disable_clk_main, %clk_prepare_enable.exit28.disable_clk_top_crit_edge
  %ret.0 = phi i32 [ %retval.0.i27, %clk_prepare_enable.exit28.disable_clk_top_crit_edge ], [ %retval.0.i35, %disable_clk_main ]
  %12 = ptrtoint ptr %clk_top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_top, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_clk_top, %clk_prepare_enable.exit36.cleanup_crit_edge, %if.end.i33.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_clk_top ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %clk_prepare_enable.exit36.cleanup_crit_edge ], [ 0, %if.end.i33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_pwm_mediatek__183_330_pwm_mediatek_driver_init6, !1, !"__initcall__kmod_pwm_mediatek__183_330_pwm_mediatek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-mediatek.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_pwm_mediatek_driver_exit, !1, !"__exitcall_pwm_mediatek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-mediatek.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-mediatek.c", i32 333, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-mediatek.c", i32 325, i32 11}
!10 = !{ptr @pwm_mediatek_driver, !11, !"pwm_mediatek_driver", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-mediatek.c", i32 323, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-mediatek.c", i32 229, i32 41}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-mediatek.c", i32 231, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pwm_mediatek_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pwm_mediatek_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-mediatek.c", i32 236, i32 42}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-mediatek.c", i32 238, i32 3}
!26 = !{ptr @pwm_mediatek_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pwm_mediatek_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-mediatek.c", i32 246, i32 32}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-mediatek.c", i32 250, i32 4}
!32 = !{ptr @pwm_mediatek_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pwm_mediatek_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-mediatek.c", i32 262, i32 3}
!36 = !{ptr @pwm_mediatek_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pwm_mediatek_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @pwm_mediatek_ops, !39, !"pwm_mediatek_ops", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-mediatek.c", i32 201, i32 29}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-mediatek.c", i32 149, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pwm_mediatek_config._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pwm_mediatek_config._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @pwm_mediatek_reg_offset, !46, !"pwm_mediatek_reg_offset", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-mediatek.c", i32 62, i32 27}
!47 = !{ptr @pwm_mediatek_of_match, !48, !"pwm_mediatek_of_match", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-mediatek.c", i32 311, i32 34}
!49 = !{ptr @mt2712_pwm_data, !50, !"mt2712_pwm_data", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-mediatek.c", i32 269, i32 42}
!51 = !{ptr @mt7622_pwm_data, !52, !"mt7622_pwm_data", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-mediatek.c", i32 275, i32 42}
!53 = !{ptr @mt7623_pwm_data, !54, !"mt7623_pwm_data", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-mediatek.c", i32 281, i32 42}
!55 = !{ptr @mt7628_pwm_data, !56, !"mt7628_pwm_data", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-mediatek.c", i32 287, i32 42}
!57 = !{ptr @mt7629_pwm_data, !58, !"mt7629_pwm_data", i1 false, i1 false}
!58 = !{!"../drivers/pwm/pwm-mediatek.c", i32 293, i32 42}
!59 = !{ptr @mt8183_pwm_data, !60, !"mt8183_pwm_data", i1 false, i1 false}
!60 = !{!"../drivers/pwm/pwm-mediatek.c", i32 299, i32 42}
!61 = !{ptr @mt8516_pwm_data, !62, !"mt8516_pwm_data", i1 false, i1 false}
!62 = !{!"../drivers/pwm/pwm-mediatek.c", i32 305, i32 42}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i8 0, i8 2}
!74 = !{i64 2152958811}
!75 = !{i64 691565}
!76 = !{i64 2148949597, i64 2148949877, i64 2148950211, i64 2148950545}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2152958370}
!79 = !{i64 691983}
!80 = !{i64 2152982135}
!81 = !{i64 2152982426}
!82 = !{i64 2152983048}
!83 = !{i64 2152983339}
