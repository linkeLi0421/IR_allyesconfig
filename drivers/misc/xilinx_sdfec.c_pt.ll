; ModuleID = '/llk/IR_all_yes/drivers/misc/xilinx_sdfec.c_pt.bc'
source_filename = "../drivers/misc/xilinx_sdfec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xsdfec_dev = type { %struct.miscdevice, %struct.xsdfec_clks, %struct.wait_queue_head, %struct.xsdfec_config, [12 x i8], i32, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.xsdfec_clks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xsdfec_config = type { i32, i32, i32, i32, i32, i32, %struct.xsdfec_irq, i8, i8 }
%struct.xsdfec_irq = type { i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xsdfec_stats = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xsdfec_ldpc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i16 }
%struct.xsdfec_status = type { i32, i8 }
%struct.xsdfec_turbo = type { i32, i8 }

@__initcall__kmod_xilinx_sdfec__274_1463_xsdfec_driver_init6 = internal global ptr @xsdfec_driver_init, section ".initcall6.init", align 4
@xsdfec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xsdfec_probe, ptr @xsdfec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xsdfec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xsdfec_driver_exit = internal global ptr @xsdfec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author275 = internal constant [32 x i8] c"xilinx_sdfec.author=Xilinx, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [48 x i8] c"xilinx_sdfec.description=Xilinx SD-FEC16 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [44 x i8] c"xilinx_sdfec.file=drivers/misc/xilinx_sdfec\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [25 x i8] c"xilinx_sdfec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx-sdfec\00", [19 x i8] zeroinitializer }, align 32
@xsdfec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,sd-fec-1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xsdfec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&xsdfec->error_data_lock\00", [39 x i8] zeroinitializer }, align 32
@xsdfec_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx_sdfec\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xsdfec_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/misc/xilinx_sdfec.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"platform_get_irq failed\00", [40 x i8] zeroinitializer }, align 32
@xsdfec_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&xsdfec->waitq\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xilinx-sdfec16\00", [17 x i8] zeroinitializer }, align 32
@xsdfec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1406, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to request IRQ%d\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xsdfec_probe._entry_ptr = internal global ptr @xsdfec_probe._entry, section ".printk_index", align 4
@dev_nrs = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xsdfec%d\00", [23 x i8] zeroinitializer }, align 32
@xsdfec_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xsdfec_poll, ptr @xsdfec_dev_ioctl, ptr null, ptr null, i32 0, ptr @xsdfec_dev_open, ptr null, ptr @xsdfec_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xsdfec_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1423, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error:%d. Unable to register device\00", [60 x i8] zeroinitializer }, align 32
@xsdfec_probe._entry_ptr.15 = internal global ptr @xsdfec_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1211, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get core_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xsdfec_clk_init\00", [16 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr = internal global ptr @xsdfec_clk_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 1217, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get axi_clk\00", [42 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.22 = internal global ptr @xsdfec_clk_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s_axis_din_words_aclk\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s_axis_din_aclk\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m_axis_dout_aclk\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s_axis_dout_words_aclk\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s_axis_ctrl_aclk\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m_axis_status_aclk\00", [45 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.4, i32 1278, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable core_clk (%d)\00", [33 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.31 = internal global ptr @xsdfec_clk_init._entry.29, section ".printk_index", align 4
@xsdfec_clk_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.4, i32 1284, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable axi_clk (%d)\00", [34 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.34 = internal global ptr @xsdfec_clk_init._entry.32, section ".printk_index", align 4
@xsdfec_clk_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.4, i32 1290, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable din_clk (%d)\00", [34 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.37 = internal global ptr @xsdfec_clk_init._entry.35, section ".printk_index", align 4
@xsdfec_clk_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.4, i32 1296, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable din_words_clk (%d)\00", [60 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.40 = internal global ptr @xsdfec_clk_init._entry.38, section ".printk_index", align 4
@xsdfec_clk_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.4, i32 1302, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable dout_clk (%d)\00", [33 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.43 = internal global ptr @xsdfec_clk_init._entry.41, section ".printk_index", align 4
@xsdfec_clk_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.4, i32 1309, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable dout_words_clk (%d)\00", [59 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.46 = internal global ptr @xsdfec_clk_init._entry.44, section ".printk_index", align 4
@xsdfec_clk_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.4, i32 1315, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable ctrl_clk (%d)\00", [33 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.49 = internal global ptr @xsdfec_clk_init._entry.47, section ".printk_index", align 4
@xsdfec_clk_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.18, ptr @.str.4, i32 1321, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable status_clk (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@xsdfec_clk_init._entry_ptr.52 = internal global ptr @xsdfec_clk_init._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlnx,sdfec-code\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldpc\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"turbo\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,sdfec-din-words\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,sdfec-din-width\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx,sdfec-dout-words\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx,sdfec-dout-width\00", [42 x i8] zeroinitializer }, align 32
@xsdfec_regwrite.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xsdfec_regwrite\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Writing 0x%x to offset 0x%x\00", [36 x i8] zeroinitializer }, align 32
@xsdfec_regread.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xsdfec_regread\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read value = 0x%x from offset 0x%x\00", [61 x i8] zeroinitializer }, align 32
@xsdfec_irq_thread.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_irq_thread\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tmp=%x, uecc=%x, aecc=%x, cecc=%x, isr=%x\00", [54 x i8] zeroinitializer }, align 32
@xsdfec_irq_thread.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.64, ptr @.str.4, ptr @.str.66, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uecc=%x, cecc=%x, isr=%x\00", [39 x i8] zeroinitializer }, align 32
@xsdfec_irq_thread.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.64, ptr @.str.4, ptr @.str.67, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"state=%x, stats=%x\00", [45 x i8] zeroinitializer }, align 32
@xsdfec_isr_enable.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_isr_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SDFEC enabling irq with IER failed\00", [61 x i8] zeroinitializer }, align 32
@xsdfec_isr_enable.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.4, ptr @.str.70, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SDFEC disabling irq with IDR failed\00", [60 x i8] zeroinitializer }, align 32
@xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xsdfec_ecc_isr_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SDFEC enabling ECC irq with ECC IER failed\00", [53 x i8] zeroinitializer }, align 32
@xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.71, ptr @.str.4, ptr @.str.73, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SDFEC disable ECC irq with ECC IDR failed\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dev_nrs.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@xsdfec_start.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.75, ptr @.str.4, ptr @.str.76, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xsdfec_start\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s SDFEC HW code does not match driver code, reg %d, code %d\00", [35 x i8] zeroinitializer }, align 32
@xsdfec_stop.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.77, ptr @.str.4, ptr @.str.78, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xsdfec_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device not started correctly\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@xsdfec_reg0_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_reg0_write\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"N value is not in range\00", [40 x i8] zeroinitializer }, align 32
@xsdfec_reg0_write.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.84, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"K value is not in range\00", [40 x i8] zeroinitializer }, align 32
@xsdfec_reg0_write.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.85, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Writing outside of LDPC reg0 space 0x%x\00", [56 x i8] zeroinitializer }, align 32
@xsdfec_reg1_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.86, ptr @.str.4, ptr @.str.87, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_reg1_write\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Psize is not in range\00", [42 x i8] zeroinitializer }, align 32
@xsdfec_reg1_write.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.86, ptr @.str.4, ptr @.str.88, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No-packing bit register invalid\00", [32 x i8] zeroinitializer }, align 32
@xsdfec_reg1_write.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.86, ptr @.str.4, ptr @.str.89, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NM is beyond 10 bits\00", [43 x i8] zeroinitializer }, align 32
@xsdfec_reg1_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.86, ptr @.str.4, ptr @.str.90, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Writing outside of LDPC reg1 space 0x%x\00", [56 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_reg2_write\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Nlayers is not in range\00", [40 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.93, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NMQC exceeds 11 bits\00", [43 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.94, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Norm type is invalid\00", [43 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.95, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Special QC in invalid\00", [42 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.96, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No final parity check invalid\00", [34 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.97, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Max Schedule exceeds 2 bits\00", [36 x i8] zeroinitializer }, align 32
@xsdfec_reg2_write.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.91, ptr @.str.4, ptr @.str.98, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Writing outside of LDPC reg2 space 0x%x\00", [56 x i8] zeroinitializer }, align 32
@xsdfec_reg3_write.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.99, ptr @.str.4, ptr @.str.100, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xsdfec_reg3_write\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Writing outside of LDPC reg3 space 0x%x\00", [56 x i8] zeroinitializer }, align 32
@xsdfec_table_write.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.101, ptr @.str.4, ptr @.str.102, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xsdfec_table_write\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Write exceeds SC table length\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4194303, i64 1069547520]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 26123, i64 26125, i64 2148034050, i64 2148296204]
@__sancov_gen_cov_switch_values.107 = internal global [16 x i64] [i64 14, i64 32, i64 26112, i64 26113, i64 26123, i64 26125, i64 1073833481, i64 1073899011, i64 1074030088, i64 1074292228, i64 1078748677, i64 2147575306, i64 2148034050, i64 2148034055, i64 2148296204, i64 2149344774]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"xsdfec_driver\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1454, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1456, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"xsdfec_of_match\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1446, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1370, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1386, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1400, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1404, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1406, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"dev_nrs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1416, i32 43 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"xsdfec_fops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1030, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1423, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1209, i32 44 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1211, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1215, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1217, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1221, i32 49 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1230, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1239, i32 44 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1249, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1258, i32 44 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1267, i32 46 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1278, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1284, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1290, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1296, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1302, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1308, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1315, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1321, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1050, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1054, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1056, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1061, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1071, i32 36 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1086, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1096, i32 36 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 237, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 246, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1152, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1154, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1188, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 333, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 342, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 360, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 373, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 29, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 874, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 893, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 174, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 465, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 472, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 480, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 498, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 503, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 508, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 514, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 534, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 539, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 543, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 547, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 552, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 558, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 567, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 588, i32 3 }
@___asan_gen_.401 = private constant [31 x i8] c"../drivers/misc/xilinx_sdfec.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 617, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 44, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_xsdfec_driver_exit, ptr @__initcall__kmod_xilinx_sdfec__274_1463_xsdfec_driver_init6, ptr @xsdfec_clk_init._entry, ptr @xsdfec_clk_init._entry.20, ptr @xsdfec_clk_init._entry.29, ptr @xsdfec_clk_init._entry.32, ptr @xsdfec_clk_init._entry.35, ptr @xsdfec_clk_init._entry.38, ptr @xsdfec_clk_init._entry.41, ptr @xsdfec_clk_init._entry.44, ptr @xsdfec_clk_init._entry.47, ptr @xsdfec_clk_init._entry.50, ptr @xsdfec_clk_init._entry_ptr, ptr @xsdfec_clk_init._entry_ptr.22, ptr @xsdfec_clk_init._entry_ptr.31, ptr @xsdfec_clk_init._entry_ptr.34, ptr @xsdfec_clk_init._entry_ptr.37, ptr @xsdfec_clk_init._entry_ptr.40, ptr @xsdfec_clk_init._entry_ptr.43, ptr @xsdfec_clk_init._entry_ptr.46, ptr @xsdfec_clk_init._entry_ptr.49, ptr @xsdfec_clk_init._entry_ptr.52, ptr @xsdfec_driver_exit, ptr @xsdfec_probe._entry, ptr @xsdfec_probe._entry.13, ptr @xsdfec_probe._entry_ptr, ptr @xsdfec_probe._entry_ptr.15, ptr @xsdfec_driver, ptr @.str, ptr @xsdfec_of_match, ptr @xsdfec_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xsdfec_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dev_nrs, ptr @.str.12, ptr @xsdfec_fops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_nrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsdfec_clk_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xsdfec_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xsdfec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @xsdfec_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fec_code.i = alloca ptr, align 4
  %din_width.i = alloca i32, align 4
  %din_word_include.i = alloca i32, align 4
  %dout_width.i = alloca i32, align 4
  %dout_word_include.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  %error_data_lock = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %error_data_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xsdfec_probe.__key, i16 noundef signext 3) #11
  %clks = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1
  %call.i120 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  %1 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i120, ptr %clks, align 4
  %cmp.i.i = icmp ugt ptr %call.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.xsdfec_clk_init.exit.sink.split_crit_edge, label %if.end.i

if.end.xsdfec_clk_init.exit.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit.sink.split

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  %axi_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %axi_clk.i, align 4
  %cmp.i270.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270.i, label %if.end.i.xsdfec_clk_init.exit.sink.split_crit_edge, label %if.end17.i

if.end.i.xsdfec_clk_init.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit.sink.split

if.end17.i:                                       ; preds = %if.end.i
  %call19.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  %din_words_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %din_words_clk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19.i, ptr %din_words_clk.i, align 4
  %cmp.i271.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271.i, label %if.then22.i, label %if.end17.i.if.end30.i_crit_edge

if.end17.i.if.end30.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end17.i
  %cmp.not.i = icmp eq ptr %call19.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.end28.i, label %if.then22.i.xsdfec_clk_init.exit_crit_edge

if.then22.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end28.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %din_words_clk.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %din_words_clk.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end28.i, %if.end17.i.if.end30.i_crit_edge
  %call32.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  %din_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %din_clk.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call32.i, ptr %din_clk.i, align 4
  %cmp.i272.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272.i, label %if.then35.i, label %if.end30.i.if.end44.i_crit_edge

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then35.i:                                      ; preds = %if.end30.i
  %cmp38.not.i = icmp eq ptr %call32.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp38.not.i, label %if.end42.i, label %if.then35.i.xsdfec_clk_init.exit_crit_edge

if.then35.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end42.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %din_clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %din_clk.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end42.i, %if.end30.i.if.end44.i_crit_edge
  %call46.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  %dout_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %dout_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call46.i, ptr %dout_clk.i, align 4
  %cmp.i273.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273.i, label %if.then49.i, label %if.end44.i.if.end58.i_crit_edge

if.end44.i.if.end58.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then49.i:                                      ; preds = %if.end44.i
  %cmp52.not.i = icmp eq ptr %call46.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp52.not.i, label %if.end56.i, label %if.then49.i.xsdfec_clk_init.exit_crit_edge

