; ModuleID = '/llk/IR_all_yes/drivers/nvmem/imx-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/imx-ocotp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ocotp_params = type { i32, i32, ptr, %struct.ocotp_ctrl_reg, i8 }
%struct.ocotp_ctrl_reg = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocotp_priv = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_nvmem_imx_ocotp__183_640_imx_ocotp_driver_init6 = internal global ptr @imx_ocotp_driver_init, section ".initcall6.init", align 4
@imx_ocotp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ocotp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_ocotp_driver_exit = internal global ptr @imx_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [62 x i8] c"nvmem_imx_ocotp.author=Philipp Zabel <p.zabel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [62 x i8] c"nvmem_imx_ocotp.description=i.MX6/i.MX7 OCOTP fuse box driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [51 x i8] c"nvmem_imx_ocotp.file=drivers/nvmem/nvmem-imx-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [31 x i8] c"nvmem_imx_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx_ocotp\00", [22 x i8] zeroinitializer }, align 32
@imx_ocotp_dt_ids = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ull_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sll_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_params }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@imx_ocotp_nvmem_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @imx_ocotp_read, ptr @imx_ocotp_write, ptr @imx_ocotp_cell_pp, i32 0, i32 4, i32 1, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-ocotp\00", [22 x i8] zeroinitializer }, align 32
@ocotp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ocotp_mutex, i64 52), ptr getelementptr (i8, ptr @ocotp_mutex, i64 52) }, ptr @ocotp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@imx_ocotp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to prepare/enable ocotp clk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_ocotp_read\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvmem/imx-ocotp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_ocotp_read._entry_ptr = internal global ptr @imx_ocotp_read._entry, section ".printk_index", align 4
@imx_ocotp_read._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout during read setup\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_ocotp_read._entry_ptr.9 = internal global ptr @imx_ocotp_read._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ocotp_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocotp_mutex\00", [20 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_ocotp_write\00", [16 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry_ptr = internal global ptr @imx_ocotp_write._entry, section ".printk_index", align 4
@imx_ocotp_write._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout during timing setup\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry_ptr.15 = internal global ptr @imx_ocotp_write._entry.13, section ".printk_index", align 4
@imx_ocotp_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed write to locked region\00", [34 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry_ptr.18 = internal global ptr @imx_ocotp_write._entry.16, section ".printk_index", align 4
@imx_ocotp_write._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout during data write\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry_ptr.21 = internal global ptr @imx_ocotp_write._entry.19, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx_ocotp_write._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout during shadow register reload\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_ocotp_write._entry_ptr.24 = internal global ptr @imx_ocotp_write._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac-address\00", [20 x i8] zeroinitializer }, align 32
@imx6q_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx6sl_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 64, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx6sx_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx6ul_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx6ull_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 64, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx7d_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 64, i32 4, ptr @imx_ocotp_set_imx7_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx6sll_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx7ulp_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 256, i32 0, ptr null, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@imx8mq_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, [32 x i8] zeroinitializer }, align 32
@imx8mm_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, [32 x i8] zeroinitializer }, align 32
@imx8mn_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, [32 x i8] zeroinitializer }, align 32
@imx8mp_params = internal constant { %struct.ocotp_params, [32 x i8] } { %struct.ocotp_params { i32 384, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 511, i32 512, i32 1024, i32 2048 }, i8 1 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"imx_ocotp_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 633, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 636, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"imx_ocotp_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 581, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"imx_ocotp_nvmem_config\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 484, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 485, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"ocotp_mutex\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 186, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 193, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 78, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 353, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 454, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 457, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 476, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 231, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"imx6q_params\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 494, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"imx6sl_params\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 501, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"imx6sx_params\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 515, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"imx6ul_params\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 522, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"imx6ull_params\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 529, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"imx7d_params\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 536, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"imx6sll_params\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 508, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"imx7ulp_params\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 543, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"imx8mq_params\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 549, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"imx8mm_params\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 557, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"imx8mn_params\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 565, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"imx8mp_params\00", align 1
@___asan_gen_.141 = private constant [29 x i8] c"../drivers/nvmem/imx-ocotp.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 573, i32 34 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_imx_ocotp__183_640_imx_ocotp_driver_init6, ptr @imx_ocotp_driver_exit, ptr @imx_ocotp_read._entry, ptr @imx_ocotp_read._entry.7, ptr @imx_ocotp_read._entry_ptr, ptr @imx_ocotp_read._entry_ptr.9, ptr @imx_ocotp_write._entry, ptr @imx_ocotp_write._entry.13, ptr @imx_ocotp_write._entry.16, ptr @imx_ocotp_write._entry.19, ptr @imx_ocotp_write._entry.22, ptr @imx_ocotp_write._entry_ptr, ptr @imx_ocotp_write._entry_ptr.15, ptr @imx_ocotp_write._entry_ptr.18, ptr @imx_ocotp_write._entry_ptr.21, ptr @imx_ocotp_write._entry_ptr.24, ptr @imx_ocotp_driver, ptr @.str, ptr @imx_ocotp_dt_ids, ptr @imx_ocotp_nvmem_config, ptr @.str.1, ptr @ocotp_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @imx6q_params, ptr @imx6sl_params, ptr @imx6sx_params, ptr @imx6ul_params, ptr @imx6ull_params, ptr @imx7d_params, ptr @imx6sll_params, ptr @imx7ulp_params, ptr @imx8mq_params, ptr @imx8mm_params, ptr @imx8mn_params, ptr @imx8mp_params], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_dt_ids to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocotp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_read._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_write._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_write._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ocotp_write._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ull_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7d_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sll_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ocotp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ocotp_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_ocotp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ocotp_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ocotp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %clk, align 4
  %cmp.i47 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %params = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %params, align 4
  %6 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call18, align 4
  %mul = shl i32 %7, 2
  store i32 %mul, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_ocotp_nvmem_config, i32 0, i32 18), align 4
  store ptr %dev1, ptr @imx_ocotp_nvmem_config, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_ocotp_nvmem_config, i32 0, i32 21), align 4
  %config = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @imx_ocotp_nvmem_config, ptr %config, align 4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i48 = tail call i32 @clk_prepare(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.clk_prepare_enable.exit_crit_edge

if.end16.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end16.clk_prepare_enable.exit_crit_edge
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params, align 4
  %bm_error.i = getelementptr inbounds %struct.ocotp_params, ptr %14, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %bm_error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bm_error.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !91
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %and.i = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i49 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i49, label %clk_prepare_enable.exit.imx_ocotp_clr_err_if_set.exit_crit_edge, label %do.body.i

clk_prepare_enable.exit.imx_ocotp_clr_err_if_set.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_ocotp_clr_err_if_set.exit

do.body.i:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %add.ptr3.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #8, !srcloc !94
  br label %imx_ocotp_clr_err_if_set.exit

imx_ocotp_clr_err_if_set.exit:                    ; preds = %do.body.i, %clk_prepare_enable.exit.imx_ocotp_clr_err_if_set.exit_crit_edge
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %call23 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull @imx_ocotp_nvmem_config) #8
  %cmp.i.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call23 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %imx_ocotp_clr_err_if_set.exit, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then13 ], [ %spec.select.i, %imx_ocotp_clr_err_if_set.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_ocotp_clr_err_if_set(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %params = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %bm_error = getelementptr inbounds %struct.ocotp_params, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %bm_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bm_error, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !91
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr3 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #8, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ocotp_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 2
  %rem = and i32 %offset, 3
  %add = add nsw i32 %rem, -1
  %sub = add i32 %add, %bytes
  %or = or i32 %sub, 3
  %add1 = add i32 %or, 1
  %shr2 = lshr exact i32 %add1, 2
  %params = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub3 = sub i32 %3, %shr
  %4 = tail call i32 @llvm.umin.i32(i32 %shr2, i32 %sub3)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocotp_mutex, i32 noundef 0) #8
  %clk = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.clk_prepare_enable.exit_crit_edge

if.end8.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12_crit_edge, label %if.then3.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end8.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end8.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %if.then11, label %clk_prepare_enable.exit.if.end12_crit_edge

clk_prepare_enable.exit.if.end12_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #8
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #12
  br label %cleanup.sink.split

if.end12:                                         ; preds = %clk_prepare_enable.exit.if.end12_crit_edge, %if.end.i.if.end12_crit_edge
  %base1.i = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 2
  %9 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base1.i, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %bm_busy.i = getelementptr inbounds %struct.ocotp_params, ptr %12, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %bm_busy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bm_busy.i, align 4
  %bm_error.i = getelementptr inbounds %struct.ocotp_params, ptr %12, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %bm_error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bm_error.i, align 4
  %or4.i = or i32 %16, %14
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.end12
  %count.030.i = phi i32 [ 10000, %if.end12 ], [ %dec.i, %do.end.i.for.body.i_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !91
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %and.i = and i32 %18, %or4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i67 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i67, label %for.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !97
  %dec.i = add nsw i32 %count.030.i, -1
  %cmp.not.i = icmp eq i32 %count.030.i, 0
  br i1 %cmp.not.i, label %for.end.thread.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.thread.i:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1433.i = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1433.i)
  %tobool15.not34.i = icmp eq i32 %and1433.i, 0
  %.35.i = select i1 %tobool15.not34.i, i32 -110, i32 -1
  br label %do.end18

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i)
  %cmp12.i = icmp slt i32 %count.030.i, 0
  %and14.i = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %..i = select i1 %tobool15.not.i, i32 -110, i32 -1
  br i1 %cmp12.i, label %for.end.i.do.end18_crit_edge, label %for.cond.preheader

