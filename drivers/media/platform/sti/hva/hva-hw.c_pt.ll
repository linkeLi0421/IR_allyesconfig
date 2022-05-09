; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/hva/hva-hw.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32, %struct.hva_dev_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.hva_dev_dbg = type { ptr, %struct.hva_ctx }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32, %struct.hva_ctx_dbg }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_ctx_dbg = type { ptr, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hva_buffer = type { ptr, i32, ptr, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/platform/sti/hva/hva-hw.c\00", [56 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s     failed to get regs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hva_hw_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr = internal global ptr @hva_hw_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[---:----]\00", [21 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s     failed to get esram\0A\00", [36 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.8 = internal global ptr @hva_hw_probe._entry.6, section ".printk_index", align 4
@hva_hw_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 323, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s     esram reserved for address: 0x%x size:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.12 = internal global ptr @hva_hw_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_hva\00", [24 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s     failed to get clock\0A\00", [36 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.16 = internal global ptr @hva_hw_probe._entry.14, section ".printk_index", align 4
@hva_hw_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str, i32 334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s     failed to prepare clock\0A\00", [32 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.19 = internal global ptr @hva_hw_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hva_its_irq\00", [20 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s     failed to install status IRQ 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.23 = internal global ptr @hva_hw_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hva_err_irq\00", [20 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str, i32 368, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s     failed to install error IRQ 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.27 = internal global ptr @hva_hw_probe._entry.25, section ".printk_index", align 4
@hva_hw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hva->protect_mutex\00", [44 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s     failed to set PM\0A\00", [39 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.31 = internal global ptr @hva_hw_probe._entry.29, section ".printk_index", align 4
@hva_hw_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str, i32 400, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s     found hva device (version 0x%lx)\0A\00", [55 x i8] zeroinitializer }, align 32
@hva_hw_probe._entry_ptr.34 = internal global ptr @hva_hw_probe._entry.32, section ".printk_index", align 4
@hva_hw_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s     failed to prepare hva clk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_hw_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@hva_hw_runtime_resume._entry_ptr = internal global ptr @hva_hw_runtime_resume._entry, section ".printk_index", align 4
@hva_hw_runtime_resume._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s     failed to set clock frequency\0A\00", [58 x i8] zeroinitializer }, align 32
@hva_hw_runtime_resume._entry_ptr.39 = internal global ptr @hva_hw_runtime_resume._entry.37, section ".printk_index", align 4
@hva_hw_execute_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s     failed to get pm_runtime\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hva_hw_execute_task\00", [44 x i8] zeroinitializer }, align 32
@hva_hw_execute_task._entry_ptr = internal global ptr @hva_hw_execute_task._entry, section ".printk_index", align 4
@hva_hw_execute_task.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.41, ptr @.str, ptr @.str.43, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_hva\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s     unknown command 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@hva_hw_execute_task.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.41, ptr @.str, ptr @.str.44, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s     %s: write configuration registers\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_hw_execute_task.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.41, ptr @.str, ptr @.str.45, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s     %s: send task (cmd: %d, task_desc: %pad)\0A\00", [47 x i8] zeroinitializer }, align 32
@hva_hw_execute_task._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str, i32 516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s     %s: time out on completion\0A\00", [61 x i8] zeroinitializer }, align 32
@hva_hw_execute_task._entry_ptr.48 = internal global ptr @hva_hw_execute_task._entry.46, section ".printk_index", align 4
@hva_hw_execute_task.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.41, ptr @.str, ptr @.str.43, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot wake up IP\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Registers:\0AReg @ = 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%-30s: 0x%08X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HVA_HIF_REG_RST\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_RST_ACK\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_MIF_CFG\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HVA_HIF_REG_HEC_MIF_CFG\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HVA_HIF_REG_CFL\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HVA_HIF_REG_SFL\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_LMI_ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_EMI_ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HVA_HIF_REG_HEC_MIF_ERR\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_HEC_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_HVC_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_HJE_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HVA_HIF_REG_CNT\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HVA_HIF_REG_HEC_CHKSYN_DIS\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HVA_HIF_REG_CLK_GATING\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HVA_HIF_REG_VERSION\00", [44 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.68, ptr @.str, ptr @.str.69, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_hw_its_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s     %s: status: 0x%02x fifo level: 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s     %s: bad context identifier: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr = internal global ptr @hva_hw_its_irq_thread._entry, section ".printk_index", align 4
@hva_hw_its_irq_thread.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.68, ptr @.str, ptr @.str.71, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s     %s: no error\0A\00", [43 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.68, ptr @.str, ptr @.str.72, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s     %s: h264 slice ready\0A\00", [35 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.68, ptr @.str, ptr @.str.73, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s     %s: h264 frame skipped\0A\00", [33 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.68, ptr @.str, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s     %s:h264 bitstream oversize\0A\00", [61 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.76 = internal global ptr @hva_hw_its_irq_thread._entry.74, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.68, ptr @.str, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s     %s: h264 slice limit size is reached\0A\00", [51 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.79 = internal global ptr @hva_hw_its_irq_thread._entry.77, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.68, ptr @.str, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s     %s: h264 max slice number is reached\0A\00", [51 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.82 = internal global ptr @hva_hw_its_irq_thread._entry.80, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.68, ptr @.str, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s     %s:task list full\0A\00", [38 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.85 = internal global ptr @hva_hw_its_irq_thread._entry.83, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.68, ptr @.str, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s     %s: command not known\0A\00", [34 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.88 = internal global ptr @hva_hw_its_irq_thread._entry.86, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.68, ptr @.str, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s     %s: wrong codec or resolution\0A\00", [58 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.91 = internal global ptr @hva_hw_its_irq_thread._entry.89, section ".printk_index", align 4
@hva_hw_its_irq_thread._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.68, ptr @.str, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s     %s: status not recognized\0A\00", [62 x i8] zeroinitializer }, align 32
@hva_hw_its_irq_thread._entry_ptr.94 = internal global ptr @hva_hw_its_irq_thread._entry.92, section ".printk_index", align 4
@hva_hw_err_irq_thread.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.95, ptr @.str, ptr @.str.96, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_hw_err_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s     status: 0x%02x fifo level: 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_hw_err_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s     bad context identifier: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hva_hw_err_irq_thread._entry_ptr = internal global ptr @hva_hw_err_irq_thread._entry, section ".printk_index", align 4
@hva_hw_err_irq_thread._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s     local memory interface error: 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@hva_hw_err_irq_thread._entry_ptr.100 = internal global ptr @hva_hw_err_irq_thread._entry.98, section ".printk_index", align 4
@hva_hw_err_irq_thread._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.95, ptr @.str, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s     external memory interface error: 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@hva_hw_err_irq_thread._entry_ptr.103 = internal global ptr @hva_hw_err_irq_thread._entry.101, section ".printk_index", align 4
@hva_hw_err_irq_thread._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.95, ptr @.str, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s     hec memory interface error: 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@hva_hw_err_irq_thread._entry_ptr.106 = internal global ptr @hva_hw_err_irq_thread._entry.104, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hva_hw_get_ip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.108, ptr @.str, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_hw_get_ip_version\00", [42 x i8] zeroinitializer }, align 32
@hva_hw_get_ip_version._entry_ptr = internal global ptr @hva_hw_get_ip_version._entry, section ".printk_index", align 4
@hva_hw_get_ip_version.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.108, ptr @.str, ptr @.str.109, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s     IP hardware version 0x%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@hva_hw_get_ip_version._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.108, ptr @.str, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s     unknown IP hardware version 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_hw_get_ip_version._entry_ptr.112 = internal global ptr @hva_hw_get_ip_version._entry.110, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 4, i64 5, i64 7, i64 8, i64 240, i64 241, i64 244]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 304, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 309, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 316, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 322, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 326, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 328, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 334, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 348, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 350, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 365, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 367, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 374, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 387, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 399, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 440, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 446, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 472, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 485, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 492, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 508, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 515, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 558, i32 15 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 563, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 565, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 566, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 567, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 568, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 569, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 570, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 571, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 572, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 573, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 574, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 575, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 576, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 577, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 578, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 579, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 580, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 123, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 132, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 143, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 148, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 153, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 158, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 163, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 168, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 173, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 178, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 183, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 188, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 226, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 235, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 245, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 251, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 257, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 87, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 273, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 285, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.411 = private constant [43 x i8] c"../drivers/media/platform/sti/hva/hva-hw.c\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 289, i32 3 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @hva_hw_err_irq_thread._entry, ptr @hva_hw_err_irq_thread._entry.101, ptr @hva_hw_err_irq_thread._entry.104, ptr @hva_hw_err_irq_thread._entry.98, ptr @hva_hw_err_irq_thread._entry_ptr, ptr @hva_hw_err_irq_thread._entry_ptr.100, ptr @hva_hw_err_irq_thread._entry_ptr.103, ptr @hva_hw_err_irq_thread._entry_ptr.106, ptr @hva_hw_execute_task._entry, ptr @hva_hw_execute_task._entry.46, ptr @hva_hw_execute_task._entry_ptr, ptr @hva_hw_execute_task._entry_ptr.48, ptr @hva_hw_get_ip_version._entry, ptr @hva_hw_get_ip_version._entry.110, ptr @hva_hw_get_ip_version._entry_ptr, ptr @hva_hw_get_ip_version._entry_ptr.112, ptr @hva_hw_its_irq_thread._entry, ptr @hva_hw_its_irq_thread._entry.74, ptr @hva_hw_its_irq_thread._entry.77, ptr @hva_hw_its_irq_thread._entry.80, ptr @hva_hw_its_irq_thread._entry.83, ptr @hva_hw_its_irq_thread._entry.86, ptr @hva_hw_its_irq_thread._entry.89, ptr @hva_hw_its_irq_thread._entry.92, ptr @hva_hw_its_irq_thread._entry_ptr, ptr @hva_hw_its_irq_thread._entry_ptr.76, ptr @hva_hw_its_irq_thread._entry_ptr.79, ptr @hva_hw_its_irq_thread._entry_ptr.82, ptr @hva_hw_its_irq_thread._entry_ptr.85, ptr @hva_hw_its_irq_thread._entry_ptr.88, ptr @hva_hw_its_irq_thread._entry_ptr.91, ptr @hva_hw_its_irq_thread._entry_ptr.94, ptr @hva_hw_probe._entry, ptr @hva_hw_probe._entry.14, ptr @hva_hw_probe._entry.17, ptr @hva_hw_probe._entry.21, ptr @hva_hw_probe._entry.25, ptr @hva_hw_probe._entry.29, ptr @hva_hw_probe._entry.32, ptr @hva_hw_probe._entry.6, ptr @hva_hw_probe._entry.9, ptr @hva_hw_probe._entry_ptr, ptr @hva_hw_probe._entry_ptr.12, ptr @hva_hw_probe._entry_ptr.16, ptr @hva_hw_probe._entry_ptr.19, ptr @hva_hw_probe._entry_ptr.23, ptr @hva_hw_probe._entry_ptr.27, ptr @hva_hw_probe._entry_ptr.31, ptr @hva_hw_probe._entry_ptr.34, ptr @hva_hw_probe._entry_ptr.8, ptr @hva_hw_runtime_resume._entry, ptr @hva_hw_runtime_resume._entry.37, ptr @hva_hw_runtime_resume._entry_ptr, ptr @hva_hw_runtime_resume._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @hva_hw_probe.__key, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @init_completion.__key, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_runtime_resume._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_execute_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_execute_task._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_its_irq_thread._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_err_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_err_irq_thread._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_err_irq_thread._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_err_irq_thread._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_get_ip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_hw_get_ip_version._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hva_hw_probe(ptr noundef %pdev, ptr noundef %hva) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not = icmp eq ptr %hva, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !207

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #8
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call31 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #5
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %4 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call31, align 4
  %esram_addr = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 10
  %6 = ptrtoint ptr %esram_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %esram_addr, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call31, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = load i32, ptr %call31, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %9
  %esram_size = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 11
  %10 = ptrtoint ptr %esram_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %esram_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %add.i) #8
  %call44 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  %clk = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 12
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call44, ptr %clk, align 8
  %cmp.i183 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #8
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end37
  %call55 = tail call i32 @clk_prepare(ptr noundef %call44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #8
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -22 to ptr), ptr %clk, align 8
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %call63 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.err_clk_crit_edge, label %if.end66

if.end62.err_clk_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end66:                                         ; preds = %if.end62
  %irq_its = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 13
  %16 = ptrtoint ptr %irq_its to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call63, ptr %irq_its, align 4
  %call68 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call63, ptr noundef nonnull @hva_hw_its_interrupt, ptr noundef nonnull @hva_hw_its_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef %hva) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %17 = ptrtoint ptr %irq_its to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_its, align 4
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.5, i32 noundef %18) #8
  br label %err_clk

if.end75:                                         ; preds = %if.end66
  tail call void @disable_irq(i32 noundef %18) #5
  %call77 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end75.err_clk_crit_edge, label %if.end80

if.end75.err_clk_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end80:                                         ; preds = %if.end75
  %irq_err = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 14
  %19 = ptrtoint ptr %irq_err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call77, ptr %irq_err, align 8
  %call82 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call77, ptr noundef nonnull @hva_hw_err_interrupt, ptr noundef nonnull @hva_hw_err_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.24, ptr noundef %hva) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  %20 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_err, align 8
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5, i32 noundef %21) #8
  br label %err_clk

if.end89:                                         ; preds = %if.end80
  tail call void @disable_irq(i32 noundef %21) #5
  %protect_mutex = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %protect_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @hva_hw_probe.__key) #5
  %interrupt = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 17
  %22 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %interrupt, align 4
  %wait.i = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @init_completion.__key) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 3) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i184 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp.i185 = icmp slt i32 %call.i184, 0
  br i1 %cmp.i185, label %if.then.i, label %if.end101

if.then.i:                                        ; preds = %if.end89
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end100_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end100_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !210
  br label %do.end100

do.end100:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end100_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5) #8
  br label %err_disable

