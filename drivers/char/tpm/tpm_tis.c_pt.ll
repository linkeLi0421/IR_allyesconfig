; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_tis.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_tis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pnp_device_id = type { [8 x i8], i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_tis_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tpm_tis_tcg_phy = type { %struct.tpm_tis_data, ptr }
%struct.tpm_tis_data = type { i16, i32, i32, i8, i32, ptr, i16, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tpm_info = type { %struct.resource, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_interrupts = internal constant [19 x i8] c"tpm_tis.interrupts\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@interrupts = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_interrupts = internal constant %struct.kernel_param { ptr @__param_str_interrupts, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @interrupts } }, section "__param", align 4
@__UNIQUE_ID_interruptstype246 = internal constant [32 x i8] c"tpm_tis.parmtype=interrupts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupts247 = internal constant [42 x i8] c"tpm_tis.parm=interrupts:Enable interrupts\00", section ".modinfo", align 1
@__param_str_itpm = internal constant [13 x i8] c"tpm_tis.itpm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@itpm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_itpm = internal constant %struct.kernel_param { ptr @__param_str_itpm, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @itpm } }, section "__param", align 4
@__UNIQUE_ID_itpmtype248 = internal constant [27 x i8] c"tpm_tis.parmtype=itpm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_itpm249 = internal constant [72 x i8] c"tpm_tis.parm=itpm:Force iTPM workarounds (found on some Lenovo laptops)\00", section ".modinfo", align 1
@__param_str_hid = internal constant [12 x i8] c"tpm_tis.hid\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_hid = internal constant %struct.kparam_string { i32 8, ptr getelementptr (i8, ptr @tpm_pnp_tbl, i64 84) }, align 4
@__param_hid = internal constant %struct.kernel_param { ptr @__param_str_hid, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_hid } }, section "__param", align 4
@__UNIQUE_ID_hidtype250 = internal constant [28 x i8] c"tpm_tis.parmtype=hid:string\00", section ".modinfo", align 1
@__UNIQUE_ID_hid251 = internal constant [70 x i8] c"tpm_tis.parm=hid:Set additional specific HID for this driver to probe\00", section ".modinfo", align 1
@tis_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tpm_tis_plat_probe, ptr @tpm_tis_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tis_of_platform_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpm_tis_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_tpm_tis__252_424_init_tis6 = internal global ptr @init_tis, section ".initcall6.init", align 4
@__exitcall_cleanup_tis = internal global ptr @cleanup_tis, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [60 x i8] c"tpm_tis.author=Leendert van Doorn (leendert@watson.ibm.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [31 x i8] c"tpm_tis.description=TPM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version255 = internal constant [20 x i8] c"tpm_tis.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tpm_tis\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file256 = internal constant [38 x i8] c"tpm_tis.file=drivers/char/tpm/tpm_tis\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [20 x i8] c"tpm_tis.license=GPL\00", section ".modinfo", align 1
@tpm_pnp_tbl = internal global { [9 x %struct.pnp_device_id], [52 x i8] } { [9 x %struct.pnp_device_id] [%struct.pnp_device_id { [8 x i8] c"PNP0C31\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"ATM1200\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"IFX0102\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"BCM0101\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"BCM0102\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"NSC1200\00", i32 0 }, %struct.pnp_device_id { [8 x i8] c"ICO0102\00", i32 0 }, %struct.pnp_device_id zeroinitializer, %struct.pnp_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@tpm_tis_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_tis_resume, ptr @tpm_pm_suspend, ptr @tpm_tis_resume, ptr @tpm_pm_suspend, ptr @tpm_tis_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tpm_tcg = internal constant { %struct.tpm_tis_phy_ops, [44 x i8] } { %struct.tpm_tis_phy_ops { ptr @tpm_tcg_read_bytes, ptr @tpm_tcg_write_bytes, ptr @tpm_tcg_read16, ptr @tpm_tcg_read32, ptr @tpm_tcg_write32 }, [44 x i8] zeroinitializer }, align 32
@tpm_tis_disable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015tpm_tis: %s detected: disabling interrupts.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tpm_tis_disable_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/char/tpm/tpm_tis.c\00", [37 x i8] zeroinitializer }, align 32
@tpm_tis_disable_irq._entry_ptr = internal global ptr @tpm_tis_disable_irq._entry, section ".printk_index", align 4
@tis_of_platform_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcg,tpm-tis-mmio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tpm_tis_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 316, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_tis_plat_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm_tis_plat_probe._entry_ptr = internal global ptr @tpm_tis_plat_probe._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 53, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"itpm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 57, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"tis_drv\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 351, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 428, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"tpm_pnp_tbl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 270, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"tpm_tis_pm\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 242, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"tpm_tcg\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 204, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 70, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"tis_of_platform_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 344, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [30 x i8] c"../drivers/char/tpm/tpm_tis.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 316, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_hid251, ptr @__UNIQUE_ID_hidtype250, ptr @__UNIQUE_ID_interrupts247, ptr @__UNIQUE_ID_interruptstype246, ptr @__UNIQUE_ID_itpm249, ptr @__UNIQUE_ID_itpmtype248, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_version255, ptr @__exitcall_cleanup_tis, ptr @__initcall__kmod_tpm_tis__252_424_init_tis6, ptr @__modver_attr, ptr @__param_hid, ptr @__param_interrupts, ptr @__param_itpm, ptr @cleanup_tis, ptr @tpm_tis_disable_irq._entry, ptr @tpm_tis_disable_irq._entry_ptr, ptr @tpm_tis_plat_probe._entry, ptr @tpm_tis_plat_probe._entry_ptr, ptr @interrupts, ptr @itpm, ptr @tis_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tpm_pnp_tbl, ptr @tpm_tis_pm, ptr @tpm_tcg, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tis_of_platform_match, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itpm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tis_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_pnp_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tcg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_disable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tis_of_platform_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_tis() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tis_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_tis() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tis_drv, ptr noundef null) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_core_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tcg_read_bytes(ptr nocapture noundef readonly %data, i32 noundef %addr, i16 noundef zeroext %len, ptr nocapture noundef writeonly %result) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %tobool.not2 = icmp eq i16 %len, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iobase = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %data, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %result.addr.04 = phi ptr [ %result, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %len.addr.03 = phi i16 [ %len, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i16 %len.addr.03, -1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %incdec.ptr = getelementptr i8, ptr %result.addr.04, i32 1
  %3 = ptrtoint ptr %result.addr.04 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %result.addr.04, align 1
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tcg_write_bytes(ptr nocapture noundef readonly %data, i32 noundef %addr, i16 noundef zeroext %len, ptr nocapture noundef readonly %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %tobool.not1 = icmp eq i16 %len, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iobase = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %data, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %value.addr.03 = phi ptr [ %value, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %len.addr.02 = phi i16 [ %len, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i16 %len.addr.02, -1
  %incdec.ptr = getelementptr i8, ptr %value.addr.03, i32 1
  %0 = ptrtoint ptr %value.addr.03 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %value.addr.03, align 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %1) #6, !srcloc !87
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tcg_read16(ptr nocapture noundef readonly %data, i32 noundef %addr, ptr nocapture noundef writeonly %result) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !88
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %result, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tcg_read32(ptr nocapture noundef readonly %data, i32 noundef %addr, ptr nocapture noundef writeonly %result) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !90
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %result, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tcg_write32(ptr nocapture noundef readonly %data, i32 noundef %addr, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_tis_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_plat_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %tpm_info = alloca %struct.tpm_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tpm_info) #6
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %tpm_info, ptr %call, i32 32)
  %call2 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.tpm_info, ptr %tpm_info, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 1
  %cmp6.not = icmp ne ptr %pdev, null
  %. = sext i1 %cmp6.not to i32
  %storemerge = select i1 %cmp4, i32 %., i32 %call2
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %irq, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev12, i32 noundef 152, i32 noundef 3520) #6
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end
  %call5.i = call ptr @devm_ioremap_resource(ptr noundef %dev12, ptr noundef nonnull %tpm_info) #6
  %iobase.i = getelementptr inbounds %struct.tpm_tis_tcg_phy, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i, ptr %iobase.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call5.i to i32
  br label %cleanup

if.end11.i:                                       ; preds = %if.end4.i
  %4 = load i32, ptr @interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not.i = icmp eq i32 %4, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end15.i_crit_edge, label %if.then13.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end15.i_crit_edge
  %irq.0.i = phi i32 [ %6, %if.then13.i ], [ -1, %if.end11.i.if.end15.i_crit_edge ]
  %7 = load i8, ptr @itpm, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not.i = icmp eq i8 %7, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then19.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr inbounds %struct.tpm_tis_data, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %9, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end20.i_crit_edge
  %call22.i = call i32 @tpm_tis_core_init(ptr noundef %dev12, ptr noundef nonnull %call.i.i, i32 noundef %irq.0.i, ptr noundef nonnull @tpm_tcg, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.then8.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %3, %if.then8.i ], [ %call22.i, %if.end20.i ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tpm_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_plat_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @tpm_chip_unregister(ptr noundef %1) #6
  tail call void @tpm_tis_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !34, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_interrupts, !1, !"__param_interrupts", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_tis.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_interruptstype246, !1, !"__UNIQUE_ID_interruptstype246", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_interrupts247, !4, !"__UNIQUE_ID_interrupts247", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_tis.c", i32 55, i32 1}
!5 = !{ptr @__param_itpm, !6, !"__param_itpm", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_tis.c", i32 58, i32 1}
!7 = !{ptr @__UNIQUE_ID_itpmtype248, !6, !"__UNIQUE_ID_itpmtype248", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_itpm249, !9, !"__UNIQUE_ID_itpm249", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm_tis.c", i32 59, i32 1}
!10 = !{ptr @__param_hid, !11, !"__param_hid", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/tpm_tis.c", i32 303, i32 1}
!12 = !{ptr @__UNIQUE_ID_hidtype250, !11, !"__UNIQUE_ID_hidtype250", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_hid251, !14, !"__UNIQUE_ID_hid251", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm_tis.c", i32 305, i32 1}
!15 = !{ptr @__initcall__kmod_tpm_tis__252_424_init_tis6, !16, !"__initcall__kmod_tpm_tis__252_424_init_tis6", i1 false, i1 false}
!16 = !{!"../drivers/char/tpm/tpm_tis.c", i32 424, i32 1}
!17 = !{ptr @__exitcall_cleanup_tis, !18, !"__exitcall_cleanup_tis", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm_tis.c", i32 425, i32 1}
!19 = !{ptr @__UNIQUE_ID_author253, !20, !"__UNIQUE_ID_author253", i1 false, i1 false}
!20 = !{!"../drivers/char/tpm/tpm_tis.c", i32 426, i32 1}
!21 = !{ptr @__UNIQUE_ID_description254, !22, !"__UNIQUE_ID_description254", i1 false, i1 false}
!22 = !{!"../drivers/char/tpm/tpm_tis.c", i32 427, i32 1}
!23 = !{ptr @__UNIQUE_ID_version255, !24, !"__UNIQUE_ID_version255", i1 false, i1 false}
!24 = !{!"../drivers/char/tpm/tpm_tis.c", i32 428, i32 1}
!25 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__modver_attr, !24, !"__modver_attr", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_file256, !30, !"__UNIQUE_ID_file256", i1 false, i1 false}
!30 = !{!"../drivers/char/tpm/tpm_tis.c", i32 429, i32 1}
!31 = !{ptr @__UNIQUE_ID_license257, !30, !"__UNIQUE_ID_license257", i1 false, i1 false}
!32 = !{ptr @itpm, !33, !"itpm", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/tpm_tis.c", i32 57, i32 13}
!34 = distinct !{null, !35, !"force_pdev", i1 false, i1 false}
!35 = !{!"../drivers/char/tpm/tpm_tis.c", i32 307, i32 32}
!36 = !{ptr @__param_str_interrupts, !1, !"__param_str_interrupts", i1 false, i1 false}
!37 = !{ptr @interrupts, !38, !"interrupts", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm_tis.c", i32 53, i32 12}
!39 = !{ptr @__param_str_itpm, !6, !"__param_str_itpm", i1 false, i1 false}
!40 = !{ptr @__param_str_hid, !11, !"__param_str_hid", i1 false, i1 false}
!41 = !{ptr @__param_string_hid, !11, !"__param_string_hid", i1 false, i1 false}
!42 = !{ptr @tpm_pnp_tbl, !43, !"tpm_pnp_tbl", i1 false, i1 false}
!43 = !{!"../drivers/char/tpm/tpm_tis.c", i32 270, i32 29}
!44 = distinct !{null, !45, !"tis_pnp_driver", i1 false, i1 false}
!45 = !{!"../drivers/char/tpm/tpm_tis.c", i32 292, i32 26}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm_tis.c", i32 80, i32 12}
!48 = distinct !{null, !49, !"tpm_tis_dmi_table", i1 false, i1 false}
!49 = !{!"../drivers/char/tpm/tpm_tis.c", i32 77, i32 35}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/tpm/tpm_tis.c", i32 70, i32 3}
!52 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tpm_tis_disable_irq._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @tpm_tis_disable_irq._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @tpm_tcg, !57, !"tpm_tcg", i1 false, i1 false}
!57 = !{!"../drivers/char/tpm/tpm_tis.c", i32 204, i32 37}
!58 = !{ptr @tpm_tis_pm, !59, !"tpm_tis_pm", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/tpm_tis.c", i32 242, i32 8}
!60 = !{ptr @tis_drv, !61, !"tis_drv", i1 false, i1 false}
!61 = !{!"../drivers/char/tpm/tpm_tis.c", i32 351, i32 31}
!62 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/tpm/tpm_tis.c", i32 316, i32 3}
!64 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tpm_tis_plat_probe._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @tpm_tis_plat_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @tis_of_platform_match, !70, !"tis_of_platform_match", i1 false, i1 false}
!70 = !{!"../drivers/char/tpm/tpm_tis.c", i32 344, i32 34}
!71 = distinct !{null, !72, !"x86_resources", i1 false, i1 false}
!72 = !{!"../drivers/char/tpm/tpm_tis.c", i32 365, i32 31}
!73 = distinct !{null, !74, !"force", i1 false, i1 false}
!74 = !{!"../drivers/char/tpm/tpm_tis.c", i32 61, i32 13}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 5318379}
!85 = !{i64 2152857724}
!86 = !{i64 2152859329}
!87 = !{i64 5317984}
!88 = !{i64 5317761}
!89 = !{i64 2152858336}
!90 = !{i64 5318599}
!91 = !{i64 2152858948}
!92 = !{i64 2152860303}
!93 = !{i64 5318181}
!94 = !{i8 0, i8 2}
