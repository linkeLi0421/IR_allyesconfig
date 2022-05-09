; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cimax2.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cimax2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netup_ci_state = type { %struct.dvb_ca_en50221, %struct.mutex, ptr, i8, i32, %struct.work_struct, ptr, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }

@__param_str_ci_dbg = internal constant [15 x i8] c"cx23885.ci_dbg\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ci_dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ci_dbg = internal constant %struct.kernel_param { ptr @__param_str_ci_dbg, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ci_dbg } }, section "__param", align 4
@__UNIQUE_ID_ci_dbgtype385 = internal constant [28 x i8] c"cx23885.parmtype=ci_dbg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ci_dbg386 = internal constant [40 x i8] c"cx23885.parm=ci_dbg:Enable CI debugging\00", section ".modinfo", align 1
@__param_str_ci_irq_enable = internal constant [22 x i8] c"cx23885.ci_irq_enable\00", align 1
@ci_irq_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ci_irq_enable = internal constant %struct.kernel_param { ptr @__param_str_ci_irq_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ci_irq_enable } }, section "__param", align 4
@__UNIQUE_ID_ci_irq_enabletype387 = internal constant [35 x i8] c"cx23885.parmtype=ci_irq_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ci_irq_enable388 = internal constant [47 x i8] c"cx23885.parm=ci_irq_enable:Enable IRQ from CAM\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@netup_ci_slot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017cx23885: %s: %s:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_ci_slot_status\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/cx23885/cimax2.c\00", [61 x i8] zeroinitializer }, align 32
@netup_ci_slot_status._entry_ptr = internal global ptr @netup_ci_slot_status._entry, section ".printk_index", align 4
@netup_ci_slot_status._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017cx23885: %s: %s: Wakeup CI0\0A\00", [33 x i8] zeroinitializer }, align 32
@netup_ci_slot_status._entry_ptr.5 = internal global ptr @netup_ci_slot_status._entry.3, section ".printk_index", align 4
@netup_ci_slot_status._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017cx23885: %s: %s: Wakeup CI1\0A\00", [33 x i8] zeroinitializer }, align 32
@netup_ci_slot_status._entry_ptr.8 = internal global ptr @netup_ci_slot_status._entry.6, section ".printk_index", align 4
@netup_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017cx23885: %s: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"netup_ci_init\00", [18 x i8] zeroinitializer }, align 32
@netup_ci_init._entry_ptr = internal global ptr @netup_ci_init._entry, section ".printk_index", align 4
@netup_ci_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017cx23885: %s: %s: Unable create CI structure!\0A\00", [48 x i8] zeroinitializer }, align 32
@netup_ci_init._entry_ptr.13 = internal global ptr @netup_ci_init._entry.11, section ".printk_index", align 4
@netup_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&state->work)\00", [32 x i8] zeroinitializer }, align 32
@netup_ci_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx23885: %s: %s: CI initialized!\0A\00", [60 x i8] zeroinitializer }, align 32
@netup_ci_init._entry_ptr.17 = internal global ptr @netup_ci_init._entry.15, section ".printk_index", align 4
@netup_ci_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx23885: %s: %s: Cannot initialize CI: Error %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@netup_ci_init._entry_ptr.20 = internal global ptr @netup_ci_init._entry.18, section ".printk_index", align 4
@netup_ci_op_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017cx23885: %s: %s: %s: chipaddr=[0x%x] addr=[0x%02x], %s=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netup_ci_op_cam\00", [16 x i8] zeroinitializer }, align 32
@netup_ci_op_cam._entry_ptr = internal global ptr @netup_ci_op_cam._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netup_write_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014cx23885: %s: i2c wr reg=%04x: len=%d is too big!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netup_write_i2c\00", [16 x i8] zeroinitializer }, align 32
@netup_write_i2c._entry_ptr = internal global ptr @netup_write_i2c._entry, section ".printk_index", align 4
@netup_write_i2c._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017cx23885: %s: %s: i2c write error, Reg=[0x%02x], Status=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@netup_write_i2c._entry_ptr.32 = internal global ptr @netup_write_i2c._entry.30, section ".printk_index", align 4
@netup_read_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017cx23885: %s: %s: i2c read error, Reg = 0x%02x, Status = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netup_read_i2c\00", [17 x i8] zeroinitializer }, align 32
@netup_read_i2c._entry_ptr = internal global ptr @netup_read_i2c._entry, section ".printk_index", align 4
@netup_read_i2c._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017cx23885: %s: %s: i2c read Addr=0x%04x, Reg = 0x%02x, data = %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@netup_read_i2c._entry_ptr.37 = internal global ptr @netup_read_i2c._entry.35, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@netup_ci_set_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017cx23885: %s: %s: chipaddr=[0x%x] setting ci IRQ to [0x%x] \0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netup_ci_set_irq\00", [47 x i8] zeroinitializer }, align 32
@netup_ci_set_irq._entry_ptr = internal global ptr @netup_ci_set_irq._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@netup_read_ci_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017cx23885: %s: %s: Slot Status Addr=[0x%04x], Reg=[0x%02x], data=%02x, TS config = %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_read_ci_status\00", [43 x i8] zeroinitializer }, align 32
@netup_read_ci_status._entry_ptr = internal global ptr @netup_read_ci_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"ci_dbg\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 50, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"ci_irq_enable\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 54, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 376, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 385, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 392, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 453, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 456, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 505, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 508, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 512, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 226, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 129, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 140, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 103, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 109, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 305, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [38 x i8] c"../drivers/media/pci/cx23885/cimax2.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 358, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_ci_dbg386, ptr @__UNIQUE_ID_ci_dbgtype385, ptr @__UNIQUE_ID_ci_irq_enable388, ptr @__UNIQUE_ID_ci_irq_enabletype387, ptr @__param_ci_dbg, ptr @__param_ci_irq_enable, ptr @netup_ci_init._entry, ptr @netup_ci_init._entry.11, ptr @netup_ci_init._entry.15, ptr @netup_ci_init._entry.18, ptr @netup_ci_init._entry_ptr, ptr @netup_ci_init._entry_ptr.13, ptr @netup_ci_init._entry_ptr.17, ptr @netup_ci_init._entry_ptr.20, ptr @netup_ci_op_cam._entry, ptr @netup_ci_op_cam._entry_ptr, ptr @netup_ci_set_irq._entry, ptr @netup_ci_set_irq._entry_ptr, ptr @netup_ci_slot_status._entry, ptr @netup_ci_slot_status._entry.3, ptr @netup_ci_slot_status._entry.6, ptr @netup_ci_slot_status._entry_ptr, ptr @netup_ci_slot_status._entry_ptr.5, ptr @netup_ci_slot_status._entry_ptr.8, ptr @netup_read_ci_status._entry, ptr @netup_read_ci_status._entry_ptr, ptr @netup_read_i2c._entry, ptr @netup_read_i2c._entry.35, ptr @netup_read_i2c._entry_ptr, ptr @netup_read_i2c._entry_ptr.37, ptr @netup_write_i2c._entry, ptr @netup_write_i2c._entry.30, ptr @netup_write_i2c._entry_ptr, ptr @netup_write_i2c._entry_ptr.32, ptr @ci_dbg, ptr @ci_irq_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @netup_ci_init.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_irq_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_slot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_slot_status._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_slot_status._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_op_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_write_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_write_i2c._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_i2c._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_ci_set_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_ci_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_read_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @netup_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %addr, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netup_ci_op_cam(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %flag, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [64 x i8], align 1
  %msg.i207 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %store = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %priv = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %store) #7
  %6 = ptrtoint ptr %store to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %store, align 1, !annotation !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_ci_flag = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %current_ci_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_ci_flag, align 4
  %conv = zext i8 %flag to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp3.not = icmp eq i32 %8, %conv
  br i1 %cmp3.not, label %if.end.if.end22_crit_edge, label %if.then5

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then5:                                         ; preds = %if.end
  %i2c_adap = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_adap, align 4
  %ci_i2c_addr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %13 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %conv.i = zext i8 %12 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %14, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg.addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %store, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  %24 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool19.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %do.body18.i, label %do.body.i