if.end101:                                        ; preds = %if.end89
  %call102 = tail call fastcc i32 @hva_hw_get_ip_version(ptr noundef %hva)
  %ip_version = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 18
  %24 = ptrtoint ptr %ip_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call102, ptr %ip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp104 = icmp eq i32 %call102, 0
  br i1 %cmp104, label %if.then105, label %do.end109

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %call.i186 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  br label %err_disable

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, i32 noundef %call102) #8
  br label %cleanup

err_disable:                                      ; preds = %if.then105, %do.end100
  %ret.0 = phi i32 [ %call.i184, %do.end100 ], [ -22, %if.then105 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %err_clk

err_clk:                                          ; preds = %err_disable, %do.end87, %if.end75.err_clk_crit_edge, %do.end73, %if.end62.err_clk_crit_edge
  %ret.1 = phi i32 [ %call63, %if.end62.err_clk_crit_edge ], [ %call68, %do.end73 ], [ %call77, %if.end75.err_clk_crit_edge ], [ %call82, %do.end87 ], [ %ret.0, %err_disable ]
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 8
  %tobool113.not = icmp eq ptr %26, null
  br i1 %tobool113.not, label %err_clk.cleanup_crit_edge, label %if.then114

err_clk.cleanup_crit_edge:                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then114:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %err_clk.cleanup_crit_edge, %do.end109, %do.end59, %do.end50, %do.end36, %do.end27
  %retval.0 = phi i32 [ %3, %do.end27 ], [ %14, %do.end50 ], [ %call55, %do.end59 ], [ 0, %do.end109 ], [ -19, %do.end36 ], [ %ret.1, %if.then114 ], [ %ret.1, %err_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_hw_its_interrupt(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 280
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %sts_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 26
  %4 = ptrtoint ptr %sts_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sts_reg, align 8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !211
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sfl_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 25
  %9 = ptrtoint ptr %sfl_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sfl_reg, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #5, !srcloc !212
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_hw_its_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %sts_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 26
  %2 = ptrtoint ptr %sts_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sts_reg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_its_irq_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sts_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sts_reg, align 8
  %and5 = and i32 %5, 255
  %sfl_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 25
  %6 = ptrtoint ptr %sfl_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sfl_reg, align 4
  %and6 = and i32 %7, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68, i32 noundef %and5, i32 noundef %and6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %sts_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sts_reg, align 8
  %and8 = lshr i32 %9, 8
  %conv9 = and i32 %and8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv9)
  %cmp = icmp ugt i32 %conv9, 15
  br i1 %cmp, label %do.end14, label %if.end16

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68, i32 noundef %conv9) #8
  br label %out

if.end16:                                         ; preds = %do.end
  %arrayidx = getelementptr %struct.hva_dev, ptr %arg, i32 0, i32 6, i32 %conv9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end16.out_crit_edge, label %if.end19

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end16
  %trunc = trunc i32 %3 to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end120 [
    i8 0, label %do.body20
    i8 8, label %do.body37
    i8 4, label %do.body57
    i8 2, label %do.end79
    i8 5, label %do.end86
    i8 7, label %do.end93
    i8 -16, label %do.end100
    i8 -15, label %do.end107
    i8 -12, label %do.end114
  ]

do.body20:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_its_irq_thread, %if.then32)) #5
          to label %do.end35 [label %if.then32], !srcloc !213

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull @.str.68) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body20
  %hw_err = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %13 = ptrtoint ptr %hw_err to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hw_err, align 4
  br label %out

