; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_hif.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_hif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mantis_ca = type { [4 x %struct.mantis_slot], %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, ptr, %struct.dvb_ca_en50221, %struct.mutex }
%struct.mantis_slot = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.124, i32 }
%union.anon.124 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@mantis_hif_read_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Request HIF Mem Read\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mantis_hif_read_mem\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_hif.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr = internal global ptr @mantis_hif_read_mem._entry, section ".printk_index", align 4
@mantis_hif_read_mem._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Request HIF Mem Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.5 = internal global ptr @mantis_hif_read_mem._entry.3, section ".printk_index", align 4
@mantis_hif_read_mem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Request HIF Mem Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.8 = internal global ptr @mantis_hif_read_mem._entry.6, section ".printk_index", align 4
@mantis_hif_read_mem._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Request HIF Mem Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.11 = internal global ptr @mantis_hif_read_mem._entry.9, section ".printk_index", align 4
@mantis_hif_read_mem._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.13 = internal global ptr @mantis_hif_read_mem._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mantis_hif_read_mem._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s (%d): Adapter(%d) Slot(0): GPIF Smart Buffer operation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.16 = internal global ptr @mantis_hif_read_mem._entry.14, section ".printk_index", align 4
@mantis_hif_read_mem._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s (%d): Adapter(%d) Slot(0): GPIF Smart Buffer operation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.19 = internal global ptr @mantis_hif_read_mem._entry.17, section ".printk_index", align 4
@mantis_hif_read_mem._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s (%d): Adapter(%d) Slot(0): GPIF Smart Buffer operation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.22 = internal global ptr @mantis_hif_read_mem._entry.20, section ".printk_index", align 4
@mantis_hif_read_mem._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s (%d): Adapter(%d) Slot(0): GPIF Smart Buffer operation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.25 = internal global ptr @mantis_hif_read_mem._entry.23, section ".printk_index", align 4
@mantis_hif_read_mem._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.27 = internal global ptr @mantis_hif_read_mem._entry.26, section ".printk_index", align 4
@mantis_hif_read_mem._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s (%d): Mem Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.30 = internal global ptr @mantis_hif_read_mem._entry.28, section ".printk_index", align 4
@mantis_hif_read_mem._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s (%d): Mem Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.33 = internal global ptr @mantis_hif_read_mem._entry.31, section ".printk_index", align 4
@mantis_hif_read_mem._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s (%d): Mem Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.36 = internal global ptr @mantis_hif_read_mem._entry.34, section ".printk_index", align 4
@mantis_hif_read_mem._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s (%d): Mem Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.39 = internal global ptr @mantis_hif_read_mem._entry.37, section ".printk_index", align 4
@mantis_hif_read_mem._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_mem._entry_ptr.41 = internal global ptr @mantis_hif_read_mem._entry.40, section ".printk_index", align 4
@mantis_hif_write_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Request HIF Mem Write\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_hif_write_mem\00", [43 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr = internal global ptr @mantis_hif_write_mem._entry, section ".printk_index", align 4
@mantis_hif_write_mem._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Request HIF Mem Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.46 = internal global ptr @mantis_hif_write_mem._entry.44, section ".printk_index", align 4
@mantis_hif_write_mem._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Request HIF Mem Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.49 = internal global ptr @mantis_hif_write_mem._entry.47, section ".printk_index", align 4
@mantis_hif_write_mem._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Request HIF Mem Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.52 = internal global ptr @mantis_hif_write_mem._entry.50, section ".printk_index", align 4
@mantis_hif_write_mem._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.54 = internal global ptr @mantis_hif_write_mem._entry.53, section ".printk_index", align 4
@mantis_hif_write_mem._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.43, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s (%d): Adapter(%d) Slot(0): HIF Smart Buffer operation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.57 = internal global ptr @mantis_hif_write_mem._entry.55, section ".printk_index", align 4
@mantis_hif_write_mem._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.43, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015%s (%d): Adapter(%d) Slot(0): HIF Smart Buffer operation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.60 = internal global ptr @mantis_hif_write_mem._entry.58, section ".printk_index", align 4
@mantis_hif_write_mem._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.43, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s (%d): Adapter(%d) Slot(0): HIF Smart Buffer operation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.63 = internal global ptr @mantis_hif_write_mem._entry.61, section ".printk_index", align 4
@mantis_hif_write_mem._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.43, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s (%d): Adapter(%d) Slot(0): HIF Smart Buffer operation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.66 = internal global ptr @mantis_hif_write_mem._entry.64, section ".printk_index", align 4
@mantis_hif_write_mem._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.43, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.68 = internal global ptr @mantis_hif_write_mem._entry.67, section ".printk_index", align 4
@mantis_hif_write_mem._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.43, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): Mem Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.71 = internal global ptr @mantis_hif_write_mem._entry.69, section ".printk_index", align 4
@mantis_hif_write_mem._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.43, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): Mem Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.74 = internal global ptr @mantis_hif_write_mem._entry.72, section ".printk_index", align 4
@mantis_hif_write_mem._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.43, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): Mem Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.77 = internal global ptr @mantis_hif_write_mem._entry.75, section ".printk_index", align 4
@mantis_hif_write_mem._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.43, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): Mem Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.80 = internal global ptr @mantis_hif_write_mem._entry.78, section ".printk_index", align 4
@mantis_hif_write_mem._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.43, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_mem._entry_ptr.82 = internal global ptr @mantis_hif_write_mem._entry.81, section ".printk_index", align 4
@mantis_hif_read_iom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Request HIF I/O Read\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mantis_hif_read_iom\00", [44 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr = internal global ptr @mantis_hif_read_iom._entry, section ".printk_index", align 4
@mantis_hif_read_iom._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Request HIF I/O Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.87 = internal global ptr @mantis_hif_read_iom._entry.85, section ".printk_index", align 4
@mantis_hif_read_iom._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Request HIF I/O Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.90 = internal global ptr @mantis_hif_read_iom._entry.88, section ".printk_index", align 4
@mantis_hif_read_iom._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Request HIF I/O Read\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.93 = internal global ptr @mantis_hif_read_iom._entry.91, section ".printk_index", align 4
@mantis_hif_read_iom._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.95 = internal global ptr @mantis_hif_read_iom._entry.94, section ".printk_index", align 4
@mantis_hif_read_iom._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.84, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.97 = internal global ptr @mantis_hif_read_iom._entry.96, section ".printk_index", align 4
@mantis_hif_read_iom._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.84, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.99 = internal global ptr @mantis_hif_read_iom._entry.98, section ".printk_index", align 4
@mantis_hif_read_iom._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.84, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.101 = internal global ptr @mantis_hif_read_iom._entry.100, section ".printk_index", align 4
@mantis_hif_read_iom._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.84, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.103 = internal global ptr @mantis_hif_read_iom._entry.102, section ".printk_index", align 4
@mantis_hif_read_iom._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.84, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.105 = internal global ptr @mantis_hif_read_iom._entry.104, section ".printk_index", align 4
@mantis_hif_read_iom._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.84, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s (%d): I/O Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.108 = internal global ptr @mantis_hif_read_iom._entry.106, section ".printk_index", align 4
@mantis_hif_read_iom._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.84, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s (%d): I/O Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.111 = internal global ptr @mantis_hif_read_iom._entry.109, section ".printk_index", align 4
@mantis_hif_read_iom._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.84, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s (%d): I/O Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.114 = internal global ptr @mantis_hif_read_iom._entry.112, section ".printk_index", align 4
@mantis_hif_read_iom._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.84, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s (%d): I/O Read: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.117 = internal global ptr @mantis_hif_read_iom._entry.115, section ".printk_index", align 4
@mantis_hif_read_iom._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.84, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_read_iom._entry_ptr.119 = internal global ptr @mantis_hif_read_iom._entry.118, section ".printk_index", align 4
@mantis_hif_write_iom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Request HIF I/O Write\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_hif_write_iom\00", [43 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr = internal global ptr @mantis_hif_write_iom._entry, section ".printk_index", align 4
@mantis_hif_write_iom._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Request HIF I/O Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.124 = internal global ptr @mantis_hif_write_iom._entry.122, section ".printk_index", align 4
@mantis_hif_write_iom._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Request HIF I/O Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.127 = internal global ptr @mantis_hif_write_iom._entry.125, section ".printk_index", align 4
@mantis_hif_write_iom._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Request HIF I/O Write\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.130 = internal global ptr @mantis_hif_write_iom._entry.128, section ".printk_index", align 4
@mantis_hif_write_iom._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.132 = internal global ptr @mantis_hif_write_iom._entry.131, section ".printk_index", align 4
@mantis_hif_write_iom._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.121, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.134 = internal global ptr @mantis_hif_write_iom._entry.133, section ".printk_index", align 4
@mantis_hif_write_iom._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.121, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.136 = internal global ptr @mantis_hif_write_iom._entry.135, section ".printk_index", align 4
@mantis_hif_write_iom._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.121, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.138 = internal global ptr @mantis_hif_write_iom._entry.137, section ".printk_index", align 4
@mantis_hif_write_iom._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.121, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.140 = internal global ptr @mantis_hif_write_iom._entry.139, section ".printk_index", align 4
@mantis_hif_write_iom._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.121, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.142 = internal global ptr @mantis_hif_write_iom._entry.141, section ".printk_index", align 4
@mantis_hif_write_iom._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.121, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): I/O Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.145 = internal global ptr @mantis_hif_write_iom._entry.143, section ".printk_index", align 4
@mantis_hif_write_iom._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.121, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): I/O Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.148 = internal global ptr @mantis_hif_write_iom._entry.146, section ".printk_index", align 4
@mantis_hif_write_iom._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.121, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): I/O Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.151 = internal global ptr @mantis_hif_write_iom._entry.149, section ".printk_index", align 4
@mantis_hif_write_iom._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.121, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): I/O Write: (0x%02x to 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.154 = internal global ptr @mantis_hif_write_iom._entry.152, section ".printk_index", align 4
@mantis_hif_write_iom._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.121, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_iom._entry_ptr.156 = internal global ptr @mantis_hif_write_iom._entry.155, section ".printk_index", align 4
@mantis_hif_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s (%d): Adapter(%d) Initializing Mantis Host Interface\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_hif_init\00", [16 x i8] zeroinitializer }, align 32
@mantis_hif_init._entry_ptr = internal global ptr @mantis_hif_init._entry, section ".printk_index", align 4
@mantis_hif_init._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015%s (%d): Adapter(%d) Initializing Mantis Host Interface\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_hif_init._entry_ptr.161 = internal global ptr @mantis_hif_init._entry.159, section ".printk_index", align 4
@mantis_hif_init._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s (%d): Adapter(%d) Initializing Mantis Host Interface\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_hif_init._entry_ptr.164 = internal global ptr @mantis_hif_init._entry.162, section ".printk_index", align 4
@mantis_hif_init._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.158, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s (%d): Adapter(%d) Initializing Mantis Host Interface\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_hif_init._entry_ptr.167 = internal global ptr @mantis_hif_init._entry.165, section ".printk_index", align 4
@mantis_hif_init._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.158, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_init._entry_ptr.169 = internal global ptr @mantis_hif_init._entry.168, section ".printk_index", align 4
@mantis_hif_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s (%d): Adapter(%d) Exiting Mantis Host Interface\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_hif_exit\00", [16 x i8] zeroinitializer }, align 32
@mantis_hif_exit._entry_ptr = internal global ptr @mantis_hif_exit._entry, section ".printk_index", align 4
@mantis_hif_exit._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015%s (%d): Adapter(%d) Exiting Mantis Host Interface\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_exit._entry_ptr.174 = internal global ptr @mantis_hif_exit._entry.172, section ".printk_index", align 4
@mantis_hif_exit._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s (%d): Adapter(%d) Exiting Mantis Host Interface\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_exit._entry_ptr.177 = internal global ptr @mantis_hif_exit._entry.175, section ".printk_index", align 4
@mantis_hif_exit._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s (%d): Adapter(%d) Exiting Mantis Host Interface\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_exit._entry_ptr.180 = internal global ptr @mantis_hif_exit._entry.178, section ".printk_index", align 4
@mantis_hif_exit._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_exit._entry_ptr.182 = internal global ptr @mantis_hif_exit._entry.181, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Smart buffer operation timeout !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mantis_hif_sbuf_opdone_wait\00", [36 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr = internal global ptr @mantis_hif_sbuf_opdone_wait._entry, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Smart buffer operation timeout !\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.187 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.185, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Smart buffer operation timeout !\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.190 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.188, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Smart buffer operation timeout !\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.193 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.191, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.195 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.194, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.184, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s (%d): Smart Buffer Operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.198 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.196, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.184, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s (%d): Smart Buffer Operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.201 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.199, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.184, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s (%d): Smart Buffer Operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.204 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.202, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.184, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s (%d): Smart Buffer Operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.207 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.205, section ".printk_index", align 4
@mantis_hif_sbuf_opdone_wait._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.184, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_sbuf_opdone_wait._entry_ptr.209 = internal global ptr @mantis_hif_sbuf_opdone_wait._entry.208, section ".printk_index", align 4
@mantis_hif_write_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Write ACK timed out !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mantis_hif_write_wait\00", [42 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr = internal global ptr @mantis_hif_write_wait._entry, section ".printk_index", align 4
@mantis_hif_write_wait._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Write ACK timed out !\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.214 = internal global ptr @mantis_hif_write_wait._entry.212, section ".printk_index", align 4
@mantis_hif_write_wait._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.211, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Write ACK timed out !\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.217 = internal global ptr @mantis_hif_write_wait._entry.215, section ".printk_index", align 4
@mantis_hif_write_wait._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Write ACK timed out !\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.220 = internal global ptr @mantis_hif_write_wait._entry.218, section ".printk_index", align 4
@mantis_hif_write_wait._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.222 = internal global ptr @mantis_hif_write_wait._entry.221, section ".printk_index", align 4
@mantis_hif_write_wait._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.211, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s (%d): Write Acknowledged\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.225 = internal global ptr @mantis_hif_write_wait._entry.223, section ".printk_index", align 4
@mantis_hif_write_wait._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.211, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s (%d): Write Acknowledged\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.228 = internal global ptr @mantis_hif_write_wait._entry.226, section ".printk_index", align 4
@mantis_hif_write_wait._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.211, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s (%d): Write Acknowledged\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.231 = internal global ptr @mantis_hif_write_wait._entry.229, section ".printk_index", align 4
@mantis_hif_write_wait._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.211, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s (%d): Write Acknowledged\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.234 = internal global ptr @mantis_hif_write_wait._entry.232, section ".printk_index", align 4
@mantis_hif_write_wait._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.211, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.236 = internal global ptr @mantis_hif_write_wait._entry.235, section ".printk_index", align 4
@mantis_hif_write_wait._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.211, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s (%d): Adapter(%d) Slot(0): Write operation timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.239 = internal global ptr @mantis_hif_write_wait._entry.237, section ".printk_index", align 4
@mantis_hif_write_wait._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.211, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s (%d): Adapter(%d) Slot(0): Write operation timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.242 = internal global ptr @mantis_hif_write_wait._entry.240, section ".printk_index", align 4
@mantis_hif_write_wait._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.211, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s (%d): Adapter(%d) Slot(0): Write operation timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.245 = internal global ptr @mantis_hif_write_wait._entry.243, section ".printk_index", align 4
@mantis_hif_write_wait._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.211, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s (%d): Adapter(%d) Slot(0): Write operation timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.248 = internal global ptr @mantis_hif_write_wait._entry.246, section ".printk_index", align 4
@mantis_hif_write_wait._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.211, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.250 = internal global ptr @mantis_hif_write_wait._entry.249, section ".printk_index", align 4
@mantis_hif_write_wait._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.211, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s (%d): HIF Write success\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.253 = internal global ptr @mantis_hif_write_wait._entry.251, section ".printk_index", align 4
@mantis_hif_write_wait._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.211, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s (%d): HIF Write success\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.256 = internal global ptr @mantis_hif_write_wait._entry.254, section ".printk_index", align 4
@mantis_hif_write_wait._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.211, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s (%d): HIF Write success\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.259 = internal global ptr @mantis_hif_write_wait._entry.257, section ".printk_index", align 4
@mantis_hif_write_wait._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.211, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s (%d): HIF Write success\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.262 = internal global ptr @mantis_hif_write_wait._entry.260, section ".printk_index", align 4
@mantis_hif_write_wait._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.211, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hif_write_wait._entry_ptr.264 = internal global ptr @mantis_hif_write_wait._entry.263, section ".printk_index", align 4
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 82, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 95, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 101, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 111, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 124, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 128, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 139, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 152, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 157, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 169, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 181, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 185, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 199, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 221, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 39, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 42, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 57, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 60, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 67, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.806 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_hif.c\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 72, i32 2 }
@llvm.compiler.used = appending global [281 x ptr] [ptr @mantis_hif_exit._entry, ptr @mantis_hif_exit._entry.172, ptr @mantis_hif_exit._entry.175, ptr @mantis_hif_exit._entry.178, ptr @mantis_hif_exit._entry.181, ptr @mantis_hif_exit._entry_ptr, ptr @mantis_hif_exit._entry_ptr.174, ptr @mantis_hif_exit._entry_ptr.177, ptr @mantis_hif_exit._entry_ptr.180, ptr @mantis_hif_exit._entry_ptr.182, ptr @mantis_hif_init._entry, ptr @mantis_hif_init._entry.159, ptr @mantis_hif_init._entry.162, ptr @mantis_hif_init._entry.165, ptr @mantis_hif_init._entry.168, ptr @mantis_hif_init._entry_ptr, ptr @mantis_hif_init._entry_ptr.161, ptr @mantis_hif_init._entry_ptr.164, ptr @mantis_hif_init._entry_ptr.167, ptr @mantis_hif_init._entry_ptr.169, ptr @mantis_hif_read_iom._entry, ptr @mantis_hif_read_iom._entry.100, ptr @mantis_hif_read_iom._entry.102, ptr @mantis_hif_read_iom._entry.104, ptr @mantis_hif_read_iom._entry.106, ptr @mantis_hif_read_iom._entry.109, ptr @mantis_hif_read_iom._entry.112, ptr @mantis_hif_read_iom._entry.115, ptr @mantis_hif_read_iom._entry.118, ptr @mantis_hif_read_iom._entry.85, ptr @mantis_hif_read_iom._entry.88, ptr @mantis_hif_read_iom._entry.91, ptr @mantis_hif_read_iom._entry.94, ptr @mantis_hif_read_iom._entry.96, ptr @mantis_hif_read_iom._entry.98, ptr @mantis_hif_read_iom._entry_ptr, ptr @mantis_hif_read_iom._entry_ptr.101, ptr @mantis_hif_read_iom._entry_ptr.103, ptr @mantis_hif_read_iom._entry_ptr.105, ptr @mantis_hif_read_iom._entry_ptr.108, ptr @mantis_hif_read_iom._entry_ptr.111, ptr @mantis_hif_read_iom._entry_ptr.114, ptr @mantis_hif_read_iom._entry_ptr.117, ptr @mantis_hif_read_iom._entry_ptr.119, ptr @mantis_hif_read_iom._entry_ptr.87, ptr @mantis_hif_read_iom._entry_ptr.90, ptr @mantis_hif_read_iom._entry_ptr.93, ptr @mantis_hif_read_iom._entry_ptr.95, ptr @mantis_hif_read_iom._entry_ptr.97, ptr @mantis_hif_read_iom._entry_ptr.99, ptr @mantis_hif_read_mem._entry, ptr @mantis_hif_read_mem._entry.12, ptr @mantis_hif_read_mem._entry.14, ptr @mantis_hif_read_mem._entry.17, ptr @mantis_hif_read_mem._entry.20, ptr @mantis_hif_read_mem._entry.23, ptr @mantis_hif_read_mem._entry.26, ptr @mantis_hif_read_mem._entry.28, ptr @mantis_hif_read_mem._entry.3, ptr @mantis_hif_read_mem._entry.31, ptr @mantis_hif_read_mem._entry.34, ptr @mantis_hif_read_mem._entry.37, ptr @mantis_hif_read_mem._entry.40, ptr @mantis_hif_read_mem._entry.6, ptr @mantis_hif_read_mem._entry.9, ptr @mantis_hif_read_mem._entry_ptr, ptr @mantis_hif_read_mem._entry_ptr.11, ptr @mantis_hif_read_mem._entry_ptr.13, ptr @mantis_hif_read_mem._entry_ptr.16, ptr @mantis_hif_read_mem._entry_ptr.19, ptr @mantis_hif_read_mem._entry_ptr.22, ptr @mantis_hif_read_mem._entry_ptr.25, ptr @mantis_hif_read_mem._entry_ptr.27, ptr @mantis_hif_read_mem._entry_ptr.30, ptr @mantis_hif_read_mem._entry_ptr.33, ptr @mantis_hif_read_mem._entry_ptr.36, ptr @mantis_hif_read_mem._entry_ptr.39, ptr @mantis_hif_read_mem._entry_ptr.41, ptr @mantis_hif_read_mem._entry_ptr.5, ptr @mantis_hif_read_mem._entry_ptr.8, ptr @mantis_hif_sbuf_opdone_wait._entry, ptr @mantis_hif_sbuf_opdone_wait._entry.185, ptr @mantis_hif_sbuf_opdone_wait._entry.188, ptr @mantis_hif_sbuf_opdone_wait._entry.191, ptr @mantis_hif_sbuf_opdone_wait._entry.194, ptr @mantis_hif_sbuf_opdone_wait._entry.196, ptr @mantis_hif_sbuf_opdone_wait._entry.199, ptr @mantis_hif_sbuf_opdone_wait._entry.202, ptr @mantis_hif_sbuf_opdone_wait._entry.205, ptr @mantis_hif_sbuf_opdone_wait._entry.208, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.187, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.190, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.193, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.195, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.198, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.201, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.204, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.207, ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.209, ptr @mantis_hif_write_iom._entry, ptr @mantis_hif_write_iom._entry.122, ptr @mantis_hif_write_iom._entry.125, ptr @mantis_hif_write_iom._entry.128, ptr @mantis_hif_write_iom._entry.131, ptr @mantis_hif_write_iom._entry.133, ptr @mantis_hif_write_iom._entry.135, ptr @mantis_hif_write_iom._entry.137, ptr @mantis_hif_write_iom._entry.139, ptr @mantis_hif_write_iom._entry.141, ptr @mantis_hif_write_iom._entry.143, ptr @mantis_hif_write_iom._entry.146, ptr @mantis_hif_write_iom._entry.149, ptr @mantis_hif_write_iom._entry.152, ptr @mantis_hif_write_iom._entry.155, ptr @mantis_hif_write_iom._entry_ptr, ptr @mantis_hif_write_iom._entry_ptr.124, ptr @mantis_hif_write_iom._entry_ptr.127, ptr @mantis_hif_write_iom._entry_ptr.130, ptr @mantis_hif_write_iom._entry_ptr.132, ptr @mantis_hif_write_iom._entry_ptr.134, ptr @mantis_hif_write_iom._entry_ptr.136, ptr @mantis_hif_write_iom._entry_ptr.138, ptr @mantis_hif_write_iom._entry_ptr.140, ptr @mantis_hif_write_iom._entry_ptr.142, ptr @mantis_hif_write_iom._entry_ptr.145, ptr @mantis_hif_write_iom._entry_ptr.148, ptr @mantis_hif_write_iom._entry_ptr.151, ptr @mantis_hif_write_iom._entry_ptr.154, ptr @mantis_hif_write_iom._entry_ptr.156, ptr @mantis_hif_write_mem._entry, ptr @mantis_hif_write_mem._entry.44, ptr @mantis_hif_write_mem._entry.47, ptr @mantis_hif_write_mem._entry.50, ptr @mantis_hif_write_mem._entry.53, ptr @mantis_hif_write_mem._entry.55, ptr @mantis_hif_write_mem._entry.58, ptr @mantis_hif_write_mem._entry.61, ptr @mantis_hif_write_mem._entry.64, ptr @mantis_hif_write_mem._entry.67, ptr @mantis_hif_write_mem._entry.69, ptr @mantis_hif_write_mem._entry.72, ptr @mantis_hif_write_mem._entry.75, ptr @mantis_hif_write_mem._entry.78, ptr @mantis_hif_write_mem._entry.81, ptr @mantis_hif_write_mem._entry_ptr, ptr @mantis_hif_write_mem._entry_ptr.46, ptr @mantis_hif_write_mem._entry_ptr.49, ptr @mantis_hif_write_mem._entry_ptr.52, ptr @mantis_hif_write_mem._entry_ptr.54, ptr @mantis_hif_write_mem._entry_ptr.57, ptr @mantis_hif_write_mem._entry_ptr.60, ptr @mantis_hif_write_mem._entry_ptr.63, ptr @mantis_hif_write_mem._entry_ptr.66, ptr @mantis_hif_write_mem._entry_ptr.68, ptr @mantis_hif_write_mem._entry_ptr.71, ptr @mantis_hif_write_mem._entry_ptr.74, ptr @mantis_hif_write_mem._entry_ptr.77, ptr @mantis_hif_write_mem._entry_ptr.80, ptr @mantis_hif_write_mem._entry_ptr.82, ptr @mantis_hif_write_wait._entry, ptr @mantis_hif_write_wait._entry.212, ptr @mantis_hif_write_wait._entry.215, ptr @mantis_hif_write_wait._entry.218, ptr @mantis_hif_write_wait._entry.221, ptr @mantis_hif_write_wait._entry.223, ptr @mantis_hif_write_wait._entry.226, ptr @mantis_hif_write_wait._entry.229, ptr @mantis_hif_write_wait._entry.232, ptr @mantis_hif_write_wait._entry.235, ptr @mantis_hif_write_wait._entry.237, ptr @mantis_hif_write_wait._entry.240, ptr @mantis_hif_write_wait._entry.243, ptr @mantis_hif_write_wait._entry.246, ptr @mantis_hif_write_wait._entry.249, ptr @mantis_hif_write_wait._entry.251, ptr @mantis_hif_write_wait._entry.254, ptr @mantis_hif_write_wait._entry.257, ptr @mantis_hif_write_wait._entry.260, ptr @mantis_hif_write_wait._entry.263, ptr @mantis_hif_write_wait._entry_ptr, ptr @mantis_hif_write_wait._entry_ptr.214, ptr @mantis_hif_write_wait._entry_ptr.217, ptr @mantis_hif_write_wait._entry_ptr.220, ptr @mantis_hif_write_wait._entry_ptr.222, ptr @mantis_hif_write_wait._entry_ptr.225, ptr @mantis_hif_write_wait._entry_ptr.228, ptr @mantis_hif_write_wait._entry_ptr.231, ptr @mantis_hif_write_wait._entry_ptr.234, ptr @mantis_hif_write_wait._entry_ptr.236, ptr @mantis_hif_write_wait._entry_ptr.239, ptr @mantis_hif_write_wait._entry_ptr.242, ptr @mantis_hif_write_wait._entry_ptr.245, ptr @mantis_hif_write_wait._entry_ptr.248, ptr @mantis_hif_write_wait._entry_ptr.250, ptr @mantis_hif_write_wait._entry_ptr.253, ptr @mantis_hif_write_wait._entry_ptr.256, ptr @mantis_hif_write_wait._entry_ptr.259, ptr @mantis_hif_write_wait._entry_ptr.262, ptr @mantis_hif_write_wait._entry_ptr.264, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_mem._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_mem._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_read_iom._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_iom._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_init._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_init._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_init._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_init._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_exit._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_exit._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_exit._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_exit._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_sbuf_opdone_wait._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hif_write_wait._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_hif_read_mem(ptr noundef %ca, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end65_crit_edge, label %do.end

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %5) #8
  br label %do.end65

do.end65:                                         ; preds = %do.end, %entry.do.end65_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %gpio_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_status, align 8
  %or67 = or i32 %7, %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !310
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !312
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 8
  %add.ptr75 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 67108864) #5, !srcloc !311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 4294960) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !313
  tail call void @arm_heavy_mb() #5
  %or79 = or i32 %or67, -2147483648
  %14 = tail call i32 @llvm.bswap.i32(i32 %or79)
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 8
  %add.ptr81 = getelementptr i8, ptr %16, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %14) #5, !srcloc !311
  %call82 = tail call fastcc i32 @mantis_hif_sbuf_opdone_wait(ptr noundef %ca)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 0
  br i1 %cmp83.not, label %if.end163, label %do.body85