if.then49.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end56.i:                                       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dout_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dout_clk.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end56.i, %if.end44.i.if.end58.i_crit_edge
  %call60.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #11
  %dout_words_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %dout_words_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call60.i, ptr %dout_words_clk.i, align 4
  %cmp.i274.i = icmp ugt ptr %call60.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274.i, label %if.then63.i, label %if.end58.i.if.end72.i_crit_edge

if.end58.i.if.end72.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then63.i:                                      ; preds = %if.end58.i
  %cmp66.not.i = icmp eq ptr %call60.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp66.not.i, label %if.end70.i, label %if.then63.i.xsdfec_clk_init.exit_crit_edge

if.then63.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end70.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dout_words_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dout_words_clk.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.end70.i, %if.end58.i.if.end72.i_crit_edge
  %call74.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  %ctrl_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %ctrl_clk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call74.i, ptr %ctrl_clk.i, align 4
  %cmp.i275.i = icmp ugt ptr %call74.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275.i, label %if.then77.i, label %if.end72.i.if.end86.i_crit_edge

if.end72.i.if.end86.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.then77.i:                                      ; preds = %if.end72.i
  %cmp80.not.i = icmp eq ptr %call74.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp80.not.i, label %if.end84.i, label %if.then77.i.xsdfec_clk_init.exit_crit_edge

if.then77.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end84.i:                                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ctrl_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ctrl_clk.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.end84.i, %if.end72.i.if.end86.i_crit_edge
  %call88.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  %status_clk.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %status_clk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call88.i, ptr %status_clk.i, align 4
  %cmp.i276.i = icmp ugt ptr %call88.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276.i, label %if.then91.i, label %if.end86.i.if.end100.i_crit_edge

if.end86.i.if.end100.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i

if.then91.i:                                      ; preds = %if.end86.i
  %cmp94.not.i = icmp eq ptr %call88.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp94.not.i, label %if.end98.i, label %if.then91.i.xsdfec_clk_init.exit_crit_edge

if.then91.i.xsdfec_clk_init.exit_crit_edge:       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_clk_init.exit

if.end98.i:                                       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %status_clk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %status_clk.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.end98.i, %if.end86.i.if.end100.i_crit_edge
  %15 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clks, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end100.i.do.end106.i_crit_edge

if.end100.i.do.end106.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106.i

if.end.i.i:                                       ; preds = %if.end100.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end108.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %16) #11
  br label %do.end106.i

do.end106.i:                                      ; preds = %if.then3.i.i, %if.end100.i.do.end106.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end100.i.do.end106.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph.i) #14
  br label %cleanup

if.end108.i:                                      ; preds = %if.end.i.i
  %17 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %axi_clk.i, align 4
  %call.i277.i = tail call i32 @clk_prepare(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i)
  %tobool.not.i278.i = icmp eq i32 %call.i277.i, 0
  br i1 %tobool.not.i278.i, label %if.end.i281.i, label %if.end108.i.do.end115.i_crit_edge

if.end108.i.do.end115.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115.i

if.end.i281.i:                                    ; preds = %if.end108.i
  %call1.i279.i = tail call i32 @clk_enable(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i279.i)
  %tobool2.not.i280.i = icmp eq i32 %call1.i279.i, 0
  br i1 %tobool2.not.i280.i, label %if.end117.i, label %if.then3.i282.i

if.then3.i282.i:                                  ; preds = %if.end.i281.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %18) #11
  br label %do.end115.i

do.end115.i:                                      ; preds = %if.then3.i282.i, %if.end108.i.do.end115.i_crit_edge
  %retval.0.i283.ph.i = phi i32 [ %call1.i279.i, %if.then3.i282.i ], [ %call.i277.i, %if.end108.i.do.end115.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i283.ph.i) #14
  br label %err_disable_core_clk.i

if.end117.i:                                      ; preds = %if.end.i281.i
  %19 = ptrtoint ptr %din_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %din_clk.i, align 4
  %call.i285.i = tail call i32 @clk_prepare(ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i)
  %tobool.not.i286.i = icmp eq i32 %call.i285.i, 0
  br i1 %tobool.not.i286.i, label %if.end.i289.i, label %if.end117.i.do.end124.i_crit_edge

if.end117.i.do.end124.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end124.i

if.end.i289.i:                                    ; preds = %if.end117.i
  %call1.i287.i = tail call i32 @clk_enable(ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i287.i)
  %tobool2.not.i288.i = icmp eq i32 %call1.i287.i, 0
  br i1 %tobool2.not.i288.i, label %if.end126.i, label %if.then3.i290.i

if.then3.i290.i:                                  ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %20) #11
  br label %do.end124.i

do.end124.i:                                      ; preds = %if.then3.i290.i, %if.end117.i.do.end124.i_crit_edge
  %retval.0.i291.ph.i = phi i32 [ %call1.i287.i, %if.then3.i290.i ], [ %call.i285.i, %if.end117.i.do.end124.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i291.ph.i) #14
  br label %err_disable_axi_clk.i

if.end126.i:                                      ; preds = %if.end.i289.i
  %21 = ptrtoint ptr %din_words_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %din_words_clk.i, align 4
  %call.i293.i = tail call i32 @clk_prepare(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i)
  %tobool.not.i294.i = icmp eq i32 %call.i293.i, 0
  br i1 %tobool.not.i294.i, label %if.end.i297.i, label %if.end126.i.do.end133.i_crit_edge

if.end126.i.do.end133.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end133.i

if.end.i297.i:                                    ; preds = %if.end126.i
  %call1.i295.i = tail call i32 @clk_enable(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i295.i)
  %tobool2.not.i296.i = icmp eq i32 %call1.i295.i, 0
  br i1 %tobool2.not.i296.i, label %if.end135.i, label %if.then3.i298.i

if.then3.i298.i:                                  ; preds = %if.end.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %do.end133.i

do.end133.i:                                      ; preds = %if.then3.i298.i, %if.end126.i.do.end133.i_crit_edge
  %retval.0.i299.ph.i = phi i32 [ %call1.i295.i, %if.then3.i298.i ], [ %call.i293.i, %if.end126.i.do.end133.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i299.ph.i) #14
  br label %err_disable_din_clk.i

if.end135.i:                                      ; preds = %if.end.i297.i
  %23 = ptrtoint ptr %dout_clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dout_clk.i, align 4
  %call.i301.i = tail call i32 @clk_prepare(ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301.i)
  %tobool.not.i302.i = icmp eq i32 %call.i301.i, 0
  br i1 %tobool.not.i302.i, label %if.end.i305.i, label %if.end135.i.do.end142.i_crit_edge

if.end135.i.do.end142.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end142.i

if.end.i305.i:                                    ; preds = %if.end135.i
  %call1.i303.i = tail call i32 @clk_enable(ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303.i)
  %tobool2.not.i304.i = icmp eq i32 %call1.i303.i, 0
  br i1 %tobool2.not.i304.i, label %if.end144.i, label %if.then3.i306.i

if.then3.i306.i:                                  ; preds = %if.end.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %24) #11
  br label %do.end142.i

do.end142.i:                                      ; preds = %if.then3.i306.i, %if.end135.i.do.end142.i_crit_edge
  %retval.0.i307.ph.i = phi i32 [ %call1.i303.i, %if.then3.i306.i ], [ %call.i301.i, %if.end135.i.do.end142.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i307.ph.i) #14
  br label %err_disable_din_words_clk.i

if.end144.i:                                      ; preds = %if.end.i305.i
  %25 = ptrtoint ptr %dout_words_clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dout_words_clk.i, align 4
  %call.i309.i = tail call i32 @clk_prepare(ptr noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309.i)
  %tobool.not.i310.i = icmp eq i32 %call.i309.i, 0
  br i1 %tobool.not.i310.i, label %if.end.i313.i, label %if.end144.i.do.end151.i_crit_edge

if.end144.i.do.end151.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end.i313.i:                                    ; preds = %if.end144.i
  %call1.i311.i = tail call i32 @clk_enable(ptr noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i311.i)
  %tobool2.not.i312.i = icmp eq i32 %call1.i311.i, 0
  br i1 %tobool2.not.i312.i, label %if.end153.i, label %if.then3.i314.i

if.then3.i314.i:                                  ; preds = %if.end.i313.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %26) #11
  br label %do.end151.i

do.end151.i:                                      ; preds = %if.then3.i314.i, %if.end144.i.do.end151.i_crit_edge
  %retval.0.i315.ph.i = phi i32 [ %call1.i311.i, %if.then3.i314.i ], [ %call.i309.i, %if.end144.i.do.end151.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i315.ph.i) #14
  br label %err_disable_dout_clk.i

if.end153.i:                                      ; preds = %if.end.i313.i
  %27 = ptrtoint ptr %ctrl_clk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_clk.i, align 4
  %call.i317.i = tail call i32 @clk_prepare(ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317.i)
  %tobool.not.i318.i = icmp eq i32 %call.i317.i, 0
  br i1 %tobool.not.i318.i, label %if.end.i321.i, label %if.end153.i.do.end160.i_crit_edge

if.end153.i.do.end160.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end160.i

if.end.i321.i:                                    ; preds = %if.end153.i
  %call1.i319.i = tail call i32 @clk_enable(ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i319.i)
  %tobool2.not.i320.i = icmp eq i32 %call1.i319.i, 0
  br i1 %tobool2.not.i320.i, label %if.end162.i, label %if.then3.i322.i

if.then3.i322.i:                                  ; preds = %if.end.i321.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %28) #11
  br label %do.end160.i

do.end160.i:                                      ; preds = %if.then3.i322.i, %if.end153.i.do.end160.i_crit_edge
  %retval.0.i323.ph.i = phi i32 [ %call1.i319.i, %if.then3.i322.i ], [ %call.i317.i, %if.end153.i.do.end160.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i323.ph.i) #14
  br label %err_disable_dout_words_clk.i

if.end162.i:                                      ; preds = %if.end.i321.i
  %29 = ptrtoint ptr %status_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %status_clk.i, align 4
  %call.i325.i = tail call i32 @clk_prepare(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325.i)
  %tobool.not.i326.i = icmp eq i32 %call.i325.i, 0
  br i1 %tobool.not.i326.i, label %if.end.i329.i, label %if.end162.i.do.end169.i_crit_edge

if.end162.i.do.end169.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end169.i

if.end.i329.i:                                    ; preds = %if.end162.i
  %call1.i327.i = tail call i32 @clk_enable(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i327.i)
  %tobool2.not.i328.i = icmp eq i32 %call1.i327.i, 0
  br i1 %tobool2.not.i328.i, label %if.end.i329.i.if.end8_crit_edge, label %if.then3.i330.i

if.end.i329.i.if.end8_crit_edge:                  ; preds = %if.end.i329.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3.i330.i:                                  ; preds = %if.end.i329.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %30) #11
  br label %do.end169.i

do.end169.i:                                      ; preds = %if.then3.i330.i, %if.end162.i.do.end169.i_crit_edge
  %retval.0.i331.ph.i = phi i32 [ %call1.i327.i, %if.then3.i330.i ], [ %call.i325.i, %if.end162.i.do.end169.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i331.ph.i) #14
  %31 = ptrtoint ptr %ctrl_clk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl_clk.i, align 4
  tail call void @clk_disable(ptr noundef %32) #11
  tail call void @clk_unprepare(ptr noundef %32) #11
  br label %err_disable_dout_words_clk.i

err_disable_dout_words_clk.i:                     ; preds = %do.end169.i, %do.end160.i
  %err.0.i = phi i32 [ %retval.0.i323.ph.i, %do.end160.i ], [ %retval.0.i331.ph.i, %do.end169.i ]
  %33 = ptrtoint ptr %dout_words_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dout_words_clk.i, align 4
  tail call void @clk_disable(ptr noundef %34) #11
  tail call void @clk_unprepare(ptr noundef %34) #11
  br label %err_disable_dout_clk.i

err_disable_dout_clk.i:                           ; preds = %err_disable_dout_words_clk.i, %do.end151.i
  %err.1.i = phi i32 [ %retval.0.i315.ph.i, %do.end151.i ], [ %err.0.i, %err_disable_dout_words_clk.i ]
  %35 = ptrtoint ptr %dout_clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dout_clk.i, align 4
  tail call void @clk_disable(ptr noundef %36) #11
  tail call void @clk_unprepare(ptr noundef %36) #11
  br label %err_disable_din_words_clk.i

err_disable_din_words_clk.i:                      ; preds = %err_disable_dout_clk.i, %do.end142.i
  %err.2.i = phi i32 [ %retval.0.i307.ph.i, %do.end142.i ], [ %err.1.i, %err_disable_dout_clk.i ]
  %37 = ptrtoint ptr %din_words_clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %din_words_clk.i, align 4
  tail call void @clk_disable(ptr noundef %38) #11
  tail call void @clk_unprepare(ptr noundef %38) #11
  br label %err_disable_din_clk.i

err_disable_din_clk.i:                            ; preds = %err_disable_din_words_clk.i, %do.end133.i
  %err.3.i = phi i32 [ %retval.0.i299.ph.i, %do.end133.i ], [ %err.2.i, %err_disable_din_words_clk.i ]
  %39 = ptrtoint ptr %din_clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %din_clk.i, align 4
  tail call void @clk_disable(ptr noundef %40) #11
  tail call void @clk_unprepare(ptr noundef %40) #11
  br label %err_disable_axi_clk.i

err_disable_axi_clk.i:                            ; preds = %err_disable_din_clk.i, %do.end124.i
  %err.4.i = phi i32 [ %retval.0.i291.ph.i, %do.end124.i ], [ %err.3.i, %err_disable_din_clk.i ]
  %41 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %42) #11
  tail call void @clk_unprepare(ptr noundef %42) #11
  br label %err_disable_core_clk.i

err_disable_core_clk.i:                           ; preds = %err_disable_axi_clk.i, %do.end115.i
  %err.5.i = phi i32 [ %retval.0.i283.ph.i, %do.end115.i ], [ %err.4.i, %err_disable_axi_clk.i ]
  %43 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clks, align 4
  tail call void @clk_disable(ptr noundef %44) #11
  tail call void @clk_unprepare(ptr noundef %44) #11
  br label %cleanup

