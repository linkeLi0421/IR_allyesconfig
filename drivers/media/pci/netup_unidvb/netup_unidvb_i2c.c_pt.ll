; ModuleID = '/llk/IR_all_yes/drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c_pt.bc'
source_filename = "../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netup_i2c = type { %struct.spinlock, %struct.wait_queue_head, %struct.i2c_adapter, ptr, ptr, ptr, i32, i32 }
%struct.netup_i2c_regs = type { i16, i16, i16, i16, [8 x i8], %struct.netup_i2c_fifo_regs, [6 x i8], %struct.netup_i2c_fifo_regs }
%struct.netup_i2c_fifo_regs = type <{ %union.anon.103, [4 x i8], i16 }>
%union.anon.103 = type { i32 }
%struct.netup_unidvb_dev = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.vb2_dvb_frontends], [2 x %struct.netup_i2c], ptr, [2 x %struct.netup_dma], [2 x %struct.netup_ci_state], ptr, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.netup_dma = type { i8, %struct.spinlock, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.netup_ci_state = type { %struct.dvb_ca_en50221, ptr, ptr, ptr, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.104, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.104 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@netup_i2c_interrupt.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netup_unidvb\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netup_i2c_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): twi_ctrl0_state 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): TWI_IRQEN_COMPL\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): TWI_IRQEN_ANACK\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): TWI_IRQEN_DNACK\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): want read\0A\00", [47 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): want write\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): not mine interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netup_i2c_interrupt._entry_ptr = internal global ptr @netup_i2c_interrupt._entry, section ".printk_index", align 4
@netup_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 303, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): invalid bus_num %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netup_i2c_init\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@netup_i2c_init._entry_ptr = internal global ptr @netup_i2c_init._entry, section ".printk_index", align 4
@netup_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@netup_i2c_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&i2c->wq\00", [23 x i8] zeroinitializer }, align 32
@netup_i2c_adapter = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @netup_i2c_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"netup_unidvb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@netup_i2c_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 323, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): registered I2C bus %d at 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netup_i2c_init._entry_ptr.21 = internal global ptr @netup_i2c_init._entry.18, section ".printk_index", align 4
@netup_i2c_reset.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netup_i2c_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@netup_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @netup_i2c_xfer, ptr null, ptr null, ptr null, ptr @netup_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netup_i2c_xfer\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): i2c->state == %d, resetting I2C\0A\00", [57 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() num %d\0A\00", [19 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): msg %d OK\0A\00", [47 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.28, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): error state\0A\00", [45 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.29, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): invalid state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.30, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): wait timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@netup_i2c_xfer.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.31, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): result %d\0A\00", [47 x i8] zeroinitializer }, align 32
@netup_i2c_start_xfer.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_i2c_start_xfer\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(): length %d twi_addr_ctrl1 0x%x twi_ctrl0_stat 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@netup_i2c_fifo_rx.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netup_i2c_fifo_rx\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): RX fifo size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_i2c_fifo_rx.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): read 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@netup_i2c_fifo_rx.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): RX IRQ enabled\0A\00", [42 x i8] zeroinitializer }, align 32
@netup_i2c_fifo_tx.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netup_i2c_fifo_tx\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): write 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@netup_i2c_fifo_tx.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): TX IRQ enabled\0A\00", [42 x i8] zeroinitializer }, align 32
@netup_i2c_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 333, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): invalid bus number %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netup_i2c_remove\00", [47 x i8] zeroinitializer }, align 32
@netup_i2c_remove._entry_ptr = internal global ptr @netup_i2c_remove._entry, section ".printk_index", align 4
@netup_i2c_remove._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 341, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"netup_i2c_remove: unregistered I2C bus %d\0A\00", [53 x i8] zeroinitializer }, align 32
@netup_i2c_remove._entry_ptr.45 = internal global ptr @netup_i2c_remove._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 74, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 77, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 83, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 89, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 98, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 106, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 110, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 302, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 307, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 308, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"netup_i2c_adapter\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 289, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 318, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 121, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"netup_i2c_algorithm\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 284, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 210, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 215, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 237, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 244, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 249, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 265, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 275, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 186, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 158, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 165, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 170, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 142, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 146, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 332, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [53 x i8] c"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 340, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @netup_i2c_init._entry, ptr @netup_i2c_init._entry.18, ptr @netup_i2c_init._entry_ptr, ptr @netup_i2c_init._entry_ptr.21, ptr @netup_i2c_interrupt._entry, ptr @netup_i2c_interrupt._entry_ptr, ptr @netup_i2c_remove._entry, ptr @netup_i2c_remove._entry.43, ptr @netup_i2c_remove._entry_ptr, ptr @netup_i2c_remove._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @netup_i2c_init.__key, ptr @.str.15, ptr @netup_i2c_init.__key.16, ptr @.str.17, ptr @netup_i2c_adapter, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @netup_i2c_algorithm, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_i2c_remove._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_i2c_interrupt(ptr noundef %i2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i2c) #6
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat = getelementptr inbounds %struct.netup_i2c_regs, ptr %1, i32 0, i32 1
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %twi_ctrl0_stat) #6, !srcloc !113
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %conv12 = zext i16 %3 to i32
  %and = and i16 %3, -8
  %4 = tail call i16 @llvm.bswap.i16(i16 %and)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat15 = getelementptr inbounds %struct.netup_i2c_regs, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %twi_ctrl0_stat15, i16 %4) #6, !srcloc !116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then)) #6
          to label %do.end23 [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug385, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv12) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  %9 = and i32 %conv12, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %9)
  %.not = icmp eq i32 %9, 257
  br i1 %.not, label %do.body32, label %if.end51