do.body85:                                        ; preds = %do.end65
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp87.not = icmp eq i32 %18, 0
  br i1 %cmp87.not, label %do.body85.do.end161_crit_edge, label %do.end94

do.body85.do.end161_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

do.end94:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  %num96 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %num96 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num96, align 8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %20) #8
  br label %do.end161

do.end161:                                        ; preds = %do.end94, %do.body85.do.end161_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  br label %cleanup

if.end163:                                        ; preds = %do.end65
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 8
  %add.ptr165 = getelementptr i8, ptr %22, i32 184
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #5, !srcloc !314
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !315
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %switch333 = icmp ult i32 %26, 4
  br i1 %switch333, label %if.end163.do.end241_crit_edge, label %do.end179

if.end163.do.end241_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end241

do.end179:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  %num181 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %num181 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num181, align 8
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef %28, i32 noundef %24) #8
  br label %do.end241

do.end241:                                        ; preds = %do.end179, %if.end163.do.end241_crit_edge
  %shr = lshr i32 %24, 24
  br label %cleanup

cleanup:                                          ; preds = %do.end241, %do.end161
  %retval.0 = phi i32 [ -121, %do.end161 ], [ %shr, %do.end241 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mantis_hif_sbuf_opdone_wait(ptr noundef %ca) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 37) #5
  %hif_event = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 2
  %2 = ptrtoint ptr %hif_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hif_event, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %entry.do.body114_crit_edge