xsdfec_clk_init.exit.sink.split:                  ; preds = %if.end.i.xsdfec_clk_init.exit.sink.split_crit_edge, %if.end.xsdfec_clk_init.exit.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %if.end.xsdfec_clk_init.exit.sink.split_crit_edge ], [ @.str.21, %if.end.i.xsdfec_clk_init.exit.sink.split_crit_edge ]
  %clks.sink = phi ptr [ %clks, %if.end.xsdfec_clk_init.exit.sink.split_crit_edge ], [ %axi_clk.i, %if.end.i.xsdfec_clk_init.exit.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.17.sink) #14
  %45 = ptrtoint ptr %clks.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clks.sink, align 4
  br label %xsdfec_clk_init.exit

xsdfec_clk_init.exit:                             ; preds = %xsdfec_clk_init.exit.sink.split, %if.then91.i.xsdfec_clk_init.exit_crit_edge, %if.then77.i.xsdfec_clk_init.exit_crit_edge, %if.then63.i.xsdfec_clk_init.exit_crit_edge, %if.then49.i.xsdfec_clk_init.exit_crit_edge, %if.then35.i.xsdfec_clk_init.exit_crit_edge, %if.then22.i.xsdfec_clk_init.exit_crit_edge
  %retval.0.i121.in = phi ptr [ %call19.i, %if.then22.i.xsdfec_clk_init.exit_crit_edge ], [ %call32.i, %if.then35.i.xsdfec_clk_init.exit_crit_edge ], [ %call46.i, %if.then49.i.xsdfec_clk_init.exit_crit_edge ], [ %call60.i, %if.then63.i.xsdfec_clk_init.exit_crit_edge ], [ %call74.i, %if.then77.i.xsdfec_clk_init.exit_crit_edge ], [ %call88.i, %if.then91.i.xsdfec_clk_init.exit_crit_edge ], [ %46, %xsdfec_clk_init.exit.sink.split ]
  %retval.0.i121 = ptrtoint ptr %retval.0.i121.in to i32
  %tobool6.not = icmp eq ptr %retval.0.i121.in, null
  br i1 %tobool6.not, label %xsdfec_clk_init.exit.if.end8_crit_edge, label %xsdfec_clk_init.exit.cleanup_crit_edge

xsdfec_clk_init.exit.cleanup_crit_edge:           ; preds = %xsdfec_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xsdfec_clk_init.exit.if.end8_crit_edge:           ; preds = %xsdfec_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %xsdfec_clk_init.exit.if.end8_crit_edge, %if.end.i329.i.if.end8_crit_edge
  %47 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev3, align 4
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %48, ptr noundef %call10) #11
  %regs = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call11, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %call11 to i32
  br label %err_xsdfec_dev

if.end17:                                         ; preds = %if.end8
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 14
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call18, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.body21, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_probe, %if.then26)) #11
          to label %if.end30 [label %if.then26], !srcloc !232

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_probe.__UNIQUE_ID_ddebug273, ptr noundef %48, ptr noundef nonnull @.str.5) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body21, %if.end17.if.end30_crit_edge
  %52 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_code.i) #11
  %56 = ptrtoint ptr %fec_code.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %fec_code.i, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %din_width.i) #11
  %57 = ptrtoint ptr %din_width.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %din_width.i, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %din_word_include.i) #11
  %58 = ptrtoint ptr %din_word_include.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %din_word_include.i, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dout_width.i) #11
  %59 = ptrtoint ptr %dout_width.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %dout_width.i, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dout_word_include.i) #11
  %60 = ptrtoint ptr %dout_word_include.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %dout_word_include.i, align 4, !annotation !233
  %call.i122 = call i32 @of_property_read_string(ptr noundef %55, ptr noundef nonnull @.str.53, ptr noundef nonnull %fec_code.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i123 = icmp slt i32 %call.i122, 0
  br i1 %cmp.i123, label %if.end30.xsdfec_parse_of.exit.thread_crit_edge, label %if.end.i124

if.end30.xsdfec_parse_of.exit.thread_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

if.end.i124:                                      ; preds = %if.end30
  %61 = ptrtoint ptr %fec_code.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fec_code.i, align 4
  %call2.i = call i32 @strcasecmp(ptr noundef %62, ptr noundef nonnull @.str.54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i124.if.end11.i_crit_edge, label %if.else.i

if.end.i124.if.end11.i_crit_edge:                 ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i124
  %call4.i = call i32 @strcasecmp(ptr noundef %62, ptr noundef nonnull @.str.55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end11.i_crit_edge, label %if.else.i.xsdfec_parse_of.exit.thread_crit_edge

if.else.i.xsdfec_parse_of.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i.if.end11.i_crit_edge, %if.end.i124.if.end11.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end.i124.if.end11.i_crit_edge ], [ 0, %if.else.i.if.end11.i_crit_edge ]
  %config7.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %config7.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink.i, ptr %config7.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.56, ptr noundef nonnull %din_word_include.i, i32 noundef 1, i32 noundef 0) #11
  %64 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i, label %if.end11.i.xsdfec_parse_of.exit_crit_edge, label %if.end15.i

if.end11.i.xsdfec_parse_of.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit

if.end15.i:                                       ; preds = %if.end11.i
  %65 = ptrtoint ptr %din_word_include.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %din_word_include.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp16.i = icmp ult i32 %66, 3
  br i1 %cmp16.i, label %if.then17.i, label %if.end15.i.xsdfec_parse_of.exit.thread_crit_edge

if.end15.i.xsdfec_parse_of.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

if.then17.i:                                      ; preds = %if.end15.i
  %din_word_include19.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %din_word_include19.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %din_word_include19.i, align 4
  %call.i.i80.i = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.57, ptr noundef nonnull %din_width.i, i32 noundef 1, i32 noundef 0) #11
  %68 = call i32 @llvm.smin.i32(i32 %call.i.i80.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp23.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp23.i, label %if.then17.i.xsdfec_parse_of.exit_crit_edge, label %if.end25.i

if.then17.i.xsdfec_parse_of.exit_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit

if.end25.i:                                       ; preds = %if.then17.i
  %69 = ptrtoint ptr %din_width.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %din_width.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %if.end25.i.xsdfec_parse_of.exit.thread_crit_edge [
    i32 1, label %if.end25.i.sw.bb.i_crit_edge
    i32 2, label %if.end25.i.sw.bb.i_crit_edge138
    i32 4, label %if.end25.i.sw.bb.i_crit_edge139
  ]

if.end25.i.sw.bb.i_crit_edge139:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end25.i.sw.bb.i_crit_edge138:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end25.i.sw.bb.i_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end25.i.xsdfec_parse_of.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

sw.bb.i:                                          ; preds = %if.end25.i.sw.bb.i_crit_edge, %if.end25.i.sw.bb.i_crit_edge138, %if.end25.i.sw.bb.i_crit_edge139
  %din_width27.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %din_width27.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %70, ptr %din_width27.i, align 4
  %call.i.i81.i = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.58, ptr noundef nonnull %dout_word_include.i, i32 noundef 1, i32 noundef 0) #11
  %73 = call i32 @llvm.smin.i32(i32 %call.i.i81.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81.i)
  %cmp29.i = icmp slt i32 %call.i.i81.i, 0
  br i1 %cmp29.i, label %sw.bb.i.xsdfec_parse_of.exit_crit_edge, label %if.end31.i

sw.bb.i.xsdfec_parse_of.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit

if.end31.i:                                       ; preds = %sw.bb.i
  %74 = ptrtoint ptr %dout_word_include.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dout_word_include.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp32.i = icmp ult i32 %75, 3
  br i1 %cmp32.i, label %if.then33.i, label %if.end31.i.xsdfec_parse_of.exit.thread_crit_edge

if.end31.i.xsdfec_parse_of.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

if.then33.i:                                      ; preds = %if.end31.i
  %dout_word_include35.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 3, i32 5
  %76 = ptrtoint ptr %dout_word_include35.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %dout_word_include35.i, align 4
  %call.i.i82.i = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.59, ptr noundef nonnull %dout_width.i, i32 noundef 1, i32 noundef 0) #11
  %77 = call i32 @llvm.smin.i32(i32 %call.i.i82.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %cmp39.i = icmp slt i32 %call.i.i82.i, 0
  br i1 %cmp39.i, label %if.then33.i.xsdfec_parse_of.exit_crit_edge, label %if.end41.i

if.then33.i.xsdfec_parse_of.exit_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit

if.end41.i:                                       ; preds = %if.then33.i
  %78 = ptrtoint ptr %dout_width.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dout_width.i, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %79, label %if.end41.i.xsdfec_parse_of.exit.thread_crit_edge [
    i32 1, label %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge
    i32 2, label %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge140
    i32 4, label %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge141
  ]

if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge141: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread135

if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge140: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread135

if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread135

if.end41.i.xsdfec_parse_of.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_parse_of.exit.thread

xsdfec_parse_of.exit.thread135:                   ; preds = %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge, %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge140, %if.end41.i.xsdfec_parse_of.exit.thread135_crit_edge141
  %dout_width44.i = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %dout_width44.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %dout_width44.i, align 4
  %82 = ptrtoint ptr %config7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %config7.i, align 4
  call fastcc void @xsdfec_regwrite(ptr noundef nonnull %call.i, i32 noundef 20, i32 noundef %83) #11
  call fastcc void @xsdfec_cfg_axi_streams(ptr noundef nonnull %call.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_code.i) #11
  br label %if.end34

xsdfec_parse_of.exit.thread:                      ; preds = %if.end41.i.xsdfec_parse_of.exit.thread_crit_edge, %if.end31.i.xsdfec_parse_of.exit.thread_crit_edge, %if.end25.i.xsdfec_parse_of.exit.thread_crit_edge, %if.end15.i.xsdfec_parse_of.exit.thread_crit_edge, %if.else.i.xsdfec_parse_of.exit.thread_crit_edge, %if.end30.xsdfec_parse_of.exit.thread_crit_edge
  %retval.0.i125.ph = phi i32 [ -22, %if.end41.i.xsdfec_parse_of.exit.thread_crit_edge ], [ -22, %if.end31.i.xsdfec_parse_of.exit.thread_crit_edge ], [ -22, %if.end25.i.xsdfec_parse_of.exit.thread_crit_edge ], [ -22, %if.end15.i.xsdfec_parse_of.exit.thread_crit_edge ], [ -22, %if.else.i.xsdfec_parse_of.exit.thread_crit_edge ], [ %call.i122, %if.end30.xsdfec_parse_of.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_code.i) #11
  br label %err_xsdfec_dev

xsdfec_parse_of.exit:                             ; preds = %if.then33.i.xsdfec_parse_of.exit_crit_edge, %sw.bb.i.xsdfec_parse_of.exit_crit_edge, %if.then17.i.xsdfec_parse_of.exit_crit_edge, %if.end11.i.xsdfec_parse_of.exit_crit_edge
  %retval.0.i125 = phi i32 [ %64, %if.end11.i.xsdfec_parse_of.exit_crit_edge ], [ %68, %if.then17.i.xsdfec_parse_of.exit_crit_edge ], [ %73, %sw.bb.i.xsdfec_parse_of.exit_crit_edge ], [ %77, %if.then33.i.xsdfec_parse_of.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_word_include.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %din_width.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_code.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i125)
  %cmp32 = icmp slt i32 %retval.0.i125, 0
  br i1 %cmp32, label %xsdfec_parse_of.exit.err_xsdfec_dev_crit_edge, label %xsdfec_parse_of.exit.if.end34_crit_edge

xsdfec_parse_of.exit.if.end34_crit_edge:          ; preds = %xsdfec_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

xsdfec_parse_of.exit.err_xsdfec_dev_crit_edge:    ; preds = %xsdfec_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_xsdfec_dev

if.end34:                                         ; preds = %xsdfec_parse_of.exit.if.end34_crit_edge, %xsdfec_parse_of.exit.thread135
  call fastcc void @update_config_from_hw(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br i1 %cmp, label %if.end34.if.end49_crit_edge, label %do.body37

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.body37:                                        ; preds = %if.end34
  %waitq = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.7, ptr noundef nonnull @xsdfec_probe.__key.6) #11
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq, align 4
  %call41 = call i32 @devm_request_threaded_irq(ptr noundef %48, i32 noundef %86, ptr noundef null, ptr noundef nonnull @xsdfec_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %do.body37.if.end49_crit_edge

do.body37.if.end49_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end46:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.9, i32 noundef %88) #14
  br label %err_xsdfec_dev

if.end49:                                         ; preds = %do.body37.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %call.i126 = call i32 @ida_alloc_range(ptr noundef nonnull @dev_nrs, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp51 = icmp slt i32 %call.i126, 0
  br i1 %cmp51, label %if.end49.err_xsdfec_dev_crit_edge, label %if.end53

if.end49.err_xsdfec_dev_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_xsdfec_dev

if.end53:                                         ; preds = %if.end49
  %dev_id = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i126, ptr %dev_id, align 4
  %dev_name = getelementptr inbounds %struct.xsdfec_dev, ptr %call.i, i32 0, i32 4
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dev_name, i32 noundef 12, ptr noundef nonnull @.str.12, i32 noundef %call.i126)
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 255, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 1
  %91 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev_name, ptr %name, align 4
  %fops = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 2
  %92 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @xsdfec_fops, ptr %fops, align 4
  %parent = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 4
  %93 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %48, ptr %parent, align 4
  %call62 = call i32 @misc_register(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end53.cleanup_crit_edge, label %do.end67

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end67:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.14, i32 noundef %call62) #14
  %94 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dev_id, align 4
  call void @ida_free(ptr noundef nonnull @dev_nrs, i32 noundef %95) #11
  br label %err_xsdfec_dev

err_xsdfec_dev:                                   ; preds = %do.end67, %if.end49.err_xsdfec_dev_crit_edge, %do.end46, %xsdfec_parse_of.exit.err_xsdfec_dev_crit_edge, %xsdfec_parse_of.exit.thread, %if.then14
  %err.0 = phi i32 [ %50, %if.then14 ], [ %retval.0.i125, %xsdfec_parse_of.exit.err_xsdfec_dev_crit_edge ], [ %call41, %do.end46 ], [ %call.i126, %if.end49.err_xsdfec_dev_crit_edge ], [ %call62, %do.end67 ], [ %retval.0.i125.ph, %xsdfec_parse_of.exit.thread ]
  call fastcc void @xsdfec_disable_all_clks(ptr noundef %clks)
  br label %cleanup

cleanup:                                          ; preds = %err_xsdfec_dev, %if.end53.cleanup_crit_edge, %xsdfec_clk_init.exit.cleanup_crit_edge, %err_disable_core_clk.i, %do.end106.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_xsdfec_dev ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i121, %xsdfec_clk_init.exit.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %err.5.i, %err_disable_core_clk.i ], [ %retval.0.i.ph.i, %do.end106.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @misc_deregister(ptr noundef %1) #11
  %dev_id = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_id, align 4
  tail call void @ida_free(ptr noundef nonnull @dev_nrs, i32 noundef %3) #11
  %clks = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 1
  tail call fastcc void @xsdfec_disable_all_clks(ptr noundef %clks)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_config_from_hw(ptr nocapture noundef %xsdfec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef %3, i32 noundef 24) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %entry
  %order = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %order, align 4
  %bypass = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !234
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i.i)) #11
          to label %update_bool_config_from_reg.exit [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %12, ptr noundef nonnull @.str.63, i32 noundef %10, i32 noundef 60) #11
  br label %update_bool_config_from_reg.exit