do.body.i:                                        ; preds = %if.then5
  br i1 %tobool19.not.i, label %do.body.i.netup_read_i2c.exit_crit_edge, label %do.end.i

do.body.i.netup_read_i2c.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_read_i2c.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg.addr.i, align 1
  %conv13.i = zext i8 %26 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv13.i, i32 noundef %call.i) #10
  br label %netup_read_i2c.exit

do.body18.i:                                      ; preds = %if.then5
  br i1 %tobool19.not.i, label %do.body18.i.if.end9_crit_edge, label %do.end23.i

do.body18.i.if.end9_crit_edge:                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %12 to i32
  %27 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.addr.i, align 1
  %conv26.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %store to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %store, align 1
  %conv27.i = zext i8 %30 to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv25.i, i32 noundef %conv26.i, i32 noundef %conv27.i) #10
  br label %if.end9

netup_read_i2c.exit:                              ; preds = %do.end.i, %do.body.i.netup_read_i2c.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end9:                                          ; preds = %do.end23.i, %do.body18.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %31 = ptrtoint ptr %store to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %store, align 1
  %33 = and i8 %32, -13
  %or206 = or i8 %33, %flag
  store i8 %or206, ptr %store, align 1
  %34 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_adap, align 4
  %36 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #7
  %38 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %39 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %40 = call ptr @memset(ptr %39, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i207) #7
  %41 = getelementptr inbounds i8, ptr %msg.i207, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %conv.i208 = zext i8 %37 to i16
  %43 = ptrtoint ptr %msg.i207 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i208, ptr %msg.i207, align 4
  %flags.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i209 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i209, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 3
  %45 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %46 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %buffer.i, align 1
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or206, ptr %38, align 1
  %call10.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i207, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %netup_write_i2c.exit, label %do.body14.i

do.body14.i:                                      ; preds = %if.end9
  %48 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %do.body14.i.netup_write_i2c.exit.thread_crit_edge, label %do.end18.i

do.body14.i.netup_write_i2c.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit.thread

do.end18.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call10.i) #10
  br label %netup_write_i2c.exit.thread

netup_write_i2c.exit.thread:                      ; preds = %do.end18.i, %do.body14.i.netup_write_i2c.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  br label %cleanup

netup_write_i2c.exit:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  br label %if.end22

if.end22:                                         ; preds = %netup_write_i2c.exit, %if.end.if.end22_crit_edge
  %49 = ptrtoint ptr %current_ci_flag to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %current_ci_flag, align 4
  %gpio_lock = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 8
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %51, i32 278537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #7, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  call void @arm_heavy_mb() #7
  %and28 = and i32 %addr, 255
  %or29 = or i32 %and28, 50944
  %52 = call i32 @llvm.bswap.i32(i32 %or29)
  %53 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %54, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %52) #7, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %56, i32 278536
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #7, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %58 = and i32 %57, -262145
  %59 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lmmio, align 4
  %add.ptr42 = getelementptr i32, ptr %60, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %58) #7, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @arm_heavy_mb() #7
  %61 = lshr i32 %addr, 8
  %and46 = and i32 %61, 255
  %or47 = or i32 %and46, 51968
  %62 = call i32 @llvm.bswap.i32(i32 %or47)
  %63 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %64, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %62) #7, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio, align 4
  %add.ptr56 = getelementptr i32, ptr %66, i32 278536
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #7, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %68 = and i32 %67, -524289
  %69 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio, align 4
  %add.ptr63 = getelementptr i32, ptr %70, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %68) #7, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not, label %do.body70, label %do.body65