for.end.i.do.end18_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

for.cond.preheader:                               ; preds = %for.end.i
  %add21 = add nuw nsw i32 %4, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2282.not = icmp eq i32 %4, 0
  br i1 %cmp2282.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end18:                                         ; preds = %for.end.i.do.end18_crit_edge, %for.end.thread.i
  %.36.i = phi i32 [ %.35.i, %for.end.thread.i ], [ %..i, %for.end.i.do.end18_crit_edge ]
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8) #12
  br label %read_end

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %buf.084 = phi ptr [ %add.ptr29, %if.end28.for.body_crit_edge ], [ %call9.i.i, %for.cond.preheader.for.body_crit_edge ]
  %i.083 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ %shr, %for.cond.preheader.for.body_crit_edge ]
  %21 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 1024
  %mul = shl i32 %i.083, 4
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !91
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %25 = ptrtoint ptr %buf.084 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buf.084, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -625288518, i32 %23)
  %cmp26 = icmp eq i32 %23, -625288518
  br i1 %cmp26, label %if.then27, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %for.body
  %26 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base1.i, align 4
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params, align 4
  %bm_error.i70 = getelementptr inbounds %struct.ocotp_params, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %bm_error.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bm_error.i70, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !91
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %and.i71 = and i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.then27.if.end28_crit_edge, label %do.body.i

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.body.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %add.ptr3.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %34) #8, !srcloc !94
  br label %if.end28