update_bool_config_from_reg.exit:                 ; preds = %if.then.i.i, %xsdfec_regread.exit
  %13 = trunc i32 %10 to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %bypass to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bypass, align 1
  %code_wr_protect = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #11, !srcloc !234
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i.i36)) #11
          to label %update_bool_config_from_reg.exit37 [label %if.then.i.i36], !srcloc !232

if.then.i.i36:                                    ; preds = %update_bool_config_from_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i35 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %20 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %21, ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef 4) #11
  br label %update_bool_config_from_reg.exit37

update_bool_config_from_reg.exit37:               ; preds = %if.then.i.i36, %update_bool_config_from_reg.exit
  %22 = trunc i32 %19 to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %code_wr_protect to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %code_wr_protect, align 1
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !234
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i41)) #11
          to label %xsdfec_regread.exit42 [label %if.then.i41], !srcloc !232

if.then.i41:                                      ; preds = %update_bool_config_from_reg.exit37
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i40 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %29 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %30, ptr noundef nonnull @.str.63, i32 noundef %28, i32 noundef 40) #11
  br label %xsdfec_regread.exit42

xsdfec_regread.exit42:                            ; preds = %if.then.i41, %update_bool_config_from_reg.exit37
  %and = and i32 %28, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv4 = zext i1 %cmp to i8
  %irq = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4, ptr %irq, align 4
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %33, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #11, !srcloc !234
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i46)) #11
          to label %xsdfec_regread.exit47 [label %if.then.i46], !srcloc !232

if.then.i46:                                      ; preds = %xsdfec_regread.exit42
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i45 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %36 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %37, ptr noundef nonnull @.str.63, i32 noundef %35, i32 noundef 56) #11
  br label %xsdfec_regread.exit47

xsdfec_regread.exit47:                            ; preds = %if.then.i46, %xsdfec_regread.exit42
  %and7 = and i32 %35, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp ne i32 %and7, 0
  %conv10 = zext i1 %cmp8 to i8
  %enable_ecc_isr = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 6, i32 1
  %38 = ptrtoint ptr %enable_ecc_isr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10, ptr %enable_ecc_isr, align 1
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %40, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #11, !srcloc !234
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_config_from_hw, %if.then.i51)) #11
          to label %xsdfec_regread.exit52 [label %if.then.i51], !srcloc !232

if.then.i51:                                      ; preds = %xsdfec_regread.exit47
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i50 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %43 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %44, ptr noundef nonnull @.str.63, i32 noundef %42, i32 noundef 16) #11
  br label %xsdfec_regread.exit52

xsdfec_regread.exit52:                            ; preds = %if.then.i51, %xsdfec_regread.exit47
  %and14 = and i32 %42, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 0
  %spec.select = select i1 %cmp15.not, i32 2, i32 1
  %45 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select, ptr %45, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 14
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp.not = icmp eq i32 %1, %irq
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !236

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1131, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @xsdfec_isr_enable(ptr noundef %dev_id, i1 noundef zeroext false)
  %call21 = tail call fastcc i32 @xsdfec_ecc_isr_enable(ptr noundef %dev_id, i1 noundef zeroext false)
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %7, ptr noundef nonnull @.str.63, i32 noundef %5, i32 noundef 44) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %if.end
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1175 = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1175) #11, !srcloc !234
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then.i1177)) #11
          to label %xsdfec_regread.exit1178 [label %if.then.i1177], !srcloc !232

if.then.i1177:                                    ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i1176 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i1176 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i1176, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %13, ptr noundef nonnull @.str.63, i32 noundef %11, i32 noundef 28) #11
  br label %xsdfec_regread.exit1178

xsdfec_regread.exit1178:                          ; preds = %if.then.i1177, %xsdfec_regread.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then.i1180)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i1180], !srcloc !232

if.then.i1180:                                    ; preds = %xsdfec_regread.exit1178
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i1179 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %14 = ptrtoint ptr %dev.i1179 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i1179, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %15, ptr noundef nonnull @.str.61, i32 noundef %5, i32 noundef 44) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i1180, %xsdfec_regread.exit1178
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1182 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1182, i32 %4) #11, !srcloc !238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then.i1184)) #11
          to label %xsdfec_regwrite.exit1187 [label %if.then.i1184], !srcloc !232

if.then.i1184:                                    ; preds = %xsdfec_regwrite.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i1183 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %18 = ptrtoint ptr %dev.i1183 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i1183, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %19, ptr noundef nonnull @.str.61, i32 noundef %11, i32 noundef 28) #11
  br label %xsdfec_regwrite.exit1187

xsdfec_regwrite.exit1187:                         ; preds = %if.then.i1184, %xsdfec_regwrite.exit
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1186 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1186, i32 %10) #11, !srcloc !238
  %and = and i32 %5, 1010825216
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and) #11
  %call.i1188 = tail call i32 @__sw_hweight32(i32 noundef %5) #11
  %mul.neg = mul i32 %call.i, -2
  %sub = add i32 %call.i1188, %mul.neg
  %call.i1189 = tail call i32 @__sw_hweight32(i32 noundef %11) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then903)) #11
          to label %do.body907 [label %if.then903], !srcloc !232

if.then903:                                       ; preds = %xsdfec_regwrite.exit1187
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_irq_thread.__UNIQUE_ID_ddebug270, ptr noundef %23, ptr noundef nonnull @.str.65, i32 noundef %and, i32 noundef %call.i, i32 noundef %call.i1188, i32 noundef %sub, i32 noundef %call.i1189) #11
  br label %do.body907

do.body907:                                       ; preds = %if.then903, %xsdfec_regwrite.exit1187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then919)) #11
          to label %do.body928 [label %if.then919], !srcloc !232

if.then919:                                       ; preds = %do.body907
  call void @__sanitizer_cov_trace_pc() #13
  %dev920 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %24 = ptrtoint ptr %dev920 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev920, align 4
  %uecc_count921 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 13
  %26 = ptrtoint ptr %uecc_count921 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uecc_count921, align 4
  %cecc_count922 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 12
  %28 = ptrtoint ptr %cecc_count922 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cecc_count922, align 4
  %isr_err_count923 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 11
  %30 = ptrtoint ptr %isr_err_count923 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %isr_err_count923, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_irq_thread.__UNIQUE_ID_ddebug271, ptr noundef %25, ptr noundef nonnull @.str.66, i32 noundef %27, i32 noundef %29, i32 noundef %31) #11
  br label %do.body928

do.body928:                                       ; preds = %if.then919, %do.body907
  %error_data_lock = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 9
  %call933 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_data_lock) #11
  %flags = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 5
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call933, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool938.not = icmp eq i32 %call.i, 0
  br i1 %tobool938.not, label %do.body928.if.end942_crit_edge, label %if.then939

do.body928.if.end942_crit_edge:                   ; preds = %do.body928
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end942

if.then939:                                       ; preds = %do.body928
  call void @__sanitizer_cov_trace_pc() #13
  %uecc_count940 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 13
  %33 = ptrtoint ptr %uecc_count940 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uecc_count940, align 4
  %add941 = add i32 %34, %call.i
  store i32 %add941, ptr %uecc_count940, align 4
  br label %if.end942

if.end942:                                        ; preds = %if.then939, %do.body928.if.end942_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool943.not = icmp eq i32 %sub, 0
  br i1 %tobool943.not, label %if.end942.if.end947_crit_edge, label %if.then944

if.end942.if.end947_crit_edge:                    ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end947

if.then944:                                       ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #13
  %cecc_count945 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 12
  %35 = ptrtoint ptr %cecc_count945 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cecc_count945, align 4
  %add946 = add i32 %36, %sub
  store i32 %add946, ptr %cecc_count945, align 4
  br label %if.end947

if.end947:                                        ; preds = %if.then944, %if.end942.if.end947_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1189)
  %tobool948.not = icmp eq i32 %call.i1189, 0
  br i1 %tobool948.not, label %if.end947.if.end952_crit_edge, label %if.then949

if.end947.if.end952_crit_edge:                    ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end952

if.then949:                                       ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #13
  %isr_err_count950 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 11
  %37 = ptrtoint ptr %isr_err_count950 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %isr_err_count950, align 4
  %add951 = add i32 %38, %call.i1189
  store i32 %add951, ptr %isr_err_count950, align 4
  br label %if.end952

if.end952:                                        ; preds = %if.then949, %if.end947.if.end952_crit_edge
  br i1 %tobool938.not, label %if.end952.if.end964_crit_edge, label %if.then954

if.end952.if.end964_crit_edge:                    ; preds = %if.end952
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end964

if.then954:                                       ; preds = %if.end952
  %and955 = and i32 %5, 4192256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and955)
  %tobool956.not = icmp eq i32 %and955, 0
  br i1 %tobool956.not, label %if.else, label %if.then954.if.end963.sink.split_crit_edge

if.then954.if.end963.sink.split_crit_edge:        ; preds = %if.then954
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end963.sink.split

if.else:                                          ; preds = %if.then954
  %and958 = and i32 %5, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and958)
  %tobool959.not = icmp eq i32 %and958, 0
  br i1 %tobool959.not, label %if.else.if.end963_crit_edge, label %if.else.if.end963.sink.split_crit_edge

if.else.if.end963.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end963.sink.split

if.else.if.end963_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end963

if.end963.sink.split:                             ; preds = %if.else.if.end963.sink.split_crit_edge, %if.then954.if.end963.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then954.if.end963.sink.split_crit_edge ], [ 4, %if.else.if.end963.sink.split_crit_edge ]
  %state961 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 8
  %39 = ptrtoint ptr %state961 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %state961, align 4
  br label %if.end963

if.end963:                                        ; preds = %if.end963.sink.split, %if.else.if.end963_crit_edge
  %stats_updated = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 16
  %40 = ptrtoint ptr %stats_updated to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %stats_updated, align 1
  %state_updated = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 15
  %41 = ptrtoint ptr %state_updated to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %state_updated, align 4
  br label %if.end964

if.end964:                                        ; preds = %if.end963, %if.end952.if.end964_crit_edge
  br i1 %tobool943.not, label %if.end964.if.end968_crit_edge, label %if.then966

if.end964.if.end968_crit_edge:                    ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end968

if.then966:                                       ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #13
  %stats_updated967 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 16
  %42 = ptrtoint ptr %stats_updated967 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %stats_updated967, align 1
  br label %if.end968

if.end968:                                        ; preds = %if.then966, %if.end964.if.end968_crit_edge
  br i1 %tobool948.not, label %if.end968.if.end974_crit_edge, label %if.then970

if.end968.if.end974_crit_edge:                    ; preds = %if.end968
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end974

if.then970:                                       ; preds = %if.end968
  call void @__sanitizer_cov_trace_pc() #13
  %state971 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 8
  %43 = ptrtoint ptr %state971 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %state971, align 4
  %stats_updated972 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 16
  %44 = ptrtoint ptr %stats_updated972 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %stats_updated972, align 1
  %state_updated973 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 15
  %45 = ptrtoint ptr %state_updated973 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %state_updated973, align 4
  br label %if.end974

if.end974:                                        ; preds = %if.then970, %if.end968.if.end974_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_data_lock, i32 noundef %call933) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_irq_thread, %if.then989)) #11
          to label %do.end999 [label %if.then989], !srcloc !232

if.then989:                                       ; preds = %if.end974
  call void @__sanitizer_cov_trace_pc() #13
  %dev990 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 7
  %46 = ptrtoint ptr %dev990 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev990, align 4
  %state_updated991 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 15
  %48 = ptrtoint ptr %state_updated991 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %state_updated991, align 4, !range !239
  %50 = zext i8 %49 to i32
  %stats_updated994 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 16
  %51 = ptrtoint ptr %stats_updated994 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %stats_updated994, align 1, !range !239
  %53 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_irq_thread.__UNIQUE_ID_ddebug272, ptr noundef %47, ptr noundef nonnull @.str.67, i32 noundef %50, i32 noundef %53) #11
  br label %do.end999

do.end999:                                        ; preds = %if.then989, %if.end974
  %state_updated1000 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 15
  %54 = ptrtoint ptr %state_updated1000 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %state_updated1000, align 4, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool1001.not = icmp eq i8 %55, 0
  br i1 %tobool1001.not, label %lor.lhs.false, label %do.end999.if.then1006_crit_edge

do.end999.if.then1006_crit_edge:                  ; preds = %do.end999
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1006

lor.lhs.false:                                    ; preds = %do.end999
  %stats_updated1003 = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 16
  %56 = ptrtoint ptr %stats_updated1003 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stats_updated1003, align 1, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1004.not = icmp eq i8 %57, 0
  br i1 %tobool1004.not, label %lor.lhs.false.if.end1008_crit_edge, label %lor.lhs.false.if.then1006_crit_edge