do.body65:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio, align 4
  %add.ptr69 = getelementptr i32, ptr %72, i32 278537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -15728640) #7, !srcloc !99
  br label %do.body78

do.body70:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %conv73 = zext i8 %data to i32
  %or74 = or i32 %conv73, 49920
  %73 = call i32 @llvm.bswap.i32(i32 %or74)
  %74 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio, align 4
  %add.ptr76 = getelementptr i32, ptr %75, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %73) #7, !srcloc !99
  br label %do.body78

do.body78:                                        ; preds = %do.body70, %do.body65
  %neg115 = phi i32 [ -16385, %do.body65 ], [ -32769, %do.body70 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lmmio, align 4
  %add.ptr84 = getelementptr i32, ptr %77, i32 278536
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #7, !srcloc !102
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %ci_i2c_addr88 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %ci_i2c_addr88 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ci_i2c_addr88, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %81)
  %cmp90 = icmp eq i8 %81, 64
  %neg = select i1 %cmp90, i32 -257, i32 -513
  %and92 = and i32 %neg, %79
  %82 = call i32 @llvm.bswap.i32(i32 %and92)
  %83 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lmmio, align 4
  %add.ptr101 = getelementptr i32, ptr %84, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %82) #7, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio, align 4
  %add.ptr108 = getelementptr i32, ptr %86, i32 278536
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #7, !srcloc !102
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %and116 = and i32 %88, %neg115
  %89 = call i32 @llvm.bswap.i32(i32 %and116)
  %90 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lmmio, align 4
  %add.ptr123 = getelementptr i32, ptr %91, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %89) #7, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %92, 1
  %93 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio, align 4
  %add.ptr20.i = getelementptr i32, ptr %94, i32 278536
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !102
  %96 = call i32 @llvm.bswap.i32(i32 %95) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %and21.i = and i32 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 0
  br i1 %cmp22.i, label %do.body78.netup_ci_get_mem.exit_crit_edge, label %if.end.i.preheader

do.body78.netup_ci_get_mem.exit_crit_edge:        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_ci_get_mem.exit

if.end.i.preheader:                               ; preds = %do.body78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %sub.i218 = sub i32 %add.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i218)
  %cmp3.i219 = icmp slt i32 %sub.i218, 0
  br i1 %cmp3.i219, label %if.end.i.preheader.netup_ci_get_mem.exit_crit_edge, label %if.end.i.preheader.if.end5.i_crit_edge

if.end.i.preheader.if.end5.i_crit_edge:           ; preds = %if.end.i.preheader
  br label %if.end5.i

if.end.i.preheader.netup_ci_get_mem.exit_crit_edge: ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_ci_get_mem.exit

if.end.i:                                         ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %98
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.netup_ci_get_mem.exit_crit_edge, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i.netup_ci_get_mem.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_ci_get_mem.exit

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %if.end.i.preheader.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748) #7
  %100 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %101, i32 278536
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !102
  %103 = call i32 @llvm.bswap.i32(i32 %102) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %and.i = and i32 %103, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end5.i.netup_ci_get_mem.exit_crit_edge, label %if.end.i

if.end5.i.netup_ci_get_mem.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_ci_get_mem.exit

netup_ci_get_mem.exit:                            ; preds = %if.end5.i.netup_ci_get_mem.exit_crit_edge, %if.end.i.netup_ci_get_mem.exit_crit_edge, %if.end.i.preheader.netup_ci_get_mem.exit_crit_edge, %do.body78.netup_ci_get_mem.exit_crit_edge
  %.lcssa.i = phi i32 [ %96, %do.body78.netup_ci_get_mem.exit_crit_edge ], [ %96, %if.end.i.preheader.netup_ci_get_mem.exit_crit_edge ], [ %103, %if.end.i.netup_ci_get_mem.exit_crit_edge ], [ %103, %if.end5.i.netup_ci_get_mem.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lmmio, align 4
  %add.ptr9.i = getelementptr i32, ptr %105, i32 278536
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %107 = or i32 %106, 12779520
  %108 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lmmio, align 4
  %add.ptr15.i = getelementptr i32, ptr %109, i32 278536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %107) #7, !srcloc !99
  %and16.i = and i32 %.lcssa.i, 255
  call void @mutex_unlock(ptr noundef %gpio_lock) #7
  %110 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool134.not = icmp eq i32 %110, 0
  br i1 %tobool134.not, label %netup_ci_get_mem.exit.do.end156_crit_edge, label %do.end138

netup_ci_get_mem.exit.do.end156_crit_edge:        ; preds = %netup_ci_get_mem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end156

do.end138:                                        ; preds = %netup_ci_get_mem.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond142 = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  %111 = ptrtoint ptr %ci_i2c_addr88 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ci_i2c_addr88, align 4
  %conv144 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %flag)
  %cmp146 = icmp eq i8 %flag, 4
  %cond148 = select i1 %cmp146, ptr @.str.25, ptr @.str.26
  %conv151 = zext i8 %data to i32
  %cond152 = select i1 %tobool.not, i32 %conv151, i32 %and16.i
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond142, i32 noundef %conv144, i32 noundef %addr, ptr noundef nonnull %cond148, i32 noundef %cond152) #10
  br label %do.end156

