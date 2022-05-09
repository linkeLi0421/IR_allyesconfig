; ModuleID = '/llk/IR_all_yes/drivers/nvmem/qfprom.c_pt.bc'
source_filename = "../drivers/nvmem/qfprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qfprom_soc_data = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qfprom_soc_compatible_data = type { ptr, i32 }
%struct.nvmem_keepout = type { i32, i32, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.qfprom_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_read_raw_data = internal constant [27 x i8] c"nvmem_qfprom.read_raw_data\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@read_raw_data = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_read_raw_data = internal constant %struct.kernel_param { ptr @__param_str_read_raw_data, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @read_raw_data } }, section "__param", align 4
@__UNIQUE_ID_read_raw_datatype289 = internal constant [41 x i8] c"nvmem_qfprom.parmtype=read_raw_data:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_read_raw_data290 = internal constant [67 x i8] c"nvmem_qfprom.parm=read_raw_data:Read raw instead of corrected data\00", section ".modinfo", align 1
@__initcall__kmod_nvmem_qfprom__292_468_qfprom_driver_init6 = internal global ptr @qfprom_driver_init, section ".initcall6.init", align 4
@qfprom_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qfprom_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qfprom_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qfprom_driver_exit = internal global ptr @qfprom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [73 x i8] c"nvmem_qfprom.author=Srinivas Kandagatla <srinivas.kandagatla@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [48 x i8] c"nvmem_qfprom.description=Qualcomm QFPROM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [45 x i8] c"nvmem_qfprom.file=drivers/nvmem/nvmem_qfprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [28 x i8] c"nvmem_qfprom.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,qfprom\00", [20 x i8] zeroinitializer }, align 32
@qfprom_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qfprom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-qfprom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_qfprom }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-qfprom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_qfprom }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qfprom\00", [25 x i8] zeroinitializer }, align 32
@__const.qfprom_probe.econfig = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.1, i32 -2, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @qfprom_reg_read, ptr null, ptr null, i32 0, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@qfprom_7_8_data = internal constant { %struct.qfprom_soc_data, [16 x i8] } { %struct.qfprom_soc_data { i32 3344, i32 25, i32 4800000, i32 1800000 }, [16 x i8] zeroinitializer }, align 32
@qfprom_7_15_data = internal constant { %struct.qfprom_soc_data, [16 x i8] } { %struct.qfprom_soc_data { i32 3336, i32 24, i32 4800000, i32 1900000 }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@qfprom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 434, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error getting clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qfprom_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/nvmem/qfprom.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qfprom_probe._entry_ptr = internal global ptr @qfprom_probe._entry, section ".printk_index", align 4
@qfprom_reg_write.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvmem_qfprom\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qfprom_reg_write\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Writing to raw qfprom region : %#010x of size: %zu\0A\00", [44 x i8] zeroinitializer }, align 32
@qfprom_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 279, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%zu is not an integral number of words\0A\00", [56 x i8] zeroinitializer }, align 32
@qfprom_reg_write._entry_ptr = internal global ptr @qfprom_reg_write._entry, section ".printk_index", align 4
@qfprom_reg_write._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.6, i32 284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid offset: %#x.  Must be word aligned\0A\00", [52 x i8] zeroinitializer }, align 32
@qfprom_reg_write._entry_ptr.15 = internal global ptr @qfprom_reg_write._entry.13, section ".printk_index", align 4
@qfprom_reg_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.6, i32 299, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout waiting for initial ready; aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@qfprom_reg_write._entry_ptr.18 = internal global ptr @qfprom_reg_write._entry.16, section ".printk_index", align 4
@qfprom_reg_write._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.6, i32 313, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout waiting for finish.\0A\00", [35 x i8] zeroinitializer }, align 32
@qfprom_reg_write._entry_ptr.21 = internal global ptr @qfprom_reg_write._entry.19, section ".printk_index", align 4
@qfprom_enable_fuse_blowing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qfprom_enable_fuse_blowing\00", [37 x i8] zeroinitializer }, align 32
@qfprom_enable_fuse_blowing._entry_ptr = internal global ptr @qfprom_enable_fuse_blowing._entry, section ".printk_index", align 4
@qfprom_enable_fuse_blowing._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set clock rate for enable\0A\00", [59 x i8] zeroinitializer }, align 32
@qfprom_enable_fuse_blowing._entry_ptr.26 = internal global ptr @qfprom_enable_fuse_blowing._entry.24, section ".printk_index", align 4
@qfprom_enable_fuse_blowing._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.6, i32 210, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to set %duV\0A\00", [44 x i8] zeroinitializer }, align 32
@qfprom_enable_fuse_blowing._entry_ptr.29 = internal global ptr @qfprom_enable_fuse_blowing._entry.27, section ".printk_index", align 4
@qfprom_enable_fuse_blowing._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.6, i32 216, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@qfprom_enable_fuse_blowing._entry_ptr.32 = internal global ptr @qfprom_enable_fuse_blowing._entry.30, section ".printk_index", align 4
@qfprom_enable_fuse_blowing._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.6, i32 223, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable power-domain\0A\00", [33 x i8] zeroinitializer }, align 32
@qfprom_enable_fuse_blowing._entry_ptr.35 = internal global ptr @qfprom_enable_fuse_blowing._entry.33, section ".printk_index", align 4
@qfprom_disable_fuse_blowing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 158, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set 0 voltage (ignoring)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qfprom_disable_fuse_blowing\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qfprom_disable_fuse_blowing._entry_ptr = internal global ptr @qfprom_disable_fuse_blowing._entry, section ".printk_index", align 4
@qfprom_disable_fuse_blowing._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.6, i32 162, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable regulator (ignoring)\0A\00", [56 x i8] zeroinitializer }, align 32
@qfprom_disable_fuse_blowing._entry_ptr.41 = internal global ptr @qfprom_disable_fuse_blowing._entry.39, section ".printk_index", align 4
@qfprom_disable_fuse_blowing._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.6, i32 167, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to set clock rate for disable (ignoring)\0A\00", [47 x i8] zeroinitializer }, align 32
@qfprom_disable_fuse_blowing._entry_ptr.44 = internal global ptr @qfprom_disable_fuse_blowing._entry.42, section ".printk_index", align 4
@sc7180_qfprom = internal constant { %struct.qfprom_soc_compatible_data, [24 x i8] } { %struct.qfprom_soc_compatible_data { ptr @sc7180_qfprom_keepout, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sc7280_qfprom = internal constant { %struct.qfprom_soc_compatible_data, [24 x i8] } { %struct.qfprom_soc_compatible_data { ptr @sc7280_qfprom_keepout, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sc7180_qfprom_keepout = internal constant { [2 x %struct.nvmem_keepout], [40 x i8] } { [2 x %struct.nvmem_keepout] [%struct.nvmem_keepout { i32 296, i32 328, i8 0 }, %struct.nvmem_keepout { i32 544, i32 552, i8 0 }], [40 x i8] zeroinitializer }, align 32
@sc7280_qfprom_keepout = internal constant { [2 x %struct.nvmem_keepout], [40 x i8] } { [2 x %struct.nvmem_keepout] [%struct.nvmem_keepout { i32 296, i32 328, i8 0 }, %struct.nvmem_keepout { i32 568, i32 584, i8 0 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"read_raw_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 39, i32 13 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"qfprom_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 461, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 464, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"qfprom_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 453, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 360, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"qfprom_7_8_data\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 343, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"qfprom_7_15_data\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 350, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 426, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 430, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 434, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 268, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 278, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 283, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 298, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 313, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 192, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 199, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 210, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 216, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 223, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 158, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 162, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 166, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"sc7180_qfprom\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 113, i32 48 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"sc7280_qfprom\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 123, i32 48 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"sc7180_qfprom_keepout\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 108, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"sc7280_qfprom_keepout\00", align 1
@___asan_gen_.190 = private constant [26 x i8] c"../drivers/nvmem/qfprom.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 118, i32 35 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_read_raw_data290, ptr @__UNIQUE_ID_read_raw_datatype289, ptr @__exitcall_qfprom_driver_exit, ptr @__initcall__kmod_nvmem_qfprom__292_468_qfprom_driver_init6, ptr @__param_read_raw_data, ptr @qfprom_disable_fuse_blowing._entry, ptr @qfprom_disable_fuse_blowing._entry.39, ptr @qfprom_disable_fuse_blowing._entry.42, ptr @qfprom_disable_fuse_blowing._entry_ptr, ptr @qfprom_disable_fuse_blowing._entry_ptr.41, ptr @qfprom_disable_fuse_blowing._entry_ptr.44, ptr @qfprom_driver_exit, ptr @qfprom_enable_fuse_blowing._entry, ptr @qfprom_enable_fuse_blowing._entry.24, ptr @qfprom_enable_fuse_blowing._entry.27, ptr @qfprom_enable_fuse_blowing._entry.30, ptr @qfprom_enable_fuse_blowing._entry.33, ptr @qfprom_enable_fuse_blowing._entry_ptr, ptr @qfprom_enable_fuse_blowing._entry_ptr.26, ptr @qfprom_enable_fuse_blowing._entry_ptr.29, ptr @qfprom_enable_fuse_blowing._entry_ptr.32, ptr @qfprom_enable_fuse_blowing._entry_ptr.35, ptr @qfprom_probe._entry, ptr @qfprom_probe._entry_ptr, ptr @qfprom_reg_write._entry, ptr @qfprom_reg_write._entry.13, ptr @qfprom_reg_write._entry.16, ptr @qfprom_reg_write._entry.19, ptr @qfprom_reg_write._entry_ptr, ptr @qfprom_reg_write._entry_ptr.15, ptr @qfprom_reg_write._entry_ptr.18, ptr @qfprom_reg_write._entry_ptr.21, ptr @read_raw_data, ptr @qfprom_driver, ptr @.str, ptr @qfprom_of_match, ptr @.str.1, ptr @qfprom_7_8_data, ptr @qfprom_7_15_data, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @sc7180_qfprom, ptr @sc7280_qfprom, ptr @sc7180_qfprom_keepout, ptr @sc7280_qfprom_keepout], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_raw_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_7_8_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_7_15_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_reg_write._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_reg_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_reg_write._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_enable_fuse_blowing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_enable_fuse_blowing._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_enable_fuse_blowing._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_enable_fuse_blowing._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_enable_fuse_blowing._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_disable_fuse_blowing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_disable_fuse_blowing._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfprom_disable_fuse_blowing._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_qfprom to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_qfprom to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_qfprom_keepout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_qfprom_keepout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qfprom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qfprom_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qfprom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qfprom_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfprom_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %econfig = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %econfig) #7
  %0 = call ptr @memcpy(ptr %econfig, ptr @__const.qfprom_probe.econfig, i32 88)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup92_crit_edge, label %if.end

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #7
  %qfpcorrected = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %qfpcorrected to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %qfpcorrected, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup92

if.end9:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2, align 4
  %sub.i = add i32 %4, 1
  %add.i = sub i32 %sub.i, %6
  %size = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 18
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %size, align 4
  %8 = ptrtoint ptr %econfig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %econfig, align 4
  %priv12 = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 21
  %9 = ptrtoint ptr %priv12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %priv12, align 4
  %dev13 = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev13, align 4
  %call14 = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end9.if.end19_crit_edge, label %if.then16

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call14, align 4
  %keepout17 = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 7
  %13 = ptrtoint ptr %keepout17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %keepout17, align 4
  %nkeepout = getelementptr inbounds %struct.qfprom_soc_compatible_data, ptr %call14, i32 0, i32 1
  %14 = ptrtoint ptr %nkeepout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nkeepout, align 4
  %nkeepout18 = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 8
  %16 = ptrtoint ptr %nkeepout18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nkeepout18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end9.if.end19_crit_edge
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.if.end85_crit_edge, label %if.then22

if.end19.if.end85_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then22:                                        ; preds = %if.end19
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call20) #7
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %call.i, align 4
  %cmp.i156 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call23 to i32
  br label %cleanup92

if.end29:                                         ; preds = %if.then22
  %call30 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call30) #7
  %qfpconf = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %qfpconf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %qfpconf, align 4
  %cmp.i157 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call31 to i32
  br label %cleanup92

if.end37:                                         ; preds = %if.end29
  %call38 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #7
  %call39 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call38) #7
  %qfpsecurity = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %qfpsecurity to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %qfpsecurity, align 4
  %cmp.i158 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call39 to i32
  br label %cleanup92

if.end45:                                         ; preds = %if.end37
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call39) #7, !srcloc !115
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %and49 = lshr i32 %24, 16
  %shr50 = and i32 %and49, 4095
  %shr.mask = and i32 %24, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr50)
  %cmp51 = icmp eq i32 %shr50, 8
  %or.cond = select i1 %cmp, i1 %cmp51, i1 false
  br i1 %or.cond, label %if.end45.if.end60.sink.split_crit_edge, label %if.else

if.end45.if.end60.sink.split_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr50)
  %cmp56 = icmp eq i32 %shr50, 15
  %or.cond155 = select i1 %cmp, i1 %cmp56, i1 false
  br i1 %or.cond155, label %if.else.if.end60.sink.split_crit_edge, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else.if.end60.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.else.if.end60.sink.split_crit_edge, %if.end45.if.end60.sink.split_crit_edge
  %qfprom_7_15_data.sink = phi ptr [ @qfprom_7_8_data, %if.end45.if.end60.sink.split_crit_edge ], [ @qfprom_7_15_data, %if.else.if.end60.sink.split_crit_edge ]
  %soc_data58 = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %soc_data58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %qfprom_7_15_data.sink, ptr %soc_data58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else.if.end60_crit_edge
  %call62 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %vcc = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call62, ptr %vcc, align 4
  %cmp.i159 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call62 to i32
  br label %cleanup92

if.end68:                                         ; preds = %if.end60
  %call69 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  %secclk = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %secclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call69, ptr %secclk, align 4
  %cmp.i160 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.end68
  %cmp75.not = icmp eq ptr %call69, inttoptr (i32 -517 to ptr)
  br i1 %cmp75.not, label %if.then72.cleanup92_crit_edge, label %do.end

if.then72.cleanup92_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

do.end:                                           ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call69 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %29) #10
  br label %cleanup92

if.end78:                                         ; preds = %if.end68
  %soc_data79 = getelementptr inbounds %struct.qfprom_priv, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %soc_data79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc_data79, align 4
  %tobool80.not = icmp eq ptr %31, null
  br i1 %tobool80.not, label %if.end78.if.end85_crit_edge, label %if.then81

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 16
  %32 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qfprom_reg_write, ptr %reg_write, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end78.if.end85_crit_edge, %if.end19.if.end85_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i161 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @qfprom_runtime_disable, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end89, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup92

if.end89:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %econfig) #7
  %cmp.i.i = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  %33 = ptrtoint ptr %call90 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %33, i32 0
  br label %cleanup92