lor.lhs.false.if.then1006_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1006

lor.lhs.false.if.end1008_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1008

if.then1006:                                      ; preds = %lor.lhs.false.if.then1006_crit_edge, %do.end999.if.then1006_crit_edge
  %waitq = getelementptr inbounds %struct.xsdfec_dev, ptr %dev_id, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end1008

if.end1008:                                       ; preds = %if.then1006, %lor.lhs.false.if.end1008_crit_edge
  %ret.0 = phi i32 [ 1, %if.then1006 ], [ 0, %lor.lhs.false.if.end1008_crit_edge ]
  %call1009 = tail call fastcc i32 @xsdfec_isr_enable(ptr noundef %dev_id, i1 noundef zeroext true)
  %call1010 = tail call fastcc i32 @xsdfec_ecc_isr_enable(ptr noundef %dev_id, i1 noundef zeroext true)
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsdfec_disable_all_clks(ptr nocapture noundef readonly %clks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 7
  %0 = ptrtoint ptr %status_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #11
  tail call void @clk_unprepare(ptr noundef %1) #11
  %ctrl_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 6
  %2 = ptrtoint ptr %ctrl_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %dout_words_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 5
  %4 = ptrtoint ptr %dout_words_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dout_words_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %dout_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 4
  %6 = ptrtoint ptr %dout_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dout_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %din_words_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 2
  %8 = ptrtoint ptr %din_words_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %din_words_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %din_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 3
  %10 = ptrtoint ptr %din_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %din_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %12 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clks, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  %axi_clk = getelementptr inbounds %struct.xsdfec_clks, ptr %clks, i32 0, i32 1
  %14 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsdfec_regwrite(ptr nocapture noundef readonly %xsdfec, i32 noundef %addr, i32 noundef %value) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_regwrite, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !232

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %value, i32 noundef %addr) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !238
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsdfec_cfg_axi_streams(ptr nocapture noundef readonly %xsdfec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dout_word_include = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %dout_word_include to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dout_word_include, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond.i = icmp eq i32 %1, 2
  %dout_width = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %dout_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dout_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch.selectcmp3.i = icmp eq i32 %3, 4
  %din_word_include = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %din_word_include to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %din_word_include, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond.i1 = icmp eq i32 %5, 2
  %din_width = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %din_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %din_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.selectcmp.i3 = icmp eq i32 %7, 2
  %switch.select.i4 = zext i1 %switch.selectcmp.i3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp3.i5 = icmp eq i32 %7, 4
  %switch.select4.i6 = select i1 %switch.selectcmp3.i5, i32 2, i32 %switch.select.i4
  %shl = select i1 %cond.i, i32 32, i32 0
  %switch.select.i.op = select i1 %switch.selectcmp.i, i32 8, i32 0
  %shl5 = select i1 %switch.selectcmp3.i, i32 16, i32 %switch.select.i.op
  %or = or i32 %shl5, %shl
  %shl6 = select i1 %cond.i1, i32 4, i32 0
  %or7 = or i32 %or, %shl6
  %or9 = or i32 %or7, %switch.select4.i6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_cfg_axi_streams, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %9, ptr noundef nonnull @.str.61, i32 noundef %or9, i32 noundef 12) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %entry
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %12 = shl nuw nsw i32 %or9, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !238
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_isr_enable(ptr nocapture noundef readonly %xsdfec, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef 63, i32 noundef 32) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.then
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1056964608) #11, !srcloc !238
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #11, !srcloc !234
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then.i44)) #11
          to label %xsdfec_regread.exit [label %if.then.i44], !srcloc !232

if.then.i44:                                      ; preds = %xsdfec_regwrite.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i43 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %7, i32 noundef 40) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i44, %xsdfec_regwrite.exit
  %and = and i32 %7, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %xsdfec_regread.exit.cleanup_crit_edge, label %do.body

xsdfec_regread.exit.cleanup_crit_edge:            ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_isr_enable.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_isr_enable.__UNIQUE_ID_ddebug248, ptr noundef %11, ptr noundef nonnull @.str.69) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then.i46)) #11
          to label %xsdfec_regwrite.exit49 [label %if.then.i46], !srcloc !232

if.then.i46:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i45 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef 63, i32 noundef 36) #11
  br label %xsdfec_regwrite.exit49

xsdfec_regwrite.exit49:                           ; preds = %if.then.i46, %if.else
  %regs.i47 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %14 = ptrtoint ptr %regs.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 1056964608) #11, !srcloc !238
  %16 = ptrtoint ptr %regs.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i47, align 4
  %add.ptr.i51 = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #11, !srcloc !234
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then.i53)) #11
          to label %xsdfec_regread.exit54 [label %if.then.i53], !srcloc !232

if.then.i53:                                      ; preds = %xsdfec_regwrite.exit49
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i52 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %20 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %21, ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef 40) #11
  br label %xsdfec_regread.exit54

xsdfec_regread.exit54:                            ; preds = %if.then.i53, %xsdfec_regwrite.exit49
  %and11 = and i32 %19, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and11)
  %cmp.not = icmp eq i32 %and11, 63
  br i1 %cmp.not, label %xsdfec_regread.exit54.cleanup_crit_edge, label %do.body13

xsdfec_regread.exit54.cleanup_crit_edge:          ; preds = %xsdfec_regread.exit54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body13:                                        ; preds = %xsdfec_regread.exit54
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_isr_enable.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_isr_enable, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !232

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %dev26 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %22 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_isr_enable.__UNIQUE_ID_ddebug249, ptr noundef %23, ptr noundef nonnull @.str.70) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body13, %xsdfec_regread.exit54.cleanup_crit_edge, %if.then8, %do.body, %xsdfec_regread.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ -5, %if.then25 ], [ 0, %xsdfec_regread.exit54.cleanup_crit_edge ], [ 0, %xsdfec_regread.exit.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_ecc_isr_enable(ptr nocapture noundef readonly %xsdfec, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef 1073741823, i32 noundef 48) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.then
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -193) #11, !srcloc !238
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #11, !srcloc !234
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then.i47)) #11
          to label %xsdfec_regread.exit [label %if.then.i47], !srcloc !232

if.then.i47:                                      ; preds = %xsdfec_regwrite.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i46 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %7, i32 noundef 56) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i47, %xsdfec_regwrite.exit
  %and = and i32 %7, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %xsdfec_regread.exit.cleanup_crit_edge, label %do.body

xsdfec_regread.exit.cleanup_crit_edge:            ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug250, ptr noundef %11, ptr noundef nonnull @.str.72) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then.i49)) #11
          to label %xsdfec_regwrite.exit52 [label %if.then.i49], !srcloc !232

if.then.i49:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i48 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef 1073741823, i32 noundef 52) #11
  br label %xsdfec_regwrite.exit52

xsdfec_regwrite.exit52:                           ; preds = %if.then.i49, %if.else
  %regs.i50 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %14 = ptrtoint ptr %regs.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 -193) #11, !srcloc !238
  %16 = ptrtoint ptr %regs.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i50, align 4
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 56
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #11, !srcloc !234
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then.i56)) #11
          to label %xsdfec_regread.exit57 [label %if.then.i56], !srcloc !232

if.then.i56:                                      ; preds = %xsdfec_regwrite.exit52
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i55 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %20 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %21, ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef 56) #11
  br label %xsdfec_regread.exit57

xsdfec_regread.exit57:                            ; preds = %if.then.i56, %xsdfec_regwrite.exit52
  %and11 = and i32 %19, 1073741823
  %22 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and11, label %do.body15 [
    i32 4194303, label %xsdfec_regread.exit57.cleanup_crit_edge
    i32 1069547520, label %xsdfec_regread.exit57.cleanup_crit_edge60
  ]

xsdfec_regread.exit57.cleanup_crit_edge60:        ; preds = %xsdfec_regread.exit57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xsdfec_regread.exit57.cleanup_crit_edge:          ; preds = %xsdfec_regread.exit57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body15:                                        ; preds = %xsdfec_regread.exit57
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_ecc_isr_enable, %if.then27)) #11
          to label %cleanup [label %if.then27], !srcloc !232

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %dev28 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %23 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug251, ptr noundef %24, ptr noundef nonnull @.str.73) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %xsdfec_regread.exit57.cleanup_crit_edge, %xsdfec_regread.exit57.cleanup_crit_edge60, %if.then8, %do.body, %xsdfec_regread.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ -5, %if.then27 ], [ 0, %xsdfec_regread.exit57.cleanup_crit_edge ], [ 0, %xsdfec_regread.exit57.cleanup_crit_edge60 ], [ 0, %xsdfec_regread.exit.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %error_data_lock = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_data_lock) #11
  %flags = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %flags, align 4
  %state_updated = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %state_updated to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state_updated, align 4, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 3
  %stats_updated = getelementptr inbounds %struct.xsdfec_dev, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %stats_updated to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stats_updated, align 1, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %or8 = or i32 %spec.select, 65
  %mask.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_data_lock, i32 noundef %call3) #11
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsdfec_dev_ioctl(ptr nocapture noundef readonly %fptr, i32 noundef %cmd, i32 noundef %data) #2 align 64 {
entry:
  %irq.i = alloca %struct.xsdfec_irq, align 1
  %user_stats.i = alloca %struct.xsdfec_stats, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %fptr, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %.fr = freeze i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.fr)
  %cmp.not = icmp eq i32 %.fr, 3
  br i1 %cmp.not, label %switch.early.test, label %if.end

switch.early.test:                                ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %cmd, label %switch.early.test.cleanup_crit_edge [
    i32 26123, label %switch.early.test.sw.bb10_crit_edge
    i32 -2146671092, label %switch.early.test.sw.bb12_crit_edge
    i32 -2146933246, label %switch.early.test.sw.bb14_crit_edge
    i32 26125, label %switch.early.test.sw.bb18_crit_edge
  ]

switch.early.test.sw.bb18_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

switch.early.test.sw.bb14_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14

switch.early.test.sw.bb12_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

switch.early.test.sw.bb10_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 26112, label %sw.bb
    i32 26113, label %sw.bb8
    i32 26123, label %if.end.sw.bb10_crit_edge
    i32 -2146671092, label %if.end.sw.bb12_crit_edge
    i32 -2146933246, label %if.end.sw.bb14_crit_edge
    i32 -2145622522, label %sw.bb16
    i32 26125, label %if.end.sw.bb18_crit_edge
    i32 1073899011, label %sw.bb20
    i32 1074292228, label %sw.bb22
    i32 -2146933241, label %sw.bb24
    i32 1078748677, label %sw.bb26
    i32 1074030088, label %sw.bb28
    i32 1073833481, label %sw.bb30
    i32 -2147391990, label %sw.bb32
  ]

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @xsdfec_start(ptr noundef %2)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xsdfec_stop(ptr noundef %2)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %switch.early.test.sw.bb10_crit_edge
  %error_data_lock.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_data_lock.i) #11
  %flags.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %flags.i, align 4
  %isr_err_count.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %isr_err_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %isr_err_count.i, align 4
  %uecc_count.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 13
  %9 = ptrtoint ptr %uecc_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %uecc_count.i, align 4
  %cecc_count.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 12
  %10 = ptrtoint ptr %cecc_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cecc_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_data_lock.i, i32 noundef %call2.i) #11
  br label %cleanup

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %switch.early.test.sw.bb12_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %user_stats.i) #11
  %11 = getelementptr inbounds %struct.xsdfec_stats, ptr %user_stats.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.xsdfec_stats, ptr %user_stats.i, i32 0, i32 2
  %error_data_lock.i66 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 9
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_data_lock.i66) #11
  %flags.i68 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i67, ptr %flags.i68, align 4
  %isr_err_count.i69 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 11
  %14 = ptrtoint ptr %isr_err_count.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isr_err_count.i69, align 4
  %16 = ptrtoint ptr %user_stats.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %user_stats.i, align 4
  %cecc_count.i70 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 12
  %17 = ptrtoint ptr %cecc_count.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cecc_count.i70, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %11, align 4
  %uecc_count.i71 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 13
  %20 = ptrtoint ptr %uecc_count.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uecc_count.i71, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %12, align 4
  %stats_updated.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 16
  %23 = ptrtoint ptr %stats_updated.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %stats_updated.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_data_lock.i66, i32 noundef %call2.i67) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb12.xsdfec_get_stats.exit_crit_edge, label %if.end.i.i.i

sw.bb12.xsdfec_get_stats.exit_crit_edge:          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_get_stats.exit

if.end.i.i.i:                                     ; preds = %sw.bb12
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #15, !srcloc !240
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.xsdfec_get_stats.exit_crit_edge

if.end.i.i.i.xsdfec_get_stats.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xsdfec_get_stats.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %user_stats.i, i32 noundef 12) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %user_stats.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %xsdfec_get_stats.exit

xsdfec_get_stats.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i.xsdfec_get_stats.exit_crit_edge, %sw.bb12.xsdfec_get_stats.exit_crit_edge
  %25 = phi i32 [ -14, %sw.bb12.xsdfec_get_stats.exit_crit_edge ], [ -14, %if.end.i.i.i.xsdfec_get_stats.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %user_stats.i) #11
  br label %cleanup

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %switch.early.test.sw.bb14_crit_edge
  %call15 = tail call fastcc i32 @xsdfec_get_status(ptr noundef %2, ptr noundef %0)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %config.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #11
  %call.i.i.i72 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i72, label %sw.bb16.cleanup_crit_edge, label %if.end.i.i.i75

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i.i75:                                   ; preds = %sw.bb16
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 28, i32 -1226833920) #15, !srcloc !240
  %asmresult.i.i.i73 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i73)
  %cmp.i6.i.i74 = icmp eq i32 %asmresult.i.i.i73, 0
  br i1 %cmp.i6.i.i74, label %copy_to_user.exit.i80, label %if.end.i.i.i75.cleanup_crit_edge