entry.do.body114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %hif_opdone_wq = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 3
  %call12255 = call i32 @prepare_to_wait_event(ptr noundef %hif_opdone_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %5 = ptrtoint ptr %hif_event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hif_event, align 4
  %and15256 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15256)
  %tobool16.not257.not = icmp eq i32 %and15256, 0
  br i1 %tobool16.not257.not, label %if.then9.cleanup_crit_edge, label %if.end36.thread

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.end36.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %hif_opdone_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.body114

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.1259 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then9.cleanup_crit_edge ]
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret10.1259) #5
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %hif_opdone_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %7 = ptrtoint ptr %hif_event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hif_event, align 4
  %and15 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool20.not = icmp eq i32 %call33, 0
  %spec.store.select190 = select i1 %tobool20.not, i32 1, i32 %call33
  %__ret10.1 = select i1 %tobool16.not, i32 %call33, i32 %spec.store.select190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool26.not = icmp eq i32 %__ret10.1, 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %9 = select i1 %not.tobool16.not, i1 true, i1 %tobool26.not
  br i1 %9, label %if.end36, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret10.1)
  %phi.cmp = icmp eq i32 %__ret10.1, -512
  call void @finish_wait(ptr noundef %hif_opdone_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br i1 %phi.cmp, label %do.body39, label %if.end36.do.body114_crit_edge

if.end36.do.body114_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

do.body39:                                        ; preds = %if.end36
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp40.not = icmp eq i32 %11, 0
  br i1 %cmp40.not, label %do.body39.do.end185_crit_edge, label %do.end47

do.body39.do.end185_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end185

do.end47:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef %13, i32 noundef %13) #8
  br label %do.body114