do.body32:                                        ; preds = %do.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then44)) #6
          to label %do.end50 [label %if.then44], !srcloc !117

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %parent47 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %10 = ptrtoint ptr %parent47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug386, ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  %state = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  br label %if.then203

if.end51:                                         ; preds = %do.end23
  %13 = and i32 %conv12, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %13)
  %.not266 = icmp eq i32 %13, 514
  br i1 %.not266, label %do.body61, label %if.end81

do.body61:                                        ; preds = %if.end51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then73)) #6
          to label %do.end79 [label %if.then73], !srcloc !117

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %parent76 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %14 = ptrtoint ptr %parent76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent76, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug387, ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %do.body61
  %state80 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %16 = ptrtoint ptr %state80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %state80, align 4
  br label %if.then203

if.end81:                                         ; preds = %if.end51
  %17 = and i32 %conv12, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %17)
  %.not267 = icmp eq i32 %17, 1028
  br i1 %.not267, label %do.body91, label %if.end111

do.body91:                                        ; preds = %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then103)) #6
          to label %do.end109 [label %if.then103], !srcloc !117

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  %parent106 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %18 = ptrtoint ptr %parent106 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent106, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug388, ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #6
  br label %do.end109

do.end109:                                        ; preds = %if.then103, %do.body91
  %state110 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %20 = ptrtoint ptr %state110 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %state110, align 4
  br label %if.then203

if.end111:                                        ; preds = %if.end81
  %and113 = and i32 %conv12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 0
  br i1 %cmp114.not, label %if.end152, label %if.then116

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %stat_ctrl = getelementptr inbounds %struct.netup_i2c_regs, ptr %22, i32 0, i32 7, i32 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %24 = and i16 %23, -129
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %stat_ctrl131 = getelementptr inbounds %struct.netup_i2c_regs, ptr %26, i32 0, i32 7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl131, i16 %24) #6, !srcloc !116
  %state132 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %27 = ptrtoint ptr %state132 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state132, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then145)) #6
          to label %if.then203 [label %if.then145], !srcloc !117

if.then145:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %parent148 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %28 = ptrtoint ptr %parent148 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent148, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug389, ptr noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #6
  br label %if.then203