if.end.i.i.i75.cleanup_crit_edge:                 ; preds = %if.end.i.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.i80:                            ; preds = %if.end.i.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %config.i, i32 noundef 28) #11
  %call.i12.i.i.i77 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %config.i, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i77)
  %tobool.not.i78 = icmp eq i32 %call.i12.i.i.i77, 0
  %spec.select.i79 = select i1 %tobool.not.i78, i32 0, i32 -14
  br label %cleanup

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %switch.early.test.sw.bb18_crit_edge
  tail call fastcc void @xsdfec_set_default_config(ptr noundef %2)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %irq.i) #11
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %irq.i, align 1, !annotation !233
  %28 = getelementptr inbounds %struct.xsdfec_irq, ptr %irq.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %28, align 1, !annotation !233
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #11
  %call.i.i.i81 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i81, label %sw.bb20.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb20.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb20
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 2, i32 -1226833920) #15, !srcloc !241
  %asmresult.i.i.i82 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i82)
  %cmp.i6.i.i83 = icmp eq i32 %asmresult.i.i.i82, 0
  br i1 %cmp.i6.i.i83, label %if.end.i.i.i85, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !236

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i85:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i84 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %irq.i, i32 noundef 2) #11
  %31 = call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !242
  %and.i.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %irq.i, ptr noundef %0, i32 noundef 2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i85.if.then11.i.i.i_crit_edge, !prof !236

if.end.i.i.i85.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i85.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb20.if.then11.i.i.i_crit_edge
  %res.0.i.i32.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i85.if.then11.i.i.i_crit_edge ], [ 2, %sw.bb20.if.then11.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 2, %res.0.i.i32.i
  %add.ptr.i.i.i = getelementptr i8, ptr %irq.i, i32 %sub.i.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i32.i)
  br label %xsdfec_set_irq.exit

if.end.i:                                         ; preds = %if.end.i.i.i85
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %irq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.i = icmp ne i8 %36, 0
  %call2.i86 = call fastcc i32 @xsdfec_isr_enable(ptr noundef %2, i1 noundef zeroext %tobool1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i86)
  %tobool3.not.i = icmp eq i32 %call2.i86, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %irq.i, align 1
  %irq6.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %irq6.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool9.i = icmp ne i8 %41, 0
  %call10.i = call fastcc i32 @xsdfec_ecc_isr_enable(ptr noundef %2, i1 noundef zeroext %tobool9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %28, align 1
  %enable_ecc_isr16.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 3, i32 6, i32 1
  %44 = ptrtoint ptr %enable_ecc_isr16.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %enable_ecc_isr16.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i86)
  %cmp.i = icmp slt i32 %call2.i86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp18.i = icmp slt i32 %call10.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp18.i
  %err.0.i = select i1 %or.cond.i, i32 -5, i32 0
  br label %xsdfec_set_irq.exit

xsdfec_set_irq.exit:                              ; preds = %if.end17.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %err.0.i, %if.end17.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %irq.i) #11
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call fastcc i32 @xsdfec_set_turbo(ptr noundef %2, ptr noundef %0)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call fastcc i32 @xsdfec_get_turbo(ptr noundef %2, ptr noundef %0)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %call.i = tail call ptr @memdup_user(ptr noundef %0, i32 noundef 76) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i89

if.then.i:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end.i89:                                       ; preds = %sw.bb26
  %config.i87 = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 3
  %46 = ptrtoint ptr %config.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i88 = icmp eq i32 %47, 0
  br i1 %cmp.i88, label %if.end.i89.err_out.i_crit_edge, label %if.end4.i

if.end.i89.err_out.i_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end4.i:                                        ; preds = %if.end.i89
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp5.i = icmp eq i32 %49, 1
  br i1 %cmp5.i, label %if.end4.i.err_out.i_crit_edge, label %if.end7.i

if.end4.i.err_out.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end7.i:                                        ; preds = %if.end4.i
  %code_wr_protect.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %code_wr_protect.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %code_wr_protect.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i90 = icmp eq i8 %51, 0
  br i1 %tobool.not.i90, label %if.end10.i, label %if.end7.i.err_out.i_crit_edge

if.end7.i.err_out.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end10.i:                                       ; preds = %if.end7.i
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i, align 4
  %k.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %k.i, align 4
  %psize.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %psize.i, align 4
  %code_id.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 18
  %58 = ptrtoint ptr %code_id.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %code_id.i, align 4
  %conv.i = zext i16 %59 to i32
  %call12.i = tail call fastcc i32 @xsdfec_reg0_write(ptr noundef %2, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.err_out.i_crit_edge

if.end10.i.err_out.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end15.i:                                       ; preds = %if.end10.i
  %60 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %psize.i, align 4
  %no_packing.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 8
  %62 = ptrtoint ptr %no_packing.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %no_packing.i, align 4
  %nm.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 6
  %64 = ptrtoint ptr %nm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nm.i, align 4
  %66 = ptrtoint ptr %code_id.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %code_id.i, align 4
  %conv18.i = zext i16 %67 to i32
  %call19.i = tail call fastcc i32 @xsdfec_reg1_write(ptr noundef %2, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %conv18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end15.i.err_out.i_crit_edge

if.end15.i.err_out.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end22.i:                                       ; preds = %if.end15.i
  %nlayers.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %nlayers.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nlayers.i, align 4
  %nmqc.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 5
  %70 = ptrtoint ptr %nmqc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nmqc.i, align 4
  %norm_type.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 7
  %72 = ptrtoint ptr %norm_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %norm_type.i, align 4
  %special_qc.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 9
  %74 = ptrtoint ptr %special_qc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %special_qc.i, align 4
  %no_final_parity.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 10
  %76 = ptrtoint ptr %no_final_parity.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %no_final_parity.i, align 4
  %max_schedule.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 11
  %78 = ptrtoint ptr %max_schedule.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_schedule.i, align 4
  %80 = ptrtoint ptr %code_id.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %code_id.i, align 4
  %conv24.i = zext i16 %81 to i32
  %call25.i = tail call fastcc i32 @xsdfec_reg2_write(ptr noundef %2, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %conv24.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end22.i.err_out.i_crit_edge

if.end22.i.err_out.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end28.i:                                       ; preds = %if.end22.i
  %sc_off.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 12
  %82 = ptrtoint ptr %sc_off.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sc_off.i, align 4
  %conv29.i = trunc i32 %83 to i8
  %la_off.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 13
  %84 = ptrtoint ptr %la_off.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %la_off.i, align 4
  %conv30.i = trunc i32 %85 to i8
  %qc_off.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 14
  %86 = ptrtoint ptr %qc_off.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qc_off.i, align 4
  %conv31.i = trunc i32 %87 to i16
  %88 = ptrtoint ptr %code_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %code_id.i, align 4
  %conv33.i = zext i16 %89 to i32
  %call34.i = tail call fastcc i32 @xsdfec_reg3_write(ptr noundef %2, i8 noundef zeroext %conv29.i, i8 noundef zeroext %conv30.i, i16 noundef zeroext %conv31.i, i32 noundef %conv33.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end28.i.err_out.i_crit_edge

if.end28.i.err_out.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end37.i:                                       ; preds = %if.end28.i
  %90 = ptrtoint ptr %nlayers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nlayers.i, align 4
  %div108.i = lshr i32 %91, 2
  %rem.i = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool40.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %tobool40.not.i to i32
  %spec.select.i91 = add nuw nsw i32 %div108.i, %inc.i
  %92 = ptrtoint ptr %sc_off.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sc_off.i, align 4
  %sc_table.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 15
  %94 = ptrtoint ptr %sc_table.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sc_table.i, align 4
  %call44.i = tail call fastcc i32 @xsdfec_table_write(ptr noundef %2, i32 noundef %93, ptr noundef %95, i32 noundef %spec.select.i91, i32 noundef 65536, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end37.i.err_out.i_crit_edge, label %if.end48.i

if.end37.i.err_out.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end48.i:                                       ; preds = %if.end37.i
  %96 = ptrtoint ptr %la_off.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %la_off.i, align 4
  %mul.i = shl i32 %97, 2
  %la_table.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 16
  %98 = ptrtoint ptr %la_table.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %la_table.i, align 4
  %100 = ptrtoint ptr %nlayers.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nlayers.i, align 4
  %call51.i = tail call fastcc i32 @xsdfec_table_write(ptr noundef %2, i32 noundef %mul.i, ptr noundef %99, i32 noundef %101, i32 noundef 98304, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end48.i.err_out.i_crit_edge, label %if.end55.i

if.end48.i.err_out.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end55.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %qc_off.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %qc_off.i, align 4
  %mul57.i = shl i32 %103, 2
  %qc_table.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 17
  %104 = ptrtoint ptr %qc_table.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %qc_table.i, align 4
  %nqc.i = getelementptr inbounds %struct.xsdfec_ldpc_params, ptr %call.i, i32 0, i32 4
  %106 = ptrtoint ptr %nqc.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nqc.i, align 4
  %call58.i = tail call fastcc i32 @xsdfec_table_write(ptr noundef %2, i32 noundef %mul57.i, ptr noundef %105, i32 noundef %107, i32 noundef 131072, i32 noundef 32768) #11
  br label %err_out.i

err_out.i:                                        ; preds = %if.end55.i, %if.end48.i.err_out.i_crit_edge, %if.end37.i.err_out.i_crit_edge, %if.end28.i.err_out.i_crit_edge, %if.end22.i.err_out.i_crit_edge, %if.end15.i.err_out.i_crit_edge, %if.end10.i.err_out.i_crit_edge, %if.end7.i.err_out.i_crit_edge, %if.end4.i.err_out.i_crit_edge, %if.end.i89.err_out.i_crit_edge
  %ret.0.i = phi i32 [ %call12.i, %if.end10.i.err_out.i_crit_edge ], [ %call19.i, %if.end15.i.err_out.i_crit_edge ], [ %call25.i, %if.end22.i.err_out.i_crit_edge ], [ %call34.i, %if.end28.i.err_out.i_crit_edge ], [ %call44.i, %if.end37.i.err_out.i_crit_edge ], [ %call51.i, %if.end48.i.err_out.i_crit_edge ], [ %call58.i, %if.end55.i ], [ -5, %if.end.i89.err_out.i_crit_edge ], [ -5, %if.end4.i.err_out.i_crit_edge ], [ -5, %if.end7.i.err_out.i_crit_edge ]
  tail call void @kfree(ptr noundef %call.i) #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call fastcc i32 @xsdfec_set_order(ptr noundef %2, ptr noundef %0)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call fastcc i32 @xsdfec_set_bypass(ptr noundef %2, ptr noundef %0)
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  %regs.i.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 6
  %108 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 8
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !234
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_dev_ioctl, %if.then.i.i)) #11
          to label %xsdfec_is_active.exit [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.xsdfec_dev, ptr %2, i32 0, i32 7
  %112 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %113, ptr noundef nonnull @.str.63, i32 noundef %111, i32 noundef 8) #11
  br label %xsdfec_is_active.exit

xsdfec_is_active.exit:                            ; preds = %if.then.i.i, %sw.bb32
  %and.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 787) #11
  %114 = tail call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 4
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !242
  %and.i.i = and i32 %116, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %117 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i1 %tobool.i, i32 -1226833921) #11, !srcloc !245
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool9.not.i = icmp eq i32 %117, 0
  %..i = select i1 %tobool9.not.i, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_is_active.exit, %sw.bb30, %sw.bb28, %err_out.i, %if.then.i, %sw.bb24, %sw.bb22, %xsdfec_set_irq.exit, %sw.bb18, %copy_to_user.exit.i80, %if.end.i.i.i75.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb14, %xsdfec_get_stats.exit, %sw.bb10, %sw.bb8, %sw.bb, %if.end.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %switch.early.test.cleanup_crit_edge ], [ %..i, %xsdfec_is_active.exit ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %retval.0.i, %xsdfec_set_irq.exit ], [ 0, %sw.bb18 ], [ %call15, %sw.bb14 ], [ %25, %xsdfec_get_stats.exit ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ %call, %sw.bb ], [ -25, %if.end.cleanup_crit_edge ], [ -14, %sw.bb16.cleanup_crit_edge ], [ -14, %if.end.i.i.i75.cleanup_crit_edge ], [ %spec.select.i79, %copy_to_user.exit.i80 ], [ %45, %if.then.i ], [ %ret.0.i, %err_out.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xsdfec_dev_open(ptr nocapture noundef readnone %iptr, ptr nocapture noundef readnone %fptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xsdfec_dev_release(ptr nocapture noundef readnone %iptr, ptr nocapture noundef readnone %fptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_start(ptr nocapture noundef %xsdfec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_start, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef %3, i32 noundef 20) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %entry
  %and = and i32 %3, 1
  %config = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.not = icmp eq i32 %and, %7
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_start.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_start, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !232

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_start.__UNIQUE_ID_ddebug268, ptr noundef %9, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %and, i32 noundef %11) #11
  br label %cleanup

if.end7:                                          ; preds = %xsdfec_regread.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_start, %if.then.i16)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i16], !srcloc !232

if.then.i16:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i15 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef 63, i32 noundef 16) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i16, %if.end7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 1056964608) #11, !srcloc !238
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -22, %if.then4 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsdfec_stop(ptr nocapture noundef %xsdfec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_stop.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_stop, %if.then3)) #11
          to label %if.end4 [label %if.then3], !srcloc !232

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_stop.__UNIQUE_ID_ddebug269, ptr noundef %3, ptr noundef nonnull @.str.78) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body, %entry.if.end4_crit_edge
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_stop, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %7, i32 noundef 16) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %if.end4
  %and = and i32 %7, -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_stop, %if.then.i2)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i2], !srcloc !232

if.then.i2:                                       ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i1 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef %and, i32 noundef 16) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i2, %xsdfec_regread.exit
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %14) #11, !srcloc !238
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_get_status(ptr noundef %xsdfec, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %status = alloca %struct.xsdfec_status, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %status, align 8
  %error_data_lock = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_data_lock) #11
  %flags = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %flags, align 4
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status, align 8
  %state_updated = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 15
  %5 = ptrtoint ptr %state_updated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %state_updated, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_data_lock, i32 noundef %call2) #11
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_get_status, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %11, ptr noundef nonnull @.str.63, i32 noundef %9, i32 noundef 8) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %entry
  %12 = trunc i32 %9 to i8
  %conv9 = and i8 %12, 1
  %activity = getelementptr inbounds %struct.xsdfec_status, ptr %status, i32 0, i32 1
  %13 = ptrtoint ptr %activity to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %activity, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %xsdfec_regread.exit.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