do.body114:                                       ; preds = %do.end47, %if.end36.do.body114_crit_edge, %if.end36.thread, %entry.do.body114_crit_edge
  %rc.0.ph = phi i32 [ -121, %do.end47 ], [ 0, %if.end36.do.body114_crit_edge ], [ 0, %entry.do.body114_crit_edge ], [ 0, %if.end36.thread ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %switch242 = icmp ult i32 %.pr, 4
  br i1 %switch242, label %do.body114.do.end185_crit_edge, label %do.end123

do.body114.do.end185_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end185

do.end123:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  %num125 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %num125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num125, align 8
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.184, i32 noundef %16) #8
  br label %do.end185

do.end185:                                        ; preds = %do.end123, %do.body114.do.end185_crit_edge, %do.body39.do.end185_crit_edge
  %rc.0253 = phi i32 [ %rc.0.ph, %do.end123 ], [ %rc.0.ph, %do.body114.do.end185_crit_edge ], [ -121, %do.body39.do.end185_crit_edge ]
  %17 = ptrtoint ptr %hif_event to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hif_event, align 4
  %and187 = and i32 %18, -16385
  store i32 %and187, ptr %hif_event, align 4
  ret i32 %rc.0253
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_hif_write_mem(ptr noundef %ca, i32 noundef %addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end66_crit_edge, label %do.end

entry.do.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %5, i32 noundef %5) #8
  br label %do.end66