do.end156:                                        ; preds = %do.end138, %netup_ci_get_mem.exit.do.end156_crit_edge
  %.call124 = select i1 %tobool.not, i32 0, i32 %and16.i
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %netup_write_i2c.exit.thread, %netup_read_i2c.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -1, %netup_read_i2c.exit ], [ %.call124, %do.end156 ], [ -1, %netup_write_i2c.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %store) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_write_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @netup_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %addr, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_read_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @netup_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %conv, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_write_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @netup_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %conv, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_slot_reset(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  %buffer.i14 = alloca [64 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 107374000) #7
  %i2c_adap = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_adap, align 4
  %ci_i2c_addr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #7
  %7 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %8 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %conv.i = zext i8 %6 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %15 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buffer.i, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %7, align 1
  %call10.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %if.end3, label %do.body14.i

do.body14.i:                                      ; preds = %if.end
  %17 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body14.i.netup_write_i2c.exit.thread_crit_edge, label %do.end18.i

do.body14.i.netup_write_i2c.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit.thread

do.end18.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call10.i) #10
  br label %netup_write_i2c.exit.thread

netup_write_i2c.exit.thread:                      ; preds = %do.end18.i, %do.body14.i.netup_write_i2c.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 107374000) #7
  %19 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap, align 4
  %21 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i14) #7
  %23 = getelementptr inbounds i8, ptr %buffer.i14, i32 1
  %24 = getelementptr inbounds i8, ptr %buffer.i14, i32 2
  %25 = call ptr @memset(ptr %24, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #7
  %26 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %conv.i16 = zext i8 %22 to i16
  %28 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i16, ptr %msg.i15, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i17, align 2
  %buf4.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %30 = ptrtoint ptr %buf4.i19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buffer.i14, ptr %buf4.i19, align 4
  %31 = ptrtoint ptr %buffer.i14 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buffer.i14, align 1
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %23, align 1
  %call10.i21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i21)
  %cmp11.not.i22 = icmp eq i32 %call10.i21, 1
  br i1 %cmp11.not.i22, label %if.end3.netup_write_i2c.exit28_crit_edge, label %do.body14.i24

if.end3.netup_write_i2c.exit28_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit28

do.body14.i24:                                    ; preds = %if.end3
  %33 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i23 = icmp eq i32 %33, 0
  br i1 %tobool.not.i23, label %do.body14.i24.netup_write_i2c.exit28_crit_edge, label %do.end18.i26

do.body14.i24.netup_write_i2c.exit28_crit_edge:   ; preds = %do.body14.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit28

do.end18.i26:                                     ; preds = %do.body14.i24
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call10.i21) #10
  br label %netup_write_i2c.exit28

netup_write_i2c.exit28:                           ; preds = %do.end18.i26, %do.body14.i24.netup_write_i2c.exit28_crit_edge, %if.end3.netup_write_i2c.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i14) #7
  call void @msleep(i32 noundef 1000) #7
  call void @dvb_ca_en50221_camready_irq(ptr noundef %1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %netup_write_i2c.exit28, %netup_write_i2c.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %netup_write_i2c.exit28 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %netup_write_i2c.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_camready_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @netup_ci_slot_shutdown(ptr nocapture readnone %en50221, i32 %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_slot_ts_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  %buffer.i = alloca [64 x i8], align 1
  %msg.i9 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_adap = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_adap, align 4
  %ci_i2c_addr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  %18 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %do.body18.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  br i1 %tobool19.not.i, label %do.body.i.netup_read_i2c.exit_crit_edge, label %do.end.i

do.body.i.netup_read_i2c.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_read_i2c.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr.i, align 1
  %conv13.i = zext i8 %20 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv13.i, i32 noundef %call.i) #10
  br label %netup_read_i2c.exit

do.body18.i:                                      ; preds = %if.end
  br i1 %tobool19.not.i, label %do.body18.i.netup_read_i2c.exit_crit_edge, label %do.end23.i

do.body18.i.netup_read_i2c.exit_crit_edge:        ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_read_i2c.exit

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %6 to i32
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv26.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  %conv27.i = zext i8 %24 to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv25.i, i32 noundef %conv26.i, i32 noundef %conv27.i) #10
  br label %netup_read_i2c.exit

netup_read_i2c.exit:                              ; preds = %do.end23.i, %do.body18.i.netup_read_i2c.exit_crit_edge, %do.end.i, %do.body.i.netup_read_i2c.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 1
  %27 = or i8 %26, 96
  store i8 %27, ptr %buf, align 1
  %28 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap, align 4
  %30 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #7
  %32 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %33 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %34 = call ptr @memset(ptr %33, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9) #7
  %35 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196607, ptr %35, align 4
  %conv.i10 = zext i8 %31 to i16
  %37 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i10, ptr %msg.i9, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i11, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %40 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %buffer.i, align 1
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %27, ptr %32, align 1
  %call10.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i9, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %netup_read_i2c.exit.netup_write_i2c.exit_crit_edge, label %do.body14.i

netup_read_i2c.exit.netup_write_i2c.exit_crit_edge: ; preds = %netup_read_i2c.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit

do.body14.i:                                      ; preds = %netup_read_i2c.exit
  %42 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %do.body14.i.netup_write_i2c.exit_crit_edge, label %do.end18.i

do.body14.i.netup_write_i2c.exit_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit

do.end18.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call10.i) #10
  br label %netup_write_i2c.exit

