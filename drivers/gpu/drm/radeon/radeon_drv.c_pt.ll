; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.91, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.91 = type { ptr }

@radeon_modeset = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_dynclks = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_r4xx_atom = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_agpmode = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_vram_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_gart_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_benchmarking = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_testing = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_connector_table = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_tv = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@radeon_audio = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_disp_priority = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_hw_i2c = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_pcie_gen2 = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_msi = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_lockup_timeout = dso_local global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@radeon_fastfb = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_dpm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_aspm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_runtime_pm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_hard_reset = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_vm_size = dso_local global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@radeon_vm_block_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_deep_color = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_use_pflipirq = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@radeon_bapm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_backlight = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_auxch = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@radeon_mst = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@radeon_uvd = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@radeon_vce = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_no_wb325 = internal constant [62 x i8] c"radeon.parm=no_wb:Disable AGP writeback for scratch registers\00", section ".modinfo", align 1
@__param_str_no_wb = internal constant [13 x i8] c"radeon.no_wb\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radeon_no_wb = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_wb = internal constant %struct.kernel_param { ptr @__param_str_no_wb, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_no_wb } }, section "__param", align 4
@__UNIQUE_ID_no_wbtype326 = internal constant [26 x i8] c"radeon.parmtype=no_wb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset327 = internal constant [47 x i8] c"radeon.parm=modeset:Disable/Enable modesetting\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [15 x i8] c"radeon.modeset\00", align 1
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @radeon_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype328 = internal constant [28 x i8] c"radeon.parmtype=modeset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dynclks329 = internal constant [50 x i8] c"radeon.parm=dynclks:Disable/Enable dynamic clocks\00", section ".modinfo", align 1
@__param_str_dynclks = internal constant [15 x i8] c"radeon.dynclks\00", align 1
@__param_dynclks = internal constant %struct.kernel_param { ptr @__param_str_dynclks, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_dynclks } }, section "__param", align 4
@__UNIQUE_ID_dynclkstype330 = internal constant [28 x i8] c"radeon.parmtype=dynclks:int\00", section ".modinfo", align 1
@__UNIQUE_ID_r4xx_atom331 = internal constant [59 x i8] c"radeon.parm=r4xx_atom:Enable ATOMBIOS modesetting for R4xx\00", section ".modinfo", align 1
@__param_str_r4xx_atom = internal constant [17 x i8] c"radeon.r4xx_atom\00", align 1
@__param_r4xx_atom = internal constant %struct.kernel_param { ptr @__param_str_r4xx_atom, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_r4xx_atom } }, section "__param", align 4
@__UNIQUE_ID_r4xx_atomtype332 = internal constant [30 x i8] c"radeon.parmtype=r4xx_atom:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vramlimit333 = internal constant [62 x i8] c"radeon.parm=vramlimit:Restrict VRAM for testing, in megabytes\00", section ".modinfo", align 1
@__param_str_vramlimit = internal constant [17 x i8] c"radeon.vramlimit\00", align 1
@__param_vramlimit = internal constant %struct.kernel_param { ptr @__param_str_vramlimit, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @radeon_vram_limit } }, section "__param", align 4
@__UNIQUE_ID_vramlimittype334 = internal constant [30 x i8] c"radeon.parmtype=vramlimit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_agpmode335 = internal constant [41 x i8] c"radeon.parm=agpmode:AGP Mode (-1 == PCI)\00", section ".modinfo", align 1
@__param_str_agpmode = internal constant [15 x i8] c"radeon.agpmode\00", align 1
@__param_agpmode = internal constant %struct.kernel_param { ptr @__param_str_agpmode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_agpmode } }, section "__param", align 4
@__UNIQUE_ID_agpmodetype336 = internal constant [28 x i8] c"radeon.parmtype=agpmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gartsize337 = internal constant [91 x i8] c"radeon.parm=gartsize:Size of PCIE/IGP gart to setup in megabytes (32, 64, etc., -1 = auto)\00", section ".modinfo", align 1
@__param_str_gartsize = internal constant [16 x i8] c"radeon.gartsize\00", align 1
@__param_gartsize = internal constant %struct.kernel_param { ptr @__param_str_gartsize, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @radeon_gart_size } }, section "__param", align 4
@__UNIQUE_ID_gartsizetype338 = internal constant [29 x i8] c"radeon.parmtype=gartsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_benchmark339 = internal constant [36 x i8] c"radeon.parm=benchmark:Run benchmark\00", section ".modinfo", align 1
@__param_str_benchmark = internal constant [17 x i8] c"radeon.benchmark\00", align 1
@__param_benchmark = internal constant %struct.kernel_param { ptr @__param_str_benchmark, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_benchmarking } }, section "__param", align 4
@__UNIQUE_ID_benchmarktype340 = internal constant [30 x i8] c"radeon.parmtype=benchmark:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test341 = internal constant [27 x i8] c"radeon.parm=test:Run tests\00", section ".modinfo", align 1
@__param_str_test = internal constant [12 x i8] c"radeon.test\00", align 1
@__param_test = internal constant %struct.kernel_param { ptr @__param_str_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_testing } }, section "__param", align 4
@__UNIQUE_ID_testtype342 = internal constant [25 x i8] c"radeon.parmtype=test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_connector_table343 = internal constant [50 x i8] c"radeon.parm=connector_table:Force connector table\00", section ".modinfo", align 1
@__param_str_connector_table = internal constant [23 x i8] c"radeon.connector_table\00", align 1
@__param_connector_table = internal constant %struct.kernel_param { ptr @__param_str_connector_table, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_connector_table } }, section "__param", align 4
@__UNIQUE_ID_connector_tabletype344 = internal constant [36 x i8] c"radeon.parmtype=connector_table:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tv345 = internal constant [39 x i8] c"radeon.parm=tv:TV enable (0 = disable)\00", section ".modinfo", align 1
@__param_str_tv = internal constant [10 x i8] c"radeon.tv\00", align 1
@__param_tv = internal constant %struct.kernel_param { ptr @__param_str_tv, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_tv } }, section "__param", align 4
@__UNIQUE_ID_tvtype346 = internal constant [23 x i8] c"radeon.parmtype=tv:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio347 = internal constant [68 x i8] c"radeon.parm=audio:Audio enable (-1 = auto, 0 = disable, 1 = enable)\00", section ".modinfo", align 1
@__param_str_audio = internal constant [13 x i8] c"radeon.audio\00", align 1
@__param_audio = internal constant %struct.kernel_param { ptr @__param_str_audio, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_audio } }, section "__param", align 4
@__UNIQUE_ID_audiotype348 = internal constant [26 x i8] c"radeon.parmtype=audio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disp_priority349 = internal constant [76 x i8] c"radeon.parm=disp_priority:Display Priority (0 = auto, 1 = normal, 2 = high)\00", section ".modinfo", align 1
@__param_str_disp_priority = internal constant [21 x i8] c"radeon.disp_priority\00", align 1
@__param_disp_priority = internal constant %struct.kernel_param { ptr @__param_str_disp_priority, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_disp_priority } }, section "__param", align 4
@__UNIQUE_ID_disp_prioritytype350 = internal constant [34 x i8] c"radeon.parmtype=disp_priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hw_i2c351 = internal constant [54 x i8] c"radeon.parm=hw_i2c:hw i2c engine enable (0 = disable)\00", section ".modinfo", align 1
@__param_str_hw_i2c = internal constant [14 x i8] c"radeon.hw_i2c\00", align 1
@__param_hw_i2c = internal constant %struct.kernel_param { ptr @__param_str_hw_i2c, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_hw_i2c } }, section "__param", align 4
@__UNIQUE_ID_hw_i2ctype352 = internal constant [27 x i8] c"radeon.parmtype=hw_i2c:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_gen2353 = internal constant [74 x i8] c"radeon.parm=pcie_gen2:PCIE Gen2 mode (-1 = auto, 0 = disable, 1 = enable)\00", section ".modinfo", align 1
@__param_str_pcie_gen2 = internal constant [17 x i8] c"radeon.pcie_gen2\00", align 1
@__param_pcie_gen2 = internal constant %struct.kernel_param { ptr @__param_str_pcie_gen2, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_pcie_gen2 } }, section "__param", align 4
@__UNIQUE_ID_pcie_gen2type354 = internal constant [30 x i8] c"radeon.parmtype=pcie_gen2:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi355 = internal constant [65 x i8] c"radeon.parm=msi:MSI support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_msi = internal constant [11 x i8] c"radeon.msi\00", align 1
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_msi } }, section "__param", align 4
@__UNIQUE_ID_msitype356 = internal constant [24 x i8] c"radeon.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lockup_timeout357 = internal constant [94 x i8] c"radeon.parm=lockup_timeout:GPU lockup timeout in ms (default 10000 = 10 seconds, 0 = disable)\00", section ".modinfo", align 1
@__param_str_lockup_timeout = internal constant [22 x i8] c"radeon.lockup_timeout\00", align 1
@__param_lockup_timeout = internal constant %struct.kernel_param { ptr @__param_str_lockup_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_lockup_timeout } }, section "__param", align 4
@__UNIQUE_ID_lockup_timeouttype358 = internal constant [35 x i8] c"radeon.parmtype=lockup_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fastfb359 = internal constant [76 x i8] c"radeon.parm=fastfb:Direct FB access for IGP chips (0 = disable, 1 = enable)\00", section ".modinfo", align 1
@__param_str_fastfb = internal constant [14 x i8] c"radeon.fastfb\00", align 1
@__param_fastfb = internal constant %struct.kernel_param { ptr @__param_str_fastfb, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_fastfb } }, section "__param", align 4
@__UNIQUE_ID_fastfbtype360 = internal constant [27 x i8] c"radeon.parmtype=fastfb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dpm361 = internal constant [65 x i8] c"radeon.parm=dpm:DPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_dpm = internal constant [11 x i8] c"radeon.dpm\00", align 1
@__param_dpm = internal constant %struct.kernel_param { ptr @__param_str_dpm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_dpm } }, section "__param", align 4
@__UNIQUE_ID_dpmtype362 = internal constant [24 x i8] c"radeon.parmtype=dpm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm363 = internal constant [67 x i8] c"radeon.parm=aspm:ASPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [12 x i8] c"radeon.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_aspm } }, section "__param", align 4
@__UNIQUE_ID_aspmtype364 = internal constant [25 x i8] c"radeon.parmtype=aspm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_runpm365 = internal constant [86 x i8] c"radeon.parm=runpm:PX runtime pm (1 = force enable, 0 = disable, -1 = PX only default)\00", section ".modinfo", align 1
@__param_str_runpm = internal constant [13 x i8] c"radeon.runpm\00", align 1
@__param_runpm = internal constant %struct.kernel_param { ptr @__param_str_runpm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_runtime_pm } }, section "__param", align 4
@__UNIQUE_ID_runpmtype366 = internal constant [26 x i8] c"radeon.parmtype=runpm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hard_reset367 = internal constant [82 x i8] c"radeon.parm=hard_reset:PCI config reset (1 = force enable, 0 = disable (default))\00", section ".modinfo", align 1
@__param_str_hard_reset = internal constant [18 x i8] c"radeon.hard_reset\00", align 1
@__param_hard_reset = internal constant %struct.kernel_param { ptr @__param_str_hard_reset, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_hard_reset } }, section "__param", align 4
@__UNIQUE_ID_hard_resettype368 = internal constant [31 x i8] c"radeon.parmtype=hard_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_size369 = internal constant [69 x i8] c"radeon.parm=vm_size:VM address space size in gigabytes (default 4GB)\00", section ".modinfo", align 1
@__param_str_vm_size = internal constant [15 x i8] c"radeon.vm_size\00", align 1
@__param_vm_size = internal constant %struct.kernel_param { ptr @__param_str_vm_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_vm_size } }, section "__param", align 4
@__UNIQUE_ID_vm_sizetype370 = internal constant [28 x i8] c"radeon.parmtype=vm_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_block_size371 = internal constant [84 x i8] c"radeon.parm=vm_block_size:VM page table size in bits (default depending on vm_size)\00", section ".modinfo", align 1
@__param_str_vm_block_size = internal constant [21 x i8] c"radeon.vm_block_size\00", align 1
@__param_vm_block_size = internal constant %struct.kernel_param { ptr @__param_str_vm_block_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_vm_block_size } }, section "__param", align 4
@__UNIQUE_ID_vm_block_sizetype372 = internal constant [34 x i8] c"radeon.parmtype=vm_block_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_deep_color373 = internal constant [78 x i8] c"radeon.parm=deep_color:Deep Color support (1 = enable, 0 = disable (default))\00", section ".modinfo", align 1
@__param_str_deep_color = internal constant [18 x i8] c"radeon.deep_color\00", align 1
@__param_deep_color = internal constant %struct.kernel_param { ptr @__param_str_deep_color, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_deep_color } }, section "__param", align 4
@__UNIQUE_ID_deep_colortype374 = internal constant [31 x i8] c"radeon.parmtype=deep_color:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_pflipirq375 = internal constant [116 x i8] c"radeon.parm=use_pflipirq:Pflip irqs for pageflip completion (0 = disable, 1 = as fallback, 2 = exclusive (default))\00", section ".modinfo", align 1
@__param_str_use_pflipirq = internal constant [20 x i8] c"radeon.use_pflipirq\00", align 1
@__param_use_pflipirq = internal constant %struct.kernel_param { ptr @__param_str_use_pflipirq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_use_pflipirq } }, section "__param", align 4
@__UNIQUE_ID_use_pflipirqtype376 = internal constant [33 x i8] c"radeon.parmtype=use_pflipirq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bapm377 = internal constant [67 x i8] c"radeon.parm=bapm:BAPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_bapm = internal constant [12 x i8] c"radeon.bapm\00", align 1
@__param_bapm = internal constant %struct.kernel_param { ptr @__param_str_bapm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_bapm } }, section "__param", align 4
@__UNIQUE_ID_bapmtype378 = internal constant [25 x i8] c"radeon.parmtype=bapm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_backlight379 = internal constant [77 x i8] c"radeon.parm=backlight:backlight support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_backlight = internal constant [17 x i8] c"radeon.backlight\00", align 1
@__param_backlight = internal constant %struct.kernel_param { ptr @__param_str_backlight, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_backlight } }, section "__param", align 4
@__UNIQUE_ID_backlighttype380 = internal constant [30 x i8] c"radeon.parmtype=backlight:int\00", section ".modinfo", align 1
@__UNIQUE_ID_auxch381 = internal constant [93 x i8] c"radeon.parm=auxch:Use native auxch experimental support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_auxch = internal constant [13 x i8] c"radeon.auxch\00", align 1
@__param_auxch = internal constant %struct.kernel_param { ptr @__param_str_auxch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_auxch } }, section "__param", align 4
@__UNIQUE_ID_auxchtype382 = internal constant [26 x i8] c"radeon.parmtype=auxch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mst383 = internal constant [79 x i8] c"radeon.parm=mst:DisplayPort MST experimental support (1 = enable, 0 = disable)\00", section ".modinfo", align 1
@__param_str_mst = internal constant [11 x i8] c"radeon.mst\00", align 1
@__param_mst = internal constant %struct.kernel_param { ptr @__param_str_mst, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_mst } }, section "__param", align 4
@__UNIQUE_ID_msttype384 = internal constant [24 x i8] c"radeon.parmtype=mst:int\00", section ".modinfo", align 1
@__UNIQUE_ID_uvd385 = internal constant [73 x i8] c"radeon.parm=uvd:uvd enable/disable uvd support (1 = enable, 0 = disable)\00", section ".modinfo", align 1
@__param_str_uvd = internal constant [11 x i8] c"radeon.uvd\00", align 1
@__param_uvd = internal constant %struct.kernel_param { ptr @__param_str_uvd, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_uvd } }, section "__param", align 4
@__UNIQUE_ID_uvdtype386 = internal constant [24 x i8] c"radeon.parmtype=uvd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vce387 = internal constant [73 x i8] c"radeon.parm=vce:vce enable/disable vce support (1 = enable, 0 = disable)\00", section ".modinfo", align 1
@__param_str_vce = internal constant [11 x i8] c"radeon.vce\00", align 1
@__param_vce = internal constant %struct.kernel_param { ptr @__param_str_vce, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_vce } }, section "__param", align 4
@__UNIQUE_ID_vcetype388 = internal constant [24 x i8] c"radeon.parmtype=vce:int\00", section ".modinfo", align 1
@radeon_si_support = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_si_support389 = internal constant [72 x i8] c"radeon.parm=si_support:SI support (1 = enabled (default), 0 = disabled)\00", section ".modinfo", align 1
@__param_str_si_support = internal constant [18 x i8] c"radeon.si_support\00", align 1
@__param_si_support = internal constant %struct.kernel_param { ptr @__param_str_si_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_si_support } }, section "__param", align 4
@__UNIQUE_ID_si_supporttype390 = internal constant [31 x i8] c"radeon.parmtype=si_support:int\00", section ".modinfo", align 1
@radeon_cik_support = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_cik_support391 = internal constant [74 x i8] c"radeon.parm=cik_support:CIK support (1 = enabled (default), 0 = disabled)\00", section ".modinfo", align 1
@__param_str_cik_support = internal constant [19 x i8] c"radeon.cik_support\00", align 1
@__param_cik_support = internal constant %struct.kernel_param { ptr @__param_str_cik_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radeon_cik_support } }, section "__param", align 4
@__UNIQUE_ID_cik_supporttype392 = internal constant [32 x i8] c"radeon.parmtype=cik_support:int\00", section ".modinfo", align 1
@radeon_kms_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pciidlist, ptr @radeon_pci_probe, ptr @radeon_pci_remove, ptr null, ptr null, ptr @radeon_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeon_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_radeon__393_658_radeon_module_init6 = internal global ptr @radeon_module_init, section ".initcall6.init", align 4
@__exitcall_radeon_module_exit = internal global ptr @radeon_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author394 = internal constant [53 x i8] c"radeon.author=Gareth Hughes, Keith Whitwell, others.\00", section ".modinfo", align 1
@__UNIQUE_ID_description395 = internal constant [30 x i8] c"radeon.description=ATI Radeon\00", section ".modinfo", align 1
@__UNIQUE_ID_file396 = internal constant [42 x i8] c"radeon.file=drivers/gpu/drm/radeon/radeon\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [41 x i8] c"radeon.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"radeon\00", [25 x i8] zeroinitializer }, align 32
@pciidlist = internal global { [700 x %struct.pci_device_id], [5600 x i8] } { [700 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 4868, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4869, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4870, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4871, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4873, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4874, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4875, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4876, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4877, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4878, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4879, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4880, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4881, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4882, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4883, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4885, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4886, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4887, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4888, i32 -1, i32 -1, i32 0, i32 0, i32 4390970, i32 0 }, %struct.pci_device_id { i32 4098, i32 4891, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4892, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 4893, i32 -1, i32 -1, i32 0, i32 0, i32 4325434, i32 0 }, %struct.pci_device_id { i32 4098, i32 12624, i32 -1, i32 -1, i32 0, i32 0, i32 65548, i32 0 }, %struct.pci_device_id { i32 4098, i32 12625, i32 -1, i32 -1, i32 0, i32 0, i32 4259852, i32 0 }, %struct.pci_device_id { i32 4098, i32 12626, i32 -1, i32 -1, i32 0, i32 0, i32 4259852, i32 0 }, %struct.pci_device_id { i32 4098, i32 12628, i32 -1, i32 -1, i32 0, i32 0, i32 4259852, i32 0 }, %struct.pci_device_id { i32 4098, i32 12629, i32 -1, i32 -1, i32 0, i32 0, i32 4259852, i32 0 }, %struct.pci_device_id { i32 4098, i32 15952, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 15956, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 16694, i32 -1, i32 -1, i32 0, i32 0, i32 131074, i32 0 }, %struct.pci_device_id { i32 4098, i32 16695, i32 -1, i32 -1, i32 0, i32 0, i32 131076, i32 0 }, %struct.pci_device_id { i32 4098, i32 16708, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 16709, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 16710, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 16711, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 16712, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 16713, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 16714, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 16715, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 16720, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16721, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16722, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16723, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16724, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16725, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16726, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 16951, i32 -1, i32 -1, i32 0, i32 0, i32 131076, i32 0 }, %struct.pci_device_id { i32 4098, i32 16962, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 17206, i32 -1, i32 -1, i32 0, i32 0, i32 196610, i32 0 }, %struct.pci_device_id { i32 4098, i32 17207, i32 -1, i32 -1, i32 0, i32 0, i32 196612, i32 0 }, %struct.pci_device_id { i32 4098, i32 17463, i32 -1, i32 -1, i32 0, i32 0, i32 196612, i32 0 }, %struct.pci_device_id { i32 4098, i32 18790, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 18791, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 19016, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19017, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19018, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19019, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19020, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19021, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19022, i32 -1, i32 -1, i32 0, i32 0, i32 4259853, i32 0 }, %struct.pci_device_id { i32 4098, i32 19023, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19024, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19028, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19272, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19273, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19274, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19275, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19276, i32 -1, i32 -1, i32 0, i32 0, i32 4194317, i32 0 }, %struct.pci_device_id { i32 4098, i32 19543, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 19544, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 19545, i32 -1, i32 -1, i32 0, i32 0, i32 65537, i32 0 }, %struct.pci_device_id { i32 4098, i32 19546, i32 -1, i32 -1, i32 0, i32 0, i32 65537, i32 0 }, %struct.pci_device_id { i32 4098, i32 19556, i32 -1, i32 -1, i32 0, i32 0, i32 65542, i32 0 }, %struct.pci_device_id { i32 4098, i32 19558, i32 -1, i32 -1, i32 0, i32 0, i32 65542, i32 0 }, %struct.pci_device_id { i32 4098, i32 19559, i32 -1, i32 -1, i32 0, i32 0, i32 65542, i32 0 }, %struct.pci_device_id { i32 4098, i32 20036, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 20037, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 20038, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 20039, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4098, i32 20040, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 20041, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 20042, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 20043, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 20048, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20049, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20050, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20051, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20052, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20054, i32 -1, i32 -1, i32 0, i32 0, i32 65547, i32 0 }, %struct.pci_device_id { i32 4098, i32 20804, i32 -1, i32 -1, i32 0, i32 0, i32 262144, i32 0 }, %struct.pci_device_id { i32 4098, i32 20805, i32 -1, i32 -1, i32 0, i32 0, i32 262144, i32 0 }, %struct.pci_device_id { i32 4098, i32 20806, i32 -1, i32 -1, i32 0, i32 0, i32 262144, i32 0 }, %struct.pci_device_id { i32 4098, i32 20807, i32 -1, i32 -1, i32 0, i32 0, i32 262144, i32 0 }, %struct.pci_device_id { i32 4098, i32 20808, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 20812, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 20813, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 20823, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 20824, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 20825, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 20826, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 20830, i32 -1, i32 -1, i32 0, i32 0, i32 262145, i32 0 }, %struct.pci_device_id { i32 4098, i32 21600, i32 -1, i32 -1, i32 0, i32 0, i32 65548, i32 0 }, %struct.pci_device_id { i32 4098, i32 21602, i32 -1, i32 -1, i32 0, i32 0, i32 65548, i32 0 }, %struct.pci_device_id { i32 4098, i32 21604, i32 -1, i32 -1, i32 0, i32 0, i32 65548, i32 0 }, %struct.pci_device_id { i32 4098, i32 21832, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21833, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21834, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21835, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21836, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21837, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21838, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21839, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21840, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21841, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21842, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 21844, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 22090, i32 -1, i32 -1, i32 0, i32 0, i32 4259855, i32 0 }, %struct.pci_device_id { i32 4098, i32 22091, i32 -1, i32 -1, i32 0, i32 0, i32 4259855, i32 0 }, %struct.pci_device_id { i32 4098, i32 22095, i32 -1, i32 -1, i32 0, i32 0, i32 4259855, i32 0 }, %struct.pci_device_id { i32 4098, i32 22098, i32 -1, i32 -1, i32 0, i32 0, i32 4259855, i32 0 }, %struct.pci_device_id { i32 4098, i32 22099, i32 -1, i32 -1, i32 0, i32 0, i32 4259855, i32 0 }, %struct.pci_device_id { i32 4098, i32 22103, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 22580, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 22581, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 22868, i32 -1, i32 -1, i32 0, i32 0, i32 16973841, i32 0 }, %struct.pci_device_id { i32 4098, i32 22869, i32 -1, i32 -1, i32 0, i32 0, i32 16973841, i32 0 }, %struct.pci_device_id { i32 4098, i32 22900, i32 -1, i32 -1, i32 0, i32 0, i32 16973841, i32 0 }, %struct.pci_device_id { i32 4098, i32 22901, i32 -1, i32 -1, i32 0, i32 0, i32 16973841, i32 0 }, %struct.pci_device_id { i32 4098, i32 22880, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 22881, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 22882, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 22884, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 22885, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 22889, i32 -1, i32 -1, i32 0, i32 0, i32 262145, i32 0 }, %struct.pci_device_id { i32 4098, i32 23105, i32 -1, i32 -1, i32 0, i32 0, i32 16908304, i32 0 }, %struct.pci_device_id { i32 4098, i32 23106, i32 -1, i32 -1, i32 0, i32 0, i32 16973840, i32 0 }, %struct.pci_device_id { i32 4098, i32 23137, i32 -1, i32 -1, i32 0, i32 0, i32 16908304, i32 0 }, %struct.pci_device_id { i32 4098, i32 23138, i32 -1, i32 -1, i32 0, i32 0, i32 16973840, i32 0 }, %struct.pci_device_id { i32 4098, i32 23392, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 23394, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 23395, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 23396, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 23397, i32 -1, i32 -1, i32 0, i32 0, i32 4194316, i32 0 }, %struct.pci_device_id { i32 4098, i32 23649, i32 -1, i32 -1, i32 0, i32 0, i32 65544, i32 0 }, %struct.pci_device_id { i32 4098, i32 23651, i32 -1, i32 -1, i32 0, i32 0, i32 65544, i32 0 }, %struct.pci_device_id { i32 4098, i32 23880, i32 -1, i32 -1, i32 0, i32 0, i32 4259854, i32 0 }, %struct.pci_device_id { i32 4098, i32 23881, i32 -1, i32 -1, i32 0, i32 0, i32 4259854, i32 0 }, %struct.pci_device_id { i32 4098, i32 23882, i32 -1, i32 -1, i32 0, i32 0, i32 4259854, i32 0 }, %struct.pci_device_id { i32 4098, i32 23884, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23885, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23886, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23887, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23888, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23890, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 23895, i32 -1, i32 -1, i32 0, i32 0, i32 4194318, i32 0 }, %struct.pci_device_id { i32 4098, i32 24136, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 24138, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 24139, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 24140, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 24141, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 24143, i32 -1, i32 -1, i32 0, i32 0, i32 4194319, i32 0 }, %struct.pci_device_id { i32 4098, i32 26112, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26113, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26114, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26115, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26116, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26117, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26118, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26119, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26120, i32 -1, i32 -1, i32 0, i32 0, i32 4194359, i32 0 }, %struct.pci_device_id { i32 4098, i32 26128, i32 -1, i32 -1, i32 0, i32 0, i32 4194359, i32 0 }, %struct.pci_device_id { i32 4098, i32 26129, i32 -1, i32 -1, i32 0, i32 0, i32 4194359, i32 0 }, %struct.pci_device_id { i32 4098, i32 26131, i32 -1, i32 -1, i32 0, i32 0, i32 4194359, i32 0 }, %struct.pci_device_id { i32 4098, i32 26135, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26144, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26145, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26147, i32 -1, i32 -1, i32 0, i32 0, i32 4259895, i32 0 }, %struct.pci_device_id { i32 4098, i32 26161, i32 -1, i32 -1, i32 0, i32 0, i32 4194359, i32 0 }, %struct.pci_device_id { i32 4098, i32 26176, i32 -1, i32 -1, i32 0, i32 0, i32 4259897, i32 0 }, %struct.pci_device_id { i32 4098, i32 26177, i32 -1, i32 -1, i32 0, i32 0, i32 4259897, i32 0 }, %struct.pci_device_id { i32 4098, i32 26182, i32 -1, i32 -1, i32 0, i32 0, i32 4259897, i32 0 }, %struct.pci_device_id { i32 4098, i32 26183, i32 -1, i32 -1, i32 0, i32 0, i32 4259897, i32 0 }, %struct.pci_device_id { i32 4098, i32 26185, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26192, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26193, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26200, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26204, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26205, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26207, i32 -1, i32 -1, i32 0, i32 0, i32 4194361, i32 0 }, %struct.pci_device_id { i32 4098, i32 26208, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26211, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26212, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26213, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26215, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26223, i32 -1, i32 -1, i32 0, i32 0, i32 4259896, i32 0 }, %struct.pci_device_id { i32 4098, i32 26368, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26369, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26370, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26371, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26372, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26373, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26374, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26375, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26376, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26377, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26392, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26393, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26396, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26397, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26399, i32 -1, i32 -1, i32 0, i32 0, i32 4194354, i32 0 }, %struct.pci_device_id { i32 4098, i32 26400, i32 -1, i32 -1, i32 0, i32 0, i32 4259887, i32 0 }, %struct.pci_device_id { i32 4098, i32 26401, i32 -1, i32 -1, i32 0, i32 0, i32 4259887, i32 0 }, %struct.pci_device_id { i32 4098, i32 26402, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26403, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26404, i32 -1, i32 -1, i32 0, i32 0, i32 4259887, i32 0 }, %struct.pci_device_id { i32 4098, i32 26405, i32 -1, i32 -1, i32 0, i32 0, i32 4259887, i32 0 }, %struct.pci_device_id { i32 4098, i32 26406, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26407, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26408, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26409, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26424, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26425, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26430, i32 -1, i32 -1, i32 0, i32 0, i32 4194351, i32 0 }, %struct.pci_device_id { i32 4098, i32 26432, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26433, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26434, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26435, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26436, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26437, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26438, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26439, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26440, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26441, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26442, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26448, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26449, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26456, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26457, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26459, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26461, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26463, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26464, i32 -1, i32 -1, i32 0, i32 0, i32 4259889, i32 0 }, %struct.pci_device_id { i32 4098, i32 26465, i32 -1, i32 -1, i32 0, i32 0, i32 4259889, i32 0 }, %struct.pci_device_id { i32 4098, i32 26466, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26467, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26468, i32 -1, i32 -1, i32 0, i32 0, i32 4259889, i32 0 }, %struct.pci_device_id { i32 4098, i32 26469, i32 -1, i32 -1, i32 0, i32 0, i32 4259889, i32 0 }, %struct.pci_device_id { i32 4098, i32 26470, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26471, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26472, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26480, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26481, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26482, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26488, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26489, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26491, i32 -1, i32 -1, i32 0, i32 0, i32 4194353, i32 0 }, %struct.pci_device_id { i32 4098, i32 26496, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26500, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26504, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26506, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26512, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26513, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26514, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26520, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26521, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26522, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26523, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26526, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26527, i32 -1, i32 -1, i32 0, i32 0, i32 4194356, i32 0 }, %struct.pci_device_id { i32 4098, i32 26528, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26529, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26530, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26536, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26537, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26538, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26544, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26545, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26552, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26553, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26554, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26558, i32 -1, i32 -1, i32 0, i32 0, i32 4194364, i32 0 }, %struct.pci_device_id { i32 4098, i32 26624, i32 -1, i32 -1, i32 0, i32 0, i32 4259893, i32 0 }, %struct.pci_device_id { i32 4098, i32 26625, i32 -1, i32 -1, i32 0, i32 0, i32 4259893, i32 0 }, %struct.pci_device_id { i32 4098, i32 26626, i32 -1, i32 -1, i32 0, i32 0, i32 4259893, i32 0 }, %struct.pci_device_id { i32 4098, i32 26630, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26632, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26633, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26640, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26641, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26646, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26647, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26648, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26649, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26656, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26657, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26658, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26659, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26660, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26661, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26662, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26663, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26664, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26665, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26666, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26667, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26668, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26669, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26671, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26672, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26673, i32 -1, i32 -1, i32 0, i32 0, i32 4259894, i32 0 }, %struct.pci_device_id { i32 4098, i32 26677, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26679, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26680, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26681, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26683, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26685, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26687, i32 -1, i32 -1, i32 0, i32 0, i32 4194358, i32 0 }, %struct.pci_device_id { i32 4098, i32 26688, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26689, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26690, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26691, i32 -1, i32 -1, i32 0, i32 0, i32 4259888, i32 0 }, %struct.pci_device_id { i32 4098, i32 26697, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26700, i32 -1, i32 -1, i32 0, i32 0, i32 4194357, i32 0 }, %struct.pci_device_id { i32 4098, i32 26704, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26712, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26713, i32 -1, i32 -1, i32 0, i32 0, i32 4194352, i32 0 }, %struct.pci_device_id { i32 4098, i32 26752, i32 -1, i32 -1, i32 0, i32 0, i32 4259882, i32 0 }, %struct.pci_device_id { i32 4098, i32 26760, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26761, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26762, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26764, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26765, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26776, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26777, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26779, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26780, i32 -1, i32 -1, i32 0, i32 0, i32 4194347, i32 0 }, %struct.pci_device_id { i32 4098, i32 26781, i32 -1, i32 -1, i32 0, i32 0, i32 4194347, i32 0 }, %struct.pci_device_id { i32 4098, i32 26782, i32 -1, i32 -1, i32 0, i32 0, i32 4194346, i32 0 }, %struct.pci_device_id { i32 4098, i32 26784, i32 -1, i32 -1, i32 0, i32 0, i32 4259881, i32 0 }, %struct.pci_device_id { i32 4098, i32 26785, i32 -1, i32 -1, i32 0, i32 0, i32 4259881, i32 0 }, %struct.pci_device_id { i32 4098, i32 26792, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26793, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26800, i32 -1, i32 -1, i32 0, i32 0, i32 4259881, i32 0 }, %struct.pci_device_id { i32 4098, i32 26808, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26809, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26810, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26814, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26815, i32 -1, i32 -1, i32 0, i32 0, i32 4194345, i32 0 }, %struct.pci_device_id { i32 4098, i32 26816, i32 -1, i32 -1, i32 0, i32 0, i32 4259880, i32 0 }, %struct.pci_device_id { i32 4098, i32 26817, i32 -1, i32 -1, i32 0, i32 0, i32 4259880, i32 0 }, %struct.pci_device_id { i32 4098, i32 26823, i32 -1, i32 -1, i32 0, i32 0, i32 4259880, i32 0 }, %struct.pci_device_id { i32 4098, i32 26824, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26825, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26840, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26841, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26842, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26846, i32 -1, i32 -1, i32 0, i32 0, i32 4194344, i32 0 }, %struct.pci_device_id { i32 4098, i32 26848, i32 -1, i32 -1, i32 0, i32 0, i32 4259879, i32 0 }, %struct.pci_device_id { i32 4098, i32 26849, i32 -1, i32 -1, i32 0, i32 0, i32 4259879, i32 0 }, %struct.pci_device_id { i32 4098, i32 26852, i32 -1, i32 -1, i32 0, i32 0, i32 4259879, i32 0 }, %struct.pci_device_id { i32 4098, i32 26853, i32 -1, i32 -1, i32 0, i32 0, i32 4259879, i32 0 }, %struct.pci_device_id { i32 4098, i32 26856, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26857, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26865, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26866, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26872, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26873, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26874, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 26878, i32 -1, i32 -1, i32 0, i32 0, i32 4194343, i32 0 }, %struct.pci_device_id { i32 4098, i32 28928, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 4259862, i32 0 }, %struct.pci_device_id { i32 4098, i32 28930, i32 -1, i32 -1, i32 0, i32 0, i32 4259862, i32 0 }, %struct.pci_device_id { i32 4098, i32 28931, i32 -1, i32 -1, i32 0, i32 0, i32 4259862, i32 0 }, %struct.pci_device_id { i32 4098, i32 28932, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28933, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28934, i32 -1, i32 -1, i32 0, i32 0, i32 4259862, i32 0 }, %struct.pci_device_id { i32 4098, i32 28936, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28937, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28938, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28939, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28940, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28942, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28943, i32 -1, i32 -1, i32 0, i32 0, i32 4194326, i32 0 }, %struct.pci_device_id { i32 4098, i32 28992, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 28993, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 28994, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 28995, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 28996, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 28997, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 28998, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 28999, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29001, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29002, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29003, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29004, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29005, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29006, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29007, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29009, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29010, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29011, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29022, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29023, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29056, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29057, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29059, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29062, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29063, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29064, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29066, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29067, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29068, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29069, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29071, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29075, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29078, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29083, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29087, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29120, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29121, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29122, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29123, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29124, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29125, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29126, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29127, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29133, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29134, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29138, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29140, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29141, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29142, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29146, i32 -1, i32 -1, i32 0, i32 0, i32 4194327, i32 0 }, %struct.pci_device_id { i32 4098, i32 29150, i32 -1, i32 -1, i32 0, i32 0, i32 4259863, i32 0 }, %struct.pci_device_id { i32 4098, i32 29184, i32 -1, i32 -1, i32 0, i32 0, i32 4194325, i32 0 }, %struct.pci_device_id { i32 4098, i32 29200, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29201, i32 -1, i32 -1, i32 0, i32 0, i32 4259861, i32 0 }, %struct.pci_device_id { i32 4098, i32 29248, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29251, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29252, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29253, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29254, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29255, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29256, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29257, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29258, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29259, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29260, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29261, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29262, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29263, i32 -1, i32 -1, i32 0, i32 0, i32 4194330, i32 0 }, %struct.pci_device_id { i32 4098, i32 29312, i32 -1, i32 -1, i32 0, i32 0, i32 4194329, i32 0 }, %struct.pci_device_id { i32 4098, i32 29313, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29315, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29316, i32 -1, i32 -1, i32 0, i32 0, i32 4259866, i32 0 }, %struct.pci_device_id { i32 4098, i32 29319, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29320, i32 -1, i32 -1, i32 0, i32 0, i32 4194329, i32 0 }, %struct.pci_device_id { i32 4098, i32 29321, i32 -1, i32 -1, i32 0, i32 0, i32 4194329, i32 0 }, %struct.pci_device_id { i32 4098, i32 29323, i32 -1, i32 -1, i32 0, i32 0, i32 4194329, i32 0 }, %struct.pci_device_id { i32 4098, i32 29324, i32 -1, i32 -1, i32 0, i32 0, i32 4194329, i32 0 }, %struct.pci_device_id { i32 4098, i32 29328, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29329, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29331, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 29335, i32 -1, i32 -1, i32 0, i32 0, i32 4194328, i32 0 }, %struct.pci_device_id { i32 4098, i32 30772, i32 -1, i32 -1, i32 0, i32 0, i32 4325383, i32 0 }, %struct.pci_device_id { i32 4098, i32 30773, i32 -1, i32 -1, i32 0, i32 0, i32 4390919, i32 0 }, %struct.pci_device_id { i32 4098, i32 31006, i32 -1, i32 -1, i32 0, i32 0, i32 21102611, i32 0 }, %struct.pci_device_id { i32 4098, i32 31007, i32 -1, i32 -1, i32 0, i32 0, i32 21102611, i32 0 }, %struct.pci_device_id { i32 4098, i32 31039, i32 -1, i32 -1, i32 0, i32 0, i32 4325394, i32 0 }, %struct.pci_device_id { i32 4098, i32 31041, i32 -1, i32 -1, i32 0, i32 0, i32 4325394, i32 0 }, %struct.pci_device_id { i32 4098, i32 31042, i32 -1, i32 -1, i32 0, i32 0, i32 4325394, i32 0 }, %struct.pci_device_id { i32 4098, i32 31084, i32 -1, i32 -1, i32 0, i32 0, i32 21102612, i32 0 }, %struct.pci_device_id { i32 4098, i32 31085, i32 -1, i32 -1, i32 0, i32 0, i32 21102612, i32 0 }, %struct.pci_device_id { i32 4098, i32 31086, i32 -1, i32 -1, i32 0, i32 0, i32 21102612, i32 0 }, %struct.pci_device_id { i32 4098, i32 31087, i32 -1, i32 -1, i32 0, i32 0, i32 21102612, i32 0 }, %struct.pci_device_id { i32 4098, i32 37888, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37889, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37890, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37891, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37893, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37898, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37899, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 37903, i32 -1, i32 -1, i32 0, i32 0, i32 4194331, i32 0 }, %struct.pci_device_id { i32 4098, i32 38048, i32 -1, i32 -1, i32 0, i32 0, i32 4259878, i32 0 }, %struct.pci_device_id { i32 4098, i32 38049, i32 -1, i32 -1, i32 0, i32 0, i32 4259878, i32 0 }, %struct.pci_device_id { i32 4098, i32 38051, i32 -1, i32 -1, i32 0, i32 0, i32 4259878, i32 0 }, %struct.pci_device_id { i32 4098, i32 38065, i32 -1, i32 -1, i32 0, i32 0, i32 4194342, i32 0 }, %struct.pci_device_id { i32 4098, i32 38067, i32 -1, i32 -1, i32 0, i32 0, i32 4194342, i32 0 }, %struct.pci_device_id { i32 4098, i32 38068, i32 -1, i32 -1, i32 0, i32 0, i32 4194342, i32 0 }, %struct.pci_device_id { i32 4098, i32 38069, i32 -1, i32 -1, i32 0, i32 0, i32 4194342, i32 0 }, %struct.pci_device_id { i32 4098, i32 38073, i32 -1, i32 -1, i32 0, i32 0, i32 4259878, i32 0 }, %struct.pci_device_id { i32 4098, i32 37952, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37953, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37954, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37955, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37956, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37958, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37962, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37963, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37964, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37966, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37968, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37970, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37974, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37978, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37979, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37982, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37984, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37986, i32 -1, i32 -1, i32 0, i32 0, i32 4194339, i32 0 }, %struct.pci_device_id { i32 4098, i32 37994, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 37995, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 38010, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 38011, i32 -1, i32 -1, i32 0, i32 0, i32 4259875, i32 0 }, %struct.pci_device_id { i32 4098, i32 38016, i32 -1, i32 -1, i32 0, i32 0, i32 4259876, i32 0 }, %struct.pci_device_id { i32 4098, i32 38023, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38024, i32 -1, i32 -1, i32 0, i32 0, i32 4259876, i32 0 }, %struct.pci_device_id { i32 4098, i32 38025, i32 -1, i32 -1, i32 0, i32 0, i32 4259876, i32 0 }, %struct.pci_device_id { i32 4098, i32 38026, i32 -1, i32 -1, i32 0, i32 0, i32 4259876, i32 0 }, %struct.pci_device_id { i32 4098, i32 38031, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38032, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38033, i32 -1, i32 -1, i32 0, i32 0, i32 4259876, i32 0 }, %struct.pci_device_id { i32 4098, i32 38037, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38040, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38044, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38046, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38047, i32 -1, i32 -1, i32 0, i32 0, i32 4194340, i32 0 }, %struct.pci_device_id { i32 4098, i32 38080, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38081, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38083, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38084, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38085, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38086, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38087, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38088, i32 -1, i32 -1, i32 0, i32 0, i32 4259868, i32 0 }, %struct.pci_device_id { i32 4098, i32 38089, i32 -1, i32 -1, i32 0, i32 0, i32 4259868, i32 0 }, %struct.pci_device_id { i32 4098, i32 38091, i32 -1, i32 -1, i32 0, i32 0, i32 4259868, i32 0 }, %struct.pci_device_id { i32 4098, i32 38092, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38093, i32 -1, i32 -1, i32 0, i32 0, i32 4194332, i32 0 }, %struct.pci_device_id { i32 4098, i32 38144, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38145, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38148, i32 -1, i32 -1, i32 0, i32 0, i32 4259870, i32 0 }, %struct.pci_device_id { i32 4098, i32 38149, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38150, i32 -1, i32 -1, i32 0, i32 0, i32 4259870, i32 0 }, %struct.pci_device_id { i32 4098, i32 38151, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38152, i32 -1, i32 -1, i32 0, i32 0, i32 4259870, i32 0 }, %struct.pci_device_id { i32 4098, i32 38153, i32 -1, i32 -1, i32 0, i32 0, i32 4259870, i32 0 }, %struct.pci_device_id { i32 4098, i32 38159, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38161, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38165, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38167, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38169, i32 -1, i32 -1, i32 0, i32 0, i32 4194334, i32 0 }, %struct.pci_device_id { i32 4098, i32 38208, i32 -1, i32 -1, i32 0, i32 0, i32 4194341, i32 0 }, %struct.pci_device_id { i32 4098, i32 38209, i32 -1, i32 -1, i32 0, i32 0, i32 4194341, i32 0 }, %struct.pci_device_id { i32 4098, i32 38210, i32 -1, i32 -1, i32 0, i32 0, i32 4194341, i32 0 }, %struct.pci_device_id { i32 4098, i32 38222, i32 -1, i32 -1, i32 0, i32 0, i32 4194341, i32 0 }, %struct.pci_device_id { i32 4098, i32 38223, i32 -1, i32 -1, i32 0, i32 0, i32 4194341, i32 0 }, %struct.pci_device_id { i32 4098, i32 38226, i32 -1, i32 -1, i32 0, i32 0, i32 4259877, i32 0 }, %struct.pci_device_id { i32 4098, i32 38227, i32 -1, i32 -1, i32 0, i32 0, i32 4259877, i32 0 }, %struct.pci_device_id { i32 4098, i32 38229, i32 -1, i32 -1, i32 0, i32 0, i32 4259877, i32 0 }, %struct.pci_device_id { i32 4098, i32 38231, i32 -1, i32 -1, i32 0, i32 0, i32 4259877, i32 0 }, %struct.pci_device_id { i32 4098, i32 38239, i32 -1, i32 -1, i32 0, i32 0, i32 4259877, i32 0 }, %struct.pci_device_id { i32 4098, i32 38272, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38273, i32 -1, i32 -1, i32 0, i32 0, i32 4259869, i32 0 }, %struct.pci_device_id { i32 4098, i32 38275, i32 -1, i32 -1, i32 0, i32 0, i32 4259869, i32 0 }, %struct.pci_device_id { i32 4098, i32 38278, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38279, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38280, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38281, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38282, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38283, i32 -1, i32 -1, i32 0, i32 0, i32 4259869, i32 0 }, %struct.pci_device_id { i32 4098, i32 38284, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38285, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38286, i32 -1, i32 -1, i32 0, i32 0, i32 4194333, i32 0 }, %struct.pci_device_id { i32 4098, i32 38287, i32 -1, i32 -1, i32 0, i32 0, i32 4259869, i32 0 }, %struct.pci_device_id { i32 4098, i32 38288, i32 -1, i32 -1, i32 0, i32 0, i32 4194336, i32 0 }, %struct.pci_device_id { i32 4098, i32 38289, i32 -1, i32 -1, i32 0, i32 0, i32 4259872, i32 0 }, %struct.pci_device_id { i32 4098, i32 38291, i32 -1, i32 -1, i32 0, i32 0, i32 4259872, i32 0 }, %struct.pci_device_id { i32 4098, i32 38293, i32 -1, i32 -1, i32 0, i32 0, i32 4259872, i32 0 }, %struct.pci_device_id { i32 4098, i32 38294, i32 -1, i32 -1, i32 0, i32 0, i32 4194336, i32 0 }, %struct.pci_device_id { i32 4098, i32 38295, i32 -1, i32 -1, i32 0, i32 0, i32 4194336, i32 0 }, %struct.pci_device_id { i32 4098, i32 38296, i32 -1, i32 -1, i32 0, i32 0, i32 4194336, i32 0 }, %struct.pci_device_id { i32 4098, i32 38297, i32 -1, i32 -1, i32 0, i32 0, i32 4194336, i32 0 }, %struct.pci_device_id { i32 4098, i32 38299, i32 -1, i32 -1, i32 0, i32 0, i32 4259872, i32 0 }, %struct.pci_device_id { i32 4098, i32 38336, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38338, i32 -1, i32 -1, i32 0, i32 0, i32 4259871, i32 0 }, %struct.pci_device_id { i32 4098, i32 38340, i32 -1, i32 -1, i32 0, i32 0, i32 4259871, i32 0 }, %struct.pci_device_id { i32 4098, i32 38341, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38342, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38343, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38345, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38348, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38349, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38350, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38351, i32 -1, i32 -1, i32 0, i32 0, i32 4194335, i32 0 }, %struct.pci_device_id { i32 4098, i32 38416, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38417, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38418, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38419, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38420, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38421, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38422, i32 -1, i32 -1, i32 0, i32 0, i32 4325409, i32 0 }, %struct.pci_device_id { i32 4098, i32 38464, i32 -1, i32 -1, i32 0, i32 0, i32 4325421, i32 0 }, %struct.pci_device_id { i32 4098, i32 38465, i32 -1, i32 -1, i32 0, i32 0, i32 4390957, i32 0 }, %struct.pci_device_id { i32 4098, i32 38466, i32 -1, i32 -1, i32 0, i32 0, i32 4325422, i32 0 }, %struct.pci_device_id { i32 4098, i32 38467, i32 -1, i32 -1, i32 0, i32 0, i32 4390958, i32 0 }, %struct.pci_device_id { i32 4098, i32 38468, i32 -1, i32 -1, i32 0, i32 0, i32 4325422, i32 0 }, %struct.pci_device_id { i32 4098, i32 38469, i32 -1, i32 -1, i32 0, i32 0, i32 4390958, i32 0 }, %struct.pci_device_id { i32 4098, i32 38471, i32 -1, i32 -1, i32 0, i32 0, i32 4390957, i32 0 }, %struct.pci_device_id { i32 4098, i32 38472, i32 -1, i32 -1, i32 0, i32 0, i32 4390957, i32 0 }, %struct.pci_device_id { i32 4098, i32 38473, i32 -1, i32 -1, i32 0, i32 0, i32 4390958, i32 0 }, %struct.pci_device_id { i32 4098, i32 38474, i32 -1, i32 -1, i32 0, i32 0, i32 4325421, i32 0 }, %struct.pci_device_id { i32 4098, i32 38475, i32 -1, i32 -1, i32 0, i32 0, i32 4325421, i32 0 }, %struct.pci_device_id { i32 4098, i32 38476, i32 -1, i32 -1, i32 0, i32 0, i32 4325421, i32 0 }, %struct.pci_device_id { i32 4098, i32 38478, i32 -1, i32 -1, i32 0, i32 0, i32 4390957, i32 0 }, %struct.pci_device_id { i32 4098, i32 38479, i32 -1, i32 -1, i32 0, i32 0, i32 4390957, i32 0 }, %struct.pci_device_id { i32 4098, i32 38672, i32 -1, i32 -1, i32 0, i32 0, i32 4325410, i32 0 }, %struct.pci_device_id { i32 4098, i32 38673, i32 -1, i32 -1, i32 0, i32 0, i32 4325410, i32 0 }, %struct.pci_device_id { i32 4098, i32 38674, i32 -1, i32 -1, i32 0, i32 0, i32 4390946, i32 0 }, %struct.pci_device_id { i32 4098, i32 38675, i32 -1, i32 -1, i32 0, i32 0, i32 4390946, i32 0 }, %struct.pci_device_id { i32 4098, i32 38676, i32 -1, i32 -1, i32 0, i32 0, i32 4325410, i32 0 }, %struct.pci_device_id { i32 4098, i32 38677, i32 -1, i32 -1, i32 0, i32 0, i32 4325410, i32 0 }, %struct.pci_device_id { i32 4098, i32 38914, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38915, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38916, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38917, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38918, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38919, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38920, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38921, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38922, i32 -1, i32 -1, i32 0, i32 0, i32 4325420, i32 0 }, %struct.pci_device_id { i32 4098, i32 38960, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38961, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38962, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38963, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38964, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38965, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38966, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38967, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38968, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38969, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38970, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38971, i32 -1, i32 -1, i32 0, i32 0, i32 4390971, i32 0 }, %struct.pci_device_id { i32 4098, i32 38972, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38973, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38974, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38975, i32 -1, i32 -1, i32 0, i32 0, i32 4325435, i32 0 }, %struct.pci_device_id { i32 4098, i32 38992, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38993, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38994, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38995, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38996, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38997, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38998, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 38999, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39000, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39001, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39002, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39003, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39004, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39005, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39006, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39007, i32 -1, i32 -1, i32 0, i32 0, i32 4390973, i32 0 }, %struct.pci_device_id { i32 4098, i32 39168, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39169, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39171, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39172, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39173, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39174, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39175, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39176, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39177, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39178, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39179, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39180, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39181, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39182, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39183, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39184, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39187, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39191, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39192, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39193, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39312, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39313, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39314, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39315, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39316, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39317, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39318, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39319, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39320, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39321, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39322, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39323, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39324, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39325, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id { i32 4098, i32 39328, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39330, i32 -1, i32 -1, i32 0, i32 0, i32 4390963, i32 0 }, %struct.pci_device_id { i32 4098, i32 39332, i32 -1, i32 -1, i32 0, i32 0, i32 4325427, i32 0 }, %struct.pci_device_id zeroinitializer], [5600 x i8] zeroinitializer }, align 32
@radeon_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @radeon_pmops_suspend, ptr @radeon_pmops_resume, ptr @radeon_pmops_freeze, ptr @radeon_pmops_thaw, ptr @radeon_pmops_freeze, ptr @radeon_pmops_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeon_pmops_runtime_suspend, ptr @radeon_pmops_runtime_resume, ptr @radeon_pmops_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@radeon_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SI support disabled by module param\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_drv.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_pci_probe._entry_ptr = internal global ptr @radeon_pci_probe._entry, section ".printk_index", align 4
@radeon_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIK support disabled by module param\0A\00", [58 x i8] zeroinitializer }, align 32
@radeon_pci_probe._entry_ptr.8 = internal global ptr @radeon_pci_probe._entry.6, section ".printk_index", align 4
@kms_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr @radeon_driver_load_kms, ptr @radeon_driver_open_kms, ptr @radeon_driver_postclose_kms, ptr @radeon_driver_lastclose_kms, ptr @radeon_driver_unload_kms, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @radeon_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @radeon_mode_dumb_create, ptr @radeon_mode_dumb_mmap, ptr null, i32 2, i32 50, i32 0, ptr @.str, ptr @.str.9, ptr @.str.10, i32 11, ptr @radeon_ioctls_kms, i32 46, ptr @radeon_driver_kms_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ATI Radeon\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20080528\00", [23 x i8] zeroinitializer }, align 32
@radeon_ioctls_kms = internal constant { [46 x %struct.drm_ioctl_desc], [160 x i8] } { [46 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1079272512, i32 7, ptr @drm_invalid_op, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 25665, i32 7, ptr @drm_invalid_op, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 1074291778, i32 7, ptr @drm_invalid_op, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 25667, i32 7, ptr @drm_invalid_op, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 25668, i32 1, ptr @drm_invalid_op, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 25669, i32 1, ptr @drm_invalid_op, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 1074029638, i32 1, ptr @drm_invalid_op, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 25671, i32 1, ptr @drm_invalid_op, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 1075340360, i32 1, ptr @drm_invalid_op, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 1074816073, i32 1, ptr @drm_invalid_op, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 1075078218, i32 1, ptr @drm_invalid_op, ptr @.str.21 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 1074029644, i32 1, ptr @drm_invalid_op, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 -1072667571, i32 7, ptr @drm_invalid_op, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 -1072143282, i32 1, ptr @drm_invalid_op, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 1075340367, i32 1, ptr @drm_invalid_op, ptr @.str.25 }, %struct.drm_ioctl_desc { i32 1074816080, i32 1, ptr @drm_invalid_op, ptr @.str.26 }, %struct.drm_ioctl_desc { i32 -1073191855, i32 1, ptr @drm_invalid_op, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 25682, i32 1, ptr @drm_invalid_op, ptr @.str.28 }, %struct.drm_ioctl_desc { i32 -1072667565, i32 1, ptr @drm_invalid_op, ptr @.str.29 }, %struct.drm_ioctl_desc { i32 1074291796, i32 1, ptr @drm_invalid_op, ptr @.str.30 }, %struct.drm_ioctl_desc { i32 1074553941, i32 7, ptr @drm_invalid_op, ptr @.str.31 }, %struct.drm_ioctl_desc { i32 -1073453994, i32 1, ptr @drm_invalid_op, ptr @.str.32 }, %struct.drm_ioctl_desc { i32 1074029655, i32 1, ptr @drm_invalid_op, ptr @.str.33 }, %struct.drm_ioctl_desc { i32 25688, i32 1, ptr @drm_invalid_op, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 1074816089, i32 1, ptr @drm_invalid_op, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 1074553946, i32 1, ptr @drm_invalid_op, ptr @.str.36 }, %struct.drm_ioctl_desc { i32 1074029659, i32 1, ptr @drm_invalid_op, ptr @.str.37 }, %struct.drm_ioctl_desc { i32 -1072143268, i32 33, ptr @radeon_gem_info_ioctl, ptr @.str.38 }, %struct.drm_ioctl_desc { i32 -1071618979, i32 33, ptr @radeon_gem_create_ioctl, ptr @.str.39 }, %struct.drm_ioctl_desc { i32 -1071618978, i32 33, ptr @radeon_gem_mmap_ioctl, ptr @.str.40 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1071618975, i32 1, ptr @radeon_gem_pread_ioctl, ptr @.str.41 }, %struct.drm_ioctl_desc { i32 -1071618974, i32 1, ptr @radeon_gem_pwrite_ioctl, ptr @.str.42 }, %struct.drm_ioctl_desc { i32 -1072929693, i32 33, ptr @radeon_gem_set_domain_ioctl, ptr @.str.43 }, %struct.drm_ioctl_desc { i32 1074291812, i32 33, ptr @radeon_gem_wait_idle_ioctl, ptr @.str.44 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1071618970, i32 33, ptr @radeon_cs_ioctl, ptr @.str.45 }, %struct.drm_ioctl_desc { i32 -1072667545, i32 33, ptr @radeon_info_ioctl, ptr @.str.46 }, %struct.drm_ioctl_desc { i32 -1072929688, i32 33, ptr @radeon_gem_set_tiling_ioctl, ptr @.str.47 }, %struct.drm_ioctl_desc { i32 -1072929687, i32 33, ptr @radeon_gem_get_tiling_ioctl, ptr @.str.48 }, %struct.drm_ioctl_desc { i32 -1073191830, i32 33, ptr @radeon_gem_busy_ioctl, ptr @.str.49 }, %struct.drm_ioctl_desc { i32 -1072143253, i32 33, ptr @radeon_gem_va_ioctl, ptr @.str.50 }, %struct.drm_ioctl_desc { i32 -1072667540, i32 33, ptr @radeon_gem_op_ioctl, ptr @.str.51 }, %struct.drm_ioctl_desc { i32 -1072143251, i32 33, ptr @radeon_gem_userptr_ioctl, ptr @.str.52 }], [160 x i8] zeroinitializer }, align 32
@radeon_driver_kms_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @radeon_drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_CP_INIT\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_CP_START\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_CP_STOP\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_CP_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_CP_IDLE\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RADEON_RESET\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RADEON_FULLSCREEN\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RADEON_SWAP\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RADEON_CLEAR\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RADEON_VERTEX\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_INDICES\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_STIPPLE\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_INDIRECT\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_TEXTURE\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RADEON_VERTEX2\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RADEON_CMDBUF\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_GETPARAM\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RADEON_FLIP\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RADEON_ALLOC\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RADEON_FREE\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RADEON_INIT_HEAP\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_IRQ_EMIT\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_IRQ_WAIT\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RADEON_CP_RESUME\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_SETPARAM\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RADEON_SURF_ALLOC\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RADEON_SURF_FREE\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_GEM_INFO\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RADEON_GEM_CREATE\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_GEM_MMAP\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RADEON_GEM_PREAD\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RADEON_GEM_PWRITE\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RADEON_GEM_SET_DOMAIN\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RADEON_GEM_WAIT_IDLE\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RADEON_CS\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RADEON_INFO\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RADEON_GEM_SET_TILING\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RADEON_GEM_GET_TILING\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RADEON_GEM_BUSY\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RADEON_GEM_VA\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RADEON_GEM_OP\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RADEON_GEM_USERPTR\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failing to power off - crtc active\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016[drm] radeon kernel modesetting enabled.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_module_init\00", [45 x i8] zeroinitializer }, align 32
@radeon_module_init._entry_ptr = internal global ptr @radeon_module_init._entry, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"radeon_modeset\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 147, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"radeon_dynclks\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 148, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"radeon_r4xx_atom\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 149, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"radeon_agpmode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 150, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"radeon_vram_limit\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 151, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"radeon_gart_size\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 152, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"radeon_benchmarking\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 153, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"radeon_testing\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 154, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"radeon_connector_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 155, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"radeon_tv\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 156, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"radeon_audio\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 157, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"radeon_disp_priority\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 158, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"radeon_hw_i2c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 159, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"radeon_pcie_gen2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 160, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"radeon_msi\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 161, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"radeon_lockup_timeout\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 162, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"radeon_fastfb\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 163, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"radeon_dpm\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 164, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"radeon_aspm\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 165, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"radeon_runtime_pm\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 166, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"radeon_hard_reset\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 167, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"radeon_vm_size\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 168, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"radeon_vm_block_size\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 169, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"radeon_deep_color\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 170, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"radeon_use_pflipirq\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 171, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"radeon_bapm\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 172, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"radeon_backlight\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 173, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"radeon_auxch\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 174, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"radeon_mst\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 175, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"radeon_uvd\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 176, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"radeon_vce\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 177, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"radeon_no_wb\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 146, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"radeon_si_support\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 275, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"radeon_cik_support\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 279, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"radeon_kms_pci_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 628, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 629, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant [10 x i8] c"pciidlist\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 283, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"radeon_pm_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 530, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 310, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 322, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"kms_driver\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 601, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 621, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 622, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"radeon_ioctls_kms\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 555, i32 36 }
@___asan_gen_.206 = private unnamed_addr constant [23 x i8] c"radeon_driver_kms_fops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 542, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 556, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 557, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 558, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 559, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 560, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 562, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 563, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 564, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 565, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 566, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 567, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 569, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 570, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 568, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 571, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 572, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 573, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 574, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 575, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 576, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 577, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 578, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 579, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 561, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 580, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 581, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 582, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 584, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 585, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 586, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 588, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 589, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 587, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 590, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 591, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 592, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 593, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 594, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 595, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 596, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 597, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 598, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 484, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_drv.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 645, i32 2 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_agpmode335, ptr @__UNIQUE_ID_agpmodetype336, ptr @__UNIQUE_ID_aspm363, ptr @__UNIQUE_ID_aspmtype364, ptr @__UNIQUE_ID_audio347, ptr @__UNIQUE_ID_audiotype348, ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_auxch381, ptr @__UNIQUE_ID_auxchtype382, ptr @__UNIQUE_ID_backlight379, ptr @__UNIQUE_ID_backlighttype380, ptr @__UNIQUE_ID_bapm377, ptr @__UNIQUE_ID_bapmtype378, ptr @__UNIQUE_ID_benchmark339, ptr @__UNIQUE_ID_benchmarktype340, ptr @__UNIQUE_ID_cik_support391, ptr @__UNIQUE_ID_cik_supporttype392, ptr @__UNIQUE_ID_connector_table343, ptr @__UNIQUE_ID_connector_tabletype344, ptr @__UNIQUE_ID_deep_color373, ptr @__UNIQUE_ID_deep_colortype374, ptr @__UNIQUE_ID_description395, ptr @__UNIQUE_ID_disp_priority349, ptr @__UNIQUE_ID_disp_prioritytype350, ptr @__UNIQUE_ID_dpm361, ptr @__UNIQUE_ID_dpmtype362, ptr @__UNIQUE_ID_dynclks329, ptr @__UNIQUE_ID_dynclkstype330, ptr @__UNIQUE_ID_fastfb359, ptr @__UNIQUE_ID_fastfbtype360, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_gartsize337, ptr @__UNIQUE_ID_gartsizetype338, ptr @__UNIQUE_ID_hard_reset367, ptr @__UNIQUE_ID_hard_resettype368, ptr @__UNIQUE_ID_hw_i2c351, ptr @__UNIQUE_ID_hw_i2ctype352, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_lockup_timeout357, ptr @__UNIQUE_ID_lockup_timeouttype358, ptr @__UNIQUE_ID_modeset327, ptr @__UNIQUE_ID_modesettype328, ptr @__UNIQUE_ID_msi355, ptr @__UNIQUE_ID_msitype356, ptr @__UNIQUE_ID_mst383, ptr @__UNIQUE_ID_msttype384, ptr @__UNIQUE_ID_no_wb325, ptr @__UNIQUE_ID_no_wbtype326, ptr @__UNIQUE_ID_pcie_gen2353, ptr @__UNIQUE_ID_pcie_gen2type354, ptr @__UNIQUE_ID_r4xx_atom331, ptr @__UNIQUE_ID_r4xx_atomtype332, ptr @__UNIQUE_ID_runpm365, ptr @__UNIQUE_ID_runpmtype366, ptr @__UNIQUE_ID_si_support389, ptr @__UNIQUE_ID_si_supporttype390, ptr @__UNIQUE_ID_test341, ptr @__UNIQUE_ID_testtype342, ptr @__UNIQUE_ID_tv345, ptr @__UNIQUE_ID_tvtype346, ptr @__UNIQUE_ID_use_pflipirq375, ptr @__UNIQUE_ID_use_pflipirqtype376, ptr @__UNIQUE_ID_uvd385, ptr @__UNIQUE_ID_uvdtype386, ptr @__UNIQUE_ID_vce387, ptr @__UNIQUE_ID_vcetype388, ptr @__UNIQUE_ID_vm_block_size371, ptr @__UNIQUE_ID_vm_block_sizetype372, ptr @__UNIQUE_ID_vm_size369, ptr @__UNIQUE_ID_vm_sizetype370, ptr @__UNIQUE_ID_vramlimit333, ptr @__UNIQUE_ID_vramlimittype334, ptr @__exitcall_radeon_module_exit, ptr @__initcall__kmod_radeon__393_658_radeon_module_init6, ptr @__param_agpmode, ptr @__param_aspm, ptr @__param_audio, ptr @__param_auxch, ptr @__param_backlight, ptr @__param_bapm, ptr @__param_benchmark, ptr @__param_cik_support, ptr @__param_connector_table, ptr @__param_deep_color, ptr @__param_disp_priority, ptr @__param_dpm, ptr @__param_dynclks, ptr @__param_fastfb, ptr @__param_gartsize, ptr @__param_hard_reset, ptr @__param_hw_i2c, ptr @__param_lockup_timeout, ptr @__param_modeset, ptr @__param_msi, ptr @__param_mst, ptr @__param_no_wb, ptr @__param_pcie_gen2, ptr @__param_r4xx_atom, ptr @__param_runpm, ptr @__param_si_support, ptr @__param_test, ptr @__param_tv, ptr @__param_use_pflipirq, ptr @__param_uvd, ptr @__param_vce, ptr @__param_vm_block_size, ptr @__param_vm_size, ptr @__param_vramlimit, ptr @radeon_module_exit, ptr @radeon_module_init._entry, ptr @radeon_module_init._entry_ptr, ptr @radeon_pci_probe._entry, ptr @radeon_pci_probe._entry.6, ptr @radeon_pci_probe._entry_ptr, ptr @radeon_pci_probe._entry_ptr.8, ptr @radeon_modeset, ptr @radeon_dynclks, ptr @radeon_r4xx_atom, ptr @radeon_agpmode, ptr @radeon_vram_limit, ptr @radeon_gart_size, ptr @radeon_benchmarking, ptr @radeon_testing, ptr @radeon_connector_table, ptr @radeon_tv, ptr @radeon_audio, ptr @radeon_disp_priority, ptr @radeon_hw_i2c, ptr @radeon_pcie_gen2, ptr @radeon_msi, ptr @radeon_lockup_timeout, ptr @radeon_fastfb, ptr @radeon_dpm, ptr @radeon_aspm, ptr @radeon_runtime_pm, ptr @radeon_hard_reset, ptr @radeon_vm_size, ptr @radeon_vm_block_size, ptr @radeon_deep_color, ptr @radeon_use_pflipirq, ptr @radeon_bapm, ptr @radeon_backlight, ptr @radeon_auxch, ptr @radeon_mst, ptr @radeon_uvd, ptr @radeon_vce, ptr @radeon_no_wb, ptr @radeon_si_support, ptr @radeon_cik_support, ptr @radeon_kms_pci_driver, ptr @.str, ptr @pciidlist, ptr @radeon_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @kms_driver, ptr @.str.9, ptr @.str.10, ptr @radeon_ioctls_kms, ptr @radeon_driver_kms_fops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dynclks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_r4xx_atom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_agpmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vram_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gart_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_benchmarking to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_testing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_connector_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_tv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_disp_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_hw_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pcie_gen2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_lockup_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fastfb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dpm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_aspm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_runtime_pm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_hard_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_block_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_deep_color to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_use_pflipirq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bapm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_auxch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_mst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_no_wb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_si_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_cik_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_kms_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciidlist to i32), i32 22400, i32 28000, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kms_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ioctls_kms to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_driver_kms_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_drm_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @drm_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #4
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @radeon_module_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @radeon_kms_pci_driver) #4
  tail call void @mmu_notifier_synchronize() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmu_notifier_synchronize() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_module_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #4
  %0 = load i32, ptr @radeon_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %or.cond = select i1 %call, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @radeon_modeset, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  %call5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @radeon_kms_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %call5, %do.end ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pci_probe(ptr noundef %pdev, ptr noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ent, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = load i32, ptr @radeon_si_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %trunc = trunc i32 %1 to i16
  %trunc.off = add i16 %trunc, -52
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %trunc.off)
  %switch = icmp ult i16 %trunc.off, 5
  %or.cond = select i1 %tobool1.not, i1 %switch, i1 false
  br i1 %or.cond, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr @radeon_cik_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  %trunc56.off = add i16 %trunc, -57
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %trunc56.off)
  %switch57 = icmp ult i16 %trunc56.off, 5
  %or.cond58 = select i1 %tobool5.not, i1 %switch57, i1 false
  br i1 %or.cond58, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call17 = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @kms_driver) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call22 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @kms_driver, ptr noundef %dev21) #4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = tail call i32 @pci_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_free_crit_edge