xsdfec_regread.exit.copy_to_user.exit.thread_crit_edge: ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %xsdfec_regread.exit
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #15, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status, i32 noundef 8) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %status, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %xsdfec_regread.exit.copy_to_user.exit.thread_crit_edge
  %15 = phi i32 [ -14, %xsdfec_regread.exit.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsdfec_set_default_config(ptr nocapture noundef %xsdfec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_default_config, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %1, i32 noundef 20) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %entry
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #11, !srcloc !238
  %dout_word_include.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %dout_word_include.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dout_word_include.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cond.i.i = icmp eq i32 %8, 2
  %dout_width.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %dout_width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dout_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.selectcmp.i.i = icmp eq i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %switch.selectcmp3.i.i = icmp eq i32 %10, 4
  %din_word_include.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %din_word_include.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %din_word_include.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cond.i1.i = icmp eq i32 %12, 2
  %din_width.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %din_width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %din_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.selectcmp.i3.i = icmp eq i32 %14, 2
  %switch.select.i4.i = zext i1 %switch.selectcmp.i3.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.selectcmp3.i5.i = icmp eq i32 %14, 4
  %switch.select4.i6.i = select i1 %switch.selectcmp3.i5.i, i32 2, i32 %switch.select.i4.i
  %shl.i = select i1 %cond.i.i, i32 32, i32 0
  %switch.select.i.op.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  %shl5.i = select i1 %switch.selectcmp3.i.i, i32 16, i32 %switch.select.i.op.i
  %or.i = or i32 %shl5.i, %shl.i
  %shl6.i = select i1 %cond.i1.i, i32 4, i32 0
  %or7.i = or i32 %or.i, %shl6.i
  %or9.i = or i32 %or7.i, %switch.select4.i6.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_default_config, %if.then.i.i)) #11
          to label %xsdfec_cfg_axi_streams.exit [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %xsdfec_regwrite.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %16, ptr noundef nonnull @.str.61, i32 noundef %or9.i, i32 noundef 12) #11
  br label %xsdfec_cfg_axi_streams.exit

xsdfec_cfg_axi_streams.exit:                      ; preds = %if.then.i.i, %xsdfec_regwrite.exit
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %19 = shl nuw nsw i32 %or9.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #11, !srcloc !238
  tail call fastcc void @update_config_from_hw(ptr noundef %xsdfec)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_set_turbo(ptr nocapture noundef readonly %xsdfec, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %turbo = alloca %struct.xsdfec_turbo, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %turbo) #11
  %0 = ptrtoint ptr %turbo to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %turbo, align 8, !annotation !233
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #15, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !236

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %turbo, i32 noundef 8) #11
  %2 = call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !242
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %turbo, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !236

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %turbo, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %turbo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %turbo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %scale = getelementptr inbounds %struct.xsdfec_turbo, ptr %turbo, i32 0, i32 1
  %8 = ptrtoint ptr %scale to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scale, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %9)
  %cmp3 = icmp ugt i8 %9, 15
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %config = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_turbo, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef %or, i32 noundef 256) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.end10
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  call void @arm_heavy_mb() #11
  %16 = call i32 @llvm.bswap.i32(i32 %or) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #11, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %turbo) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_get_turbo(ptr nocapture noundef readonly %xsdfec, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %turbo_params = alloca %struct.xsdfec_turbo, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %turbo_params) #11
  %config = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %turbo_params to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %turbo_params, align 8
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !234
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_get_turbo, %if.then.i)) #11
          to label %xsdfec_regread.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regread.__UNIQUE_ID_ddebug247, ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef %6, i32 noundef 256) #11
  br label %xsdfec_regread.exit

xsdfec_regread.exit:                              ; preds = %if.then.i, %if.end
  %and = lshr i32 %6, 8
  %9 = trunc i32 %and to i8
  %conv = and i8 %9, 15
  %scale = getelementptr inbounds %struct.xsdfec_turbo, ptr %turbo_params, i32 0, i32 1
  %10 = ptrtoint ptr %scale to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %scale, align 4
  %and1 = and i32 %6, 1
  %11 = ptrtoint ptr %turbo_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and1, ptr %turbo_params, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %xsdfec_regread.exit.cleanup_crit_edge, label %if.end.i.i

xsdfec_regread.exit.cleanup_crit_edge:            ; preds = %xsdfec_regread.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %xsdfec_regread.exit
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #15, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %turbo_params, i32 noundef 8) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %turbo_params, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %xsdfec_regread.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -14, %xsdfec_regread.exit.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %turbo_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_set_order(ptr nocapture noundef %xsdfec, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 735) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !242
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #11, !srcloc !246
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1)
  %4 = icmp ugt i32 %asmresult1, 1
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_order, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %8, ptr noundef nonnull @.str.61, i32 noundef %asmresult1, i32 noundef 24) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.end9
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %asmresult1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #11, !srcloc !238
  %order10 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %order10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult1, ptr %order10, align 4
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_set_bypass(ptr nocapture noundef %xsdfec, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 760) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !242
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #11, !srcloc !247
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %tobool = icmp ne i32 %asmresult1, 0
  %frombool = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_bypass, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef 60) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.then7
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !238
  br label %if.end8

if.else:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_set_bypass, %if.then.i17)) #11
          to label %xsdfec_regwrite.exit20 [label %if.then.i17], !srcloc !232

if.then.i17:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i16 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 60) #11
  br label %xsdfec_regwrite.exit20

xsdfec_regwrite.exit20:                           ; preds = %if.then.i17, %if.else
  %regs.i18 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %12 = ptrtoint ptr %regs.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #11, !srcloc !238
  br label %if.end8

if.end8:                                          ; preds = %xsdfec_regwrite.exit20, %xsdfec_regwrite.exit
  %bypass10 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %bypass10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %bypass10, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -14, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_reg0_write(ptr nocapture noundef readonly %xsdfec, i32 noundef %n, i32 noundef %k, i32 noundef %psize, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %n, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32765, i32 %0)
  %1 = icmp ult i32 %0, -32765
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psize)
  %cmp3 = icmp eq i32 %psize, 0
  %or.cond89 = or i1 %1, %cmp3
  br i1 %or.cond89, label %entry.do.body_crit_edge, label %lor.lhs.false4

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false4:                                   ; preds = %entry
  %mul = shl i32 %psize, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %n)
  %cmp5 = icmp uge i32 %mul, %n
  call void @__sanitizer_cov_trace_cmp4(i32 %n, i32 %k)
  %cmp7.not = icmp ugt i32 %n, %k
  %or.cond90 = and i1 %cmp7.not, %cmp5
  br i1 %or.cond90, label %lor.lhs.false8, label %lor.lhs.false4.do.body_crit_edge

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %rem = urem i32 %n, %psize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  br i1 %cmp9.not, label %if.end13, label %lor.lhs.false8.do.body_crit_edge

lor.lhs.false8.do.body_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false8.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg0_write, %if.then12)) #11
          to label %cleanup [label %if.then12], !srcloc !232

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg0_write.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  %4 = add i32 %k, -32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32765, i32 %4)
  %5 = icmp ult i32 %4, -32765
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %k)
  %cmp19 = icmp ult i32 %mul, %k
  %or.cond92 = or i1 %5, %cmp19
  br i1 %or.cond92, label %if.end13.do.body24_crit_edge, label %lor.lhs.false20

if.end13.do.body24_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

lor.lhs.false20:                                  ; preds = %if.end13
  %rem21 = urem i32 %k, %psize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22.not = icmp eq i32 %rem21, 0
  br i1 %cmp22.not, label %if.end41, label %lor.lhs.false20.do.body24_crit_edge

lor.lhs.false20.do.body24_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

do.body24:                                        ; preds = %lor.lhs.false20.do.body24_crit_edge, %if.end13.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg0_write, %if.then36)) #11
          to label %cleanup [label %if.then36], !srcloc !232

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %dev37 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %6 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg0_write.__UNIQUE_ID_ddebug253, ptr noundef %7, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false20
  %mul43 = shl i32 %offset, 4
  %add = add i32 %mul43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 10224, i32 %add)
  %cmp44 = icmp ugt i32 %add, 10224
  br i1 %cmp44, label %do.body46, label %if.end65

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg0_write, %if.then58)) #11
          to label %cleanup [label %if.then58], !srcloc !232

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %dev59 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg0_write.__UNIQUE_ID_ddebug254, ptr noundef %9, ptr noundef nonnull @.str.85, i32 noundef %add) #11
  br label %cleanup

if.end65:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %shl42 = shl nuw nsw i32 %k, 16
  %or = or i32 %shl42, %n
  tail call fastcc void @xsdfec_regwrite(ptr noundef %xsdfec, i32 noundef %add, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then58, %do.body46, %if.then36, %do.body24, %if.then12, %do.body
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -22, %if.then12 ], [ -22, %if.then36 ], [ -22, %if.then58 ], [ -22, %do.body ], [ -22, %do.body24 ], [ -22, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_reg1_write(ptr nocapture noundef readonly %xsdfec, i32 noundef %psize, i32 noundef %no_packing, i32 noundef %nm, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %psize, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -511, i32 %0)
  %1 = icmp ult i32 %0, -511
  br i1 %1, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg1_write, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !232

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg1_write.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.87) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %no_packing)
  %switch = icmp ult i32 %no_packing, 2
  br i1 %switch, label %if.end5.if.end26_crit_edge, label %do.body9

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg1_write, %if.then21)) #11
          to label %if.end26 [label %if.then21], !srcloc !232

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %dev22 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %4 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg1_write.__UNIQUE_ID_ddebug256, ptr noundef %5, ptr noundef nonnull @.str.88) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body9, %if.end5.if.end26_crit_edge
  %shl = shl i32 %no_packing, 10
  %and = and i32 %shl, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %nm)
  %tobool28.not = icmp ult i32 %nm, 512
  br i1 %tobool28.not, label %if.end26.if.end47_crit_edge, label %do.body30

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.body30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg1_write, %if.then42)) #11
          to label %if.end47 [label %if.then42], !srcloc !232

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %6 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg1_write.__UNIQUE_ID_ddebug257, ptr noundef %7, ptr noundef nonnull @.str.89) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body30, %if.end26.if.end47_crit_edge
  %mul = shl i32 %offset, 4
  %add = add i32 %mul, 8196
  call void @__sanitizer_cov_trace_const_cmp4(i32 10228, i32 %add)
  %cmp51 = icmp ugt i32 %add, 10228
  br i1 %cmp51, label %do.body53, label %if.end72

do.body53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg1_write, %if.then65)) #11
          to label %cleanup [label %if.then65], !srcloc !232

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %dev66 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg1_write.__UNIQUE_ID_ddebug258, ptr noundef %9, ptr noundef nonnull @.str.90, i32 noundef %add) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end47
  %shl48 = shl i32 %nm, 11
  %and49 = and i32 %shl48, 1046528
  %or = or i32 %and, %psize
  %or50 = or i32 %or, %and49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg1_write, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef %or50, i32 noundef %add) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.end72
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or50) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #11, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.then65, %do.body53, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -22, %if.then4 ], [ -22, %if.then65 ], [ -22, %do.body ], [ -22, %do.body53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_reg2_write(ptr nocapture noundef readonly %xsdfec, i32 noundef %nlayers, i32 noundef %nmqc, i32 noundef %norm_type, i32 noundef %special_qc, i32 noundef %no_final_parity, i32 noundef %max_schedule, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %nlayers, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %0)
  %1 = icmp ult i32 %0, -256
  br i1 %1, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !232

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.92) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %nmqc)
  %tobool6.not = icmp ult i32 %nmqc, 2048
  br i1 %tobool6.not, label %if.end5.if.end25_crit_edge, label %do.body8

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then20)) #11
          to label %if.end25 [label %if.then20], !srcloc !232

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %4 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug260, ptr noundef %5, ptr noundef nonnull @.str.93) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.body8, %if.end5.if.end25_crit_edge
  %shl = shl i32 %nmqc, 9
  %and26 = and i32 %shl, 1048064
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %norm_type)
  %cmp27 = icmp ugt i32 %norm_type, 1
  br i1 %cmp27, label %do.body29, label %if.end25.if.end46_crit_edge

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then41)) #11
          to label %if.end46 [label %if.then41], !srcloc !232

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %6 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug261, ptr noundef %7, ptr noundef nonnull @.str.94) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %do.body29, %if.end25.if.end46_crit_edge
  %shl47 = shl i32 %norm_type, 20
  %and48 = and i32 %shl47, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %special_qc)
  %cmp49 = icmp ugt i32 %special_qc, 1
  br i1 %cmp49, label %do.body51, label %if.end46.if.end68_crit_edge

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.body51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then63)) #11
          to label %if.end68 [label %if.then63], !srcloc !232

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %dev64 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %8 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug262, ptr noundef %9, ptr noundef nonnull @.str.95) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %do.body51, %if.end46.if.end68_crit_edge
  %shl69 = shl i32 %special_qc, 21
  %and70 = and i32 %shl69, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %no_final_parity)
  %cmp71 = icmp ugt i32 %no_final_parity, 1
  br i1 %cmp71, label %do.body73, label %if.end68.if.end90_crit_edge

if.end68.if.end90_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.body73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then85)) #11
          to label %if.end90 [label %if.then85], !srcloc !232

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %dev86 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %10 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug263, ptr noundef %11, ptr noundef nonnull @.str.96) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %do.body73, %if.end68.if.end90_crit_edge
  %shl91 = shl i32 %no_final_parity, 22
  %and92 = and i32 %shl91, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %max_schedule)
  %tobool94.not = icmp ult i32 %max_schedule, 4
  br i1 %tobool94.not, label %if.end90.if.end113_crit_edge, label %do.body96