netup_write_i2c.exit:                             ; preds = %do.end18.i, %do.body14.i.netup_write_i2c.exit_crit_edge, %netup_read_i2c.exit.netup_write_i2c.exit_crit_edge
  %retval.0.i13 = phi i32 [ -1, %do.end18.i ], [ -1, %do.body14.i.netup_write_i2c.exit_crit_edge ], [ 0, %netup_read_i2c.exit.netup_write_i2c.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  br label %cleanup

cleanup:                                          ; preds = %netup_write_i2c.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i13, %netup_write_i2c.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_slot_status(ptr nocapture noundef readonly %dev, i32 noundef %pci_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %and = and i32 %pci_status, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %and6 = and i32 %pci_status, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end21_crit_edge, label %if.then8

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then8:                                         ; preds = %if.end5
  %port_priv = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 34
  %1 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_priv, align 4
  %work = getelementptr inbounds %struct.netup_ci_state, ptr %2, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #7
  %4 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then8.if.end21_crit_edge, label %do.end15

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %if.then8.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %and22 = and i32 %pci_status, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.then24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  %port_priv25 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 34
  %5 = ptrtoint ptr %port_priv25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_priv25, align 4
  %work26 = getelementptr inbounds %struct.netup_ci_state, ptr %6, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i46 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work26) #7
  %8 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool29.not = icmp eq i32 %8, 0
  br i1 %tobool29.not, label %if.then24.cleanup_crit_edge, label %do.end33

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end3.cleanup_crit_edge ], [ 1, %if.then24.cleanup_crit_edge ], [ 1, %do.end33 ], [ 1, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_poll_ci_slot_status(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  %buffer.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open)
  %tobool.not = icmp eq i32 %open, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @ci_irq_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %or = select i1 %tobool1.not, i8 1, i8 5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond2 = phi i8 [ %or, %cond.true ], [ 1, %if.end.cond.end_crit_edge ]
  %conv.i = zext i8 %cond2 to i32
  %current_irq_mode.i = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %current_irq_mode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %current_irq_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %cond2)
  %cmp.i = icmp eq i8 %4, %cond2
  br i1 %cmp.i, label %cond.end.netup_ci_set_irq.exit_crit_edge, label %do.body.i

cond.end.netup_ci_set_irq.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_ci_set_irq.exit

do.body.i:                                        ; preds = %cond.end
  %5 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.end.i

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %ci_i2c_addr.i = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ci_i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ci_i2c_addr.i, align 4
  %conv5.i = zext i8 %7 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.39, i32 noundef %conv5.i, i32 noundef %conv.i) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_adap.i, align 4
  %ci_i2c_addr10.i = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ci_i2c_addr10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ci_i2c_addr10.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i.i) #7
  %12 = getelementptr inbounds i8, ptr %buffer.i.i, i32 1
  %13 = getelementptr inbounds i8, ptr %buffer.i.i, i32 2
  %14 = call ptr @memset(ptr %13, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %conv.i.i = zext i8 %11 to i16
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buffer.i.i, ptr %buf4.i.i, align 4
  %20 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 27, ptr %buffer.i.i, align 1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond2, ptr %12, align 1
  %call10.i.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i.i)
  %cmp11.not.i.i = icmp eq i32 %call10.i.i, 1
  br i1 %cmp11.not.i.i, label %if.end15.i, label %do.body14.i.i

do.body14.i.i:                                    ; preds = %do.end9.i
  %22 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %do.body14.i.i.netup_write_i2c.exit.thread.i_crit_edge, label %do.end18.i.i

do.body14.i.i.netup_write_i2c.exit.thread.i_crit_edge: ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit.thread.i

do.end18.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 27, i32 noundef %call10.i.i) #10
  br label %netup_write_i2c.exit.thread.i

netup_write_i2c.exit.thread.i:                    ; preds = %do.end18.i.i, %do.body14.i.i.netup_write_i2c.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i.i) #7
  br label %netup_ci_set_irq.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i.i) #7
  %23 = ptrtoint ptr %current_irq_mode.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond2, ptr %current_irq_mode.i, align 4
  br label %netup_ci_set_irq.exit