if.end152:                                        ; preds = %if.end111
  %and154 = and i32 %conv12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %cmp155.not = icmp eq i32 %and154, 0
  br i1 %cmp155.not, label %irq_ok.thread263, label %if.then157

if.then157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %stat_ctrl161 = getelementptr inbounds %struct.netup_i2c_regs, ptr %31, i32 0, i32 5, i32 2
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl161) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %33 = and i16 %32, -129
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %stat_ctrl173 = getelementptr inbounds %struct.netup_i2c_regs, ptr %35, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl173, i16 %33) #6, !srcloc !116
  %state174 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %36 = ptrtoint ptr %state174 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %state174, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_interrupt, %if.then187)) #6
          to label %if.then203 [label %if.then187], !srcloc !117

if.then187:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #8
  %parent190 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %37 = ptrtoint ptr %parent190 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent190, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_interrupt.__UNIQUE_ID_ddebug390, ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #6
  br label %if.then203

irq_ok.thread263:                                 ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %dev199 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev199, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i2c, i32 noundef %call3) #6
  br label %if.end204

if.then203:                                       ; preds = %if.then187, %if.then157, %if.then145, %if.then116, %do.end109, %do.end79, %do.end50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i2c, i32 noundef %call3) #6
  %wq = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %irq_ok.thread263
  %iret.0261 = phi i32 [ 1, %if.then203 ], [ 0, %irq_ok.thread263 ]
  ret i32 %iret.0261
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_i2c_register(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @netup_i2c_init(ptr noundef %ndev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @netup_i2c_init(ptr noundef %ndev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 0
  tail call fastcc void @netup_i2c_reset(ptr noundef %arrayidx.i) #6
  %adap.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap.i) #6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i, ptr noundef nonnull @.str.44, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netup_i2c_init(ptr noundef %ndev, i32 noundef %bus_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.15, ptr noundef nonnull @netup_i2c_init.__key, i16 noundef signext 3) #6
  %wq = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.17, ptr noundef nonnull @netup_i2c_init.__key.16) #6
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %0 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus_num)
  %cmp9 = icmp eq i32 %bus_num, 0
  %cond = select i1 %cmp9, i32 18432, i32 18496
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %regs = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %regs, align 4
  tail call fastcc void @netup_i2c_reset(ptr noundef %arrayidx)
  %adap = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num, i32 2
  %3 = call ptr @memcpy(ptr %adap, ptr @netup_i2c_adapter, i32 1360)
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %parent = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num, i32 2, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev11, ptr %parent, align 8
  %driver_data.i.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %bus_num, i32 2, i32 9, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %do.end21, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, i32 noundef %bus_num, i32 noundef %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %entry.cleanup_crit_edge
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_i2c_unregister(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 0
  tail call fastcc void @netup_i2c_reset(ptr noundef %arrayidx.i) #6
  %adap.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap.i) #6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i, ptr noundef nonnull @.str.44, i32 noundef 0) #9
  %arrayidx.i2 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 1
  tail call fastcc void @netup_i2c_reset(ptr noundef %arrayidx.i2) #6
  %adap.i3 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 1, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap.i3) #6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %dev7.i4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i4, ptr noundef nonnull @.str.44, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_i2c_reset(ptr nocapture noundef %i2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_reset.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_reset.__UNIQUE_ID_ddebug391, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %twi_addr_ctrl1 = getelementptr inbounds %struct.netup_i2c_regs, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %twi_addr_ctrl1, i16 32) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 -25600) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %stat_ctrl = getelementptr inbounds %struct.netup_i2c_regs, ptr %8, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl, i16 64) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %stat_ctrl14 = getelementptr inbounds %struct.netup_i2c_regs, ptr %10, i32 0, i32 7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl14, i16 64) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %stat_ctrl19 = getelementptr inbounds %struct.netup_i2c_regs, ptr %12, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl19, i16 8) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %stat_ctrl24 = getelementptr inbounds %struct.netup_i2c_regs, ptr %14, i32 0, i32 7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl24, i16 8) #6, !srcloc !116
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %state = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %entry.do.body19_crit_edge, label %do.body8

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then13)) #6
          to label %do.end17 [label %if.then13], !srcloc !117

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug398, ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %7) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8
  tail call fastcc void @netup_i2c_reset(ptr noundef %1)
  br label %do.body19