do.body37:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_its_irq_thread, %if.then49)) #5
          to label %do.end54 [label %if.then49], !srcloc !213

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %name50 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef %name50, ptr noundef nonnull @.str.68) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.body37
  %hw_err55 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %hw_err55 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hw_err55, align 4
  br label %out

do.body57:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_its_irq_thread, %if.then69)) #5
          to label %do.end74 [label %if.then69], !srcloc !213

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %name70 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef %name70, ptr noundef nonnull @.str.68) #5
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body57
  %hw_err75 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %15 = ptrtoint ptr %hw_err75 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %hw_err75, align 4
  br label %out

do.end79:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name80 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef %name80, ptr noundef nonnull @.str.68) #8
  %hw_err82 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %hw_err82 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %hw_err82, align 4
  br label %out

do.end86:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name87 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %name87, ptr noundef nonnull @.str.68) #8
  %hw_err89 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %17 = ptrtoint ptr %hw_err89 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %hw_err89, align 4
  br label %out

do.end93:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name94 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef %name94, ptr noundef nonnull @.str.68) #8
  %hw_err96 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %18 = ptrtoint ptr %hw_err96 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hw_err96, align 4
  br label %out

do.end100:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name101 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef %name101, ptr noundef nonnull @.str.68) #8
  %hw_err103 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %19 = ptrtoint ptr %hw_err103 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hw_err103, align 4
  br label %out