if.end90.if.end113_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.body96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then108)) #11
          to label %if.end113 [label %if.then108], !srcloc !232

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  %dev109 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %12 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev109, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug264, ptr noundef %13, ptr noundef nonnull @.str.97) #11
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %do.body96, %if.end90.if.end113_crit_edge
  %mul = shl i32 %offset, 4
  %add = add i32 %mul, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 10232, i32 %add)
  %cmp120 = icmp ugt i32 %add, 10232
  br i1 %cmp120, label %do.body122, label %if.end141

do.body122:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then134)) #11
          to label %cleanup [label %if.then134], !srcloc !232

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #13
  %dev135 = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %14 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg2_write.__UNIQUE_ID_ddebug265, ptr noundef %15, ptr noundef nonnull @.str.98, i32 noundef %add) #11
  br label %cleanup

if.end141:                                        ; preds = %if.end113
  %shl114 = shl i32 %max_schedule, 23
  %and115 = and i32 %shl114, 25165824
  %or = or i32 %and26, %nlayers
  %or116 = or i32 %or, %and48
  %or117 = or i32 %or116, %and70
  %or118 = or i32 %or117, %and92
  %or119 = or i32 %or118, %and115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg2_write, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %17, ptr noundef nonnull @.str.61, i32 noundef %or119, i32 noundef %add) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.end141
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %or119) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #11, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.then134, %do.body122, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -22, %if.then4 ], [ -22, %if.then134 ], [ -22, %do.body ], [ -22, %do.body122 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_reg3_write(ptr nocapture noundef readonly %xsdfec, i8 noundef zeroext %sc_off, i8 noundef zeroext %la_off, i16 noundef zeroext %qc_off, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %offset, 4
  %add = add i32 %mul, 8204
  call void @__sanitizer_cov_trace_const_cmp4(i32 10236, i32 %add)
  %cmp = icmp ugt i32 %add, 10236
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_reg3_write.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg3_write, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_reg3_write.__UNIQUE_ID_ddebug266, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %add) #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %conv = zext i16 %qc_off to i32
  %shl = shl nuw i32 %conv, 16
  %conv1 = zext i8 %la_off to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %or = or i32 %shl, %shl2
  %conv3 = zext i8 %sc_off to i32
  %or4 = or i32 %or, %conv3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_reg3_write, %if.then.i)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %or4, i32 noundef %add) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i, %if.end11
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #11, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %xsdfec_regwrite.exit, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %xsdfec_regwrite.exit ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsdfec_table_write(ptr nocapture noundef readonly %xsdfec, i32 noundef %offset, ptr noundef %src_ptr, i32 noundef %len, i32 noundef %base_addr, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  %pages = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pages) #11
  %0 = call ptr @memset(ptr %pages, i32 255, i32 36)
  %div124 = lshr i32 %depth, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div124, i32 %offset)
  %cmp = icmp ult i32 %div124, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %div124, i32 %len)
  %cmp2 = icmp ult i32 %div124, %len
  %or.cond = or i1 %cmp, %cmp2
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div124)
  %cmp5 = icmp ugt i32 %add, %div124
  %or.cond127 = or i1 %cmp5, %or.cond
  br i1 %or.cond127, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_table_write.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_table_write, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_table_write.__UNIQUE_ID_ddebug267, ptr noundef %2, ptr noundef nonnull @.str.102) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %3 = lshr i32 %len, 10
  %div10125 = and i32 %3, 1048575
  %4 = and i32 %len, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp ne i32 %4, 0
  %add14 = zext i1 %tobool12.not to i32
  %spec.select = add nuw nsw i32 %div10125, %add14
  %5 = ptrtoint ptr %src_ptr to i32
  %call69 = call i32 @pin_user_pages_fast(i32 noundef %5, i32 noundef %spec.select, i32 noundef 0, ptr noundef nonnull %pages) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call69, i32 %spec.select)
  %cmp70 = icmp slt i32 %call69, %spec.select
  br i1 %cmp70, label %if.then71, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp77131.not = icmp eq i32 %spec.select, 0
  br i1 %cmp77131.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 7
  %regs.i = getelementptr inbounds %struct.xsdfec_dev, ptr %xsdfec, i32 0, i32 6
  br label %for.body

if.then71:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp72 = icmp sgt i32 %call69, 0
  br i1 %cmp72, label %if.then73, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  call void @unpin_user_pages(ptr noundef nonnull %pages, i32 noundef %call69) #11
  br label %cleanup

for.body:                                         ; preds = %do.end91.for.body_crit_edge, %for.body.lr.ph
  %reg.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end91.for.body_crit_edge ]
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc93, %do.end91.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x ptr], ptr %pages, i32 0, i32 %i.0132
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.103, i32 noundef 44) #11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %shr.i.i, label %for.body.if.then.i_crit_edge [
    i32 2, label %for.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

for.body.if.else.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %7) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %for.body.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %7) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  br label %do.body79

do.body79:                                        ; preds = %xsdfec_regwrite.exit.do.body79_crit_edge, %kmap.exit
  %reg.1 = phi i32 [ %reg.0133, %kmap.exit ], [ %inc, %xsdfec_regwrite.exit.do.body79_crit_edge ]
  %add80 = add i32 %reg.1, %offset
  %mul81 = shl i32 %add80, 2
  %add82 = add i32 %mul81, %base_addr
  %arrayidx83 = getelementptr i32, ptr %addr.0.i, i32 %reg.1
  %12 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx83, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xsdfec_table_write, %if.then.i129)) #11
          to label %xsdfec_regwrite.exit [label %if.then.i129], !srcloc !232

if.then.i129:                                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xsdfec_regwrite.__UNIQUE_ID_ddebug246, ptr noundef %15, ptr noundef nonnull @.str.61, i32 noundef %13, i32 noundef %add82) #11
  br label %xsdfec_regwrite.exit

xsdfec_regwrite.exit:                             ; preds = %if.then.i129, %do.body79
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  call void @arm_heavy_mb() #11
  %18 = call i32 @llvm.bswap.i32(i32 %13) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #11, !srcloc !238
  %inc = add i32 %reg.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %len)
  %cmp85 = icmp uge i32 %inc, %len
  %19 = and i32 %inc, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool89.not = icmp eq i32 %19, 0
  %or.cond128 = or i1 %cmp85, %tobool89.not
  br i1 %or.cond128, label %do.end91, label %xsdfec_regwrite.exit.do.body79_crit_edge

xsdfec_regwrite.exit.do.body79_crit_edge:         ; preds = %xsdfec_regwrite.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

do.end91:                                         ; preds = %xsdfec_regwrite.exit
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  call void @unpin_user_page(ptr noundef %21) #11
  %inc93 = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc93, %spec.select
  br i1 %exitcond.not, label %do.end91.cleanup_crit_edge, label %do.end91.for.body_crit_edge

do.end91.for.body_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end91.cleanup_crit_edge, %if.then73, %if.then71.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then73 ], [ -22, %if.then71.cleanup_crit_edge ], [ -22, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pages) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !163, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !215, !216, !218, !220}
!llvm.named.register.sp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__initcall__kmod_xilinx_sdfec__274_1463_xsdfec_driver_init6, !1, !"__initcall__kmod_xilinx_sdfec__274_1463_xsdfec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1463, i32 1}
!2 = !{ptr @__exitcall_xsdfec_driver_exit, !1, !"__exitcall_xsdfec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author275, !4, !"__UNIQUE_ID_author275", i1 false, i1 false}
!4 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1465, i32 1}
!5 = !{ptr @__UNIQUE_ID_description276, !6, !"__UNIQUE_ID_description276", i1 false, i1 false}
!6 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1466, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1467, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1456, i32 11}
!12 = !{ptr @xsdfec_driver, !13, !"xsdfec_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1454, i32 31}
!14 = !{ptr @xsdfec_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1370, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1386, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xsdfec_probe.__UNIQUE_ID_ddebug273, !18, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!23 = !{ptr @xsdfec_probe.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1400, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1404, i32 7}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1406, i32 4}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xsdfec_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @xsdfec_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1416, i32 43}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1423, i32 3}
!38 = !{ptr @xsdfec_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xsdfec_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1209, i32 44}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1211, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xsdfec_clk_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @xsdfec_clk_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1215, i32 43}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1217, i32 3}
!51 = !{ptr @xsdfec_clk_init._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @xsdfec_clk_init._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1221, i32 49}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1230, i32 43}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1239, i32 44}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1249, i32 28}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1258, i32 44}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1267, i32 46}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1278, i32 3}
!67 = !{ptr @xsdfec_clk_init._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @xsdfec_clk_init._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1284, i32 3}
!71 = !{ptr @xsdfec_clk_init._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @xsdfec_clk_init._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1290, i32 3}
!75 = !{ptr @xsdfec_clk_init._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @xsdfec_clk_init._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1296, i32 3}
!79 = !{ptr @xsdfec_clk_init._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @xsdfec_clk_init._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1302, i32 3}
!83 = !{ptr @xsdfec_clk_init._entry.41, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @xsdfec_clk_init._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1308, i32 3}
!87 = !{ptr @xsdfec_clk_init._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @xsdfec_clk_init._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1315, i32 3}
!91 = !{ptr @xsdfec_clk_init._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @xsdfec_clk_init._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1321, i32 3}
!95 = !{ptr @xsdfec_clk_init._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @xsdfec_clk_init._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1050, i32 39}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1054, i32 28}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1056, i32 33}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1061, i32 36}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1071, i32 36}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1086, i32 36}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1096, i32 36}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/xilinx_sdfec.c", i32 237, i32 2}
!113 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xsdfec_regwrite.__UNIQUE_ID_ddebug246, !112, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/misc/xilinx_sdfec.c", i32 246, i32 2}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @xsdfec_regread.__UNIQUE_ID_ddebug247, !116, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1152, i32 2}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug270, !120, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1154, i32 2}
!125 = !{ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug271, !124, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1188, i32 2}
!128 = !{ptr @xsdfec_irq_thread.__UNIQUE_ID_ddebug272, !127, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/xilinx_sdfec.c", i32 333, i32 4}
!131 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @xsdfec_isr_enable.__UNIQUE_ID_ddebug248, !130, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/xilinx_sdfec.c", i32 342, i32 4}
!135 = !{ptr @xsdfec_isr_enable.__UNIQUE_ID_ddebug249, !134, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/misc/xilinx_sdfec.c", i32 360, i32 4}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug250, !137, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/xilinx_sdfec.c", i32 373, i32 4}
!142 = !{ptr @xsdfec_ecc_isr_enable.__UNIQUE_ID_ddebug251, !141, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/misc/xilinx_sdfec.c", i32 29, i32 8}
!145 = !{ptr @dev_nrs, !144, !"dev_nrs", i1 false, i1 false}
!146 = !{ptr @xsdfec_fops, !147, !"xsdfec_fops", i1 false, i1 false}
!147 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1030, i32 37}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/misc/xilinx_sdfec.c", i32 874, i32 3}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @xsdfec_start.__UNIQUE_ID_ddebug268, !149, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/misc/xilinx_sdfec.c", i32 893, i32 3}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @xsdfec_stop.__UNIQUE_ID_ddebug269, !153, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!158 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/xilinx_sdfec.c", i32 465, i32 3}
!165 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug252, !164, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/xilinx_sdfec.c", i32 472, i32 3}
!169 = !{ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug253, !168, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/misc/xilinx_sdfec.c", i32 480, i32 3}
!172 = !{ptr @xsdfec_reg0_write.__UNIQUE_ID_ddebug254, !171, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/misc/xilinx_sdfec.c", i32 498, i32 3}
!175 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug255, !174, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/misc/xilinx_sdfec.c", i32 503, i32 3}
!179 = !{ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug256, !178, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/misc/xilinx_sdfec.c", i32 508, i32 3}
!182 = !{ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug257, !181, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/xilinx_sdfec.c", i32 514, i32 3}
!185 = !{ptr @xsdfec_reg1_write.__UNIQUE_ID_ddebug258, !184, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/misc/xilinx_sdfec.c", i32 534, i32 3}
!188 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug259, !187, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/misc/xilinx_sdfec.c", i32 539, i32 3}
!192 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug260, !191, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/misc/xilinx_sdfec.c", i32 543, i32 3}
!195 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug261, !194, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/xilinx_sdfec.c", i32 547, i32 3}
!198 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug262, !197, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/misc/xilinx_sdfec.c", i32 552, i32 3}
!201 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug263, !200, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/misc/xilinx_sdfec.c", i32 558, i32 3}
!204 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug264, !203, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/misc/xilinx_sdfec.c", i32 567, i32 3}
!207 = !{ptr @xsdfec_reg2_write.__UNIQUE_ID_ddebug265, !206, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/misc/xilinx_sdfec.c", i32 588, i32 3}
!210 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @xsdfec_reg3_write.__UNIQUE_ID_ddebug266, !209, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/misc/xilinx_sdfec.c", i32 617, i32 3}
!214 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @xsdfec_table_write.__UNIQUE_ID_ddebug267, !213, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../drivers/misc/xilinx_sdfec.c", i32 625, i32 6}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!220 = !{ptr @xsdfec_of_match, !221, !"xsdfec_of_match", i1 false, i1 false}
!221 = !{!"../drivers/misc/xilinx_sdfec.c", i32 1446, i32 34}
!222 = !{!"sp"}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i64 2148438459, i64 2148438464, i64 2148438477, i64 2148438521, i64 2148438555, i64 2148438576}
!233 = !{!"auto-init"}
!234 = !{i64 4816085}
!235 = !{i64 2152356434}
!236 = !{!"branch_weights", i32 2000, i32 1}
!237 = !{i64 2152357789}
!238 = !{i64 4815667}
!239 = !{i8 0, i8 2}
!240 = !{i64 2153570773, i64 2153570798}
!241 = !{i64 2153570092, i64 2153570117}
!242 = !{i64 6065647}
!243 = !{i64 6065844}
!244 = !{i64 2153551077}
!245 = !{i64 2154586088, i64 2154586368, i64 2154586702, i64 2154587036}
!246 = !{i64 2154568314, i64 2154568594, i64 2154568928, i64 2154569262}
!247 = !{i64 2154575407, i64 2154575687, i64 2154576021, i64 2154576355}