netup_ci_set_irq.exit:                            ; preds = %if.end15.i, %netup_write_i2c.exit.thread.i, %cond.end.netup_ci_set_irq.exit_crit_edge
  %status = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %netup_ci_set_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %netup_ci_set_irq.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_init(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i181 = alloca [64 x i8], align 1
  %msg.i182 = alloca %struct.i2c_msg, align 4
  %buffer.i166 = alloca [64 x i8], align 1
  %msg.i167 = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ci_irq_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %conv = select i1 %tobool.not, i8 1, i8 5
  %1 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool33.not = icmp eq i32 %1, 0
  br i1 %tobool33.not, label %entry.do.end36_crit_edge, label %do.end

entry.do.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end, %entry.do.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #11
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %do.body40, label %if.end51

do.body40:                                        ; preds = %do.end36
  %3 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool41.not = icmp eq i32 %3, 0
  br i1 %tobool41.not, label %do.body40.do.end123_crit_edge, label %do.end45

do.body40.do.end123_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #10
  br label %do.body113

if.end51:                                         ; preds = %do.end36
  %port_priv = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 34
  %4 = ptrtoint ptr %port_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %port_priv, align 4
  %nr = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end51.sw.epilog_crit_edge [
    i32 1, label %if.end51.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb52
  ]

if.end51.sw.epilog.sink.split_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end51.sw.epilog_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb52, %if.end51.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 65, %sw.bb52 ], [ 64, %if.end51.sw.epilog.sink.split_crit_edge ]
  %ci_i2c_addr53 = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ci_i2c_addr53 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %ci_i2c_addr53, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end51.sw.epilog_crit_edge
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %i2c_adap = getelementptr inbounds %struct.cx23885_dev, ptr %10, i32 0, i32 14, i32 0, i32 2
  %i2c_adap54 = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_adap54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i2c_adap, ptr %i2c_adap54, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call7.i.i, align 8
  %read_attribute_mem = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @netup_ci_read_attribute_mem, ptr %read_attribute_mem, align 4
  %write_attribute_mem = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @netup_ci_write_attribute_mem, ptr %write_attribute_mem, align 8
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @netup_ci_read_cam_ctl, ptr %read_cam_control, align 4
  %write_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @netup_ci_write_cam_ctl, ptr %write_cam_control, align 8
  %slot_reset = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @netup_ci_slot_reset, ptr %slot_reset, align 4
  %slot_shutdown = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @netup_ci_slot_shutdown, ptr %slot_shutdown, align 8
  %slot_ts_enable = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @netup_ci_slot_ts_ctl, ptr %slot_ts_enable, align 4
  %poll_slot_status = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @netup_poll_ci_slot_status, ptr %poll_slot_status, align 8
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %data, align 4
  %priv = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %port, ptr %priv, align 8
  %23 = load i32, ptr @ci_irq_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool64.not = icmp eq i32 %23, 0
  %conv67 = select i1 %tobool64.not, i8 1, i8 5
  %current_irq_mode = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %current_irq_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv67, ptr %current_irq_mode, align 4
  %ci_i2c_addr69 = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %ci_i2c_addr69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ci_i2c_addr69, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #7
  %27 = getelementptr inbounds i8, ptr %buffer.i, i32 35
  %28 = call ptr @memset(ptr %27, i32 255, i32 29)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %29 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2359295, ptr %29, align 4
  %conv.i = zext i8 %26 to i16
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %cimax_init.sroa.9.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 6
  %34 = call ptr @memset(ptr %buffer.i, i32 0, i32 6)
  %35 = ptrtoint ptr %cimax_init.sroa.9.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 68, ptr %cimax_init.sroa.9.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.10.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 7
  %cimax_init.sroa.18.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 15
  %36 = ptrtoint ptr %cimax_init.sroa.10.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 0, ptr %cimax_init.sroa.10.0.arrayidx9.i.sroa_idx, align 1
  %37 = ptrtoint ptr %cimax_init.sroa.18.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 68, ptr %cimax_init.sroa.18.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.19.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 16
  %cimax_init.sroa.27.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 24
  %38 = ptrtoint ptr %cimax_init.sroa.19.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %cimax_init.sroa.19.0.arrayidx9.i.sroa_idx, align 1
  %39 = ptrtoint ptr %cimax_init.sroa.27.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %cimax_init.sroa.27.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.28.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 25
  %40 = ptrtoint ptr %cimax_init.sroa.28.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %cimax_init.sroa.28.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.31.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 26
  %41 = ptrtoint ptr %cimax_init.sroa.31.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %cimax_init.sroa.31.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.32.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 27
  %42 = ptrtoint ptr %cimax_init.sroa.32.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cimax_init.sroa.32.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.33.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 28
  %43 = ptrtoint ptr %cimax_init.sroa.33.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv, ptr %cimax_init.sroa.33.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.34.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 29
  %44 = ptrtoint ptr %cimax_init.sroa.34.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %cimax_init.sroa.34.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.35.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 30
  %45 = ptrtoint ptr %cimax_init.sroa.35.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cimax_init.sroa.35.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.36.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 31
  %46 = ptrtoint ptr %cimax_init.sroa.36.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %cimax_init.sroa.36.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.37.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 32
  %47 = ptrtoint ptr %cimax_init.sroa.37.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %cimax_init.sroa.37.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.38.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 33
  %48 = ptrtoint ptr %cimax_init.sroa.38.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 51, ptr %cimax_init.sroa.38.0.arrayidx9.i.sroa_idx, align 1
  %cimax_init.sroa.39.0.arrayidx9.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buffer.i, i32 0, i32 34
  %49 = ptrtoint ptr %cimax_init.sroa.39.0.arrayidx9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 49, ptr %cimax_init.sroa.39.0.arrayidx9.i.sroa_idx, align 1
  %call10.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %sw.epilog.netup_write_i2c.exit_crit_edge, label %do.body14.i

sw.epilog.netup_write_i2c.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit

do.body14.i:                                      ; preds = %sw.epilog
  %50 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %do.body14.i.netup_write_i2c.exit_crit_edge, label %do.end18.i

do.body14.i.netup_write_i2c.exit_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit

do.end18.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call10.i) #10
  br label %netup_write_i2c.exit

netup_write_i2c.exit:                             ; preds = %do.end18.i, %do.body14.i.netup_write_i2c.exit_crit_edge, %sw.epilog.netup_write_i2c.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end18.i ], [ -1, %do.body14.i.netup_write_i2c.exit_crit_edge ], [ 0, %sw.epilog.netup_write_i2c.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #7
  %51 = ptrtoint ptr %i2c_adap54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_adap54, align 8
  %53 = ptrtoint ptr %ci_i2c_addr69 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ci_i2c_addr69, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i166) #7
  %55 = getelementptr inbounds i8, ptr %buffer.i166, i32 1
  %56 = getelementptr inbounds i8, ptr %buffer.i166, i32 2
  %57 = call ptr @memset(ptr %56, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i167) #7
  %58 = getelementptr inbounds i8, ptr %msg.i167, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %conv.i168 = zext i8 %54 to i16
  %60 = ptrtoint ptr %msg.i167 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i168, ptr %msg.i167, align 4
  %flags.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i167, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i169, align 2
  %buf4.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i167, i32 0, i32 3
  %62 = ptrtoint ptr %buf4.i171 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buffer.i166, ptr %buf4.i171, align 4
  %63 = ptrtoint ptr %buffer.i166 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 31, ptr %buffer.i166, align 1
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %55, align 1
  %call10.i173 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i167, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i173)
  %cmp11.not.i174 = icmp eq i32 %call10.i173, 1
  br i1 %cmp11.not.i174, label %netup_write_i2c.exit.netup_write_i2c.exit180_crit_edge, label %do.body14.i176