do.end107:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name108 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef %name108, ptr noundef nonnull @.str.68) #8
  %hw_err110 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %20 = ptrtoint ptr %hw_err110 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %hw_err110, align 4
  br label %out

do.end114:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name115 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef %name115, ptr noundef nonnull @.str.68) #8
  %hw_err117 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %21 = ptrtoint ptr %hw_err117 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %hw_err117, align 4
  br label %out

do.end120:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %name121 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef %name121, ptr noundef nonnull @.str.68) #8
  %hw_err123 = getelementptr inbounds %struct.hva_ctx, ptr %11, i32 0, i32 21
  %22 = ptrtoint ptr %hw_err123 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %hw_err123, align 4
  br label %out

out:                                              ; preds = %do.end120, %do.end114, %do.end107, %do.end100, %do.end93, %do.end86, %do.end79, %do.end74, %do.end54, %do.end35, %if.end16.out_crit_edge, %do.end14
  %interrupt = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 17
  tail call void @complete(ptr noundef %interrupt) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_hw_err_interrupt(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 280
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %sts_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 26
  %4 = ptrtoint ptr %sts_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sts_reg, align 8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !211
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sfl_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 25
  %9 = ptrtoint ptr %sfl_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sfl_reg, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 296
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !211
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %lmi_err_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 27
  %14 = ptrtoint ptr %lmi_err_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lmi_err_reg, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 300
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !211
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %emi_err_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 28
  %19 = ptrtoint ptr %emi_err_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %emi_err_reg, align 8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %21, i32 304
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !211
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %hec_mif_err_reg = getelementptr inbounds %struct.hva_dev, ptr %data, i32 0, i32 29
  %24 = ptrtoint ptr %hec_mif_err_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %hec_mif_err_reg, align 4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %26, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 16777216) #5, !srcloc !212
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_hw_err_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_err_irq_thread.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_err_irq_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sts_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 26
  %2 = ptrtoint ptr %sts_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sts_reg, align 8
  %and = and i32 %3, 255
  %sfl_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 25
  %4 = ptrtoint ptr %sfl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sfl_reg, align 4
  %and4 = and i32 %5, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_err_irq_thread.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.5, i32 noundef %and, i32 noundef %and4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sts_reg5 = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 26
  %6 = ptrtoint ptr %sts_reg5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sts_reg5, align 8
  %and6 = lshr i32 %7, 8
  %conv7 = and i32 %and6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv7)
  %cmp = icmp ugt i32 %conv7, 15
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.5, i32 noundef %conv7) #8
  br label %out