if.end28:                                         ; preds = %do.body.i, %if.then27.if.end28_crit_edge, %for.body.if.end28_crit_edge
  %add.ptr29 = getelementptr i8, ptr %buf.084, i32 4
  %inc = add nuw nsw i32 %i.083, 1
  %cmp22 = icmp ult i32 %inc, %add21
  br i1 %cmp22, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %rem
  %35 = call ptr @memcpy(ptr %val, ptr %arrayidx, i32 %bytes)
  br label %read_end

read_end:                                         ; preds = %for.end, %do.end18
  %36 = phi i32 [ 0, %for.end ], [ %.36.i, %do.end18 ]
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %38) #8
  tail call void @clk_unprepare(ptr noundef %38) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %read_end, %if.then11
  %retval.0.ph = phi i32 [ %36, %read_end ], [ %retval.0.i, %if.then11 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ocotp_write(ptr noundef %context, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bytes)
  %cmp.not = icmp eq i32 %3, %bytes
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rem = urem i32 %offset, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocotp_mutex, i32 noundef 0) #8
  %clk = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %if.then4, label %clk_prepare_enable.exit.if.end5_crit_edge

clk_prepare_enable.exit.if.end5_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #8
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end5:                                          ; preds = %clk_prepare_enable.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  %params = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 3
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %set_timing = getelementptr inbounds %struct.ocotp_params, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set_timing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_timing, align 4
  tail call void %11(ptr noundef %context) #8
  %base1.i = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 2
  %12 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1.i, align 4
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %bm_busy.i = getelementptr inbounds %struct.ocotp_params, ptr %15, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %bm_busy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bm_busy.i, align 4
  %bm_error.i = getelementptr inbounds %struct.ocotp_params, ptr %15, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %bm_error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bm_error.i, align 4
  %or4.i = or i32 %19, %17
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.end5
  %count.030.i = phi i32 [ 10000, %if.end5 ], [ %dec.i, %do.end.i.for.body.i_crit_edge ]
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !91
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %and.i = and i32 %21, %or4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i250 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i250, label %for.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !97
  %dec.i = add nsw i32 %count.030.i, -1
  %cmp.not.i = icmp eq i32 %count.030.i, 0
  br i1 %cmp.not.i, label %for.end.thread.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.thread.i:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1433.i = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1433.i)
  %tobool15.not34.i = icmp eq i32 %and1433.i, 0
  %.35.i = select i1 %tobool15.not34.i, i32 -110, i32 -1
  br label %do.end11

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i)
  %cmp12.i = icmp slt i32 %count.030.i, 0
  %and14.i = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %..i = select i1 %tobool15.not.i, i32 -110, i32 -1
  br i1 %cmp12.i, label %for.end.i.do.end11_crit_edge, label %if.end13