do.end66:                                         ; preds = %do.end, %entry.do.end66_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %gpio_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_status, align 8
  %or69 = or i32 %7, %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !316
  tail call void @arm_heavy_mb() #5
  %slave_cfg = getelementptr inbounds %struct.mantis_slot, ptr %ca, i32 0, i32 1
  %8 = ptrtoint ptr %slave_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slave_cfg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #5, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !317
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 8
  %add.ptr77 = getelementptr i8, ptr %15, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %13) #5, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !318
  tail call void @arm_heavy_mb() #5
  %conv = zext i8 %data to i32
  %16 = shl nuw i32 %conv, 24
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 8
  %add.ptr82 = getelementptr i8, ptr %18, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %16) #5, !srcloc !311
  %call83 = tail call fastcc i32 @mantis_hif_write_wait(ptr noundef %ca)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 8
  br i1 %cmp84.not, label %do.body176, label %do.body87

do.body87:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp89.not = icmp eq i32 %20, 0
  br i1 %cmp89.not, label %do.body87.cleanup_crit_edge, label %do.end98

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end98:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %num100 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %num100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num100, align 8
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.43, i32 noundef %22, i32 noundef %22) #8
  br label %cleanup

do.body176:                                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch358 = icmp ult i32 %20, 4
  br i1 %switch358, label %do.body176.cleanup_crit_edge, label %do.end187

do.body176.cleanup_crit_edge:                     ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end187:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  %num189 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %num189 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num189, align 8
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.43, i32 noundef %24, i32 noundef %conv, i32 noundef %addr) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end187, %do.body176.cleanup_crit_edge, %do.end98, %do.body87.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.body87.cleanup_crit_edge ], [ -121, %do.end98 ], [ 0, %do.body176.cleanup_crit_edge ], [ 0, %do.end187 ]
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mantis_hif_write_wait(ptr noundef %ca) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 55) #5
  %gpif_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpif_status, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %entry.do.body114_crit_edge

entry.do.body114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %hif_write_wq = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 6
  %call12467 = call i32 @prepare_to_wait_event(ptr noundef %hif_write_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %5 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpif_status, align 4
  %and15468 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15468)
  %tobool16.not469.not = icmp eq i32 %and15468, 0
  br i1 %tobool16.not469.not, label %if.then9.cleanup_crit_edge, label %if.end36.thread

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.end36.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %hif_write_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.body114

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.1471 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then9.cleanup_crit_edge ]
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret10.1471) #5
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %hif_write_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %7 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpif_status, align 4
  %and15 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool20.not = icmp eq i32 %call33, 0
  %spec.store.select350 = select i1 %tobool20.not, i32 1, i32 %call33
  %__ret10.1 = select i1 %tobool16.not, i32 %call33, i32 %spec.store.select350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool26.not = icmp eq i32 %__ret10.1, 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %9 = select i1 %not.tobool16.not, i1 true, i1 %tobool26.not
  br i1 %9, label %if.end36, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret10.1)
  %phi.cmp = icmp eq i32 %__ret10.1, -512
  call void @finish_wait(ptr noundef %hif_write_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br i1 %phi.cmp, label %do.body39, label %if.end36.do.body114_crit_edge

if.end36.do.body114_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

do.body39:                                        ; preds = %if.end36
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp40.not = icmp eq i32 %11, 0
  br i1 %cmp40.not, label %do.body39.do.end185_crit_edge, label %do.end47

do.body39.do.end185_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end185

do.end47:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef %13, i32 noundef %13) #8
  br label %do.body114

do.body114:                                       ; preds = %do.end47, %if.end36.do.body114_crit_edge, %if.end36.thread, %entry.do.body114_crit_edge
  %rc.0.ph = phi i32 [ -121, %do.end47 ], [ 0, %if.end36.do.body114_crit_edge ], [ 0, %entry.do.body114_crit_edge ], [ 0, %if.end36.thread ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %switch446 = icmp ult i32 %.pr, 4
  br i1 %switch446, label %do.body114.do.end185_crit_edge, label %do.end123

do.body114.do.end185_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end185

do.end123:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  %num125 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %num125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num125, align 8
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.211, i32 noundef %16) #8
  br label %do.end185

do.end185:                                        ; preds = %do.end123, %do.body114.do.end185_crit_edge, %do.body39.do.end185_crit_edge
  %rc.0460 = phi i32 [ %rc.0.ph, %do.end123 ], [ %rc.0.ph, %do.body114.do.end185_crit_edge ], [ -121, %do.body39.do.end185_crit_edge ]
  %17 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpif_status, align 4
  %and187 = and i32 %18, -129
  store i32 %and187, ptr %gpif_status, align 4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end185
  %timeout.0 = phi i32 [ 0, %do.end185 ], [ %inc, %while.body.while.cond_crit_edge ]
  %opdone.0 = phi i32 [ 0, %do.end185 ], [ %and193, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opdone.0)
  %tobool188.not = icmp eq i32 %opdone.0, 0
  br i1 %tobool188.not, label %while.body, label %while.cond.do.body274_crit_edge

