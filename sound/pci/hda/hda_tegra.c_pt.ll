; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_tegra.c_pt.bc'
source_filename = "../sound/pci/hda/hda_tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hda_controller_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hda_tegra_soc = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hda_tegra = type { %struct.azx, ptr, [3 x %struct.reset_control_bulk_data], [3 x %struct.clk_bulk_data], i32, i32, ptr, %struct.work_struct, ptr }
%struct.azx = type { %struct.hda_bus, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [2 x ptr], [2 x ptr], %struct.mutex, %struct.list_head, i32, i32, ptr, i32, i16, %struct.azx_dev }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.azx_dev = type { %struct.hdac_stream, i8 }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@__param_str_power_save = internal constant [25 x i8] c"snd_hda_tegra.power_save\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@power_save = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr null, ptr @param_ops_bint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @power_save } }, section "__param", align 4
@__UNIQUE_ID_power_savetype241 = internal constant [39 x i8] c"snd_hda_tegra.parmtype=power_save:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save242 = internal constant [88 x i8] c"snd_hda_tegra.parm=power_save:Automatic power-saving timeout (in seconds, 0 = disable).\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_tegra__244_583_tegra_platform_hda_init6 = internal global ptr @tegra_platform_hda_init, section ".initcall6.init", align 4
@tegra_platform_hda = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hda_tegra_probe, ptr @hda_tegra_remove, ptr @hda_tegra_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hda_tegra_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hda_tegra_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_platform_hda_exit = internal global ptr @tegra_platform_hda_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [47 x i8] c"snd_hda_tegra.description=Tegra HDA bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [47 x i8] c"snd_hda_tegra.file=sound/pci/hda/snd-hda-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [29 x i8] c"snd_hda_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-hda\00", [22 x i8] zeroinitializer }, align 32
@hda_tegra_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hda_tegra_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hda_tegra_runtime_suspend, ptr @hda_tegra_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hda_tegra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error creating card!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hda_tegra_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/hda/hda_tegra.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_tegra_probe._entry_ptr = internal global ptr @hda_tegra_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hda2hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hda2codec_2x\00", [19 x i8] zeroinitializer }, align 32
@hda_tegra_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @hda_tegra_dev_free, ptr null, ptr @hda_tegra_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@hda_tegra_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@hda_tegra_ops = internal constant { %struct.hda_controller_ops, [20 x i8] } zeroinitializer, align 32
@hda_tegra_create.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&hda->probe_work)\00", [60 x i8] zeroinitializer }, align 32
@hda_tegra_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error creating device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_tegra_create\00", [47 x i8] zeroinitializer }, align 32
@hda_tegra_create._entry_ptr = internal global ptr @hda_tegra_create._entry, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_hda_tegra\00", [18 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to request IRQ %d, disabling device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_tegra_first_init\00", [43 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr = internal global ptr @hda_tegra_first_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,tegra194-hda\00", [44 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 301, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Override SDO lines to %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr.21 = internal global ptr @hda_tegra_first_init._entry.18, section ".printk_index", align 4
@hda_tegra_first_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.16, ptr @.str.3, ptr @.str.22, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chipset global capabilities = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize streams: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr.25 = internal global ptr @hda_tegra_first_init._entry.23, section ".printk_index", align 4
@hda_tegra_first_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate stream pages: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr.28 = internal global ptr @hda_tegra_first_init._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,tegra30-hda\00", [45 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.16, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no codecs found!\0A\00", [46 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr.32 = internal global ptr @hda_tegra_first_init._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,model\00", [19 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.16, ptr @.str.3, i32 374, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"truncating shortname for card\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_tegra_first_init._entry_ptr.36 = internal global ptr @hda_tegra_first_init._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tegra30_data = internal constant { %struct.hda_tegra_soc, [31 x i8] } { %struct.hda_tegra_soc { i8 1 }, [31 x i8] zeroinitializer }, align 32
@tegra194_data = internal constant { %struct.hda_tegra_soc, [31 x i8] } zeroinitializer, align 32
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra-hda\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"power_save\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 88, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"tegra_platform_hda\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 573, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 575, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"hda_tegra_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 444, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"hda_tegra_pm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 204, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 471, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 475, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 476, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 483, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 395, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 404, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"hda_tegra_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 96, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 417, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 429, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 277, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 279, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 297, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 300, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 309, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 330, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 336, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 358, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 363, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 370, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 374, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 379, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"tegra30_data\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 436, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"tegra194_data\00", align 1
@___asan_gen_.171 = private constant [29 x i8] c"../sound/pci/hda/hda_tegra.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 440, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__UNIQUE_ID_power_save242, ptr @__UNIQUE_ID_power_savetype241, ptr @__exitcall_tegra_platform_hda_exit, ptr @__initcall__kmod_snd_hda_tegra__244_583_tegra_platform_hda_init6, ptr @__param_power_save, ptr @hda_tegra_create._entry, ptr @hda_tegra_create._entry_ptr, ptr @hda_tegra_first_init._entry, ptr @hda_tegra_first_init._entry.18, ptr @hda_tegra_first_init._entry.23, ptr @hda_tegra_first_init._entry.26, ptr @hda_tegra_first_init._entry.30, ptr @hda_tegra_first_init._entry.34, ptr @hda_tegra_first_init._entry_ptr, ptr @hda_tegra_first_init._entry_ptr.21, ptr @hda_tegra_first_init._entry_ptr.25, ptr @hda_tegra_first_init._entry_ptr.28, ptr @hda_tegra_first_init._entry_ptr.32, ptr @hda_tegra_first_init._entry_ptr.36, ptr @hda_tegra_probe._entry, ptr @hda_tegra_probe._entry_ptr, ptr @tegra_platform_hda_exit, ptr @power_save, ptr @tegra_platform_hda, ptr @.str, ptr @hda_tegra_match, ptr @hda_tegra_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hda_tegra_create.ops, ptr @hda_tegra_create.__key, ptr @.str.9, ptr @hda_tegra_ops, ptr @hda_tegra_create.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @tegra30_data, ptr @tegra194_data, ptr @str], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_save to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_platform_hda to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_create.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tegra_first_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_platform_hda_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_platform_hda, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_platform_hda_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_platform_hda) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !105
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2016, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 8
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %soc = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %soc, align 4
  %call7 = call i32 @snd_card_new(ptr noundef %dev, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %resets = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 2
  %nresets = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nresets, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %nresets, align 4
  %arrayidx = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.6, ptr %arrayidx, align 4
  %6 = load i32, ptr %nresets, align 4
  %inc13 = add i32 %6, 1
  store i32 %inc13, ptr %nresets, align 4
  %arrayidx14 = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 2, i32 %6
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.7, ptr %arrayidx14, align 4
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.end10.if.end24_crit_edge, label %if.then18

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nresets, align 4
  %inc21 = add i32 %13, 1
  store i32 %inc21, ptr %nresets, align 4
  %arrayidx22 = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 2, i32 %13
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.8, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end10.if.end24_crit_edge
  %15 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nresets, align 4
  %call.i106 = call i32 @__devm_reset_control_bulk_get(ptr noundef %dev, i32 noundef %16, ptr noundef %resets, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool29.not = icmp eq i32 %call.i106, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.out_free_crit_edge

if.end24.out_free_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end31:                                         ; preds = %if.end24
  %clocks = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 3
  %nclocks = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nclocks, align 8
  %inc32 = add i32 %18, 1
  %arrayidx33 = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 3, i32 %18
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.6, ptr %arrayidx33, align 4
  %inc37 = add i32 %18, 2
  %arrayidx38 = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 3, i32 %inc32
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.7, ptr %arrayidx38, align 4
  %inc42 = add i32 %18, 3
  store i32 %inc42, ptr %nclocks, align 8
  %arrayidx43 = getelementptr %struct.hda_tegra, ptr %call.i, i32 0, i32 3, i32 %inc37
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %arrayidx43, align 4
  %call49 = call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef %inc42, ptr noundef %clocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end31.out_free_crit_edge, label %if.end52

if.end31.out_free_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end52:                                         ; preds = %if.end31
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %open_mutex.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 15
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @hda_tegra_create.__key) #10
  %card2.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %card2.i, align 8
  %ops.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hda_tegra_ops, ptr %ops.i, align 4
  %driver_caps3.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %driver_caps3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 335544320, ptr %driver_caps3.i, align 8
  %driver_type.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %driver_type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %driver_type.i, align 4
  %dev_index.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %dev_index.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dev_index.i, align 8
  %pcm_list.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %pcm_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pcm_list.i, ptr %pcm_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pcm_list.i, ptr %prev.i.i, align 4
  %codec_probe_mask.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 17
  %31 = ptrtoint ptr %codec_probe_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %codec_probe_mask.i, align 4
  %single_cmd.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 21
  %32 = ptrtoint ptr %single_cmd.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %single_cmd.i, align 4
  %bf.clear5.i = and i16 %bf.load.i, -9217
  %bf.set6.i = or i16 %bf.clear5.i, 1024
  store i16 %bf.set6.i, ptr %single_cmd.i, align 4
  %probe_work.i = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %probe_work.i, i32 noundef 0) #10
  %33 = ptrtoint ptr %probe_work.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %probe_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @hda_tegra_create.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11.i = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry11.i, ptr %prev.i1.i, align 4
  %func.i = getelementptr inbounds %struct.hda_tegra, ptr %call.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hda_tegra_probe_work, ptr %func.i, align 4
  %call.i107 = call i32 @azx_bus_init(ptr noundef nonnull %call.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i = icmp slt i32 %call.i107, 0
  br i1 %cmp.i, label %if.end52.out_free_crit_edge, label %if.end.i

if.end52.out_free_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end.i:                                         ; preds = %if.end52
  %sync_write.i = getelementptr inbounds %struct.hdac_bus, ptr %call.i, i32 0, i32 28
  %37 = ptrtoint ptr %sync_write.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load15.i = load i16, ptr %sync_write.i, align 4
  %bf.clear21.i = and i16 %bf.load15.i, -24641
  %bf.set27.i = or i16 %bf.clear21.i, 16448
  store i16 %bf.set27.i, ptr %sync_write.i, align 4
  %call28.i = call i32 @snd_device_new(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @hda_tegra_create.ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end56

do.end33.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12) #13
  br label %out_free

if.end56:                                         ; preds = %if.end.i
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %private_data, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %driver_data.i, align 4
  %44 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev2, align 8
  call void @pm_runtime_enable(ptr noundef %45) #10
  %46 = ptrtoint ptr %driver_caps3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %driver_caps3.i, align 8
  %and = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.then60, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev2, align 8
  call void @pm_runtime_forbid(ptr noundef %49) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %probe_work.i) #10
  br label %cleanup

out_free:                                         ; preds = %do.end33.i, %if.end52.out_free_crit_edge, %if.end31.out_free_crit_edge, %if.end24.out_free_crit_edge
  %err.0 = phi i32 [ %call.i106, %if.end24.out_free_crit_edge ], [ %call49, %if.end31.out_free_crit_edge ], [ %call.i107, %if.end52.out_free_crit_edge ], [ %call28.i, %do.end33.i ]
  %51 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card, align 4
  %call64 = call i32 @snd_card_free(ptr noundef %52) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end62, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %err.0, %out_free ], [ 0, %if.end62 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %1) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hda_tegra_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool2.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @azx_stop_chip(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_dev_free(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %probe_work = getelementptr inbounds %struct.hda_tegra, ptr %1, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_work) #10
  %chip_init = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %chip_init, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %bf.cast.not = icmp sgt i16 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @azx_stop_all_streams(ptr noundef %1) #10
  tail call void @azx_stop_chip(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_hdac_bus_free_stream_pages(ptr noundef %1) #10
  tail call void @azx_free_streams(ptr noundef %1) #10
  tail call void @snd_hdac_bus_exit(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hda_tegra_dev_disconnect(ptr nocapture noundef readonly %device) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %shutdown = getelementptr inbounds %struct.hda_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %shutdown, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hda_tegra_probe_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1968
  %dev = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %call6 = tail call fastcc i32 @hda_tegra_first_init(ptr noundef %add.ptr, ptr noundef %add.ptr4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.out_free_crit_edge, label %if.end

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @azx_probe_codecs(ptr noundef %add.ptr, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.out_free_crit_edge, label %if.end10

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @azx_codec_configure(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.out_free_crit_edge, label %if.end14

if.end10.out_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end14:                                         ; preds = %if.end10
  %card = getelementptr i8, ptr %work, i32 -536
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %call15 = tail call i32 @snd_card_register(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.out_free_crit_edge, label %if.end18

if.end14.out_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %running = getelementptr i8, ptr %work, i32 -356
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %running, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %running, align 4
  %5 = load i32, ptr @power_save, align 4
  %mul = mul i32 %5, 1000
  tail call void @snd_hda_set_power_save(ptr noundef %add.ptr, i32 noundef %mul) #10
  br label %out_free

out_free:                                         ; preds = %if.end18, %if.end14.out_free_crit_edge, %if.end10.out_free_crit_edge, %if.end.out_free_crit_edge, %entry.out_free_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i32 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_bus_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_all_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_chip(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_free_stream_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_free_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_tegra_first_init(ptr noundef %chip, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %res.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card2 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card2, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #10
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !105
  %call.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res.i) #10
  %regs.i = getelementptr inbounds %struct.hda_tegra, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %hda_tegra_init_chip.exit, label %hda_tegra_init_chip.exit.thread

hda_tegra_init_chip.exit.thread:                  ; preds = %if.end
  %add.ptr7.i = getelementptr i8, ptr %call.i, i32 32768
  %remap_addr.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr7.i, ptr %remap_addr.i, align 4
  %7 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add.i = add i32 %10, 32768
  %addr.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 3
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %addr.i, align 4
  call fastcc void @hda_tegra_init(ptr noundef %chip) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  %12 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card2, align 8
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 8
  %call.i192 = call i32 @devm_request_threaded_irq(ptr noundef %15, i32 noundef %call, ptr noundef nonnull @azx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool9.not = icmp eq i32 %call.i192, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

hda_tegra_init_chip.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  br label %cleanup

do.end:                                           ; preds = %hda_tegra_init_chip.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card2, align 8
  %dev12 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %call) #13
  br label %cleanup

if.end13:                                         ; preds = %hda_tegra_init_chip.exit.thread
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 5
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %irq, align 4
  %dma_stop_delay = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 31
  %22 = ptrtoint ptr %dma_stop_delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %dma_stop_delay, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %23 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call, ptr %sync_irq, align 4
  %call15 = call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end31_crit_edge, label %if.then17

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev21, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef 4) #13
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr22 = getelementptr i8, ptr %27, i32 4340
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  %29 = and i32 %28, -3073
  %30 = or i32 %29, 2048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr30 = getelementptr i8, ptr %32, i32 4340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %30) #10, !srcloc !110
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %if.end13.if.end31_crit_edge
  %33 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i, align 8
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 28
  %35 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %36 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %bf.cast.not.i = icmp eq i16 %36, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call.i193 = call i32 @snd_hdac_aligned_read(ptr noundef %34, i32 noundef 65535) #10
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #10, !srcloc !111
  %38 = call i16 @llvm.bswap.i16(i16 %37) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %conv.i = zext i16 %38 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i193, %cond.true.i ], [ %conv.i, %cond.false.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_tegra_first_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_tegra_first_init, %if.then44)) #10
          to label %do.end48 [label %if.then44], !srcloc !113

if.then44:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev45 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %39 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev45, align 8
  %conv = and i32 %cond.i, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_tegra_first_init.__UNIQUE_ID_ddebug243, ptr noundef %40, ptr noundef nonnull @.str.22, i32 noundef %conv) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %snd_hdac_reg_readw.exit
  %align_buffer_size = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %41 = ptrtoint ptr %align_buffer_size to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %align_buffer_size, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %align_buffer_size, align 4
  %42 = lshr i32 %cond.i, 8
  %and50 = and i32 %42, 15
  %capture_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 8
  %43 = ptrtoint ptr %capture_streams to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and50, ptr %capture_streams, align 4
  %conv49 = lshr i32 %cond.i, 12
  %44 = and i32 %conv49, 15
  %playback_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 6
  %45 = ptrtoint ptr %playback_streams to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %playback_streams, align 4
  %46 = and i32 %cond.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool55.not = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool57.not = icmp eq i32 %and50, 0
  %or.cond = select i1 %tobool55.not, i1 %tobool57.not, i1 false
  br i1 %or.cond, label %if.then58, label %do.end48.if.end61_crit_edge

do.end48.if.end61_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then58:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %playback_streams to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %playback_streams, align 4
  %48 = ptrtoint ptr %capture_streams to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %capture_streams, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %do.end48.if.end61_crit_edge
  %capture_index_offset = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 9
  %49 = ptrtoint ptr %capture_index_offset to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %capture_index_offset, align 8
  %50 = ptrtoint ptr %capture_streams to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %capture_streams, align 4
  %playback_index_offset = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 7
  %52 = ptrtoint ptr %playback_index_offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %playback_index_offset, align 8
  %53 = ptrtoint ptr %playback_streams to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %playback_streams, align 4
  %add = add i32 %54, %51
  %num_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 10
  %55 = ptrtoint ptr %num_streams to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %num_streams, align 4
  %call65 = call i32 @azx_init_streams(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %dev72 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %56 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev72, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.24, i32 noundef %call65) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %call76 = call i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %dev83 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %58 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev83, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.27, i32 noundef %call76) #13
  br label %cleanup

if.end84:                                         ; preds = %if.end73
  call void @azx_init_chip(ptr noundef %chip, i1 noundef zeroext true) #10
  %call85 = call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end84.if.end90_crit_edge, label %if.then87

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %sdo_limit = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 42
  %60 = ptrtoint ptr %sdo_limit to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16, ptr %sdo_limit, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end84.if.end90_crit_edge
  %codec_mask = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 18
  %61 = ptrtoint ptr %codec_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %codec_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool91.not = icmp eq i32 %62, 0
  br i1 %tobool91.not, label %do.end95, label %if.end97

do.end95:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %dev96 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %63 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev96, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  %driver = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 2
  %65 = call ptr @memcpy(ptr %driver, ptr @str, i32 16)
  %call99 = call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef null) #10
  %tobool100.not = icmp eq ptr %call99, null
  %spec.select = select i1 %tobool100.not, ptr @.str, ptr %call99
  %call103 = call i32 @strlen(ptr noundef %spec.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call103)
  %cmp104 = icmp ugt i32 %call103, 32
  br i1 %cmp104, label %do.end109, label %if.end97.if.end111_crit_edge

if.end97.if.end111_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end109:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %dev110 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %66 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev110, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.35) #13
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %if.end97.if.end111_crit_edge
  %shortname = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 3
  %call113 = call ptr @strncpy(ptr noundef %shortname, ptr noundef %spec.select, i32 noundef 32)
  %longname = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i, align 4
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.37, ptr noundef %shortname, i32 noundef %69, i32 noundef %71)
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %do.end95, %do.end82, %do.end71, %do.end, %hda_tegra_init_chip.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i192, %do.end ], [ %call65, %do.end71 ], [ %call76, %do.end82 ], [ 0, %if.end111 ], [ -19, %do.end95 ], [ %call, %entry.cleanup_crit_edge ], [ %16, %hda_tegra_init_chip.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_probe_codecs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_codec_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_set_power_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_init_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hda_tegra_init(ptr nocapture noundef readonly %hda) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.hda_tegra, ptr %hda, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 384
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !110
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 4100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %9 = and i32 %8, -117768193
  %10 = or i32 %9, 117506048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -1) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %16, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 4194304) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 1073741824) #10, !srcloc !110
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %20, i32 392
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %22 = or i32 %21, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %24, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %22) #10, !srcloc !110
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %running = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 12
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %8 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %bf.cast.not.i = icmp eq i16 %8, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr4, i32 noundef 65535) #10
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4) #10, !srcloc !111
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %conv.i = zext i16 %10 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i16
  %11 = or i16 %conv3.i, 255
  %12 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i25 = load i16, ptr %aligned_mmio.i, align 4
  %13 = and i16 %bf.load.i25, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i26 = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i26, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i27 = zext i16 %11 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i27, ptr noundef %add.ptr4, i32 noundef 65535) #10
  br label %snd_hdac_reg_writew.exit