for.end.i.do.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %for.end.i.do.end11_crit_edge, %for.end.thread.i
  %.36.i = phi i32 [ %.35.i, %for.end.thread.i ], [ %..i, %for.end.i.do.end11_crit_edge ]
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14) #12
  br label %write_end

if.end13:                                         ; preds = %for.end.i
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params, align 4
  %bank_address_words = getelementptr inbounds %struct.ocotp_params, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bank_address_words to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bank_address_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15.not = icmp eq i32 %27, 0
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config, align 4
  %word_size18 = getelementptr inbounds %struct.nvmem_config, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %word_size18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %word_size18, align 4
  %div = udiv i32 %offset, %31
  %div21 = udiv i32 %div, %27
  %sub = add i32 %27, 255
  %and = and i32 %div, %sub
  %phi.cast249 = trunc i32 %and to i8
  br label %if.end27

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %div25248 = lshr i32 %offset, 2
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16
  %waddr.0.in = phi i32 [ %div21, %if.then16 ], [ %div25248, %if.else ]
  %word.0 = phi i8 [ %phi.cast249, %if.then16 ], [ 0, %if.else ]
  %32 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base1.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !91
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %36 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params, align 4
  %ctrl31 = getelementptr inbounds %struct.ocotp_params, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ctrl31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrl31, align 4
  %neg = xor i32 %39, -1
  %and32 = and i32 %35, %neg
  %conv33 = and i32 %waddr.0.in, 255
  %and37 = and i32 %conv33, %39
  %or = or i32 %and37, %and32
  %or38 = or i32 %or, 1047986176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %41 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !94
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params, align 4
  %bank_address_words45 = getelementptr inbounds %struct.ocotp_params, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bank_address_words45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bank_address_words45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp46.not = icmp eq i32 %46, 0
  br i1 %cmp46.not, label %do.body134, label %if.then48

if.then48:                                        ; preds = %if.end27
  %47 = zext i8 %word.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %word.0, label %if.then48.if.end139_crit_edge [
    i8 0, label %do.body50
    i8 1, label %do.body71
    i8 2, label %do.body92
    i8 3, label %do.body113
  ]

if.then48.if.end139_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

do.body50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base1.i, align 4
  %add.ptr54 = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base1.i, align 4
  %add.ptr59 = getelementptr i8, ptr %51, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base1.i, align 4
  %add.ptr64 = getelementptr i8, ptr %53, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base1.i, align 4
  %add.ptr69 = getelementptr i8, ptr %58, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %56) #8, !srcloc !94
  br label %if.end139

do.body71:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base1.i, align 4
  %add.ptr75 = getelementptr i8, ptr %63, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %61) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base1.i, align 4
  %add.ptr80 = getelementptr i8, ptr %65, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base1.i, align 4
  %add.ptr85 = getelementptr i8, ptr %67, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base1.i, align 4
  %add.ptr90 = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #8, !srcloc !94
  br label %if.end139

do.body92:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base1.i, align 4
  %add.ptr96 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base1.i, align 4
  %add.ptr101 = getelementptr i8, ptr %76, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %74) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base1.i, align 4
  %add.ptr106 = getelementptr i8, ptr %78, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base1.i, align 4
  %add.ptr111 = getelementptr i8, ptr %80, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 0) #8, !srcloc !94
  br label %if.end139