cleanup92:                                        ; preds = %if.end89, %devm_add_action_or_reset.exit, %do.end, %if.then72.cleanup92_crit_edge, %if.then65, %if.then42, %if.then34, %if.then26, %if.then6, %entry.cleanup92_crit_edge
  %retval.1 = phi i32 [ %2, %if.then6 ], [ %spec.select.i, %if.end89 ], [ -12, %entry.cleanup92_crit_edge ], [ %call.i161, %devm_add_action_or_reset.exit ], [ -517, %if.then72.cleanup92_crit_edge ], [ %29, %do.end ], [ %18, %if.then26 ], [ %20, %if.then34 ], [ %22, %if.then42 ], [ %27, %if.then65 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %econfig) #7
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfprom_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %_val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qfpcorrected = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %qfpcorrected to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qfpcorrected, align 4
  %2 = load i8, ptr @read_raw_data, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool1.not, ptr %1, ptr %4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %base.0 = phi ptr [ %1, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool3.not8 = icmp eq i32 %bytes, 0
  br i1 %tobool3.not8, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %base.0, i32 %reg
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %val.011 = phi ptr [ %_val, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %i.010 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %words.09 = phi i32 [ %bytes, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %words.09, -1
  %inc = add nuw i32 %i.010, 1
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %i.010
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %incdec.ptr = getelementptr i8, ptr %val.011, i32 1
  %6 = ptrtoint ptr %val.011 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %val.011, align 1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfprom_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef readonly %_val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div167 = lshr i32 %bytes, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfprom_reg_write.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfprom_reg_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qfprom_reg_write.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %reg, i32 noundef %bytes) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rem = and i32 %bytes, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %bytes) #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %rem10 = and i32 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %tobool11.not = icmp eq i32 %rem10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %4 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %reg) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %soc_data.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 7
  %6 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data.i, align 4
  %qfprom_blow_uV1.i = getelementptr inbounds %struct.qfprom_soc_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qfprom_blow_uV1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qfprom_blow_uV1.i, align 4
  %secclk.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 5
  %10 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %secclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.do.end.i_crit_edge

if.end17.do.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end17
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end17.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end17.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %14 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %secclk.i, align 4
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %16 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %secclk.i, align 4
  %18 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc_data.i, align 4
  %qfprom_blow_set_freq.i = getelementptr inbounds %struct.qfprom_soc_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %qfprom_blow_set_freq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qfprom_blow_set_freq.i, align 4
  %call6.i = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev12.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %22 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25) #10
  br label %err_clk_prepared.i