do.body19:                                        ; preds = %do.end17, %entry.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then31)) #6
          to label %do.end37 [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %parent34 = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %8 = ptrtoint ptr %parent34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug399, ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %num) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp38378 = icmp sgt i32 %num, 0
  br i1 %cmp38378, label %for.body.lr.ph, label %do.end37.done_crit_edge

do.end37.done_crit_edge:                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.body.lr.ph:                                   ; preds = %do.end37
  %msg = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 5
  %wq = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 1
  %xmit_size = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 7
  %parent146 = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flags.0380 = phi i32 [ %call3, %for.body.lr.ph ], [ %call248, %for.inc.for.body_crit_edge ]
  %i.0379 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0379
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %msg, align 8
  call fastcc void @netup_i2c_start_xfer(ptr noundef %1)
  br label %while.body

while.body:                                       ; preds = %if.end203.while.body_crit_edge, %for.body
  %flags.1377 = phi i32 [ %flags.0380, %for.body ], [ %call248, %if.end203.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1377) #6
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 224) #6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp52.not = icmp eq i32 %12, 1
  br i1 %cmp52.not, label %if.then67, label %while.body.do.body103_crit_edge

while.body.do.body103_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body103

if.then67:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call71371 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp74.not372.not = icmp eq i32 %15, 1
  br i1 %cmp74.not372.not, label %if.then67.cleanup_crit_edge, label %if.end98.thread

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  br label %cleanup

if.end98.thread:                                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.body103

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then67.cleanup_crit_edge
  %__ret68.1374 = phi i32 [ %__ret68.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then67.cleanup_crit_edge ]
  %call95 = call i32 @schedule_timeout(i32 noundef %__ret68.1374) #6
  %call71 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp74.not = icmp eq i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool80.not = icmp eq i32 %call95, 0
  %spec.store.select280 = select i1 %tobool80.not, i32 1, i32 %call95
  %__ret68.1 = select i1 %cmp74.not, i32 %call95, i32 %spec.store.select280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret68.1)
  %tobool87.not = icmp eq i32 %__ret68.1, 0
  %not.cmp74.not = xor i1 %cmp74.not, true
  %18 = select i1 %not.cmp74.not, i1 true, i1 %tobool87.not
  br i1 %18, label %if.end98, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret68.1)
  %tobool100.not = icmp eq i32 %__ret68.1, 0
  br i1 %tobool100.not, label %do.body206, label %if.end98.do.body103_crit_edge

if.end98.do.body103_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body103

do.body103:                                       ; preds = %if.end98.do.body103_crit_edge, %if.end98.thread, %while.body.do.body103_crit_edge
  %call111 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.body170 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb117
    i32 0, label %sw.bb118
    i32 4, label %sw.bb150
  ]

sw.bb:                                            ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @netup_i2c_fifo_rx(ptr noundef %1)
  br label %if.then191

sw.bb117:                                         ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @netup_i2c_fifo_tx(ptr noundef %1)
  br label %if.then191

sw.bb118:                                         ; preds = %do.body103
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 8
  %flags120 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %flags120 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags120, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp122.not = icmp eq i16 %26, 0
  br i1 %cmp122.not, label %sw.bb118.do.body131_crit_edge, label %land.lhs.true124

sw.bb118.do.body131_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131