do.body113:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base1.i, align 4
  %add.ptr117 = getelementptr i8, ptr %82, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base1.i, align 4
  %add.ptr122 = getelementptr i8, ptr %84, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 0) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base1.i, align 4
  %add.ptr127 = getelementptr i8, ptr %89, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %87) #8, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base1.i, align 4
  %add.ptr132 = getelementptr i8, ptr %91, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 0) #8, !srcloc !94
  br label %if.end139

do.body134:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base1.i, align 4
  %add.ptr138 = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %94) #8, !srcloc !94
  br label %if.end139

if.end139:                                        ; preds = %do.body134, %do.body113, %do.body92, %do.body71, %do.body50, %if.then48.if.end139_crit_edge
  %97 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base1.i, align 4
  %99 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %params, align 4
  %bm_busy.i253 = getelementptr inbounds %struct.ocotp_params, ptr %100, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %bm_busy.i253 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bm_busy.i253, align 4
  %bm_error.i254 = getelementptr inbounds %struct.ocotp_params, ptr %100, i32 0, i32 3, i32 2
  %103 = ptrtoint ptr %bm_error.i254 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bm_error.i254, align 4
  %or4.i255 = or i32 %104, %102
  br label %for.body.i259

for.body.i259:                                    ; preds = %do.end.i262.for.body.i259_crit_edge, %if.end139
  %count.030.i256 = phi i32 [ 10000, %if.end139 ], [ %dec.i260, %do.end.i262.for.body.i259_crit_edge ]
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !91
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %and.i257 = and i32 %106, %or4.i255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool.not.i258 = icmp eq i32 %and.i257, 0
  br i1 %tobool.not.i258, label %for.end.i271, label %do.end.i262

do.end.i262:                                      ; preds = %for.body.i259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !97
  %dec.i260 = add nsw i32 %count.030.i256, -1
  %cmp.not.i261 = icmp eq i32 %count.030.i256, 0
  br i1 %cmp.not.i261, label %for.end.thread.i266, label %do.end.i262.for.body.i259_crit_edge

do.end.i262.for.body.i259_crit_edge:              ; preds = %do.end.i262
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i259

for.end.thread.i266:                              ; preds = %do.end.i262
  %and1433.i263 = and i32 %106, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1433.i263)
  %tobool15.not34.i264 = icmp eq i32 %and1433.i263, 0
  br i1 %tobool15.not34.i264, label %for.end.thread.i266.do.end154_crit_edge, label %for.end.thread.i266.do.end149_crit_edge

for.end.thread.i266.do.end149_crit_edge:          ; preds = %for.end.thread.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

for.end.thread.i266.do.end154_crit_edge:          ; preds = %for.end.thread.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154

for.end.i271:                                     ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i256)
  %cmp12.i267 = icmp slt i32 %count.030.i256, 0
  br i1 %cmp12.i267, label %if.then143, label %if.end157

if.then143:                                       ; preds = %for.end.i271
  %and14.i268 = and i32 %106, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i268)
  %tobool15.not.i269.not = icmp eq i32 %and14.i268, 0
  br i1 %tobool15.not.i269.not, label %if.then143.do.end154_crit_edge, label %if.then143.do.end149_crit_edge

if.then143.do.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

if.then143.do.end154_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154

do.end149:                                        ; preds = %if.then143.do.end149_crit_edge, %for.end.thread.i266.do.end149_crit_edge
  %107 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.17) #12
  tail call fastcc void @imx_ocotp_clr_err_if_set(ptr noundef %context)
  br label %write_end

do.end154:                                        ; preds = %if.then143.do.end154_crit_edge, %for.end.thread.i266.do.end154_crit_edge
  %109 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.20) #12
  br label %write_end

if.end157:                                        ; preds = %for.end.i271
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 429496) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %params, align 4
  %bm_rel_shadows = getelementptr inbounds %struct.ocotp_params, ptr %113, i32 0, i32 3, i32 3
  %114 = ptrtoint ptr %bm_rel_shadows to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bm_rel_shadows, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base1.i, align 4
  %add.ptr164 = getelementptr i8, ptr %118, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %116) #8, !srcloc !94
  %119 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %params, align 4
  %bm_rel_shadows167 = getelementptr inbounds %struct.ocotp_params, ptr %120, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %bm_rel_shadows167 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bm_rel_shadows167, align 4
  %123 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base1.i, align 4
  %bm_busy.i276 = getelementptr inbounds %struct.ocotp_params, ptr %120, i32 0, i32 3, i32 1
  %125 = ptrtoint ptr %bm_busy.i276 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bm_busy.i276, align 4
  %bm_error.i277 = getelementptr inbounds %struct.ocotp_params, ptr %120, i32 0, i32 3, i32 2
  %127 = ptrtoint ptr %bm_error.i277 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bm_error.i277, align 4
  %or.i = or i32 %126, %122
  %or4.i278 = or i32 %or.i, %128
  br label %for.body.i282