if.end13.i:                                       ; preds = %if.end.i
  %vcc.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 6
  %24 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vcc.i, align 4
  %call14.i = tail call i32 @regulator_set_voltage(ptr noundef %25, i32 noundef %9, i32 noundef 2147483647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev20.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %26 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef %9) #10
  br label %err_clk_rate_set.i

if.end21.i:                                       ; preds = %if.end13.i
  %28 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vcc.i, align 4
  %call23.i = tail call i32 @regulator_enable(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %dev31.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 4
  %30 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev31.i, align 4
  br i1 %tobool24.not.i, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31) #10
  br label %err_clk_rate_set.i

if.end30.i:                                       ; preds = %if.end21.i
  %call.i103.i = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %cmp.i = icmp slt i32 %call.i103.i, 0
  %32 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev31.i, align 4
  br i1 %cmp.i, label %if.then33.i, label %if.end21

if.then33.i:                                      ; preds = %if.end30.i
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !122
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then33.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.then33.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %if.then33.i.pm_runtime_put_noidle.exit.i_crit_edge
  %35 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.34) #10
  %37 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vcc.i, align 4
  %call64.i = tail call i32 @regulator_disable(ptr noundef %38) #7
  br label %err_clk_rate_set.i

err_clk_rate_set.i:                               ; preds = %pm_runtime_put_noidle.exit.i, %do.end28.i, %do.end19.i
  %ret.0.i = phi i32 [ %call14.i, %do.end19.i ], [ %call23.i, %do.end28.i ], [ %call.i103.i, %pm_runtime_put_noidle.exit.i ]
  %39 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %secclk.i, align 4
  %call67.i = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %call3.i) #7
  br label %err_clk_prepared.i