do.body.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %14) #10, !srcloc !124
  br label %snd_hdac_reg_writew.exit

snd_hdac_reg_writew.exit:                         ; preds = %do.body.i, %if.then.i
  tail call void @azx_stop_chip(ptr noundef nonnull %3) #10
  tail call void @snd_hdac_bus_enter_link_reset(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %snd_hdac_reg_writew.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nclocks = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nclocks, align 8
  %clocks = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef %16, ptr noundef %clocks) #10
  tail call void @clk_bulk_unprepare(i32 noundef %16, ptr noundef %clocks) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_tegra_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %running = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %nresets = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 2
  %call1 = tail call i32 @reset_control_bulk_assert(i32 noundef %6, ptr noundef %resets) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %nclocks = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nclocks, align 8
  %clocks = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %8, ptr noundef %clocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %8, ptr noundef %clocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_bulk_unprepare(i32 noundef %8, ptr noundef %clocks) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load10 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load10)
  %tobool13.not = icmp sgt i16 %bf.load10, -1
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end8
  tail call fastcc void @hda_tegra_init(ptr noundef %3)
  tail call void @azx_init_chip(ptr noundef %3, i1 noundef zeroext true) #10
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr, align 8
  %add.ptr17 = getelementptr i8, ptr %11, i32 12
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call.i55 = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr17, i32 noundef 65535) #10
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #10, !srcloc !111
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %conv.i = zext i16 %15 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i55, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i16
  %16 = and i16 %conv3.i, -256
  %17 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i57 = load i16, ptr %aligned_mmio.i, align 4
  %18 = and i16 %bf.load.i57, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i58 = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i58, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i59 = zext i16 %16 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i59, ptr noundef %add.ptr17, i32 noundef 65535) #10
  br label %if.end33