if.end14:                                         ; preds = %do.end
  %arrayidx = getelementptr %struct.hva_dev, ptr %arg, i32 0, i32 6, i32 %conv7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.out_crit_edge, label %if.end17

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end17:                                         ; preds = %if.end14
  %lmi_err_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 27
  %10 = ptrtoint ptr %lmi_err_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lmi_err_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %do.end22

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef %name, i32 noundef %11) #8
  %hw_err = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %hw_err to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hw_err, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.end17.if.end24_crit_edge
  %emi_err_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 28
  %13 = ptrtoint ptr %emi_err_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %emi_err_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %do.end29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %name30 = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef %name30, i32 noundef %14) #8
  %hw_err33 = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 21
  %15 = ptrtoint ptr %hw_err33 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hw_err33, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end29, %if.end24.if.end34_crit_edge
  %hec_mif_err_reg = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 29
  %16 = ptrtoint ptr %hec_mif_err_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hec_mif_err_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool35.not = icmp eq i32 %17, 0
  br i1 %tobool35.not, label %if.end34.out_crit_edge, label %do.end39

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %name40 = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef %name40, i32 noundef %17) #8
  %hw_err43 = getelementptr inbounds %struct.hva_ctx, ptr %9, i32 0, i32 21
  %18 = ptrtoint ptr %hw_err43 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hw_err43, align 4
  br label %out