err_clk_prepared.i:                               ; preds = %err_clk_rate_set.i, %do.end11.i
  %ret.1.i = phi i32 [ %call6.i, %do.end11.i ], [ %ret.0.i, %err_clk_rate_set.i ]
  %41 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %secclk.i, align 4
  tail call void @clk_disable(ptr noundef %42) #7
  tail call void @clk_unprepare(ptr noundef %42) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end30.i
  %call41.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %33, i32 noundef 2147483647) #7
  %qfpconf.i = getelementptr inbounds %struct.qfprom_priv, ptr %context, i32 0, i32 1
  %43 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 60
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %46 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %47, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %soc_data.i, align 4
  %qfprom_blow_timer_value.i = getelementptr inbounds %struct.qfprom_soc_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %qfprom_blow_timer_value.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qfprom_blow_timer_value.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %54 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %55, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %53) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc_data.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %61 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %62, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %60) #7, !srcloc !127
  %call22 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call22, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 295) #7
  %63 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr209 = getelementptr i8, ptr %64, i32 72
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp37210 = icmp eq i32 %65, 0
  br i1 %cmp37210, label %if.end21.for.end_crit_edge, label %if.end21.land.lhs.true_crit_edge

if.end21.land.lhs.true_crit_edge:                 ; preds = %if.end21
  br label %land.lhs.true

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then52.land.lhs.true_crit_edge, %if.end21.land.lhs.true_crit_edge
  %call41 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call41, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call41, %add.i
  br i1 %cmp3.i, label %if.then44, label %if.then52