for.body.i282:                                    ; preds = %do.end.i285.for.body.i282_crit_edge, %if.end157
  %count.030.i279 = phi i32 [ 10000, %if.end157 ], [ %dec.i283, %do.end.i285.for.body.i282_crit_edge ]
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !91
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %and.i280 = and i32 %130, %or4.i278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool.not.i281 = icmp eq i32 %and.i280, 0
  br i1 %tobool.not.i281, label %for.end.i294, label %do.end.i285

do.end.i285:                                      ; preds = %for.body.i282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !97
  %dec.i283 = add nsw i32 %count.030.i279, -1
  %cmp.not.i284 = icmp eq i32 %count.030.i279, 0
  br i1 %cmp.not.i284, label %for.end.thread.i289, label %do.end.i285.for.body.i282_crit_edge

do.end.i285.for.body.i282_crit_edge:              ; preds = %do.end.i285
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i282

for.end.thread.i289:                              ; preds = %do.end.i285
  call void @__sanitizer_cov_trace_pc() #10
  %and1433.i286 = and i32 %130, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1433.i286)
  %tobool15.not34.i287 = icmp eq i32 %and1433.i286, 0
  %.35.i288 = select i1 %tobool15.not34.i287, i32 -110, i32 -1
  br label %do.end174

for.end.i294:                                     ; preds = %for.body.i282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i279)
  %cmp12.i290 = icmp slt i32 %count.030.i279, 0
  %and14.i291 = and i32 %130, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i291)
  %tobool15.not.i292 = icmp eq i32 %and14.i291, 0
  %..i293 = select i1 %tobool15.not.i292, i32 -110, i32 -1
  br i1 %cmp12.i290, label %for.end.i294.do.end174_crit_edge, label %for.end.i294.write_end_crit_edge

for.end.i294.write_end_crit_edge:                 ; preds = %for.end.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_end

for.end.i294.do.end174_crit_edge:                 ; preds = %for.end.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end174

do.end174:                                        ; preds = %for.end.i294.do.end174_crit_edge, %for.end.thread.i289
  %.36.i295 = phi i32 [ %.35.i288, %for.end.thread.i289 ], [ %..i293, %for.end.i294.do.end174_crit_edge ]
  %131 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.23) #12
  br label %write_end

write_end:                                        ; preds = %do.end174, %for.end.i294.write_end_crit_edge, %do.end154, %do.end149, %do.end11
  %ret.0 = phi i32 [ %.36.i, %do.end11 ], [ -1, %do.end149 ], [ -110, %do.end154 ], [ %.36.i295, %do.end174 ], [ 0, %for.end.i294.write_end_crit_edge ]
  %133 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %134) #8
  tail call void @clk_unprepare(ptr noundef %134) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp178 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp178, i32 %ret.0, i32 %bytes
  br label %cleanup