land.lhs.true124:                                 ; preds = %sw.bb118
  %27 = ptrtoint ptr %xmit_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xmit_size, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len, align 4
  %conv126 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv126)
  %cmp127.not = icmp eq i32 %28, %conv126
  br i1 %cmp127.not, label %land.lhs.true124.do.body131_crit_edge, label %if.then129

land.lhs.true124.do.body131_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131

if.then129:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @netup_i2c_fifo_rx(ptr noundef %1)
  br label %do.body131

do.body131:                                       ; preds = %if.then129, %land.lhs.true124.do.body131_crit_edge, %sw.bb118.do.body131_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %sw.epilog.thread)) #6
          to label %if.end203 [label %sw.epilog.thread], !srcloc !117

sw.epilog.thread:                                 ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %parent146 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent146, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug400, ptr noundef %32, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, i32 noundef %i.0379) #6
  br label %if.end203

sw.bb150:                                         ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then163)) #6
          to label %done [label %if.then163], !srcloc !117

if.then163:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %parent146 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent146, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug401, ptr noundef %34, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24) #6
  br label %done

do.body170:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then182)) #6
          to label %done [label %if.then182], !srcloc !117

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %parent146 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent146, align 8
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug402, ptr noundef %36, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %38) #6
  br label %done

if.then191:                                       ; preds = %sw.bb117, %sw.bb
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %state, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat = getelementptr inbounds %struct.netup_i2c_regs, ptr %41, i32 0, i32 1
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %twi_ctrl0_stat) #6, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  call void @arm_heavy_mb() #6
  %43 = or i16 %42, 1792
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat202 = getelementptr inbounds %struct.netup_i2c_regs, ptr %45, i32 0, i32 1
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %twi_ctrl0_stat202, i16 %43) #6, !srcloc !116
  br label %if.end203

if.end203:                                        ; preds = %if.then191, %sw.epilog.thread, %do.body131
  %tobool40.not = phi i1 [ false, %do.body131 ], [ false, %sw.epilog.thread ], [ true, %if.then191 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call111) #6
  %call248 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  br i1 %tobool40.not, label %if.end203.while.body_crit_edge, label %for.inc

if.end203.while.body_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body206:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %call214 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then231)) #6
          to label %done [label %if.then231], !srcloc !117

if.then231:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %parent146 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent146, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug403, ptr noundef %47, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24) #6
  br label %done

for.inc:                                          ; preds = %if.end203
  %inc = add nuw nsw i32 %i.0379, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %if.then231, %do.body206, %if.then182, %do.body170, %if.then163, %sw.bb150, %do.end37.done_crit_edge
  %res.0 = phi i32 [ -5, %if.then163 ], [ -22, %if.then182 ], [ -110, %if.then231 ], [ -5, %sw.bb150 ], [ -22, %do.body170 ], [ -110, %do.body206 ], [ %num, %do.end37.done_crit_edge ], [ %num, %for.inc.done_crit_edge ]
  %flags.2 = phi i32 [ %call111, %if.then163 ], [ %call111, %if.then182 ], [ %call214, %if.then231 ], [ %call111, %sw.bb150 ], [ %call111, %do.body170 ], [ %call214, %do.body206 ], [ %call3, %do.end37.done_crit_edge ], [ %call248, %for.inc.done_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_xfer, %if.then267)) #6
          to label %do.end273 [label %if.then267], !srcloc !117

if.then267:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %parent270 = getelementptr inbounds %struct.netup_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %48 = ptrtoint ptr %parent270 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent270, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_xfer.__UNIQUE_ID_ddebug404, ptr noundef %49, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, i32 noundef %res.0) #6
  br label %do.end273