if.then44:                                        ; preds = %land.lhs.true
  %66 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr47 = getelementptr i8, ptr %67, i32 72
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %phi.cmp = icmp eq i32 %68, 0
  br i1 %phi.cmp, label %if.then44.for.end_crit_edge, label %if.then44.exit_enabled_fuse_blowing.sink.split_crit_edge

if.then44.exit_enabled_fuse_blowing.sink.split_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_enabled_fuse_blowing.sink.split

if.then44.for.end_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then52:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %69 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr = getelementptr i8, ptr %70, i32 72
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !115
  %cmp37 = icmp eq i32 %71, 0
  br i1 %cmp37, label %if.then52.for.end_crit_edge, label %if.then52.land.lhs.true_crit_edge

if.then52.land.lhs.true_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then52.for.end_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then52.for.end_crit_edge, %if.then44.for.end_crit_edge, %if.end21.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp64211.not = icmp ult i32 %bytes, 4
  br i1 %cmp64211.not, label %for.end.for.end70_crit_edge, label %do.body65.preheader

for.end.for.end70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

do.body65.preheader:                              ; preds = %for.end
  %umax = call i32 @llvm.umax.i32(i32 %div167, i32 1)
  br label %do.body65

do.body65:                                        ; preds = %do.body65.do.body65_crit_edge, %do.body65.preheader
  %i.0212 = phi i32 [ %inc, %do.body65.do.body65_crit_edge ], [ 0, %do.body65.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr i32, ptr %_val, i32 %i.0212
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %context, align 4
  %add.ptr68 = getelementptr i8, ptr %76, i32 %reg
  %mul = shl i32 %i.0212, 2
  %add.ptr69 = getelementptr i8, ptr %add.ptr68, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %74) #7, !srcloc !127
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body65.for.end70_crit_edge, label %do.body65.do.body65_crit_edge