if.end26.err_free_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

if.end30:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %call32 = tail call i32 @drm_dev_register(ptr noundef %call22, i32 noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %err_agp

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_agp:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_disable_device(ptr noundef %pdev) #4
  br label %err_free

err_free:                                         ; preds = %err_agp, %if.end26.err_free_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.err_free_crit_edge ], [ %call32, %err_agp ]
  tail call void @drm_dev_put(ptr noundef %call22) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end30.cleanup_crit_edge, %if.then24, %if.end14.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then24 ], [ %ret.0, %err_free ], [ -19, %do.end11 ], [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_put_dev(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_pci_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @radeon_device_is_virtual() #4
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @drm_put_dev(ptr noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_driver_load_kms(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_driver_open_kms(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_driver_postclose_kms(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_driver_lastclose_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_driver_unload_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_mode_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_mode_dumb_mmap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_invalid_op(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_info_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_mmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_pread_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_pwrite_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_set_domain_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_wait_idle_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_info_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_set_tiling_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_get_tiling_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_busy_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_va_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_op_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_userptr_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_device_is_virtual() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @radeon_suspend_kms(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @radeon_is_px(ptr noundef %1) #4
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @radeon_resume_kms(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @radeon_suspend_kms(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_thaw(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @radeon_resume_kms(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call zeroext i1 @radeon_is_px(ptr noundef %1) #4
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_runtime_forbid(ptr noundef %dev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %switch_power_state, align 4
  tail call void @drm_kms_helper_poll_disable(ptr noundef %1) #4
  %call2 = tail call i32 @radeon_suspend_kms(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call3 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #4
  tail call void @pci_disable_device(ptr noundef %add.ptr) #4
  tail call void @pci_ignore_hotplug(ptr noundef %add.ptr) #4
  %call9 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #4
  %3 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %switch_power_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call zeroext i1 @radeon_is_px(ptr noundef %1) #4
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %switch_power_state, align 4
  %call5 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #4
  tail call void @pci_restore_state(ptr noundef %add.ptr) #4
  %call7 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_set_master(ptr noundef %add.ptr) #4
  %call10 = tail call i32 @radeon_resume_kms(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @drm_kms_helper_poll_enable(ptr noundef %1) #4
  %3 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %switch_power_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_pmops_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @radeon_is_px(ptr noundef %1) #4
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_runtime_forbid(ptr noundef %dev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %crtc_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %enabled = getelementptr i8, ptr %.pn, i32 160
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 8, !range !413
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then4

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53) #4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 8) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  %retval.0 = phi i32 [ -16, %if.then4 ], [ 1, %for.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_suspend_kms(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_is_px(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_resume_kms(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ignore_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !86, !87, !89, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !111, !112, !114, !116, !117, !119, !121, !122, !124, !126, !127, !129, !131, !132, !134, !136, !137, !139, !141, !142, !144, !146, !147, !149, !151, !152, !154, !156, !157, !159, !161, !162, !164, !166, !167, !169, !171, !172, !174, !176, !177, !179, !181, !182, !184, !186, !187, !189, !191, !192, !194, !196, !197, !199, !201, !202, !204, !206, !207, !209, !211, !212, !214, !216, !217, !219, !221, !222, !224, !226, !228, !229, !231, !233, !235, !236, !238, !240, !242, !244, !246, !247, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !287, !289, !291, !292, !293, !294, !295, !296, !297, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !402, !403}
!llvm.module.flags = !{!404, !405, !406, !407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !{ptr @radeon_modeset, !1, !"radeon_modeset", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 147, i32 5}
!2 = !{ptr @radeon_dynclks, !3, !"radeon_dynclks", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 148, i32 5}
!4 = !{ptr @radeon_r4xx_atom, !5, !"radeon_r4xx_atom", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 149, i32 5}
!6 = !{ptr @radeon_agpmode, !7, !"radeon_agpmode", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 150, i32 5}
!8 = !{ptr @radeon_vram_limit, !9, !"radeon_vram_limit", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 151, i32 5}
!10 = !{ptr @radeon_gart_size, !11, !"radeon_gart_size", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 152, i32 5}
!12 = !{ptr @radeon_benchmarking, !13, !"radeon_benchmarking", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 153, i32 5}
!14 = !{ptr @radeon_testing, !15, !"radeon_testing", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 154, i32 5}
!16 = !{ptr @radeon_connector_table, !17, !"radeon_connector_table", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 155, i32 5}
!18 = !{ptr @radeon_tv, !19, !"radeon_tv", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 156, i32 5}
!20 = !{ptr @radeon_audio, !21, !"radeon_audio", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 157, i32 5}
!22 = !{ptr @radeon_disp_priority, !23, !"radeon_disp_priority", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 158, i32 5}
!24 = !{ptr @radeon_hw_i2c, !25, !"radeon_hw_i2c", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 159, i32 5}
!26 = !{ptr @radeon_pcie_gen2, !27, !"radeon_pcie_gen2", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 160, i32 5}
!28 = !{ptr @radeon_msi, !29, !"radeon_msi", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 161, i32 5}
!30 = !{ptr @radeon_lockup_timeout, !31, !"radeon_lockup_timeout", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 162, i32 5}
!32 = !{ptr @radeon_fastfb, !33, !"radeon_fastfb", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 163, i32 5}
!34 = !{ptr @radeon_dpm, !35, !"radeon_dpm", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 164, i32 5}
!36 = !{ptr @radeon_aspm, !37, !"radeon_aspm", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 165, i32 5}
!38 = !{ptr @radeon_runtime_pm, !39, !"radeon_runtime_pm", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 166, i32 5}
!40 = !{ptr @radeon_hard_reset, !41, !"radeon_hard_reset", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 167, i32 5}
!42 = !{ptr @radeon_vm_size, !43, !"radeon_vm_size", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 168, i32 5}
!44 = !{ptr @radeon_vm_block_size, !45, !"radeon_vm_block_size", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 169, i32 5}
!46 = !{ptr @radeon_deep_color, !47, !"radeon_deep_color", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 170, i32 5}
!48 = !{ptr @radeon_use_pflipirq, !49, !"radeon_use_pflipirq", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 171, i32 5}
!50 = !{ptr @radeon_bapm, !51, !"radeon_bapm", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 172, i32 5}
!52 = !{ptr @radeon_backlight, !53, !"radeon_backlight", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 173, i32 5}
!54 = !{ptr @radeon_auxch, !55, !"radeon_auxch", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 174, i32 5}
!56 = !{ptr @radeon_mst, !57, !"radeon_mst", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 175, i32 5}
!58 = !{ptr @radeon_uvd, !59, !"radeon_uvd", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 176, i32 5}
!60 = !{ptr @radeon_vce, !61, !"radeon_vce", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 177, i32 5}
!62 = !{ptr @__UNIQUE_ID_no_wb325, !63, !"__UNIQUE_ID_no_wb325", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 179, i32 1}
!64 = !{ptr @__param_no_wb, !65, !"__param_no_wb", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 180, i32 1}
!66 = !{ptr @__UNIQUE_ID_no_wbtype326, !65, !"__UNIQUE_ID_no_wbtype326", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_modeset327, !68, !"__UNIQUE_ID_modeset327", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 182, i32 1}
!69 = !{ptr @__param_modeset, !70, !"__param_modeset", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 183, i32 1}
!71 = !{ptr @__UNIQUE_ID_modesettype328, !70, !"__UNIQUE_ID_modesettype328", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_dynclks329, !73, !"__UNIQUE_ID_dynclks329", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 185, i32 1}
!74 = !{ptr @__param_dynclks, !75, !"__param_dynclks", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 186, i32 1}
!76 = !{ptr @__UNIQUE_ID_dynclkstype330, !75, !"__UNIQUE_ID_dynclkstype330", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_r4xx_atom331, !78, !"__UNIQUE_ID_r4xx_atom331", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 188, i32 1}
!79 = !{ptr @__param_r4xx_atom, !80, !"__param_r4xx_atom", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 189, i32 1}
!81 = !{ptr @__UNIQUE_ID_r4xx_atomtype332, !80, !"__UNIQUE_ID_r4xx_atomtype332", i1 false, i1 false}
!82 = !{ptr @__UNIQUE_ID_vramlimit333, !83, !"__UNIQUE_ID_vramlimit333", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 191, i32 1}
!84 = !{ptr @__param_vramlimit, !85, !"__param_vramlimit", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 192, i32 1}
!86 = !{ptr @__UNIQUE_ID_vramlimittype334, !85, !"__UNIQUE_ID_vramlimittype334", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_agpmode335, !88, !"__UNIQUE_ID_agpmode335", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 194, i32 1}
!89 = !{ptr @__param_agpmode, !90, !"__param_agpmode", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 195, i32 1}
!91 = !{ptr @__UNIQUE_ID_agpmodetype336, !90, !"__UNIQUE_ID_agpmodetype336", i1 false, i1 false}
!92 = !{ptr @__UNIQUE_ID_gartsize337, !93, !"__UNIQUE_ID_gartsize337", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 197, i32 1}
!94 = !{ptr @__param_gartsize, !95, !"__param_gartsize", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 198, i32 1}
!96 = !{ptr @__UNIQUE_ID_gartsizetype338, !95, !"__UNIQUE_ID_gartsizetype338", i1 false, i1 false}
!97 = !{ptr @__UNIQUE_ID_benchmark339, !98, !"__UNIQUE_ID_benchmark339", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 200, i32 1}
!99 = !{ptr @__param_benchmark, !100, !"__param_benchmark", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 201, i32 1}
!101 = !{ptr @__UNIQUE_ID_benchmarktype340, !100, !"__UNIQUE_ID_benchmarktype340", i1 false, i1 false}
!102 = !{ptr @__UNIQUE_ID_test341, !103, !"__UNIQUE_ID_test341", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 203, i32 1}
!104 = !{ptr @__param_test, !105, !"__param_test", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 204, i32 1}
!106 = !{ptr @__UNIQUE_ID_testtype342, !105, !"__UNIQUE_ID_testtype342", i1 false, i1 false}
!107 = !{ptr @__UNIQUE_ID_connector_table343, !108, !"__UNIQUE_ID_connector_table343", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 206, i32 1}
!109 = !{ptr @__param_connector_table, !110, !"__param_connector_table", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 207, i32 1}
!111 = !{ptr @__UNIQUE_ID_connector_tabletype344, !110, !"__UNIQUE_ID_connector_tabletype344", i1 false, i1 false}
!112 = !{ptr @__UNIQUE_ID_tv345, !113, !"__UNIQUE_ID_tv345", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 209, i32 1}
!114 = !{ptr @__param_tv, !115, !"__param_tv", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 210, i32 1}
!116 = !{ptr @__UNIQUE_ID_tvtype346, !115, !"__UNIQUE_ID_tvtype346", i1 false, i1 false}
!117 = !{ptr @__UNIQUE_ID_audio347, !118, !"__UNIQUE_ID_audio347", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 212, i32 1}
!119 = !{ptr @__param_audio, !120, !"__param_audio", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 213, i32 1}
!121 = !{ptr @__UNIQUE_ID_audiotype348, !120, !"__UNIQUE_ID_audiotype348", i1 false, i1 false}
!122 = !{ptr @__UNIQUE_ID_disp_priority349, !123, !"__UNIQUE_ID_disp_priority349", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 215, i32 1}
!124 = !{ptr @__param_disp_priority, !125, !"__param_disp_priority", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 216, i32 1}
!126 = !{ptr @__UNIQUE_ID_disp_prioritytype350, !125, !"__UNIQUE_ID_disp_prioritytype350", i1 false, i1 false}
!127 = !{ptr @__UNIQUE_ID_hw_i2c351, !128, !"__UNIQUE_ID_hw_i2c351", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 218, i32 1}
!129 = !{ptr @__param_hw_i2c, !130, !"__param_hw_i2c", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 219, i32 1}
!131 = !{ptr @__UNIQUE_ID_hw_i2ctype352, !130, !"__UNIQUE_ID_hw_i2ctype352", i1 false, i1 false}
!132 = !{ptr @__UNIQUE_ID_pcie_gen2353, !133, !"__UNIQUE_ID_pcie_gen2353", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 221, i32 1}
!134 = !{ptr @__param_pcie_gen2, !135, !"__param_pcie_gen2", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 222, i32 1}
!136 = !{ptr @__UNIQUE_ID_pcie_gen2type354, !135, !"__UNIQUE_ID_pcie_gen2type354", i1 false, i1 false}
!137 = !{ptr @__UNIQUE_ID_msi355, !138, !"__UNIQUE_ID_msi355", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 224, i32 1}
!139 = !{ptr @__param_msi, !140, !"__param_msi", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 225, i32 1}
!141 = !{ptr @__UNIQUE_ID_msitype356, !140, !"__UNIQUE_ID_msitype356", i1 false, i1 false}
!142 = !{ptr @__UNIQUE_ID_lockup_timeout357, !143, !"__UNIQUE_ID_lockup_timeout357", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 227, i32 1}
!144 = !{ptr @__param_lockup_timeout, !145, !"__param_lockup_timeout", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 228, i32 1}
!146 = !{ptr @__UNIQUE_ID_lockup_timeouttype358, !145, !"__UNIQUE_ID_lockup_timeouttype358", i1 false, i1 false}
!147 = !{ptr @__UNIQUE_ID_fastfb359, !148, !"__UNIQUE_ID_fastfb359", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 230, i32 1}
!149 = !{ptr @__param_fastfb, !150, !"__param_fastfb", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 231, i32 1}
!151 = !{ptr @__UNIQUE_ID_fastfbtype360, !150, !"__UNIQUE_ID_fastfbtype360", i1 false, i1 false}
!152 = !{ptr @__UNIQUE_ID_dpm361, !153, !"__UNIQUE_ID_dpm361", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 233, i32 1}
!154 = !{ptr @__param_dpm, !155, !"__param_dpm", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 234, i32 1}
!156 = !{ptr @__UNIQUE_ID_dpmtype362, !155, !"__UNIQUE_ID_dpmtype362", i1 false, i1 false}
!157 = !{ptr @__UNIQUE_ID_aspm363, !158, !"__UNIQUE_ID_aspm363", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 236, i32 1}
!159 = !{ptr @__param_aspm, !160, !"__param_aspm", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 237, i32 1}
!161 = !{ptr @__UNIQUE_ID_aspmtype364, !160, !"__UNIQUE_ID_aspmtype364", i1 false, i1 false}
!162 = !{ptr @__UNIQUE_ID_runpm365, !163, !"__UNIQUE_ID_runpm365", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 239, i32 1}
!164 = !{ptr @__param_runpm, !165, !"__param_runpm", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 240, i32 1}
!166 = !{ptr @__UNIQUE_ID_runpmtype366, !165, !"__UNIQUE_ID_runpmtype366", i1 false, i1 false}
!167 = !{ptr @__UNIQUE_ID_hard_reset367, !168, !"__UNIQUE_ID_hard_reset367", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 242, i32 1}
!169 = !{ptr @__param_hard_reset, !170, !"__param_hard_reset", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 243, i32 1}
!171 = !{ptr @__UNIQUE_ID_hard_resettype368, !170, !"__UNIQUE_ID_hard_resettype368", i1 false, i1 false}
!172 = !{ptr @__UNIQUE_ID_vm_size369, !173, !"__UNIQUE_ID_vm_size369", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 245, i32 1}
!174 = !{ptr @__param_vm_size, !175, !"__param_vm_size", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 246, i32 1}
!176 = !{ptr @__UNIQUE_ID_vm_sizetype370, !175, !"__UNIQUE_ID_vm_sizetype370", i1 false, i1 false}
!177 = !{ptr @__UNIQUE_ID_vm_block_size371, !178, !"__UNIQUE_ID_vm_block_size371", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 248, i32 1}
!179 = !{ptr @__param_vm_block_size, !180, !"__param_vm_block_size", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 249, i32 1}
!181 = !{ptr @__UNIQUE_ID_vm_block_sizetype372, !180, !"__UNIQUE_ID_vm_block_sizetype372", i1 false, i1 false}
!182 = !{ptr @__UNIQUE_ID_deep_color373, !183, !"__UNIQUE_ID_deep_color373", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 251, i32 1}
!184 = !{ptr @__param_deep_color, !185, !"__param_deep_color", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 252, i32 1}
!186 = !{ptr @__UNIQUE_ID_deep_colortype374, !185, !"__UNIQUE_ID_deep_colortype374", i1 false, i1 false}
!187 = !{ptr @__UNIQUE_ID_use_pflipirq375, !188, !"__UNIQUE_ID_use_pflipirq375", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 254, i32 1}
!189 = !{ptr @__param_use_pflipirq, !190, !"__param_use_pflipirq", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 255, i32 1}
!191 = !{ptr @__UNIQUE_ID_use_pflipirqtype376, !190, !"__UNIQUE_ID_use_pflipirqtype376", i1 false, i1 false}
!192 = !{ptr @__UNIQUE_ID_bapm377, !193, !"__UNIQUE_ID_bapm377", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 257, i32 1}
!194 = !{ptr @__param_bapm, !195, !"__param_bapm", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 258, i32 1}
!196 = !{ptr @__UNIQUE_ID_bapmtype378, !195, !"__UNIQUE_ID_bapmtype378", i1 false, i1 false}
!197 = !{ptr @__UNIQUE_ID_backlight379, !198, !"__UNIQUE_ID_backlight379", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 260, i32 1}
!199 = !{ptr @__param_backlight, !200, !"__param_backlight", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 261, i32 1}
!201 = !{ptr @__UNIQUE_ID_backlighttype380, !200, !"__UNIQUE_ID_backlighttype380", i1 false, i1 false}
!202 = !{ptr @__UNIQUE_ID_auxch381, !203, !"__UNIQUE_ID_auxch381", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 263, i32 1}
!204 = !{ptr @__param_auxch, !205, !"__param_auxch", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 264, i32 1}
!206 = !{ptr @__UNIQUE_ID_auxchtype382, !205, !"__UNIQUE_ID_auxchtype382", i1 false, i1 false}
!207 = !{ptr @__UNIQUE_ID_mst383, !208, !"__UNIQUE_ID_mst383", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 266, i32 1}
!209 = !{ptr @__param_mst, !210, !"__param_mst", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 267, i32 1}
!211 = !{ptr @__UNIQUE_ID_msttype384, !210, !"__UNIQUE_ID_msttype384", i1 false, i1 false}
!212 = !{ptr @__UNIQUE_ID_uvd385, !213, !"__UNIQUE_ID_uvd385", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 269, i32 1}
!214 = !{ptr @__param_uvd, !215, !"__param_uvd", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 270, i32 1}
!216 = !{ptr @__UNIQUE_ID_uvdtype386, !215, !"__UNIQUE_ID_uvdtype386", i1 false, i1 false}
!217 = !{ptr @__UNIQUE_ID_vce387, !218, !"__UNIQUE_ID_vce387", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 272, i32 1}
!219 = !{ptr @__param_vce, !220, !"__param_vce", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 273, i32 1}
!221 = !{ptr @__UNIQUE_ID_vcetype388, !220, !"__UNIQUE_ID_vcetype388", i1 false, i1 false}
!222 = !{ptr @radeon_si_support, !223, !"radeon_si_support", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 275, i32 5}
!224 = !{ptr @__UNIQUE_ID_si_support389, !225, !"__UNIQUE_ID_si_support389", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 276, i32 1}
!226 = !{ptr @__param_si_support, !227, !"__param_si_support", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 277, i32 1}
!228 = !{ptr @__UNIQUE_ID_si_supporttype390, !227, !"__UNIQUE_ID_si_supporttype390", i1 false, i1 false}
!229 = !{ptr @radeon_cik_support, !230, !"radeon_cik_support", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 279, i32 5}
!231 = !{ptr @__UNIQUE_ID_cik_support391, !232, !"__UNIQUE_ID_cik_support391", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 280, i32 1}
!233 = !{ptr @__param_cik_support, !234, !"__param_cik_support", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 281, i32 1}
!235 = !{ptr @__UNIQUE_ID_cik_supporttype392, !234, !"__UNIQUE_ID_cik_supporttype392", i1 false, i1 false}
!236 = !{ptr @__initcall__kmod_radeon__393_658_radeon_module_init6, !237, !"__initcall__kmod_radeon__393_658_radeon_module_init6", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 658, i32 1}
!238 = !{ptr @__exitcall_radeon_module_exit, !239, !"__exitcall_radeon_module_exit", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 659, i32 1}
!240 = !{ptr @__UNIQUE_ID_author394, !241, !"__UNIQUE_ID_author394", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 661, i32 1}
!242 = !{ptr @__UNIQUE_ID_description395, !243, !"__UNIQUE_ID_description395", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 662, i32 1}
!244 = !{ptr @__UNIQUE_ID_file396, !245, !"__UNIQUE_ID_file396", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 663, i32 1}
!246 = !{ptr @__UNIQUE_ID_license397, !245, !"__UNIQUE_ID_license397", i1 false, i1 false}
!247 = !{ptr @radeon_no_wb, !248, !"radeon_no_wb", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 146, i32 5}
!249 = !{ptr @__param_str_no_wb, !65, !"__param_str_no_wb", i1 false, i1 false}
!250 = !{ptr @__param_str_modeset, !70, !"__param_str_modeset", i1 false, i1 false}
!251 = !{ptr @__param_str_dynclks, !75, !"__param_str_dynclks", i1 false, i1 false}
!252 = !{ptr @__param_str_r4xx_atom, !80, !"__param_str_r4xx_atom", i1 false, i1 false}
!253 = !{ptr @__param_str_vramlimit, !85, !"__param_str_vramlimit", i1 false, i1 false}
!254 = !{ptr @__param_str_agpmode, !90, !"__param_str_agpmode", i1 false, i1 false}
!255 = !{ptr @__param_str_gartsize, !95, !"__param_str_gartsize", i1 false, i1 false}
!256 = !{ptr @__param_str_benchmark, !100, !"__param_str_benchmark", i1 false, i1 false}
!257 = !{ptr @__param_str_test, !105, !"__param_str_test", i1 false, i1 false}
!258 = !{ptr @__param_str_connector_table, !110, !"__param_str_connector_table", i1 false, i1 false}
!259 = !{ptr @__param_str_tv, !115, !"__param_str_tv", i1 false, i1 false}
!260 = !{ptr @__param_str_audio, !120, !"__param_str_audio", i1 false, i1 false}
!261 = !{ptr @__param_str_disp_priority, !125, !"__param_str_disp_priority", i1 false, i1 false}
!262 = !{ptr @__param_str_hw_i2c, !130, !"__param_str_hw_i2c", i1 false, i1 false}
!263 = !{ptr @__param_str_pcie_gen2, !135, !"__param_str_pcie_gen2", i1 false, i1 false}
!264 = !{ptr @__param_str_msi, !140, !"__param_str_msi", i1 false, i1 false}
!265 = !{ptr @__param_str_lockup_timeout, !145, !"__param_str_lockup_timeout", i1 false, i1 false}
!266 = !{ptr @__param_str_fastfb, !150, !"__param_str_fastfb", i1 false, i1 false}
!267 = !{ptr @__param_str_dpm, !155, !"__param_str_dpm", i1 false, i1 false}
!268 = !{ptr @__param_str_aspm, !160, !"__param_str_aspm", i1 false, i1 false}
!269 = !{ptr @__param_str_runpm, !165, !"__param_str_runpm", i1 false, i1 false}
!270 = !{ptr @__param_str_hard_reset, !170, !"__param_str_hard_reset", i1 false, i1 false}
!271 = !{ptr @__param_str_vm_size, !175, !"__param_str_vm_size", i1 false, i1 false}
!272 = !{ptr @__param_str_vm_block_size, !180, !"__param_str_vm_block_size", i1 false, i1 false}
!273 = !{ptr @__param_str_deep_color, !185, !"__param_str_deep_color", i1 false, i1 false}
!274 = !{ptr @__param_str_use_pflipirq, !190, !"__param_str_use_pflipirq", i1 false, i1 false}
!275 = !{ptr @__param_str_bapm, !195, !"__param_str_bapm", i1 false, i1 false}
!276 = !{ptr @__param_str_backlight, !200, !"__param_str_backlight", i1 false, i1 false}
!277 = !{ptr @__param_str_auxch, !205, !"__param_str_auxch", i1 false, i1 false}
!278 = !{ptr @__param_str_mst, !210, !"__param_str_mst", i1 false, i1 false}
!279 = !{ptr @__param_str_uvd, !215, !"__param_str_uvd", i1 false, i1 false}
!280 = !{ptr @__param_str_vce, !220, !"__param_str_vce", i1 false, i1 false}
!281 = !{ptr @__param_str_si_support, !227, !"__param_str_si_support", i1 false, i1 false}
!282 = !{ptr @__param_str_cik_support, !234, !"__param_str_cik_support", i1 false, i1 false}
!283 = !{ptr @.str, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 629, i32 10}
!285 = !{ptr @radeon_kms_pci_driver, !286, !"radeon_kms_pci_driver", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 628, i32 26}
!287 = !{ptr @pciidlist, !288, !"pciidlist", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 283, i32 29}
!289 = !{ptr @.str.1, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 310, i32 4}
!291 = !{ptr @.str.2, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.3, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.4, !290, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.5, !290, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @radeon_pci_probe._entry, !290, !"_entry", i1 false, i1 false}
!296 = !{ptr @radeon_pci_probe._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.7, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 322, i32 4}
!299 = !{ptr @radeon_pci_probe._entry.6, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @radeon_pci_probe._entry_ptr.8, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.9, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 621, i32 10}
!303 = !{ptr @.str.10, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 622, i32 10}
!305 = !{ptr @kms_driver, !306, !"kms_driver", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 601, i32 32}
!307 = !{ptr @.str.11, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 556, i32 2}
!309 = !{ptr @.str.12, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 557, i32 2}
!311 = !{ptr @.str.13, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 558, i32 2}
!313 = !{ptr @.str.14, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 559, i32 2}
!315 = !{ptr @.str.15, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 560, i32 2}
!317 = !{ptr @.str.16, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 562, i32 2}
!319 = !{ptr @.str.17, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 563, i32 2}
!321 = !{ptr @.str.18, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 564, i32 2}
!323 = !{ptr @.str.19, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 565, i32 2}
!325 = !{ptr @.str.20, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 566, i32 2}
!327 = !{ptr @.str.21, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 567, i32 2}
!329 = !{ptr @.str.22, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 569, i32 2}
!331 = !{ptr @.str.23, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 570, i32 2}
!333 = !{ptr @.str.24, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 568, i32 2}
!335 = !{ptr @.str.25, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 571, i32 2}
!337 = !{ptr @.str.26, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 572, i32 2}
!339 = !{ptr @.str.27, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 573, i32 2}
!341 = !{ptr @.str.28, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 574, i32 2}
!343 = !{ptr @.str.29, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 575, i32 2}
!345 = !{ptr @.str.30, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 576, i32 2}
!347 = !{ptr @.str.31, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 577, i32 2}
!349 = !{ptr @.str.32, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 578, i32 2}
!351 = !{ptr @.str.33, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 579, i32 2}
!353 = !{ptr @.str.34, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 561, i32 2}
!355 = !{ptr @.str.35, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 580, i32 2}
!357 = !{ptr @.str.36, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 581, i32 2}
!359 = !{ptr @.str.37, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 582, i32 2}
!361 = !{ptr @.str.38, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 584, i32 2}
!363 = !{ptr @.str.39, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 585, i32 2}
!365 = !{ptr @.str.40, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 586, i32 2}
!367 = !{ptr @.str.41, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 588, i32 2}
!369 = !{ptr @.str.42, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 589, i32 2}
!371 = !{ptr @.str.43, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 587, i32 2}
!373 = !{ptr @.str.44, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 590, i32 2}
!375 = !{ptr @.str.45, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 591, i32 2}
!377 = !{ptr @.str.46, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 592, i32 2}
!379 = !{ptr @.str.47, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 593, i32 2}
!381 = !{ptr @.str.48, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 594, i32 2}
!383 = !{ptr @.str.49, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 595, i32 2}
!385 = !{ptr @.str.50, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 596, i32 2}
!387 = !{ptr @.str.51, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 597, i32 2}
!389 = !{ptr @.str.52, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 598, i32 2}
!391 = !{ptr @radeon_ioctls_kms, !392, !"radeon_ioctls_kms", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 555, i32 36}
!393 = !{ptr @radeon_driver_kms_fops, !394, !"radeon_driver_kms_fops", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 542, i32 37}
!395 = !{ptr @radeon_pm_ops, !396, !"radeon_pm_ops", i1 false, i1 false}
!396 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 530, i32 32}
!397 = !{ptr @.str.53, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 484, i32 4}
!399 = !{ptr @.str.54, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/gpu/drm/radeon/radeon_drv.c", i32 645, i32 2}
!401 = !{ptr @.str.55, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @radeon_module_init._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @radeon_module_init._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{i32 1, !"wchar_size", i32 2}
!405 = !{i32 1, !"min_enum_size", i32 4}
!406 = !{i32 8, !"branch-target-enforcement", i32 0}
!407 = !{i32 8, !"sign-return-address", i32 0}
!408 = !{i32 8, !"sign-return-address-all", i32 0}
!409 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!410 = !{i32 7, !"uwtable", i32 1}
!411 = !{i32 7, !"frame-pointer", i32 2}
!412 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!413 = !{i8 0, i8 2}