netup_write_i2c.exit.netup_write_i2c.exit180_crit_edge: ; preds = %netup_write_i2c.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit180

do.body14.i176:                                   ; preds = %netup_write_i2c.exit
  %65 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i175 = icmp eq i32 %65, 0
  br i1 %tobool.not.i175, label %do.body14.i176.netup_write_i2c.exit180_crit_edge, label %do.end18.i178

do.body14.i176.netup_write_i2c.exit180_crit_edge: ; preds = %do.body14.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit180

do.end18.i178:                                    ; preds = %do.body14.i176
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 31, i32 noundef %call10.i173) #10
  br label %netup_write_i2c.exit180

netup_write_i2c.exit180:                          ; preds = %do.end18.i178, %do.body14.i176.netup_write_i2c.exit180_crit_edge, %netup_write_i2c.exit.netup_write_i2c.exit180_crit_edge
  %retval.0.i179 = phi i32 [ -1, %do.end18.i178 ], [ -1, %do.body14.i176.netup_write_i2c.exit180_crit_edge ], [ 0, %netup_write_i2c.exit.netup_write_i2c.exit180_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i167) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i166) #7
  %or76 = or i32 %retval.0.i179, %retval.0.i
  %66 = ptrtoint ptr %i2c_adap54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c_adap54, align 8
  %68 = ptrtoint ptr %ci_i2c_addr69 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ci_i2c_addr69, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i181) #7
  %70 = getelementptr inbounds i8, ptr %buffer.i181, i32 1
  %71 = getelementptr inbounds i8, ptr %buffer.i181, i32 2
  %72 = call ptr @memset(ptr %71, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i182) #7
  %73 = getelementptr inbounds i8, ptr %msg.i182, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %73, align 4
  %conv.i183 = zext i8 %69 to i16
  %75 = ptrtoint ptr %msg.i182 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i183, ptr %msg.i182, align 4
  %flags.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i184 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i184, align 2
  %buf4.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 3
  %77 = ptrtoint ptr %buf4.i186 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buffer.i181, ptr %buf4.i186, align 4
  %78 = ptrtoint ptr %buffer.i181 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 24, ptr %buffer.i181, align 1
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %70, align 1
  %call10.i188 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i182, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i188)
  %cmp11.not.i189 = icmp eq i32 %call10.i188, 1
  br i1 %cmp11.not.i189, label %netup_write_i2c.exit180.netup_write_i2c.exit195_crit_edge, label %do.body14.i191

netup_write_i2c.exit180.netup_write_i2c.exit195_crit_edge: ; preds = %netup_write_i2c.exit180
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit195

do.body14.i191:                                   ; preds = %netup_write_i2c.exit180
  %80 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i190 = icmp eq i32 %80, 0
  br i1 %tobool.not.i190, label %do.body14.i191.netup_write_i2c.exit195_crit_edge, label %do.end18.i193

do.body14.i191.netup_write_i2c.exit195_crit_edge: ; preds = %do.body14.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_write_i2c.exit195

do.end18.i193:                                    ; preds = %do.body14.i191
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef 24, i32 noundef %call10.i188) #10
  br label %netup_write_i2c.exit195

netup_write_i2c.exit195:                          ; preds = %do.end18.i193, %do.body14.i191.netup_write_i2c.exit195_crit_edge, %netup_write_i2c.exit180.netup_write_i2c.exit195_crit_edge
  %retval.0.i194 = phi i32 [ -1, %do.end18.i193 ], [ -1, %do.body14.i191.netup_write_i2c.exit195_crit_edge ], [ 0, %netup_write_i2c.exit180.netup_write_i2c.exit195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i182) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i181) #7
  %or81 = or i32 %or76, %retval.0.i194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or81)
  %cmp.not = icmp eq i32 %or81, 0
  br i1 %cmp.not, label %if.end84, label %netup_write_i2c.exit195.do.body113_crit_edge

netup_write_i2c.exit195.do.body113_crit_edge:     ; preds = %netup_write_i2c.exit195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

if.end84:                                         ; preds = %netup_write_i2c.exit195
  %adapter = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2
  %call86 = call i32 @dvb_ca_en50221_init(ptr noundef %adapter, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %do.body91, label %if.end84.do.body113_crit_edge

if.end84.do.body113_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

do.body91:                                        ; preds = %if.end84
  %work = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %81 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @netup_ci_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry96 = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %entry96 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry96, ptr %entry96, align 8
  %prev.i = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry96, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.netup_ci_state, ptr %call7.i.i, i32 0, i32 5, i32 2
  %84 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @netup_read_ci_status, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %85 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %85, ptr noundef %work) #7
  %86 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool103.not = icmp eq i32 %86, 0
  br i1 %tobool103.not, label %do.body91.cleanup_crit_edge, label %do.end107

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end107:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #10
  br label %cleanup

do.body113:                                       ; preds = %if.end84.do.body113_crit_edge, %netup_write_i2c.exit195.do.body113_crit_edge, %do.end45
  %ret.0.ph = phi i32 [ -12, %do.end45 ], [ %call86, %if.end84.do.body113_crit_edge ], [ %or81, %netup_write_i2c.exit195.do.body113_crit_edge ]
  %.pr = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool114.not = icmp eq i32 %.pr, 0
  br i1 %tobool114.not, label %do.body113.do.end123_crit_edge, label %do.end118