do.body65.do.body65_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

do.body65.for.end70_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

for.end70:                                        ; preds = %do.body65.for.end70_crit_edge, %for.end.for.end70_crit_edge
  %call74 = tail call i64 @ktime_get() #7
  %add.i173 = add i64 %call74, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 309) #7
  %77 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr91213 = getelementptr i8, ptr %78, i32 72
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91213) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp94214 = icmp eq i32 %79, 0
  br i1 %cmp94214, label %for.end70.exit_enabled_fuse_blowing_crit_edge, label %for.end70.land.lhs.true98_crit_edge

for.end70.land.lhs.true98_crit_edge:              ; preds = %for.end70
  br label %land.lhs.true98

for.end70.exit_enabled_fuse_blowing_crit_edge:    ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_enabled_fuse_blowing

land.lhs.true98:                                  ; preds = %if.then110.land.lhs.true98_crit_edge, %for.end70.land.lhs.true98_crit_edge
  %call99 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call99, i64 %add.i173)
  %cmp3.i175 = icmp sgt i64 %call99, %add.i173
  br i1 %cmp3.i175, label %if.then102, label %if.then110

if.then102:                                       ; preds = %land.lhs.true98
  %80 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr105 = getelementptr i8, ptr %81, i32 72
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %phi.cmp168 = icmp eq i32 %82, 0
  br i1 %phi.cmp168, label %if.then102.exit_enabled_fuse_blowing_crit_edge, label %if.then102.exit_enabled_fuse_blowing.sink.split_crit_edge

if.then102.exit_enabled_fuse_blowing.sink.split_crit_edge: ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_enabled_fuse_blowing.sink.split

if.then102.exit_enabled_fuse_blowing_crit_edge:   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_enabled_fuse_blowing

if.then110:                                       ; preds = %land.lhs.true98
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %83 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr91 = getelementptr i8, ptr %84, i32 72
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #7, !srcloc !115
  %cmp94 = icmp eq i32 %85, 0
  br i1 %cmp94, label %if.then110.exit_enabled_fuse_blowing_crit_edge, label %if.then110.land.lhs.true98_crit_edge

if.then110.land.lhs.true98_crit_edge:             ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true98

if.then110.exit_enabled_fuse_blowing_crit_edge:   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_enabled_fuse_blowing

exit_enabled_fuse_blowing.sink.split:             ; preds = %if.then102.exit_enabled_fuse_blowing.sink.split_crit_edge, %if.then44.exit_enabled_fuse_blowing.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.then44.exit_enabled_fuse_blowing.sink.split_crit_edge ], [ @.str.20, %if.then102.exit_enabled_fuse_blowing.sink.split_crit_edge ]
  %86 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull %.str.20.sink) #10
  br label %exit_enabled_fuse_blowing

exit_enabled_fuse_blowing:                        ; preds = %exit_enabled_fuse_blowing.sink.split, %if.then110.exit_enabled_fuse_blowing_crit_edge, %if.then102.exit_enabled_fuse_blowing_crit_edge, %for.end70.exit_enabled_fuse_blowing_crit_edge
  %ret.0 = phi i32 [ 0, %if.then102.exit_enabled_fuse_blowing_crit_edge ], [ 0, %for.end70.exit_enabled_fuse_blowing_crit_edge ], [ -110, %exit_enabled_fuse_blowing.sink.split ], [ 0, %if.then110.exit_enabled_fuse_blowing_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %89, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %45) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %qfpconf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %qfpconf.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %91, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %48) #7, !srcloc !127
  %92 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev31.i, align 4
  %call.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %93, i32 noundef 0) #7
  %94 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev31.i, align 4
  %call.i.i183 = tail call i32 @__pm_runtime_idle(ptr noundef %95, i32 noundef 5) #7
  %96 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vcc.i, align 4
  %call8.i = tail call i32 @regulator_set_voltage(ptr noundef %97, i32 noundef 0, i32 noundef 2147483647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %exit_enabled_fuse_blowing.if.end.i188_crit_edge, label %do.end11.i185

exit_enabled_fuse_blowing.if.end.i188_crit_edge:  ; preds = %exit_enabled_fuse_blowing
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188

do.end11.i185:                                    ; preds = %exit_enabled_fuse_blowing
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.36) #10
  br label %if.end.i188