out:                                              ; preds = %do.end39, %if.end34.out_crit_edge, %if.end14.out_crit_edge, %do.end12
  %interrupt = getelementptr inbounds %struct.hva_dev, ptr %arg, i32 0, i32 17
  tail call void @complete(ptr noundef %interrupt) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hva_hw_get_ip_version(ptr noundef %hva) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !210
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.5) #8
  %protect_mutex = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %protect_mutex) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 332
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %6 = and i32 %5, -65536
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %6)
  %cond = icmp eq i32 %6, 262144
  br i1 %cond, label %do.body4, label %do.end15

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_get_ip_version.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_get_ip_version, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !213

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_get_ip_version.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.5, i32 noundef 1024) #5
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.5, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then9, %do.body4, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 1024, %if.then9 ], [ 0, %do.end15 ], [ 1024, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_hw_remove(ptr nocapture noundef readonly %hva) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %irq_its = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 13
  %2 = ptrtoint ptr %irq_its to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_its, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %irq_err = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 14
  %4 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_err, align 8
  tail call void @disable_irq(i32 noundef %5) #5
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #5
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hva_hw_runtime_suspend(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hva_hw_runtime_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %call4 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 300000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.5) #8
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hva_hw_execute_task(ptr noundef %ctx, i32 noundef %cmd, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %id = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 8
  %protect_mutex = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %protect_mutex, i32 noundef 0) #5
  %irq_its = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %irq_its to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_its, align 4
  tail call void @enable_irq(i32 noundef %7) #5
  %irq_err = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_err, align 8
  tail call void @enable_irq(i32 noundef %9) #5
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !210
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %name = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef %name) #8
  %sys_errors = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 23
  %11 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %out

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 328
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cond117 = icmp eq i32 %cmd, 2
  br i1 %cond117, label %sw.bb, label %do.body3

sw.bb:                                            ; preds = %if.end
  %or = or i32 %16, 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %19, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %17) #5, !srcloc !212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_execute_task, %if.then29)) #5
          to label %do.end34 [label %if.then29], !srcloc !213

do.body3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_execute_task, %if.then8)) #5
          to label %do.end13 [label %if.then8], !srcloc !213

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %name9 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_execute_task.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef %name9, i32 noundef %cmd) #5
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3
  %encode_errors = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 24
  %20 = ptrtoint ptr %encode_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %encode_errors, align 8
  %inc14 = add i32 %21, 1
  store i32 %inc14, ptr %encode_errors, align 8
  br label %out

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name30 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_execute_task.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef %name30, ptr noundef nonnull @.str.41) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %sw.bb
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 15729408) #5, !srcloc !212
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %25, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #5, !srcloc !212
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 -1006632960) #5, !srcloc !212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_execute_task, %if.then53)) #5
          to label %do.end58 [label %if.then53], !srcloc !213

if.then53:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  %name54 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add = or i32 %shl, 2
  %paddr = getelementptr inbounds %struct.hva_buffer, ptr %task, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_execute_task.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef %name54, ptr noundef nonnull @.str.41, i32 noundef %add, ptr noundef %paddr) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.end34
  %conv59 = zext i8 %5 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = or i32 %shl60, 2
  %28 = tail call i32 @llvm.bswap.i32(i32 %add61)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %30, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %28) #5, !srcloc !212
  %paddr64 = getelementptr inbounds %struct.hva_buffer, ptr %task, i32 0, i32 1
  %31 = ptrtoint ptr %paddr64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr64, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr66 = getelementptr i8, ptr %35, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %33) #5, !srcloc !212
  %interrupt = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 17
  %call68 = tail call i32 @wait_for_completion_timeout(ptr noundef %interrupt, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end73, label %if.end78

do.end73:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  %name74 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef %name74, ptr noundef nonnull @.str.41) #8
  %encode_errors76 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 24
  %36 = ptrtoint ptr %encode_errors76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %encode_errors76, align 8
  %inc77 = add i32 %37, 1
  store i32 %inc77, ptr %encode_errors76, align 8
  br label %out