while.cond.do.body274_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body274

while.body:                                       ; preds = %while.cond
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 156
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !314
  %22 = lshr i32 %21, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !319
  %and193 = and i32 %22, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 107374000) #5
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond = icmp eq i32 %inc, 101
  br i1 %exitcond, label %do.body196, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body196:                                       ; preds = %while.body
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp198.not = icmp eq i32 %25, 0
  br i1 %cmp198.not, label %do.body196.do.end345_crit_edge, label %do.end205

do.body196.do.end345_crit_edge:                   ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end345

do.end205:                                        ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  %num207 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %num207 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num207, align 8
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.211, i32 noundef %27, i32 noundef %27) #8
  br label %do.body274

do.body274:                                       ; preds = %do.end205, %while.cond.do.body274_crit_edge
  %rc.1.ph = phi i32 [ -110, %do.end205 ], [ %rc.0460, %while.cond.do.body274_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr462 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr462)
  %switch449 = icmp ult i32 %.pr462, 4
  br i1 %switch449, label %do.body274.do.end345_crit_edge, label %do.end283

do.body274.do.end345_crit_edge:                   ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end345

do.end283:                                        ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #7
  %num285 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %num285 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num285, align 8
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.211, i32 noundef %30) #8
  br label %do.end345

do.end345:                                        ; preds = %do.end283, %do.body274.do.end345_crit_edge, %do.body196.do.end345_crit_edge
  %rc.1465 = phi i32 [ %rc.1.ph, %do.end283 ], [ %rc.1.ph, %do.body274.do.end345_crit_edge ], [ -110, %do.body196.do.end345_crit_edge ]
  ret i32 %rc.1465
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_hif_read_iom(ptr noundef %ca, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end65_crit_edge, label %do.end

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %5, i32 noundef %5) #8
  br label %do.end65

do.end65:                                         ; preds = %do.end, %entry.do.end65_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %gpio_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_status, align 8
  %or66 = or i32 %7, %addr
  %or67 = or i32 %or66, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !320
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !321
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 8
  %add.ptr75 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 16777216) #5, !srcloc !311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 4294960) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !322
  tail call void @arm_heavy_mb() #5
  %or79 = or i32 %or66, -2080374784
  %14 = tail call i32 @llvm.bswap.i32(i32 %or79)
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 8
  %add.ptr81 = getelementptr i8, ptr %16, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %14) #5, !srcloc !311
  %call82 = tail call fastcc i32 @mantis_hif_sbuf_opdone_wait(ptr noundef %ca)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 0
  br i1 %cmp83.not, label %if.end163, label %do.body85

do.body85:                                        ; preds = %do.end65
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp87.not = icmp eq i32 %18, 0
  br i1 %cmp87.not, label %do.body85.do.end161_crit_edge, label %do.end94

do.body85.do.end161_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

do.end94:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  %num96 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %num96 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num96, align 8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.84, i32 noundef %20, i32 noundef %20) #8
  br label %do.end161

do.end161:                                        ; preds = %do.end94, %do.body85.do.end161_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  br label %cleanup

if.end163:                                        ; preds = %do.end65
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 8
  %add.ptr165 = getelementptr i8, ptr %22, i32 184
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #5, !srcloc !314
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !323
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %switch332 = icmp ult i32 %26, 4
  br i1 %switch332, label %if.end163.do.end240_crit_edge, label %do.end178

if.end163.do.end240_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end240

do.end178:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  %num180 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %num180 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num180, align 8
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.84, i32 noundef %28, i32 noundef %24) #8
  br label %do.end240

do.end240:                                        ; preds = %do.end178, %if.end163.do.end240_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #5
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  %conv242 = and i32 %24, 255
  br label %cleanup

cleanup:                                          ; preds = %do.end240, %do.end161
  %retval.0 = phi i32 [ -121, %do.end161 ], [ %conv242, %do.end240 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_hif_write_iom(ptr noundef %ca, i32 noundef %addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end65_crit_edge, label %do.end

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef %5, i32 noundef %5) #8
  br label %do.end65

do.end65:                                         ; preds = %do.end, %entry.do.end65_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %gpio_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_status, align 8
  %or67 = or i32 %7, %addr
  %or68 = or i32 %or67, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !324
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !325
  tail call void @arm_heavy_mb() #5
  %conv = zext i8 %data to i32
  %11 = shl nuw i32 %conv, 24
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 8
  %add.ptr76 = getelementptr i8, ptr %13, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %11) #5, !srcloc !311
  %call77 = tail call fastcc i32 @mantis_hif_write_wait(ptr noundef %ca)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  br i1 %cmp78.not, label %do.body170, label %do.body81

do.body81:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp83.not = icmp eq i32 %15, 0
  br i1 %cmp83.not, label %do.body81.do.end167_crit_edge, label %do.end92

do.body81.do.end167_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end167

do.end92:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %num94 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %num94 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num94, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.121, i32 noundef %17, i32 noundef %17) #8
  br label %do.end167

do.end167:                                        ; preds = %do.end92, %do.body81.do.end167_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  br label %cleanup

do.body170:                                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %switch349 = icmp ult i32 %15, 4
  br i1 %switch349, label %do.body170.do.end256_crit_edge, label %do.end181

do.body170.do.end256_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end256

do.end181:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  %num183 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %num183 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num183, align 8
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.121, i32 noundef %19, i32 noundef %conv, i32 noundef %addr) #8
  br label %do.end256

do.end256:                                        ; preds = %do.end181, %do.body170.do.end256_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end256, %do.end167
  %retval.0 = phi i32 [ -121, %do.end167 ], [ 0, %do.end256 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_hif_init(ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %slave_cfg = getelementptr inbounds %struct.mantis_slot, ptr %ca, i32 0, i32 1
  %2 = ptrtoint ptr %slave_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1886859304, ptr %slave_cfg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end66_crit_edge, label %do.end

entry.do.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef %6, i32 noundef %6) #8
  br label %do.end66

do.end66:                                         ; preds = %do.end, %entry.do.end66_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 152
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !327
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr74 = getelementptr i8, ptr %11, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 -67108864) #5, !srcloc !311
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_hif_exit(ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 9
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.do.end65_crit_edge, label %do.end

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, i32 noundef %5, i32 noundef %5) #8
  br label %do.end65

do.end65:                                         ; preds = %do.end, %entry.do.end65_crit_edge
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ca_lock, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 152
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !328
  %9 = and i32 %8, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !329
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr73 = getelementptr i8, ptr %11, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %9) #5, !srcloc !311
  tail call void @mutex_unlock(ptr noundef %ca_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 82, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_hif_read_mem._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_hif_read_mem._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_hif_read_mem._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_hif_read_mem._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_hif_read_mem._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_hif_read_mem._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_hif_read_mem._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_hif_read_mem._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_hif_read_mem._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_hif_read_mem._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 95, i32 3}