if.end.i188:                                      ; preds = %do.end11.i185, %exit_enabled_fuse_blowing.if.end.i188_crit_edge
  %100 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vcc.i, align 4
  %call14.i186 = tail call i32 @regulator_disable(ptr noundef %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i186)
  %tobool15.not.i187 = icmp eq i32 %call14.i186, 0
  br i1 %tobool15.not.i187, label %if.end.i188.if.end21.i191_crit_edge, label %do.end19.i189

if.end.i188.if.end21.i191_crit_edge:              ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i191

do.end19.i189:                                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.40) #10
  br label %if.end21.i191

if.end21.i191:                                    ; preds = %do.end19.i189, %if.end.i188.if.end21.i191_crit_edge
  %104 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %secclk.i, align 4
  %call22.i = tail call i32 @clk_set_rate(ptr noundef %105, i32 noundef %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i191.qfprom_disable_fuse_blowing.exit_crit_edge, label %do.end27.i

if.end21.i191.qfprom_disable_fuse_blowing.exit_crit_edge: ; preds = %if.end21.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %qfprom_disable_fuse_blowing.exit

do.end27.i:                                       ; preds = %if.end21.i191
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.43) #10
  br label %qfprom_disable_fuse_blowing.exit

qfprom_disable_fuse_blowing.exit:                 ; preds = %do.end27.i, %if.end21.i191.qfprom_disable_fuse_blowing.exit_crit_edge
  %108 = ptrtoint ptr %secclk.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %secclk.i, align 4
  tail call void @clk_disable(ptr noundef %109) #7
  tail call void @clk_unprepare(ptr noundef %109) #7
  br label %cleanup