if.end78:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  %hw_err = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 21
  %38 = ptrtoint ptr %hw_err to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hw_err, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool79.not = icmp eq i8 %39, 0
  %cond = select i1 %tobool79.not, i32 0, i32 -14
  %not.tobool79.not = xor i1 %tobool79.not, true
  %cond84 = zext i1 %not.tobool79.not to i32
  %encode_errors85 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 24
  %40 = ptrtoint ptr %encode_errors85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %encode_errors85, align 8
  %add86 = add i32 %41, %cond84
  store i32 %add86, ptr %encode_errors85, align 8
  br label %out

out:                                              ; preds = %if.end78, %do.end73, %do.end13, %do.end
  %reg.0 = phi i32 [ 0, %do.end ], [ %or, %if.end78 ], [ %or, %do.end73 ], [ %16, %do.end13 ]
  %ret.0 = phi i32 [ -14, %do.end ], [ %cond, %if.end78 ], [ -14, %do.end73 ], [ -14, %do.end13 ]
  %42 = ptrtoint ptr %irq_its to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq_its, align 4
  tail call void @disable_irq(i32 noundef %43) #5
  %44 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq_err, align 8
  tail call void @disable_irq(i32 noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cond118 = icmp eq i32 %cmd, 2
  br i1 %cond118, label %sw.bb89, label %do.body93

sw.bb89:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %reg.0, -2
  %46 = tail call i32 @llvm.bswap.i32(i32 %and)
  %regs90 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %regs90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs90, align 4
  %add.ptr91 = getelementptr i8, ptr %48, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %46) #5, !srcloc !212
  br label %sw.epilog111

do.body93:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_hw_execute_task, %if.then105)) #5
          to label %sw.epilog111 [label %if.then105], !srcloc !213

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  %name106 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_hw_execute_task.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef %name106, i32 noundef %cmd) #5
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %if.then105, %do.body93, %sw.bb89
  br i1 %cmp.i, label %sw.epilog111.if.end115_crit_edge, label %if.then113

sw.epilog111.if.end115_crit_edge:                 ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then113:                                       ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #7
  %call.i174 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %sw.epilog111.if.end115_crit_edge
  tail call void @mutex_unlock(ptr noundef %protect_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_hw_dump_regs(ptr noundef %hva, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %protect_mutex = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %protect_mutex, i32 noundef 0) #5
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !210
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.49) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef %4) #5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %8) #5
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 260
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !211
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i32 noundef %12) #5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 264
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !211
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef %16) #5
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 268
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !211
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55, i32 noundef %20) #5
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 272
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !211
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56, i32 noundef %24) #5
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %26, i32 284
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !211
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57, i32 noundef %28) #5
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr32 = getelementptr i8, ptr %30, i32 296
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !211
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.58, i32 noundef %32) #5
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %34, i32 300
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !211
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, i32 noundef %36) #5
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %38, i32 304
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #5, !srcloc !211
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.60, i32 noundef %40) #5
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %42, i32 308
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #5, !srcloc !211
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, i32 noundef %44) #5
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %46, i32 312
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #5, !srcloc !211
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, i32 noundef %48) #5
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr57 = getelementptr i8, ptr %50, i32 316
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #5, !srcloc !211
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, i32 noundef %52) #5
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr62 = getelementptr i8, ptr %54, i32 320
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #5, !srcloc !211
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.64, i32 noundef %56) #5
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr67 = getelementptr i8, ptr %58, i32 324
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #5, !srcloc !211
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65, i32 noundef %60) #5
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr72 = getelementptr i8, ptr %62, i32 328
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #5, !srcloc !211
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.66, i32 noundef %64) #5
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %66, i32 332
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #5, !srcloc !211
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.67, i32 noundef %68) #5
  %call.i120 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  tail call void @mutex_unlock(ptr noundef %protect_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 304, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 309, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hva_hw_probe._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @hva_hw_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 316, i32 3}