do.body113.do.end123_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

do.end118:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, i32 noundef %ret.0.ph) #10
  br label %do.end123

do.end123:                                        ; preds = %do.end118, %do.body113.do.end123_crit_edge, %do.body40.do.end123_crit_edge
  %ret.0201 = phi i32 [ %ret.0.ph, %do.end118 ], [ %ret.0.ph, %do.body113.do.end123_crit_edge ], [ -12, %do.body40.do.end123_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %do.end107, %do.body91.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0201, %do.end123 ], [ 0, %do.end107 ], [ 0, %do.body91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_read_ci_status(ptr noundef %work) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 33)
  tail call void @dvb_ca_en50221_frda_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %next_status_checked_time = getelementptr i8, ptr %work, i32 56
  %1 = ptrtoint ptr %next_status_checked_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next_status_checked_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %i2c_adap = getelementptr i8, ptr %work, i32 -12
  %6 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_adap, align 4
  %ci_i2c_addr = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ci_i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %10 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %conv.i = zext i8 %9 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %11, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 33, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  %21 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %do.body18.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  br i1 %tobool19.not.i, label %do.body.i.netup_read_i2c.exit_crit_edge, label %do.end.i

do.body.i.netup_read_i2c.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netup_read_i2c.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg.addr.i, align 1
  %conv13.i = zext i8 %23 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv13.i, i32 noundef %call.i) #10
  br label %netup_read_i2c.exit

do.body18.i:                                      ; preds = %if.then
  br i1 %tobool19.not.i, label %do.body18.i.do.body_crit_edge, label %do.end23.i

do.body18.i.do.body_crit_edge:                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %9 to i32
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg.addr.i, align 1
  %conv26.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %conv27.i = zext i8 %27 to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, i32 noundef %conv25.i, i32 noundef %conv26.i, i32 noundef %conv27.i) #10
  br label %do.body

netup_read_i2c.exit:                              ; preds = %do.end.i, %do.body.i.netup_read_i2c.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %28, 100
  %29 = ptrtoint ptr %next_status_checked_time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %next_status_checked_time, align 4
  br label %cleanup

do.body:                                          ; preds = %do.end23.i, %do.body18.i.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add37 = add i32 %30, 100
  %31 = ptrtoint ptr %next_status_checked_time to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add37, ptr %next_status_checked_time, align 4
  %32 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool5.not = icmp eq i32 %32, 0
  br i1 %tobool5.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ci_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ci_i2c_addr, align 4
  %conv = zext i8 %34 to i32
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %conv11 = zext i8 %36 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef 0, i32 noundef %conv11, i32 noundef %conv11) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool20.not = icmp eq i8 %39, 0
  %status23 = getelementptr i8, ptr %work, i32 -4
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %status23, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %netup_read_i2c.exit, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_ci_exit(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %port, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_priv = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 34
  %0 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_priv, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dvb_ca_en50221_release(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_frda_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__param_ci_dbg, !1, !"__param_ci_dbg", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_ci_dbgtype385, !1, !"__UNIQUE_ID_ci_dbgtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ci_dbg386, !4, !"__UNIQUE_ID_ci_dbg386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 52, i32 1}
!5 = !{ptr @__param_ci_irq_enable, !6, !"__param_ci_irq_enable", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_ci_irq_enabletype387, !6, !"__UNIQUE_ID_ci_irq_enabletype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ci_irq_enable388, !9, !"__UNIQUE_ID_ci_irq_enable388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 56, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 376, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @netup_ci_slot_status._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @netup_ci_slot_status._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 385, i32 3}
!18 = !{ptr @netup_ci_slot_status._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @netup_ci_slot_status._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 392, i32 3}
!22 = !{ptr @netup_ci_slot_status._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @netup_ci_slot_status._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 453, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @netup_ci_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @netup_ci_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 456, i32 3}
!31 = !{ptr @netup_ci_init._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @netup_ci_init._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @netup_ci_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 505, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 508, i32 2}
!38 = !{ptr @netup_ci_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @netup_ci_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 512, i32 2}
!42 = !{ptr @netup_ci_init._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @netup_ci_init._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ci_dbg, !45, !"ci_dbg", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 50, i32 21}
!46 = !{ptr @ci_irq_enable, !47, !"ci_irq_enable", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 54, i32 21}
!48 = !{ptr @__param_str_ci_dbg, !1, !"__param_str_ci_dbg", i1 false, i1 false}
!49 = !{ptr @__param_str_ci_irq_enable, !6, !"__param_str_ci_irq_enable", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 226, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @netup_ci_op_cam._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @netup_ci_op_cam._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 129, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @netup_write_i2c._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @netup_write_i2c._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 140, i32 3}
!67 = !{ptr @netup_write_i2c._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @netup_write_i2c._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 103, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @netup_read_i2c._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @netup_read_i2c._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 109, i32 2}
!76 = !{ptr @netup_read_i2c._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @netup_read_i2c._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 305, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @netup_ci_set_irq._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @netup_ci_set_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx23885/cimax2.c", i32 358, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @netup_read_ci_status._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @netup_read_ci_status._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i64 2158610316}
!99 = !{i64 5011390}
!100 = !{i64 2158611098}
!101 = !{i64 2158612870}
!102 = !{i64 5011808}
!103 = !{i64 2158613953}
!104 = !{i64 2158614595}
!105 = !{i64 2158616388}
!106 = !{i64 2158617471}
!107 = !{i64 2158620605}
!108 = !{i64 2158621864}
!109 = !{i64 2158623475}
!110 = !{i64 2158624646}
!111 = !{i64 2158605677}
!112 = !{i64 2158608367}
!113 = !{i64 2158609734}