!19 = !{ptr @mantis_hif_read_mem._entry.14, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_hif_read_mem._entry_ptr.16, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.18, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mantis_hif_read_mem._entry.17, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @mantis_hif_read_mem._entry_ptr.19, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.21, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mantis_hif_read_mem._entry.20, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @mantis_hif_read_mem._entry_ptr.22, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.24, !18, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mantis_hif_read_mem._entry.23, !18, !"_entry", i1 false, i1 false}
!29 = !{ptr @mantis_hif_read_mem._entry_ptr.25, !18, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mantis_hif_read_mem._entry.26, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @mantis_hif_read_mem._entry_ptr.27, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.29, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 101, i32 2}
!34 = !{ptr @mantis_hif_read_mem._entry.28, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mantis_hif_read_mem._entry_ptr.30, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.32, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mantis_hif_read_mem._entry.31, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @mantis_hif_read_mem._entry_ptr.33, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.35, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mantis_hif_read_mem._entry.34, !33, !"_entry", i1 false, i1 false}
!41 = !{ptr @mantis_hif_read_mem._entry_ptr.36, !33, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.38, !33, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mantis_hif_read_mem._entry.37, !33, !"_entry", i1 false, i1 false}
!44 = !{ptr @mantis_hif_read_mem._entry_ptr.39, !33, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mantis_hif_read_mem._entry.40, !33, !"_entry", i1 false, i1 false}
!46 = !{ptr @mantis_hif_read_mem._entry_ptr.41, !33, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.42, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 111, i32 2}
!49 = !{ptr @.str.43, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mantis_hif_write_mem._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mantis_hif_write_mem._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.45, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mantis_hif_write_mem._entry.44, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @mantis_hif_write_mem._entry_ptr.46, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.48, !48, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mantis_hif_write_mem._entry.47, !48, !"_entry", i1 false, i1 false}
!57 = !{ptr @mantis_hif_write_mem._entry_ptr.49, !48, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.51, !48, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mantis_hif_write_mem._entry.50, !48, !"_entry", i1 false, i1 false}
!60 = !{ptr @mantis_hif_write_mem._entry_ptr.52, !48, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mantis_hif_write_mem._entry.53, !48, !"_entry", i1 false, i1 false}
!62 = !{ptr @mantis_hif_write_mem._entry_ptr.54, !48, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.56, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 124, i32 3}
!65 = !{ptr @mantis_hif_write_mem._entry.55, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_hif_write_mem._entry_ptr.57, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.59, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mantis_hif_write_mem._entry.58, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @mantis_hif_write_mem._entry_ptr.60, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.62, !64, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mantis_hif_write_mem._entry.61, !64, !"_entry", i1 false, i1 false}
!72 = !{ptr @mantis_hif_write_mem._entry_ptr.63, !64, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.65, !64, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mantis_hif_write_mem._entry.64, !64, !"_entry", i1 false, i1 false}
!75 = !{ptr @mantis_hif_write_mem._entry_ptr.66, !64, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mantis_hif_write_mem._entry.67, !64, !"_entry", i1 false, i1 false}
!77 = !{ptr @mantis_hif_write_mem._entry_ptr.68, !64, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.70, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 128, i32 2}
!80 = !{ptr @mantis_hif_write_mem._entry.69, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mantis_hif_write_mem._entry_ptr.71, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.73, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mantis_hif_write_mem._entry.72, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @mantis_hif_write_mem._entry_ptr.74, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.76, !79, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mantis_hif_write_mem._entry.75, !79, !"_entry", i1 false, i1 false}
!87 = !{ptr @mantis_hif_write_mem._entry_ptr.77, !79, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.79, !79, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mantis_hif_write_mem._entry.78, !79, !"_entry", i1 false, i1 false}
!90 = !{ptr @mantis_hif_write_mem._entry_ptr.80, !79, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @mantis_hif_write_mem._entry.81, !79, !"_entry", i1 false, i1 false}
!92 = !{ptr @mantis_hif_write_mem._entry_ptr.82, !79, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.83, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 139, i32 2}
!95 = !{ptr @.str.84, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mantis_hif_read_iom._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @mantis_hif_read_iom._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.86, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mantis_hif_read_iom._entry.85, !94, !"_entry", i1 false, i1 false}
!100 = !{ptr @mantis_hif_read_iom._entry_ptr.87, !94, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.89, !94, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_hif_read_iom._entry.88, !94, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_hif_read_iom._entry_ptr.90, !94, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.92, !94, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mantis_hif_read_iom._entry.91, !94, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_hif_read_iom._entry_ptr.93, !94, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @mantis_hif_read_iom._entry.94, !94, !"_entry", i1 false, i1 false}
!108 = !{ptr @mantis_hif_read_iom._entry_ptr.95, !94, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @mantis_hif_read_iom._entry.96, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 152, i32 3}
!111 = !{ptr @mantis_hif_read_iom._entry_ptr.97, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mantis_hif_read_iom._entry.98, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mantis_hif_read_iom._entry_ptr.99, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mantis_hif_read_iom._entry.100, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @mantis_hif_read_iom._entry_ptr.101, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mantis_hif_read_iom._entry.102, !110, !"_entry", i1 false, i1 false}
!117 = !{ptr @mantis_hif_read_iom._entry_ptr.103, !110, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @mantis_hif_read_iom._entry.104, !110, !"_entry", i1 false, i1 false}
!119 = !{ptr @mantis_hif_read_iom._entry_ptr.105, !110, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.107, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 157, i32 2}
!122 = !{ptr @mantis_hif_read_iom._entry.106, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mantis_hif_read_iom._entry_ptr.108, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.110, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mantis_hif_read_iom._entry.109, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @mantis_hif_read_iom._entry_ptr.111, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.113, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @mantis_hif_read_iom._entry.112, !121, !"_entry", i1 false, i1 false}
!129 = !{ptr @mantis_hif_read_iom._entry_ptr.114, !121, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.116, !121, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mantis_hif_read_iom._entry.115, !121, !"_entry", i1 false, i1 false}
!132 = !{ptr @mantis_hif_read_iom._entry_ptr.117, !121, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @mantis_hif_read_iom._entry.118, !121, !"_entry", i1 false, i1 false}
!134 = !{ptr @mantis_hif_read_iom._entry_ptr.119, !121, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.120, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 169, i32 2}
!137 = !{ptr @.str.121, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mantis_hif_write_iom._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_hif_write_iom._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.123, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mantis_hif_write_iom._entry.122, !136, !"_entry", i1 false, i1 false}
!142 = !{ptr @mantis_hif_write_iom._entry_ptr.124, !136, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.126, !136, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mantis_hif_write_iom._entry.125, !136, !"_entry", i1 false, i1 false}
!145 = !{ptr @mantis_hif_write_iom._entry_ptr.127, !136, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.129, !136, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_hif_write_iom._entry.128, !136, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_hif_write_iom._entry_ptr.130, !136, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @mantis_hif_write_iom._entry.131, !136, !"_entry", i1 false, i1 false}
!150 = !{ptr @mantis_hif_write_iom._entry_ptr.132, !136, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @mantis_hif_write_iom._entry.133, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 181, i32 3}
!153 = !{ptr @mantis_hif_write_iom._entry_ptr.134, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mantis_hif_write_iom._entry.135, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mantis_hif_write_iom._entry_ptr.136, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @mantis_hif_write_iom._entry.137, !152, !"_entry", i1 false, i1 false}
!157 = !{ptr @mantis_hif_write_iom._entry_ptr.138, !152, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mantis_hif_write_iom._entry.139, !152, !"_entry", i1 false, i1 false}
!159 = !{ptr @mantis_hif_write_iom._entry_ptr.140, !152, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @mantis_hif_write_iom._entry.141, !152, !"_entry", i1 false, i1 false}
!161 = !{ptr @mantis_hif_write_iom._entry_ptr.142, !152, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.144, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 185, i32 2}
!164 = !{ptr @mantis_hif_write_iom._entry.143, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @mantis_hif_write_iom._entry_ptr.145, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.147, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mantis_hif_write_iom._entry.146, !163, !"_entry", i1 false, i1 false}
!168 = !{ptr @mantis_hif_write_iom._entry_ptr.148, !163, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.150, !163, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @mantis_hif_write_iom._entry.149, !163, !"_entry", i1 false, i1 false}
!171 = !{ptr @mantis_hif_write_iom._entry_ptr.151, !163, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.153, !163, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mantis_hif_write_iom._entry.152, !163, !"_entry", i1 false, i1 false}
!174 = !{ptr @mantis_hif_write_iom._entry_ptr.154, !163, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @mantis_hif_write_iom._entry.155, !163, !"_entry", i1 false, i1 false}
!176 = !{ptr @mantis_hif_write_iom._entry_ptr.156, !163, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.157, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 199, i32 2}
!179 = !{ptr @.str.158, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mantis_hif_init._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @mantis_hif_init._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.160, !178, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mantis_hif_init._entry.159, !178, !"_entry", i1 false, i1 false}
!184 = !{ptr @mantis_hif_init._entry_ptr.161, !178, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.163, !178, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @mantis_hif_init._entry.162, !178, !"_entry", i1 false, i1 false}
!187 = !{ptr @mantis_hif_init._entry_ptr.164, !178, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.166, !178, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mantis_hif_init._entry.165, !178, !"_entry", i1 false, i1 false}
!190 = !{ptr @mantis_hif_init._entry_ptr.167, !178, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @mantis_hif_init._entry.168, !178, !"_entry", i1 false, i1 false}
!192 = !{ptr @mantis_hif_init._entry_ptr.169, !178, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.170, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 221, i32 2}
!195 = !{ptr @.str.171, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mantis_hif_exit._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @mantis_hif_exit._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.173, !194, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mantis_hif_exit._entry.172, !194, !"_entry", i1 false, i1 false}
!200 = !{ptr @mantis_hif_exit._entry_ptr.174, !194, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.176, !194, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @mantis_hif_exit._entry.175, !194, !"_entry", i1 false, i1 false}
!203 = !{ptr @mantis_hif_exit._entry_ptr.177, !194, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.179, !194, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mantis_hif_exit._entry.178, !194, !"_entry", i1 false, i1 false}
!206 = !{ptr @mantis_hif_exit._entry_ptr.180, !194, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @mantis_hif_exit._entry.181, !194, !"_entry", i1 false, i1 false}
!208 = !{ptr @mantis_hif_exit._entry_ptr.182, !194, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.183, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 39, i32 3}
!211 = !{ptr @.str.184, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mantis_hif_sbuf_opdone_wait._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.186, !210, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.185, !210, !"_entry", i1 false, i1 false}
!216 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.187, !210, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.189, !210, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.188, !210, !"_entry", i1 false, i1 false}
!219 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.190, !210, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.192, !210, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.191, !210, !"_entry", i1 false, i1 false}
!222 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.193, !210, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.194, !210, !"_entry", i1 false, i1 false}
!224 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.195, !210, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.197, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 42, i32 2}
!227 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.196, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.198, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.200, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.199, !226, !"_entry", i1 false, i1 false}
!231 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.201, !226, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.203, !226, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.202, !226, !"_entry", i1 false, i1 false}
!234 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.204, !226, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.206, !226, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.205, !226, !"_entry", i1 false, i1 false}
!237 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.207, !226, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @mantis_hif_sbuf_opdone_wait._entry.208, !226, !"_entry", i1 false, i1 false}
!239 = !{ptr @mantis_hif_sbuf_opdone_wait._entry_ptr.209, !226, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.210, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 57, i32 3}
!242 = !{ptr @.str.211, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @mantis_hif_write_wait._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @mantis_hif_write_wait._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.213, !241, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @mantis_hif_write_wait._entry.212, !241, !"_entry", i1 false, i1 false}
!247 = !{ptr @mantis_hif_write_wait._entry_ptr.214, !241, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.216, !241, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @mantis_hif_write_wait._entry.215, !241, !"_entry", i1 false, i1 false}
!250 = !{ptr @mantis_hif_write_wait._entry_ptr.217, !241, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.219, !241, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @mantis_hif_write_wait._entry.218, !241, !"_entry", i1 false, i1 false}
!253 = !{ptr @mantis_hif_write_wait._entry_ptr.220, !241, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @mantis_hif_write_wait._entry.221, !241, !"_entry", i1 false, i1 false}
!255 = !{ptr @mantis_hif_write_wait._entry_ptr.222, !241, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.224, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 60, i32 2}
!258 = !{ptr @mantis_hif_write_wait._entry.223, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @mantis_hif_write_wait._entry_ptr.225, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.227, !257, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @mantis_hif_write_wait._entry.226, !257, !"_entry", i1 false, i1 false}
!262 = !{ptr @mantis_hif_write_wait._entry_ptr.228, !257, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.230, !257, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @mantis_hif_write_wait._entry.229, !257, !"_entry", i1 false, i1 false}
!265 = !{ptr @mantis_hif_write_wait._entry_ptr.231, !257, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.233, !257, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @mantis_hif_write_wait._entry.232, !257, !"_entry", i1 false, i1 false}
!268 = !{ptr @mantis_hif_write_wait._entry_ptr.234, !257, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @mantis_hif_write_wait._entry.235, !257, !"_entry", i1 false, i1 false}
!270 = !{ptr @mantis_hif_write_wait._entry_ptr.236, !257, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.238, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 67, i32 4}
!273 = !{ptr @mantis_hif_write_wait._entry.237, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @mantis_hif_write_wait._entry_ptr.239, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.241, !272, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @mantis_hif_write_wait._entry.240, !272, !"_entry", i1 false, i1 false}
!277 = !{ptr @mantis_hif_write_wait._entry_ptr.242, !272, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.244, !272, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @mantis_hif_write_wait._entry.243, !272, !"_entry", i1 false, i1 false}
!280 = !{ptr @mantis_hif_write_wait._entry_ptr.245, !272, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.247, !272, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @mantis_hif_write_wait._entry.246, !272, !"_entry", i1 false, i1 false}
!283 = !{ptr @mantis_hif_write_wait._entry_ptr.248, !272, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @mantis_hif_write_wait._entry.249, !272, !"_entry", i1 false, i1 false}
!285 = !{ptr @mantis_hif_write_wait._entry_ptr.250, !272, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.252, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/mantis/mantis_hif.c", i32 72, i32 2}
!288 = !{ptr @mantis_hif_write_wait._entry.251, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @mantis_hif_write_wait._entry_ptr.253, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.255, !287, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @mantis_hif_write_wait._entry.254, !287, !"_entry", i1 false, i1 false}
!292 = !{ptr @mantis_hif_write_wait._entry_ptr.256, !287, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.258, !287, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @mantis_hif_write_wait._entry.257, !287, !"_entry", i1 false, i1 false}
!295 = !{ptr @mantis_hif_write_wait._entry_ptr.259, !287, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.261, !287, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @mantis_hif_write_wait._entry.260, !287, !"_entry", i1 false, i1 false}
!298 = !{ptr @mantis_hif_write_wait._entry_ptr.262, !287, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @mantis_hif_write_wait._entry.263, !287, !"_entry", i1 false, i1 false}
!300 = !{ptr @mantis_hif_write_wait._entry_ptr.264, !287, !"_entry_ptr", i1 false, i1 false}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{i64 2157848943}
!311 = !{i64 4228778}
!312 = !{i64 2157849508}
!313 = !{i64 2157850792}
!314 = !{i64 4229196}
!315 = !{i64 2157867591}
!316 = !{i64 2157889648}
!317 = !{i64 2157890243}
!318 = !{i64 2157890805}
!319 = !{i64 2157814979}
!320 = !{i64 2157925381}
!321 = !{i64 2157925934}
!322 = !{i64 2157927206}
!323 = !{i64 2157939908}
!324 = !{i64 2157962486}
!325 = !{i64 2157963048}
!326 = !{i64 2157998419}
!327 = !{i64 2157999257}
!328 = !{i64 2158011350}
!329 = !{i64 2158011778}