!12 = !{ptr @hva_hw_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hva_hw_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 322, i32 2}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hva_hw_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hva_hw_probe._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 326, i32 31}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 328, i32 3}
!23 = !{ptr @hva_hw_probe._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hva_hw_probe._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 334, i32 3}
!27 = !{ptr @hva_hw_probe._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hva_hw_probe._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 348, i32 6}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 350, i32 3}
!33 = !{ptr @hva_hw_probe._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hva_hw_probe._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 365, i32 6}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 367, i32 3}
!39 = !{ptr @hva_hw_probe._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hva_hw_probe._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @hva_hw_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 374, i32 2}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 387, i32 3}
!46 = !{ptr @hva_hw_probe._entry.29, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hva_hw_probe._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 399, i32 2}
!50 = !{ptr @hva_hw_probe._entry.32, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hva_hw_probe._entry_ptr.34, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 440, i32 3}
!54 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hva_hw_runtime_resume._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @hva_hw_runtime_resume._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 446, i32 3}
!59 = !{ptr @hva_hw_runtime_resume._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hva_hw_runtime_resume._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 472, i32 3}
!63 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hva_hw_execute_task._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @hva_hw_execute_task._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 485, i32 3}
!68 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug305, !67, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 492, i32 2}
!72 = !{ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug306, !71, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 508, i32 2}
!75 = !{ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug307, !74, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 515, i32 3}
!78 = !{ptr @hva_hw_execute_task._entry.46, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hva_hw_execute_task._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @hva_hw_execute_task.__UNIQUE_ID_ddebug308, !81, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 537, i32 3}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 558, i32 15}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 563, i32 16}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 565, i32 2}
!88 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 566, i32 2}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 567, i32 2}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 568, i32 2}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 569, i32 2}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 570, i32 2}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 571, i32 2}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 572, i32 2}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 573, i32 2}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 574, i32 2}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 575, i32 2}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 576, i32 2}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 577, i32 2}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 578, i32 2}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 579, i32 2}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 580, i32 2}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 123, i32 2}
!121 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug299, !120, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 132, i32 3}
!125 = !{ptr @hva_hw_its_irq_thread._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @hva_hw_its_irq_thread._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 143, i32 3}
!129 = !{ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug300, !128, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 148, i32 3}
!132 = !{ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug301, !131, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 153, i32 3}
!135 = !{ptr @hva_hw_its_irq_thread.__UNIQUE_ID_ddebug302, !134, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 158, i32 3}
!138 = !{ptr @hva_hw_its_irq_thread._entry.74, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @hva_hw_its_irq_thread._entry_ptr.76, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 163, i32 3}
!142 = !{ptr @hva_hw_its_irq_thread._entry.77, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @hva_hw_its_irq_thread._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 168, i32 3}
!146 = !{ptr @hva_hw_its_irq_thread._entry.80, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @hva_hw_its_irq_thread._entry_ptr.82, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 173, i32 3}
!150 = !{ptr @hva_hw_its_irq_thread._entry.83, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @hva_hw_its_irq_thread._entry_ptr.85, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 178, i32 3}
!154 = !{ptr @hva_hw_its_irq_thread._entry.86, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @hva_hw_its_irq_thread._entry_ptr.88, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 183, i32 3}
!158 = !{ptr @hva_hw_its_irq_thread._entry.89, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @hva_hw_its_irq_thread._entry_ptr.91, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.93, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 188, i32 3}
!162 = !{ptr @hva_hw_its_irq_thread._entry.92, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @hva_hw_its_irq_thread._entry_ptr.94, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 226, i32 2}
!166 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @hva_hw_err_irq_thread.__UNIQUE_ID_ddebug303, !165, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!168 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 235, i32 3}
!170 = !{ptr @hva_hw_err_irq_thread._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @hva_hw_err_irq_thread._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.99, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 245, i32 3}
!174 = !{ptr @hva_hw_err_irq_thread._entry.98, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @hva_hw_err_irq_thread._entry_ptr.100, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 251, i32 3}
!178 = !{ptr @hva_hw_err_irq_thread._entry.101, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @hva_hw_err_irq_thread._entry_ptr.103, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 257, i32 3}
!182 = !{ptr @hva_hw_err_irq_thread._entry.104, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @hva_hw_err_irq_thread._entry_ptr.106, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @init_completion.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../include/linux/completion.h", i32 87, i32 2}
!186 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.108, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 273, i32 3}
!189 = !{ptr @hva_hw_get_ip_version._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @hva_hw_get_ip_version._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 285, i32 3}
!193 = !{ptr @hva_hw_get_ip_version.__UNIQUE_ID_ddebug304, !192, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!194 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/sti/hva/hva-hw.c", i32 289, i32 3}
!196 = !{ptr @hva_hw_get_ip_version._entry.110, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @hva_hw_get_ip_version._entry_ptr.112, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{i64 2148252771}
!209 = !{i64 737594, i64 737619, i64 737641, i64 737657, i64 737669, i64 737689, i64 737713, i64 737729, i64 737741}
!210 = !{i64 2148252959}
!211 = !{i64 4243298}
!212 = !{i64 4242880}
!213 = !{i64 2148735167, i64 2148735172, i64 2148735185, i64 2148735229, i64 2148735263, i64 2148735284}
!214 = !{i8 0, i8 2}