do.end273:                                        ; preds = %if.then267, %done
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netup_i2c_func(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_i2c_start_xfer(ptr nocapture noundef %i2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 5
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 4
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat = getelementptr inbounds %struct.netup_i2c_regs, ptr %6, i32 0, i32 1
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %twi_ctrl0_stat) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %8 = or i16 %7, 1792
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat6 = getelementptr inbounds %struct.netup_i2c_regs, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %twi_ctrl0_stat6, i16 %8) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %length = getelementptr inbounds %struct.netup_i2c_regs, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length, i16 %15) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %shl = shl i16 %21, 1
  %or17 = or i16 %shl, %4
  %or19 = or i16 %or17, 256
  %22 = tail call i16 @llvm.bswap.i16(i16 %or19)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %twi_addr_ctrl1 = getelementptr inbounds %struct.netup_i2c_regs, ptr %24, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %twi_addr_ctrl1, i16 %22) #6, !srcloc !116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_start_xfer.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_start_xfer, %if.then)) #6
          to label %do.end53 [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %length31 = getelementptr inbounds %struct.netup_i2c_regs, ptr %28, i32 0, i32 3
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %length31) #6, !srcloc !113
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %conv35 = zext i16 %30 to i32
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %twi_addr_ctrl139 = getelementptr inbounds %struct.netup_i2c_regs, ptr %32, i32 0, i32 2
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %twi_addr_ctrl139) #6, !srcloc !113
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %conv43 = zext i16 %34 to i32
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %twi_ctrl0_stat47 = getelementptr inbounds %struct.netup_i2c_regs, ptr %36, i32 0, i32 1
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %twi_ctrl0_stat47) #6, !srcloc !113
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %conv51 = zext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_start_xfer.__UNIQUE_ID_ddebug397, ptr noundef %26, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %conv35, i32 noundef %conv43, i32 noundef %conv51) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 6
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %state, align 4
  %xmit_size = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 7
  %40 = ptrtoint ptr %xmit_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %xmit_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool54.not = icmp eq i16 %4, 0
  br i1 %tobool54.not, label %if.then55, label %do.body56

if.then55:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @netup_i2c_fifo_tx(ptr noundef %i2c)
  br label %if.end71

do.body56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %stat_ctrl = getelementptr inbounds %struct.netup_i2c_regs, ptr %42, i32 0, i32 7, i32 2
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %44 = or i16 %43, 128
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %stat_ctrl70 = getelementptr inbounds %struct.netup_i2c_regs, ptr %46, i32 0, i32 7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl70, i16 %44) #6, !srcloc !116
  br label %if.end71

if.end71:                                         ; preds = %do.body56, %if.then55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_i2c_fifo_rx(ptr nocapture noundef %i2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %stat_ctrl = getelementptr inbounds %struct.netup_i2c_regs, ptr %1, i32 0, i32 7, i32 2
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl) #6, !srcloc !113
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %4 = and i16 %3, 63
  %and = zext i16 %4 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_fifo_rx, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug394, ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %and) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool6.not113 = icmp eq i16 %4, 0
  br i1 %tobool6.not113, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %msg = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 5
  %xmit_size = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 7
  %parent39 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %dec114.in = phi i32 [ %and, %while.body.lr.ph ], [ %dec114, %if.end44.while.body_crit_edge ]
  %dec114 = add nsw i32 %dec114.in, -1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %rx_fifo10 = getelementptr inbounds %struct.netup_i2c_regs, ptr %8, i32 0, i32 7
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_fifo10) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %while.body.if.end44_crit_edge, label %land.lhs.true

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true:                                    ; preds = %while.body
  %15 = ptrtoint ptr %xmit_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xmit_size, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv18 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv18)
  %cmp19 = icmp ult i32 %16, %conv18
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %inc = add nuw i32 %16, 1
  %21 = ptrtoint ptr %xmit_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc, ptr %xmit_size, align 8
  %arrayidx = getelementptr i8, ptr %20, i32 %16
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %9, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_fifo_rx, %if.then36)) #6
          to label %if.end44 [label %if.then36], !srcloc !117