cleanup:                                          ; preds = %write_end, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then4 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %write_end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ocotp_cell_pp(ptr nocapture noundef readonly %context, ptr noundef readonly %id, i32 noundef %offset, ptr nocapture noundef %data, i32 noundef %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %id, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %id, ptr noundef nonnull dereferenceable(12) @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %params = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %reverse_mac_address = getelementptr inbounds %struct.ocotp_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reverse_mac_address to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reverse_mac_address, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp23.not = icmp ult i32 %bytes, 2
  %or.cond = or i1 %tobool2.not, %cmp23.not
  br i1 %or.cond, label %if.then.if.end10_crit_edge, label %do.body.preheader

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body.preheader:                                ; preds = %if.then
  %div22 = lshr i32 %bytes, 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %i.024 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.024
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = xor i32 %i.024, -1
  %sub4 = add i32 %6, %bytes
  %arrayidx5 = getelementptr i8, ptr %data, i32 %sub4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  store i8 %8, ptr %arrayidx, align 1
  store i8 %5, ptr %arrayidx5, align 1
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %div22
  br i1 %exitcond.not, label %do.body.if.end10_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %do.body.if.end10_crit_edge, %if.then.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_ocotp_set_imx6_timing(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %mul = mul i32 %call, 17
  %sub = add i32 %mul, 999999999
  %div = udiv i32 %sub, 1000000000
  %mul2 = mul i32 %call, 37
  %sub4 = add i32 %mul2, 999999999
  %div5 = udiv i32 %sub4, 1000000000
  %mul7 = shl nuw nsw i32 %div, 1
  %sub8 = add nsw i32 %mul7, -1
  %add9 = add nsw i32 %sub8, %div5
  %mul10 = mul i32 %call, 10
  %add12 = add i32 %mul10, 500000
  %div13 = udiv i32 %add12, 1000000
  %add17 = add nsw i32 %sub8, %div13
  %base = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %5 = and i32 %4, 49167
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and21 = and i32 %add17, 4095
  %sub1 = shl nuw nsw i32 %div, 12
  %shl = add nuw nsw i32 %sub1, 61440
  %and22 = and i32 %shl, 61440
  %shl24 = shl nsw i32 %add9, 16
  %and25 = and i32 %shl24, 4128768
  %or = or i32 %and22, %6
  %or23 = or i32 %or, %and21
  %or26 = or i32 %or23, %and25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %7) #8, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_ocotp_set_imx7_timing(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %conv = zext i32 %call to i64
  %mul = mul nuw nsw i64 %conv, 1001
  %sub = add nuw nsw i64 %mul, 999999999
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #14, !srcloc !122
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !123
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %mul190 = mul nuw nsw i64 %conv, 10000
  %add193 = add nuw nsw i64 %mul190, 500000000
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add193, i32 0) #14, !srcloc !122
  %asmresult.i588 = extractvalue { i64, i32 } %4, 0
  %asmresult4.i589 = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add193, i64 %asmresult.i588, i32 %asmresult4.i589) #14, !srcloc !123
  %asmresult10.i590 = extractvalue { i64, i32 } %5, 0
  %div389587 = lshr i64 %asmresult10.i590, 29
  %6 = trunc i64 %div389587 to i32
  %7 = add i32 %6, 1
  %conv418 = and i32 %7, 4095
  %8 = lshr i64 %asmresult10.i, 17
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 1044480
  %11 = add nuw nsw i32 %10, 4096
  %12 = and i32 %11, 1044480
  %conv423 = or i32 %conv418, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv423)
  %base = getelementptr inbounds %struct.ocotp_priv, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !94
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_nvmem_imx_ocotp__183_640_imx_ocotp_driver_init6, !1, !"__initcall__kmod_nvmem_imx_ocotp__183_640_imx_ocotp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/imx-ocotp.c", i32 640, i32 1}
!2 = !{ptr @__exitcall_imx_ocotp_driver_exit, !1, !"__exitcall_imx_ocotp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/imx-ocotp.c", i32 642, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/imx-ocotp.c", i32 643, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/imx-ocotp.c", i32 644, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/imx-ocotp.c", i32 636, i32 11}
!12 = !{ptr @imx_ocotp_driver, !13, !"imx_ocotp_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/imx-ocotp.c", i32 633, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/imx-ocotp.c", i32 485, i32 10}
!16 = !{ptr @imx_ocotp_nvmem_config, !17, !"imx_ocotp_nvmem_config", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/imx-ocotp.c", i32 484, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/imx-ocotp.c", i32 186, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_ocotp_read._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_ocotp_read._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/imx-ocotp.c", i32 193, i32 3}
!28 = !{ptr @imx_ocotp_read._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx_ocotp_read._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nvmem/imx-ocotp.c", i32 78, i32 8}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ocotp_mutex, !31, !"ocotp_mutex", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nvmem/imx-ocotp.c", i32 338, i32 3}
!36 = !{ptr @imx_ocotp_write._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx_ocotp_write._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nvmem/imx-ocotp.c", i32 353, i32 3}
!40 = !{ptr @imx_ocotp_write._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx_ocotp_write._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nvmem/imx-ocotp.c", i32 454, i32 4}
!44 = !{ptr @imx_ocotp_write._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx_ocotp_write._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nvmem/imx-ocotp.c", i32 457, i32 4}
!48 = !{ptr @imx_ocotp_write._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx_ocotp_write._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvmem/imx-ocotp.c", i32 476, i32 3}
!52 = !{ptr @imx_ocotp_write._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_ocotp_write._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/nvmem/imx-ocotp.c", i32 231, i32 24}
!56 = !{ptr @imx_ocotp_dt_ids, !57, !"imx_ocotp_dt_ids", i1 false, i1 false}
!57 = !{!"../drivers/nvmem/imx-ocotp.c", i32 581, i32 34}
!58 = !{ptr @imx6q_params, !59, !"imx6q_params", i1 false, i1 false}
!59 = !{!"../drivers/nvmem/imx-ocotp.c", i32 494, i32 34}
!60 = !{ptr @imx6sl_params, !61, !"imx6sl_params", i1 false, i1 false}
!61 = !{!"../drivers/nvmem/imx-ocotp.c", i32 501, i32 34}
!62 = !{ptr @imx6sx_params, !63, !"imx6sx_params", i1 false, i1 false}
!63 = !{!"../drivers/nvmem/imx-ocotp.c", i32 515, i32 34}
!64 = !{ptr @imx6ul_params, !65, !"imx6ul_params", i1 false, i1 false}
!65 = !{!"../drivers/nvmem/imx-ocotp.c", i32 522, i32 34}
!66 = !{ptr @imx6ull_params, !67, !"imx6ull_params", i1 false, i1 false}
!67 = !{!"../drivers/nvmem/imx-ocotp.c", i32 529, i32 34}
!68 = !{ptr @imx7d_params, !69, !"imx7d_params", i1 false, i1 false}
!69 = !{!"../drivers/nvmem/imx-ocotp.c", i32 536, i32 34}
!70 = !{ptr @imx6sll_params, !71, !"imx6sll_params", i1 false, i1 false}
!71 = !{!"../drivers/nvmem/imx-ocotp.c", i32 508, i32 34}
!72 = !{ptr @imx7ulp_params, !73, !"imx7ulp_params", i1 false, i1 false}
!73 = !{!"../drivers/nvmem/imx-ocotp.c", i32 543, i32 34}
!74 = !{ptr @imx8mq_params, !75, !"imx8mq_params", i1 false, i1 false}
!75 = !{!"../drivers/nvmem/imx-ocotp.c", i32 549, i32 34}
!76 = !{ptr @imx8mm_params, !77, !"imx8mm_params", i1 false, i1 false}
!77 = !{!"../drivers/nvmem/imx-ocotp.c", i32 557, i32 34}
!78 = !{ptr @imx8mn_params, !79, !"imx8mn_params", i1 false, i1 false}
!79 = !{!"../drivers/nvmem/imx-ocotp.c", i32 565, i32 34}
!80 = !{ptr @imx8mp_params, !81, !"imx8mp_params", i1 false, i1 false}
!81 = !{!"../drivers/nvmem/imx-ocotp.c", i32 573, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 4819811}
!92 = !{i64 2152978023}
!93 = !{i64 2152978250}
!94 = !{i64 4819393}
!95 = !{i64 2152977265}
!96 = !{i64 2152977540}
!97 = !{i64 2152977382}
!98 = !{i64 2152982704}
!99 = !{i64 2153003240}
!100 = !{i64 2153003475}
!101 = !{i64 2153003876}
!102 = !{i64 2153004268}
!103 = !{i64 2153004660}
!104 = !{i64 2153005055}
!105 = !{i64 2153005459}
!106 = !{i64 2153005860}
!107 = !{i64 2153006252}
!108 = !{i64 2153006644}
!109 = !{i64 2153007036}
!110 = !{i64 2153007431}
!111 = !{i64 2153007832}
!112 = !{i64 2153008224}
!113 = !{i64 2153008616}
!114 = !{i64 2153009008}
!115 = !{i64 2153009403}
!116 = !{i64 2153009804}
!117 = !{i64 2153010199}
!118 = !{i64 2153014424}
!119 = !{i8 0, i8 2}
!120 = !{i64 2152983844}
!121 = !{i64 2152984070}
!122 = !{i64 1162131, i64 1162158, i64 1162180, i64 1162208}
!123 = !{i64 1162539, i64 1162566, i64 1162599, i64 1162620, i64 1162647, i64 1162673}
!124 = !{i64 2152995114}