cleanup:                                          ; preds = %qfprom_disable_fuse_blowing.exit, %err_clk_prepared.i, %do.end.i, %do.end15, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end15 ], [ %ret.0, %qfprom_disable_fuse_blowing.exit ], [ %ret.1.i, %err_clk_prepared.i ], [ %retval.0.i.ph.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qfprom_runtime_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__param_read_raw_data, !1, !"__param_read_raw_data", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/qfprom.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_read_raw_datatype289, !1, !"__UNIQUE_ID_read_raw_datatype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_read_raw_data290, !4, !"__UNIQUE_ID_read_raw_data290", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/qfprom.c", i32 41, i32 1}
!5 = !{ptr @__initcall__kmod_nvmem_qfprom__292_468_qfprom_driver_init6, !6, !"__initcall__kmod_nvmem_qfprom__292_468_qfprom_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/qfprom.c", i32 468, i32 1}
!7 = !{ptr @__exitcall_qfprom_driver_exit, !6, !"__exitcall_qfprom_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/nvmem/qfprom.c", i32 469, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/qfprom.c", i32 470, i32 1}
!12 = !{ptr @__UNIQUE_ID_file295, !13, !"__UNIQUE_ID_file295", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/qfprom.c", i32 471, i32 1}
!14 = !{ptr @__UNIQUE_ID_license296, !13, !"__UNIQUE_ID_license296", i1 false, i1 false}
!15 = !{ptr @read_raw_data, !16, !"read_raw_data", i1 false, i1 false}
!16 = !{!"../drivers/nvmem/qfprom.c", i32 39, i32 13}
!17 = !{ptr @__param_str_read_raw_data, !1, !"__param_str_read_raw_data", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/qfprom.c", i32 464, i32 11}
!20 = !{ptr @qfprom_driver, !21, !"qfprom_driver", i1 false, i1 false}
!21 = !{!"../drivers/nvmem/qfprom.c", i32 461, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/qfprom.c", i32 360, i32 11}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/qfprom.c", i32 426, i32 46}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/qfprom.c", i32 430, i32 36}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/qfprom.c", i32 434, i32 5}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qfprom_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @qfprom_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @qfprom_7_8_data, !37, !"qfprom_7_8_data", i1 false, i1 false}
!37 = !{!"../drivers/nvmem/qfprom.c", i32 343, i32 37}
!38 = !{ptr @qfprom_7_15_data, !39, !"qfprom_7_15_data", i1 false, i1 false}
!39 = !{!"../drivers/nvmem/qfprom.c", i32 350, i32 37}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nvmem/qfprom.c", i32 268, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qfprom_reg_write.__UNIQUE_ID_ddebug291, !41, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/nvmem/qfprom.c", i32 278, i32 3}
!47 = !{ptr @qfprom_reg_write._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qfprom_reg_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nvmem/qfprom.c", i32 283, i32 3}
!51 = !{ptr @qfprom_reg_write._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qfprom_reg_write._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nvmem/qfprom.c", i32 298, i32 3}
!55 = !{ptr @qfprom_reg_write._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @qfprom_reg_write._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/nvmem/qfprom.c", i32 313, i32 3}
!59 = !{ptr @qfprom_reg_write._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qfprom_reg_write._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/nvmem/qfprom.c", i32 192, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qfprom_enable_fuse_blowing._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qfprom_enable_fuse_blowing._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/nvmem/qfprom.c", i32 199, i32 3}
!68 = !{ptr @qfprom_enable_fuse_blowing._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qfprom_enable_fuse_blowing._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nvmem/qfprom.c", i32 210, i32 3}
!72 = !{ptr @qfprom_enable_fuse_blowing._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qfprom_enable_fuse_blowing._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/nvmem/qfprom.c", i32 216, i32 3}
!76 = !{ptr @qfprom_enable_fuse_blowing._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qfprom_enable_fuse_blowing._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nvmem/qfprom.c", i32 223, i32 3}
!80 = !{ptr @qfprom_enable_fuse_blowing._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qfprom_enable_fuse_blowing._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/nvmem/qfprom.c", i32 158, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @qfprom_disable_fuse_blowing._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @qfprom_disable_fuse_blowing._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/nvmem/qfprom.c", i32 162, i32 3}
!90 = !{ptr @qfprom_disable_fuse_blowing._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @qfprom_disable_fuse_blowing._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/nvmem/qfprom.c", i32 166, i32 3}
!94 = !{ptr @qfprom_disable_fuse_blowing._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @qfprom_disable_fuse_blowing._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @qfprom_of_match, !97, !"qfprom_of_match", i1 false, i1 false}
!97 = !{!"../drivers/nvmem/qfprom.c", i32 453, i32 34}
!98 = !{ptr @sc7180_qfprom, !99, !"sc7180_qfprom", i1 false, i1 false}
!99 = !{!"../drivers/nvmem/qfprom.c", i32 113, i32 48}
!100 = !{ptr @sc7180_qfprom_keepout, !101, !"sc7180_qfprom_keepout", i1 false, i1 false}
!101 = !{!"../drivers/nvmem/qfprom.c", i32 108, i32 35}
!102 = !{ptr @sc7280_qfprom, !103, !"sc7280_qfprom", i1 false, i1 false}
!103 = !{!"../drivers/nvmem/qfprom.c", i32 123, i32 48}
!104 = !{ptr @sc7280_qfprom_keepout, !105, !"sc7280_qfprom_keepout", i1 false, i1 false}
!105 = !{!"../drivers/nvmem/qfprom.c", i32 118, i32 35}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 4814131}
!116 = !{i64 2155131915}
!117 = !{i8 0, i8 2}
!118 = !{i64 4813911}
!119 = !{i64 2155131168}
!120 = !{i64 2148733276, i64 2148733281, i64 2148733294, i64 2148733338, i64 2148733372, i64 2148733393}
!121 = !{i64 2148250880}
!122 = !{i64 735703, i64 735728, i64 735750, i64 735766, i64 735778, i64 735798, i64 735822, i64 735838, i64 735850}
!123 = !{i64 2148251068}
!124 = !{i64 2155115734}
!125 = !{i64 2155116242}
!126 = !{i64 2155116502}
!127 = !{i64 4813713}
!128 = !{i64 2155117037}
!129 = !{i64 2155127242}
!130 = !{i64 2155101104}
!131 = !{i64 2155101551}