if.then36:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %parent39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent39, align 8
  %conv40 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug395, ptr noundef %24, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %conv40) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.then21, %land.lhs.true.if.end44_crit_edge, %while.body.if.end44_crit_edge
  %tobool6.not = icmp eq i32 %dec114, 0
  br i1 %tobool6.not, label %if.end44.while.end_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end44.while.end_crit_edge, %do.end.while.end_crit_edge
  %xmit_size45 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 7
  %25 = ptrtoint ptr %xmit_size45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xmit_size45, align 8
  %msg46 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 5
  %27 = ptrtoint ptr %msg46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg46, align 8
  %len47 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len47, align 4
  %conv48 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv48)
  %cmp49 = icmp ult i32 %26, %conv48
  br i1 %cmp49, label %do.body52, label %while.end.if.end87_crit_edge

while.end.if.end87_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.body52:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_fifo_rx, %if.then64)) #6
          to label %do.body71 [label %if.then64], !srcloc !117

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %parent67 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %31 = ptrtoint ptr %parent67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent67, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug396, ptr noundef %32, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34) #6
  br label %do.body71

do.body71:                                        ; preds = %if.then64, %do.body52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %stat_ctrl78 = getelementptr inbounds %struct.netup_i2c_regs, ptr %34, i32 0, i32 7, i32 2
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl78) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %36 = or i16 %35, 128
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %stat_ctrl86 = getelementptr inbounds %struct.netup_i2c_regs, ptr %38, i32 0, i32 7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl86, i16 %36) #6, !srcloc !116
  br label %if.end87

if.end87:                                         ; preds = %do.body71, %while.end.if.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_i2c_fifo_tx(ptr nocapture noundef %i2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %stat_ctrl = getelementptr inbounds %struct.netup_i2c_regs, ptr %1, i32 0, i32 5, i32 2
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl) #6, !srcloc !113
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %4 = and i16 %3, 63
  %and = zext i16 %4 to i32
  %sub = sub nsw i32 16, %and
  %msg = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 5
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 4
  %conv2 = zext i16 %8 to i32
  %xmit_size = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 7
  %9 = ptrtoint ptr %xmit_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xmit_size, align 8
  %sub3 = sub i32 %conv2, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %sub3, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not82 = icmp eq i32 %11, 0
  br i1 %tobool.not82, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %parent = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end17.while.body_crit_edge, %while.body.lr.ph
  %dec83.in = phi i32 [ %11, %while.body.lr.ph ], [ %dec83, %do.end17.while.body_crit_edge ]
  %dec83 = add i32 %dec83.in, -1
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %16 = ptrtoint ptr %xmit_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xmit_size, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %xmit_size, align 8
  %arrayidx = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %tx_fifo8 = getelementptr inbounds %struct.netup_i2c_regs, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tx_fifo8, i8 %19) #6, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_fifo_tx, %if.then)) #6
          to label %do.end17 [label %if.then], !srcloc !117

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %conv15 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug392, ptr noundef %23, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv15) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then, %while.body
  %tobool.not = icmp eq i32 %dec83, 0
  br i1 %tobool.not, label %do.end17.while.end_crit_edge, label %do.end17.while.body_crit_edge

do.end17.while.body_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end17.while.end_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %24 = ptrtoint ptr %xmit_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xmit_size, align 8
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 8
  %len20 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %len20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len20, align 4
  %conv21 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv21)
  %cmp22 = icmp ult i32 %25, %conv21
  br i1 %cmp22, label %do.body25, label %while.end.if.end60_crit_edge

while.end.if.end60_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body25:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_i2c_fifo_tx, %if.then37)) #6
          to label %do.body44 [label %if.then37], !srcloc !117

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %parent40 = getelementptr inbounds %struct.netup_i2c, ptr %i2c, i32 0, i32 2, i32 9, i32 1
  %30 = ptrtoint ptr %parent40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug393, ptr noundef %31, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #6
  br label %do.body44