do.body.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %19 = lshr exact i16 %16, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 %19) #10, !srcloc !124
  br label %if.end33

if.else:                                          ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #10
  %nresets26 = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %nresets26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nresets26, align 4
  %resets27 = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 2
  %call29 = tail call i32 @reset_control_bulk_deassert(i32 noundef %21, ptr noundef %resets27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else.if.end33_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %do.body.i, %if.then.i
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.else.cleanup_crit_edge, %if.then3.i, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call29, %if.else.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_enter_link_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__param_power_save, !1, !"__param_power_save", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_tegra.c", i32 89, i32 1}
!2 = !{ptr @__UNIQUE_ID_power_savetype241, !1, !"__UNIQUE_ID_power_savetype241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_power_save242, !4, !"__UNIQUE_ID_power_save242", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/hda_tegra.c", i32 90, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_tegra__244_583_tegra_platform_hda_init6, !6, !"__initcall__kmod_snd_hda_tegra__244_583_tegra_platform_hda_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/hda_tegra.c", i32 583, i32 1}
!7 = !{ptr @__exitcall_tegra_platform_hda_exit, !6, !"__exitcall_tegra_platform_hda_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description245, !9, !"__UNIQUE_ID_description245", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_tegra.c", i32 585, i32 1}
!10 = !{ptr @__UNIQUE_ID_file246, !11, !"__UNIQUE_ID_file246", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/hda_tegra.c", i32 586, i32 1}
!12 = !{ptr @__UNIQUE_ID_license247, !11, !"__UNIQUE_ID_license247", i1 false, i1 false}
!13 = !{ptr @__param_str_power_save, !1, !"__param_str_power_save", i1 false, i1 false}
!14 = !{ptr @power_save, !15, !"power_save", i1 false, i1 false}
!15 = !{!"../sound/pci/hda/hda_tegra.c", i32 88, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/hda_tegra.c", i32 575, i32 11}
!18 = !{ptr @tegra_platform_hda, !19, !"tegra_platform_hda", i1 false, i1 false}
!19 = !{!"../sound/pci/hda/hda_tegra.c", i32 573, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/hda_tegra.c", i32 471, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hda_tegra_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hda_tegra_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/hda/hda_tegra.c", i32 475, i32 35}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/hda/hda_tegra.c", i32 476, i32 35}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/hda/hda_tegra.c", i32 483, i32 36}
!34 = !{ptr @hda_tegra_create.ops, !35, !"ops", i1 false, i1 false}
!35 = !{!"../sound/pci/hda/hda_tegra.c", i32 395, i32 37}
!36 = !{ptr @hda_tegra_create.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../sound/pci/hda/hda_tegra.c", i32 404, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hda_tegra_create.__key.10, !40, !"__key", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/hda_tegra.c", i32 417, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/hda/hda_tegra.c", i32 429, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hda_tegra_create._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @hda_tegra_create._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @hda_tegra_ops, !48, !"hda_tegra_ops", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/hda_tegra.c", i32 96, i32 40}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/hda_tegra.c", i32 277, i32 22}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/hda_tegra.c", i32 279, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hda_tegra_first_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hda_tegra_first_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/hda/hda_tegra.c", i32 297, i32 34}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/hda_tegra.c", i32 300, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hda_tegra_first_init._entry.18, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hda_tegra_first_init._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/hda_tegra.c", i32 309, i32 2}
!65 = !{ptr @hda_tegra_first_init.__UNIQUE_ID_ddebug243, !64, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/hda/hda_tegra.c", i32 330, i32 3}
!68 = !{ptr @hda_tegra_first_init._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hda_tegra_first_init._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/hda/hda_tegra.c", i32 336, i32 3}
!72 = !{ptr @hda_tegra_first_init._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hda_tegra_first_init._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/hda/hda_tegra.c", i32 358, i32 34}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/hda/hda_tegra.c", i32 363, i32 3}
!78 = !{ptr @hda_tegra_first_init._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hda_tegra_first_init._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/hda/hda_tegra.c", i32 370, i32 30}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/hda/hda_tegra.c", i32 374, i32 3}
!84 = !{ptr @hda_tegra_first_init._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @hda_tegra_first_init._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/hda/hda_tegra.c", i32 379, i32 4}
!88 = !{ptr @hda_tegra_match, !89, !"hda_tegra_match", i1 false, i1 false}
!89 = !{!"../sound/pci/hda/hda_tegra.c", i32 444, i32 34}
!90 = !{ptr @tegra30_data, !91, !"tegra30_data", i1 false, i1 false}
!91 = !{!"../sound/pci/hda/hda_tegra.c", i32 436, i32 35}
!92 = !{ptr @tegra194_data, !93, !"tegra194_data", i1 false, i1 false}
!93 = !{!"../sound/pci/hda/hda_tegra.c", i32 440, i32 35}
!94 = !{ptr @hda_tegra_pm, !95, !"hda_tegra_pm", i1 false, i1 false}
!95 = !{!"../sound/pci/hda/hda_tegra.c", i32 204, i32 32}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i8 0, i8 2}
!107 = !{i64 4015425}
!108 = !{i64 2154824852}
!109 = !{i64 2154825112}
!110 = !{i64 4015007}
!111 = !{i64 4014587}
!112 = !{i64 2154689485}
!113 = !{i64 2148734521, i64 2148734526, i64 2148734539, i64 2148734583, i64 2148734617, i64 2148734638}
!114 = !{i64 2154800621}
!115 = !{i64 2154800843}
!116 = !{i64 2154801509}
!117 = !{i64 2154801775}
!118 = !{i64 2154802185}
!119 = !{i64 2154802620}
!120 = !{i64 2154803038}
!121 = !{i64 2154803707}
!122 = !{i64 2154803935}
!123 = !{i64 2154688297}
!124 = !{i64 4014387}