do.body44:                                        ; preds = %if.then37, %do.body25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %stat_ctrl51 = getelementptr inbounds %struct.netup_i2c_regs, ptr %33, i32 0, i32 5, i32 2
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %stat_ctrl51) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %35 = or i16 %34, 128
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %stat_ctrl59 = getelementptr inbounds %struct.netup_i2c_regs, ptr %37, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %stat_ctrl59, i16 %35) #6, !srcloc !116
  br label %if.end60

if.end60:                                         ; preds = %do.body44, %while.end.if.end60_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 74, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug385, !1, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 77, i32 3}
!8 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug386, !7, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 83, i32 3}
!11 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug387, !10, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 89, i32 3}
!14 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug388, !13, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 98, i32 3}
!17 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug389, !16, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 106, i32 3}
!20 = !{ptr @netup_i2c_interrupt.__UNIQUE_ID_ddebug390, !19, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 110, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @netup_i2c_interrupt._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @netup_i2c_interrupt._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 302, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @netup_i2c_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @netup_i2c_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @netup_i2c_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 307, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @netup_i2c_init.__key.16, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 308, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 318, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @netup_i2c_init._entry.18, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @netup_i2c_init._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 121, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @netup_i2c_reset.__UNIQUE_ID_ddebug391, !45, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!48 = !{ptr @netup_i2c_adapter, !49, !"netup_i2c_adapter", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 289, i32 33}
!50 = !{ptr @netup_i2c_algorithm, !51, !"netup_i2c_algorithm", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 284, i32 35}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 210, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug398, !53, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 215, i32 2}
!58 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug399, !57, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 237, i32 6}
!61 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug400, !60, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 244, i32 6}
!64 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug401, !63, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 249, i32 6}
!67 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug402, !66, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 265, i32 5}
!70 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug403, !69, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 275, i32 2}
!73 = !{ptr @netup_i2c_xfer.__UNIQUE_ID_ddebug404, !72, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 186, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @netup_i2c_start_xfer.__UNIQUE_ID_ddebug397, !75, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 158, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug394, !79, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 165, i32 4}
!84 = !{ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug395, !83, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 170, i32 3}
!87 = !{ptr @netup_i2c_fifo_rx.__UNIQUE_ID_ddebug396, !86, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 142, i32 3}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug392, !89, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 146, i32 3}
!94 = !{ptr @netup_i2c_fifo_tx.__UNIQUE_ID_ddebug393, !93, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 332, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @netup_i2c_remove._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @netup_i2c_remove._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_i2c.c", i32 340, i32 2}
!102 = !{ptr @netup_i2c_remove._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @netup_i2c_remove._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 4998559}
!114 = !{i64 2158313799}
!115 = !{i64 2158314112}
!116 = !{i64 4998359}
!117 = !{i64 2148961306, i64 2148961311, i64 2148961324, i64 2148961368, i64 2148961402, i64 2148961423}
!118 = !{i64 2158324471}
!119 = !{i64 2158324715}
!120 = !{i64 2158327772}
!121 = !{i64 2158328016}
!122 = !{i64 2158334756}
!123 = !{i64 2158335168}
!124 = !{i64 2158335580}
!125 = !{i64 2158336012}
!126 = !{i64 2158336436}
!127 = !{i64 2158336857}
!128 = !{i64 2158378242}
!129 = !{i64 2158378553}
!130 = !{i64 2158354989}
!131 = !{i64 2158355300}
!132 = !{i64 2158355775}
!133 = !{i64 2158356245}
!134 = !{i64 2158360086}
!135 = !{i64 2158360608}
!136 = !{i64 2158361130}
!137 = !{i64 2158362162}
!138 = !{i64 2158363132}
!139 = !{i64 2158345112}
!140 = !{i64 4999177}
!141 = !{i64 2158347756}
!142 = !{i64 2158353478}
!143 = !{i64 2158354439}
!144 = !{i64 2158337587}
!145 = !{i64 2158337810}
!146 = !{i64 4998782}
!147 = !{i64 2158343596}
!148 = !{i64 2158344557}
