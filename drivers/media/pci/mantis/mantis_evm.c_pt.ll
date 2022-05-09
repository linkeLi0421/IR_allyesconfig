; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_evm.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_evm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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

@mantis_evmgr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Initializing Mantis Host I/F Event manager\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mantis_evmgr_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_evm.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_evmgr_init._entry_ptr = internal global ptr @mantis_evmgr_init._entry, section ".printk_index", align 4
@mantis_evmgr_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Initializing Mantis Host I/F Event manager\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_evmgr_init._entry_ptr.5 = internal global ptr @mantis_evmgr_init._entry.3, section ".printk_index", align 4
@mantis_evmgr_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Initializing Mantis Host I/F Event manager\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_evmgr_init._entry_ptr.8 = internal global ptr @mantis_evmgr_init._entry.6, section ".printk_index", align 4
@mantis_evmgr_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Initializing Mantis Host I/F Event manager\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_evmgr_init._entry_ptr.11 = internal global ptr @mantis_evmgr_init._entry.9, section ".printk_index", align 4
@mantis_evmgr_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_evmgr_init._entry_ptr.13 = internal global ptr @mantis_evmgr_init._entry.12, section ".printk_index", align 4
@mantis_evmgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ca->hif_evm_work)\00", [59 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s (%d): Mantis Host I/F Event manager exiting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mantis_evmgr_exit\00", [46 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry_ptr = internal global ptr @mantis_evmgr_exit._entry, section ".printk_index", align 4
@mantis_evmgr_exit._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s (%d): Mantis Host I/F Event manager exiting\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry_ptr.19 = internal global ptr @mantis_evmgr_exit._entry.17, section ".printk_index", align 4
@mantis_evmgr_exit._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s (%d): Mantis Host I/F Event manager exiting\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry_ptr.22 = internal global ptr @mantis_evmgr_exit._entry.20, section ".printk_index", align 4
@mantis_evmgr_exit._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s (%d): Mantis Host I/F Event manager exiting\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry_ptr.25 = internal global ptr @mantis_evmgr_exit._entry.23, section ".printk_index", align 4
@mantis_evmgr_exit._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_evmgr_exit._entry_ptr.27 = internal global ptr @mantis_evmgr_exit._entry.26, section ".printk_index", align 4
@mantis_hifevm_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Plugin\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mantis_hifevm_work\00", [45 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr = internal global ptr @mantis_hifevm_work._entry, section ".printk_index", align 4
@mantis_hifevm_work._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Plugin\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.32 = internal global ptr @mantis_hifevm_work._entry.30, section ".printk_index", align 4
@mantis_hifevm_work._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Plugin\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.35 = internal global ptr @mantis_hifevm_work._entry.33, section ".printk_index", align 4
@mantis_hifevm_work._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Plugin\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.38 = internal global ptr @mantis_hifevm_work._entry.36, section ".printk_index", align 4
@mantis_hifevm_work._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.40 = internal global ptr @mantis_hifevm_work._entry.39, section ".printk_index", align 4
@mantis_hifevm_work._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Unplug\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.43 = internal global ptr @mantis_hifevm_work._entry.41, section ".printk_index", align 4
@mantis_hifevm_work._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Unplug\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.46 = internal global ptr @mantis_hifevm_work._entry.44, section ".printk_index", align 4
@mantis_hifevm_work._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Unplug\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.49 = internal global ptr @mantis_hifevm_work._entry.47, section ".printk_index", align 4
@mantis_hifevm_work._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): CAM Unplug\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.52 = internal global ptr @mantis_hifevm_work._entry.50, section ".printk_index", align 4
@mantis_hifevm_work._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.54 = internal global ptr @mantis_hifevm_work._entry.53, section ".printk_index", align 4
@mantis_hifevm_work._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Ext IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.57 = internal global ptr @mantis_hifevm_work._entry.55, section ".printk_index", align 4
@mantis_hifevm_work._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.29, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Ext IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.60 = internal global ptr @mantis_hifevm_work._entry.58, section ".printk_index", align 4
@mantis_hifevm_work._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.29, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Ext IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.63 = internal global ptr @mantis_hifevm_work._entry.61, section ".printk_index", align 4
@mantis_hifevm_work._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.29, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Ext IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.66 = internal global ptr @mantis_hifevm_work._entry.64, section ".printk_index", align 4
@mantis_hifevm_work._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.29, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.68 = internal global ptr @mantis_hifevm_work._entry.67, section ".printk_index", align 4
@mantis_hifevm_work._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.29, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.71 = internal global ptr @mantis_hifevm_work._entry.69, section ".printk_index", align 4
@mantis_hifevm_work._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.29, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.74 = internal global ptr @mantis_hifevm_work._entry.72, section ".printk_index", align 4
@mantis_hifevm_work._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.29, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.77 = internal global ptr @mantis_hifevm_work._entry.75, section ".printk_index", align 4
@mantis_hifevm_work._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.29, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.80 = internal global ptr @mantis_hifevm_work._entry.78, section ".printk_index", align 4
@mantis_hifevm_work._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.29, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.82 = internal global ptr @mantis_hifevm_work._entry.81, section ".printk_index", align 4
@mantis_hifevm_work._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.29, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Alignment Error\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.85 = internal global ptr @mantis_hifevm_work._entry.83, section ".printk_index", align 4
@mantis_hifevm_work._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.29, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Alignment Error\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.88 = internal global ptr @mantis_hifevm_work._entry.86, section ".printk_index", align 4
@mantis_hifevm_work._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.29, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Alignment Error\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.91 = internal global ptr @mantis_hifevm_work._entry.89, section ".printk_index", align 4
@mantis_hifevm_work._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.29, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Alignment Error\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.94 = internal global ptr @mantis_hifevm_work._entry.92, section ".printk_index", align 4
@mantis_hifevm_work._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.29, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.96 = internal global ptr @mantis_hifevm_work._entry.95, section ".printk_index", align 4
@mantis_hifevm_work._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.29, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.99 = internal global ptr @mantis_hifevm_work._entry.97, section ".printk_index", align 4
@mantis_hifevm_work._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.29, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.102 = internal global ptr @mantis_hifevm_work._entry.100, section ".printk_index", align 4
@mantis_hifevm_work._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.29, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.105 = internal global ptr @mantis_hifevm_work._entry.103, section ".printk_index", align 4
@mantis_hifevm_work._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.29, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.108 = internal global ptr @mantis_hifevm_work._entry.106, section ".printk_index", align 4
@mantis_hifevm_work._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.29, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.110 = internal global ptr @mantis_hifevm_work._entry.109, section ".printk_index", align 4
@mantis_hifevm_work._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.29, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Read Ready\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.113 = internal global ptr @mantis_hifevm_work._entry.111, section ".printk_index", align 4
@mantis_hifevm_work._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.29, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Read Ready\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.116 = internal global ptr @mantis_hifevm_work._entry.114, section ".printk_index", align 4
@mantis_hifevm_work._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.29, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Read Ready\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.119 = internal global ptr @mantis_hifevm_work._entry.117, section ".printk_index", align 4
@mantis_hifevm_work._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.29, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Read Ready\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.122 = internal global ptr @mantis_hifevm_work._entry.120, section ".printk_index", align 4
@mantis_hifevm_work._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.29, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.124 = internal global ptr @mantis_hifevm_work._entry.123, section ".printk_index", align 4
@mantis_hifevm_work._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.29, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): GPIF IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.127 = internal global ptr @mantis_hifevm_work._entry.125, section ".printk_index", align 4
@mantis_hifevm_work._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.29, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): GPIF IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.130 = internal global ptr @mantis_hifevm_work._entry.128, section ".printk_index", align 4
@mantis_hifevm_work._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.29, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): GPIF IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.133 = internal global ptr @mantis_hifevm_work._entry.131, section ".printk_index", align 4
@mantis_hifevm_work._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.29, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): GPIF IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.136 = internal global ptr @mantis_hifevm_work._entry.134, section ".printk_index", align 4
@mantis_hifevm_work._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.29, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.138 = internal global ptr @mantis_hifevm_work._entry.137, section ".printk_index", align 4
@mantis_hifevm_work._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.29, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Empty\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.141 = internal global ptr @mantis_hifevm_work._entry.139, section ".printk_index", align 4
@mantis_hifevm_work._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.29, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Empty\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.144 = internal global ptr @mantis_hifevm_work._entry.142, section ".printk_index", align 4
@mantis_hifevm_work._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.29, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Empty\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.147 = internal global ptr @mantis_hifevm_work._entry.145, section ".printk_index", align 4
@mantis_hifevm_work._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.29, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer Empty\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.150 = internal global ptr @mantis_hifevm_work._entry.148, section ".printk_index", align 4
@mantis_hifevm_work._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.29, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.152 = internal global ptr @mantis_hifevm_work._entry.151, section ".printk_index", align 4
@mantis_hifevm_work._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.155 = internal global ptr @mantis_hifevm_work._entry.153, section ".printk_index", align 4
@mantis_hifevm_work._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.158 = internal global ptr @mantis_hifevm_work._entry.156, section ".printk_index", align 4
@mantis_hifevm_work._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.161 = internal global ptr @mantis_hifevm_work._entry.159, section ".printk_index", align 4
@mantis_hifevm_work._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s (%d): Event Mgr: Adapter(%d) Slot(0): Smart Buffer operation complete\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.164 = internal global ptr @mantis_hifevm_work._entry.162, section ".printk_index", align 4
@mantis_hifevm_work._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_hifevm_work._entry_ptr.166 = internal global ptr @mantis_hifevm_work._entry.165, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 89, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 90, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 101, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 38, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 47, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 57, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 60, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 63, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 66, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 69, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 72, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 75, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_evm.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 78, i32 3 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @mantis_evmgr_exit._entry, ptr @mantis_evmgr_exit._entry.17, ptr @mantis_evmgr_exit._entry.20, ptr @mantis_evmgr_exit._entry.23, ptr @mantis_evmgr_exit._entry.26, ptr @mantis_evmgr_exit._entry_ptr, ptr @mantis_evmgr_exit._entry_ptr.19, ptr @mantis_evmgr_exit._entry_ptr.22, ptr @mantis_evmgr_exit._entry_ptr.25, ptr @mantis_evmgr_exit._entry_ptr.27, ptr @mantis_evmgr_init._entry, ptr @mantis_evmgr_init._entry.12, ptr @mantis_evmgr_init._entry.3, ptr @mantis_evmgr_init._entry.6, ptr @mantis_evmgr_init._entry.9, ptr @mantis_evmgr_init._entry_ptr, ptr @mantis_evmgr_init._entry_ptr.11, ptr @mantis_evmgr_init._entry_ptr.13, ptr @mantis_evmgr_init._entry_ptr.5, ptr @mantis_evmgr_init._entry_ptr.8, ptr @mantis_hifevm_work._entry, ptr @mantis_hifevm_work._entry.100, ptr @mantis_hifevm_work._entry.103, ptr @mantis_hifevm_work._entry.106, ptr @mantis_hifevm_work._entry.109, ptr @mantis_hifevm_work._entry.111, ptr @mantis_hifevm_work._entry.114, ptr @mantis_hifevm_work._entry.117, ptr @mantis_hifevm_work._entry.120, ptr @mantis_hifevm_work._entry.123, ptr @mantis_hifevm_work._entry.125, ptr @mantis_hifevm_work._entry.128, ptr @mantis_hifevm_work._entry.131, ptr @mantis_hifevm_work._entry.134, ptr @mantis_hifevm_work._entry.137, ptr @mantis_hifevm_work._entry.139, ptr @mantis_hifevm_work._entry.142, ptr @mantis_hifevm_work._entry.145, ptr @mantis_hifevm_work._entry.148, ptr @mantis_hifevm_work._entry.151, ptr @mantis_hifevm_work._entry.153, ptr @mantis_hifevm_work._entry.156, ptr @mantis_hifevm_work._entry.159, ptr @mantis_hifevm_work._entry.162, ptr @mantis_hifevm_work._entry.165, ptr @mantis_hifevm_work._entry.30, ptr @mantis_hifevm_work._entry.33, ptr @mantis_hifevm_work._entry.36, ptr @mantis_hifevm_work._entry.39, ptr @mantis_hifevm_work._entry.41, ptr @mantis_hifevm_work._entry.44, ptr @mantis_hifevm_work._entry.47, ptr @mantis_hifevm_work._entry.50, ptr @mantis_hifevm_work._entry.53, ptr @mantis_hifevm_work._entry.55, ptr @mantis_hifevm_work._entry.58, ptr @mantis_hifevm_work._entry.61, ptr @mantis_hifevm_work._entry.64, ptr @mantis_hifevm_work._entry.67, ptr @mantis_hifevm_work._entry.69, ptr @mantis_hifevm_work._entry.72, ptr @mantis_hifevm_work._entry.75, ptr @mantis_hifevm_work._entry.78, ptr @mantis_hifevm_work._entry.81, ptr @mantis_hifevm_work._entry.83, ptr @mantis_hifevm_work._entry.86, ptr @mantis_hifevm_work._entry.89, ptr @mantis_hifevm_work._entry.92, ptr @mantis_hifevm_work._entry.95, ptr @mantis_hifevm_work._entry.97, ptr @mantis_hifevm_work._entry_ptr, ptr @mantis_hifevm_work._entry_ptr.102, ptr @mantis_hifevm_work._entry_ptr.105, ptr @mantis_hifevm_work._entry_ptr.108, ptr @mantis_hifevm_work._entry_ptr.110, ptr @mantis_hifevm_work._entry_ptr.113, ptr @mantis_hifevm_work._entry_ptr.116, ptr @mantis_hifevm_work._entry_ptr.119, ptr @mantis_hifevm_work._entry_ptr.122, ptr @mantis_hifevm_work._entry_ptr.124, ptr @mantis_hifevm_work._entry_ptr.127, ptr @mantis_hifevm_work._entry_ptr.130, ptr @mantis_hifevm_work._entry_ptr.133, ptr @mantis_hifevm_work._entry_ptr.136, ptr @mantis_hifevm_work._entry_ptr.138, ptr @mantis_hifevm_work._entry_ptr.141, ptr @mantis_hifevm_work._entry_ptr.144, ptr @mantis_hifevm_work._entry_ptr.147, ptr @mantis_hifevm_work._entry_ptr.150, ptr @mantis_hifevm_work._entry_ptr.152, ptr @mantis_hifevm_work._entry_ptr.155, ptr @mantis_hifevm_work._entry_ptr.158, ptr @mantis_hifevm_work._entry_ptr.161, ptr @mantis_hifevm_work._entry_ptr.164, ptr @mantis_hifevm_work._entry_ptr.166, ptr @mantis_hifevm_work._entry_ptr.32, ptr @mantis_hifevm_work._entry_ptr.35, ptr @mantis_hifevm_work._entry_ptr.38, ptr @mantis_hifevm_work._entry_ptr.40, ptr @mantis_hifevm_work._entry_ptr.43, ptr @mantis_hifevm_work._entry_ptr.46, ptr @mantis_hifevm_work._entry_ptr.49, ptr @mantis_hifevm_work._entry_ptr.52, ptr @mantis_hifevm_work._entry_ptr.54, ptr @mantis_hifevm_work._entry_ptr.57, ptr @mantis_hifevm_work._entry_ptr.60, ptr @mantis_hifevm_work._entry_ptr.63, ptr @mantis_hifevm_work._entry_ptr.66, ptr @mantis_hifevm_work._entry_ptr.68, ptr @mantis_hifevm_work._entry_ptr.71, ptr @mantis_hifevm_work._entry_ptr.74, ptr @mantis_hifevm_work._entry_ptr.77, ptr @mantis_hifevm_work._entry_ptr.80, ptr @mantis_hifevm_work._entry_ptr.82, ptr @mantis_hifevm_work._entry_ptr.85, ptr @mantis_hifevm_work._entry_ptr.88, ptr @mantis_hifevm_work._entry_ptr.91, ptr @mantis_hifevm_work._entry_ptr.94, ptr @mantis_hifevm_work._entry_ptr.96, ptr @mantis_hifevm_work._entry_ptr.99, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @mantis_evmgr_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_exit._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_exit._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_exit._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_evmgr_exit._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_hifevm_work._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_evmgr_init(ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %switch, label %entry.do.body61_crit_edge, label %do.end

entry.do.body61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %5) #7
  br label %do.body61

do.body61:                                        ; preds = %do.end, %entry.do.body61_crit_edge
  %hif_evm_work = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1
  tail call void @__init_work(ptr noundef %hif_evm_work, i32 noundef 0) #4
  %6 = ptrtoint ptr %hif_evm_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %hif_evm_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @mantis_evmgr_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry65 = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mantis_hifevm_work, ptr %func, align 4
  %call69 = tail call i32 @mantis_pcmcia_init(ptr noundef %ca) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %hif_evm_work) #4
  %call72 = tail call i32 @mantis_hif_init(ptr noundef %ca) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mantis_hifevm_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %ca_priv = getelementptr i8, ptr %work, i32 264
  %0 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_priv, align 4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 8
  %add.ptr1 = getelementptr i8, ptr %3, i32 156
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !196
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !197
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else81, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end169_crit_edge, label %do.body

if.then.if.end169_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end169

do.body:                                          ; preds = %if.then
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch = icmp ult i32 %7, 4
  br i1 %switch, label %do.body.do.body75_crit_edge, label %do.end

do.body.do.body75_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %9, i32 noundef %9) #7
  br label %do.body75

do.body75:                                        ; preds = %do.end, %do.body.do.body75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !198
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr79 = getelementptr i8, ptr %11, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 56026) #4, !srcloc !199
  tail call void @mantis_event_cam_plugin(ptr noundef %add.ptr) #4
  br label %if.end169.sink.split

if.else81:                                        ; preds = %entry
  %and82 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else81.if.end169_crit_edge, label %do.body85

if.else81.if.end169_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end169

do.body85:                                        ; preds = %if.else81
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %switch1109 = icmp ult i32 %13, 4
  br i1 %switch1109, label %do.body85.do.body162_crit_edge, label %do.end94

do.body85.do.body162_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body162

do.end94:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  %num96 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %num96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num96, align 8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, i32 noundef %15, i32 noundef %15) #7
  br label %do.body162

do.body162:                                       ; preds = %do.end94, %do.body85.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !200
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 8
  %add.ptr166 = getelementptr i8, ptr %17, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 56026) #4, !srcloc !199
  tail call void @mantis_event_cam_unplug(ptr noundef %add.ptr) #4
  br label %if.end169.sink.split

if.end169.sink.split:                             ; preds = %do.body162, %do.body75
  %.sink = phi i32 [ 0, %do.body162 ], [ 1, %do.body75 ]
  %en50221167 = getelementptr i8, ptr %work, i32 268
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %en50221167, i32 noundef 0, i32 noundef %.sink) #4
  br label %if.end169

if.end169:                                        ; preds = %if.end169.sink.split, %if.else81.if.end169_crit_edge, %if.then.if.end169_crit_edge
  %gpif_status = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 39
  %18 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpif_status, align 4
  %and170 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.if.end250_crit_edge, label %do.body173

if.end169.if.end250_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end250

do.body173:                                       ; preds = %if.end169
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %switch1112 = icmp ult i32 %21, 4
  br i1 %switch1112, label %do.body173.if.end250_crit_edge, label %do.end182

do.body173.if.end250_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end250

do.end182:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  %num184 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %num184 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num184, align 8
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.29, i32 noundef %23, i32 noundef %23) #7
  br label %if.end250

if.end250:                                        ; preds = %do.end182, %do.body173.if.end250_crit_edge, %if.end169.if.end250_crit_edge
  %24 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpif_status, align 4
  %and252 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.end250.if.end332_crit_edge, label %do.body255

if.end250.if.end332_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end332

do.body255:                                       ; preds = %if.end250
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %switch1115 = icmp ult i32 %27, 4
  br i1 %switch1115, label %do.body255.if.end332_crit_edge, label %do.end264

do.body255.if.end332_crit_edge:                   ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end332

do.end264:                                        ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #6
  %num266 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %num266 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num266, align 8
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.29, i32 noundef %29, i32 noundef %29) #7
  br label %if.end332

if.end332:                                        ; preds = %do.end264, %do.body255.if.end332_crit_edge, %if.end250.if.end332_crit_edge
  %30 = ptrtoint ptr %gpif_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpif_status, align 4
  %and334 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %if.end332.if.end414_crit_edge, label %do.body337

if.end332.if.end414_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end414

do.body337:                                       ; preds = %if.end332
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %switch1118 = icmp ult i32 %33, 4
  br i1 %switch1118, label %do.body337.if.end414_crit_edge, label %do.end346

do.body337.if.end414_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end414

do.end346:                                        ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  %num348 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %num348 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num348, align 8
  %call350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.29, i32 noundef %35, i32 noundef %35) #7
  br label %if.end414

if.end414:                                        ; preds = %do.end346, %do.body337.if.end414_crit_edge, %if.end332.if.end414_crit_edge
  %and415 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and415)
  %tobool416.not = icmp eq i32 %and415, 0
  br i1 %tobool416.not, label %if.end414.if.end495_crit_edge, label %do.body418

if.end414.if.end495_crit_edge:                    ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end495

do.body418:                                       ; preds = %if.end414
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %switch1121 = icmp ult i32 %37, 4
  br i1 %switch1121, label %do.body418.if.end495_crit_edge, label %do.end427

do.body418.if.end495_crit_edge:                   ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end495

do.end427:                                        ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #6
  %num429 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %num429 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num429, align 8
  %call431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.29, i32 noundef %39, i32 noundef %39) #7
  br label %if.end495

if.end495:                                        ; preds = %do.end427, %do.body418.if.end495_crit_edge, %if.end414.if.end495_crit_edge
  %and496 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and496)
  %tobool497.not = icmp eq i32 %and496, 0
  br i1 %tobool497.not, label %if.end495.if.end576_crit_edge, label %do.body499

if.end495.if.end576_crit_edge:                    ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end576

do.body499:                                       ; preds = %if.end495
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %switch1124 = icmp ult i32 %41, 4
  br i1 %switch1124, label %do.body499.if.end576_crit_edge, label %do.end508

do.body499.if.end576_crit_edge:                   ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end576

do.end508:                                        ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #6
  %num510 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %num510 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num510, align 8
  %call512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.29, i32 noundef %43, i32 noundef %43) #7
  br label %if.end576

if.end576:                                        ; preds = %do.end508, %do.body499.if.end576_crit_edge, %if.end495.if.end576_crit_edge
  %and577 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and577)
  %tobool578.not = icmp eq i32 %and577, 0
  br i1 %tobool578.not, label %if.end576.if.end657_crit_edge, label %do.body580

if.end576.if.end657_crit_edge:                    ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end657

do.body580:                                       ; preds = %if.end576
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %switch1127 = icmp ult i32 %45, 4
  br i1 %switch1127, label %do.body580.if.end657_crit_edge, label %do.end589

do.body580.if.end657_crit_edge:                   ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end657

do.end589:                                        ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #6
  %num591 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %num591 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num591, align 8
  %call593 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.29, i32 noundef %47, i32 noundef %47) #7
  br label %if.end657

if.end657:                                        ; preds = %do.end589, %do.body580.if.end657_crit_edge, %if.end576.if.end657_crit_edge
  %and658 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and658)
  %tobool659.not = icmp eq i32 %and658, 0
  br i1 %tobool659.not, label %if.end657.if.end738_crit_edge, label %do.body661

if.end657.if.end738_crit_edge:                    ; preds = %if.end657
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end738

do.body661:                                       ; preds = %if.end657
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %switch1130 = icmp ult i32 %49, 4
  br i1 %switch1130, label %do.body661.if.end738_crit_edge, label %do.end670

do.body661.if.end738_crit_edge:                   ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end738

do.end670:                                        ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #6
  %num672 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %num672 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num672, align 8
  %call674 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.29, i32 noundef %51, i32 noundef %51) #7
  br label %if.end738

if.end738:                                        ; preds = %do.end670, %do.body661.if.end738_crit_edge, %if.end657.if.end738_crit_edge
  %and739 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and739)
  %tobool740.not = icmp eq i32 %and739, 0
  br i1 %tobool740.not, label %if.end738.if.end819_crit_edge, label %do.body742

if.end738.if.end819_crit_edge:                    ; preds = %if.end738
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end819

do.body742:                                       ; preds = %if.end738
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %switch1133 = icmp ult i32 %53, 4
  br i1 %switch1133, label %do.body742.do.end818_crit_edge, label %do.end751

do.body742.do.end818_crit_edge:                   ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end818

do.end751:                                        ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #6
  %num753 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %num753 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num753, align 8
  %call755 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.29, i32 noundef %55, i32 noundef %55) #7
  br label %do.end818

do.end818:                                        ; preds = %do.end751, %do.body742.do.end818_crit_edge
  %sbuf_status = getelementptr i8, ptr %work, i32 256
  %56 = ptrtoint ptr %sbuf_status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %sbuf_status, align 4
  %hif_event = getelementptr i8, ptr %work, i32 44
  %57 = ptrtoint ptr %hif_event to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16384, ptr %hif_event, align 4
  %hif_opdone_wq = getelementptr i8, ptr %work, i32 48
  tail call void @__wake_up(ptr noundef %hif_opdone_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %if.end819

if.end819:                                        ; preds = %do.end818, %if.end738.if.end819_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_pcmcia_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_hif_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_evmgr_exit(ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %5) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %hif_evm_work = getelementptr inbounds %struct.mantis_ca, ptr %ca, i32 0, i32 1
  %call61 = tail call zeroext i1 @flush_work(ptr noundef %hif_evm_work) #4
  tail call void @mantis_hif_exit(ptr noundef %ca) #4
  tail call void @mantis_pcmcia_exit(ptr noundef %ca) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_hif_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_pcmcia_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_event_cam_plugin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_camchange_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_event_cam_unplug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_evmgr_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_evmgr_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_evmgr_init._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_evmgr_init._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_evmgr_init._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_evmgr_init._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_evmgr_init._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_evmgr_init._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_evmgr_init._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_evmgr_init._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mantis_evmgr_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 90, i32 2}
!19 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 101, i32 2}
!22 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mantis_evmgr_exit._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mantis_evmgr_exit._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mantis_evmgr_exit._entry.17, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mantis_evmgr_exit._entry_ptr.19, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !21, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mantis_evmgr_exit._entry.20, !21, !"_entry", i1 false, i1 false}
!30 = !{ptr @mantis_evmgr_exit._entry_ptr.22, !21, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.24, !21, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mantis_evmgr_exit._entry.23, !21, !"_entry", i1 false, i1 false}
!33 = !{ptr @mantis_evmgr_exit._entry_ptr.25, !21, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mantis_evmgr_exit._entry.26, !21, !"_entry", i1 false, i1 false}
!35 = !{ptr @mantis_evmgr_exit._entry_ptr.27, !21, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 38, i32 4}
!38 = !{ptr @.str.29, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mantis_hifevm_work._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mantis_hifevm_work._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.31, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mantis_hifevm_work._entry.30, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @mantis_hifevm_work._entry_ptr.32, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.34, !37, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mantis_hifevm_work._entry.33, !37, !"_entry", i1 false, i1 false}
!46 = !{ptr @mantis_hifevm_work._entry_ptr.35, !37, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.37, !37, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mantis_hifevm_work._entry.36, !37, !"_entry", i1 false, i1 false}
!49 = !{ptr @mantis_hifevm_work._entry_ptr.38, !37, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mantis_hifevm_work._entry.39, !37, !"_entry", i1 false, i1 false}
!51 = !{ptr @mantis_hifevm_work._entry_ptr.40, !37, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.42, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 47, i32 4}
!54 = !{ptr @mantis_hifevm_work._entry.41, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mantis_hifevm_work._entry_ptr.43, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.45, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mantis_hifevm_work._entry.44, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @mantis_hifevm_work._entry_ptr.46, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.48, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mantis_hifevm_work._entry.47, !53, !"_entry", i1 false, i1 false}
!61 = !{ptr @mantis_hifevm_work._entry_ptr.49, !53, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.51, !53, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mantis_hifevm_work._entry.50, !53, !"_entry", i1 false, i1 false}
!64 = !{ptr @mantis_hifevm_work._entry_ptr.52, !53, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mantis_hifevm_work._entry.53, !53, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_hifevm_work._entry_ptr.54, !53, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.56, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 57, i32 3}
!69 = !{ptr @mantis_hifevm_work._entry.55, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mantis_hifevm_work._entry_ptr.57, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.59, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mantis_hifevm_work._entry.58, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @mantis_hifevm_work._entry_ptr.60, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.62, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mantis_hifevm_work._entry.61, !68, !"_entry", i1 false, i1 false}
!76 = !{ptr @mantis_hifevm_work._entry_ptr.63, !68, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.65, !68, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mantis_hifevm_work._entry.64, !68, !"_entry", i1 false, i1 false}
!79 = !{ptr @mantis_hifevm_work._entry_ptr.66, !68, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mantis_hifevm_work._entry.67, !68, !"_entry", i1 false, i1 false}
!81 = !{ptr @mantis_hifevm_work._entry_ptr.68, !68, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.70, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 60, i32 3}
!84 = !{ptr @mantis_hifevm_work._entry.69, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mantis_hifevm_work._entry_ptr.71, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.73, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mantis_hifevm_work._entry.72, !83, !"_entry", i1 false, i1 false}
!88 = !{ptr @mantis_hifevm_work._entry_ptr.74, !83, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.76, !83, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mantis_hifevm_work._entry.75, !83, !"_entry", i1 false, i1 false}
!91 = !{ptr @mantis_hifevm_work._entry_ptr.77, !83, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.79, !83, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mantis_hifevm_work._entry.78, !83, !"_entry", i1 false, i1 false}
!94 = !{ptr @mantis_hifevm_work._entry_ptr.80, !83, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @mantis_hifevm_work._entry.81, !83, !"_entry", i1 false, i1 false}
!96 = !{ptr @mantis_hifevm_work._entry_ptr.82, !83, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.84, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 63, i32 3}
!99 = !{ptr @mantis_hifevm_work._entry.83, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mantis_hifevm_work._entry_ptr.85, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.87, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_hifevm_work._entry.86, !98, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_hifevm_work._entry_ptr.88, !98, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.90, !98, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mantis_hifevm_work._entry.89, !98, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_hifevm_work._entry_ptr.91, !98, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.93, !98, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mantis_hifevm_work._entry.92, !98, !"_entry", i1 false, i1 false}
!109 = !{ptr @mantis_hifevm_work._entry_ptr.94, !98, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @mantis_hifevm_work._entry.95, !98, !"_entry", i1 false, i1 false}
!111 = !{ptr @mantis_hifevm_work._entry_ptr.96, !98, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.98, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 66, i32 3}
!114 = !{ptr @mantis_hifevm_work._entry.97, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mantis_hifevm_work._entry_ptr.99, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.101, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mantis_hifevm_work._entry.100, !113, !"_entry", i1 false, i1 false}
!118 = !{ptr @mantis_hifevm_work._entry_ptr.102, !113, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.104, !113, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mantis_hifevm_work._entry.103, !113, !"_entry", i1 false, i1 false}
!121 = !{ptr @mantis_hifevm_work._entry_ptr.105, !113, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.107, !113, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @mantis_hifevm_work._entry.106, !113, !"_entry", i1 false, i1 false}
!124 = !{ptr @mantis_hifevm_work._entry_ptr.108, !113, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @mantis_hifevm_work._entry.109, !113, !"_entry", i1 false, i1 false}
!126 = !{ptr @mantis_hifevm_work._entry_ptr.110, !113, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.112, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 69, i32 3}
!129 = !{ptr @mantis_hifevm_work._entry.111, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mantis_hifevm_work._entry_ptr.113, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.115, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mantis_hifevm_work._entry.114, !128, !"_entry", i1 false, i1 false}
!133 = !{ptr @mantis_hifevm_work._entry_ptr.116, !128, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.118, !128, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mantis_hifevm_work._entry.117, !128, !"_entry", i1 false, i1 false}
!136 = !{ptr @mantis_hifevm_work._entry_ptr.119, !128, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.121, !128, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mantis_hifevm_work._entry.120, !128, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_hifevm_work._entry_ptr.122, !128, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @mantis_hifevm_work._entry.123, !128, !"_entry", i1 false, i1 false}
!141 = !{ptr @mantis_hifevm_work._entry_ptr.124, !128, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.126, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 72, i32 3}
!144 = !{ptr @mantis_hifevm_work._entry.125, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mantis_hifevm_work._entry_ptr.127, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.129, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_hifevm_work._entry.128, !143, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_hifevm_work._entry_ptr.130, !143, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.132, !143, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mantis_hifevm_work._entry.131, !143, !"_entry", i1 false, i1 false}
!151 = !{ptr @mantis_hifevm_work._entry_ptr.133, !143, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.135, !143, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mantis_hifevm_work._entry.134, !143, !"_entry", i1 false, i1 false}
!154 = !{ptr @mantis_hifevm_work._entry_ptr.136, !143, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mantis_hifevm_work._entry.137, !143, !"_entry", i1 false, i1 false}
!156 = !{ptr @mantis_hifevm_work._entry_ptr.138, !143, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.140, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 75, i32 3}
!159 = !{ptr @mantis_hifevm_work._entry.139, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mantis_hifevm_work._entry_ptr.141, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.143, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mantis_hifevm_work._entry.142, !158, !"_entry", i1 false, i1 false}
!163 = !{ptr @mantis_hifevm_work._entry_ptr.144, !158, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.146, !158, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mantis_hifevm_work._entry.145, !158, !"_entry", i1 false, i1 false}
!166 = !{ptr @mantis_hifevm_work._entry_ptr.147, !158, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.149, !158, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mantis_hifevm_work._entry.148, !158, !"_entry", i1 false, i1 false}
!169 = !{ptr @mantis_hifevm_work._entry_ptr.150, !158, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @mantis_hifevm_work._entry.151, !158, !"_entry", i1 false, i1 false}
!171 = !{ptr @mantis_hifevm_work._entry_ptr.152, !158, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.154, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/mantis/mantis_evm.c", i32 78, i32 3}
!174 = !{ptr @mantis_hifevm_work._entry.153, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @mantis_hifevm_work._entry_ptr.155, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.157, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @mantis_hifevm_work._entry.156, !173, !"_entry", i1 false, i1 false}
!178 = !{ptr @mantis_hifevm_work._entry_ptr.158, !173, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.160, !173, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mantis_hifevm_work._entry.159, !173, !"_entry", i1 false, i1 false}
!181 = !{ptr @mantis_hifevm_work._entry_ptr.161, !173, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.163, !173, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mantis_hifevm_work._entry.162, !173, !"_entry", i1 false, i1 false}
!184 = !{ptr @mantis_hifevm_work._entry_ptr.164, !173, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @mantis_hifevm_work._entry.165, !173, !"_entry", i1 false, i1 false}
!186 = !{ptr @mantis_hifevm_work._entry_ptr.166, !173, !"_entry_ptr", i1 false, i1 false}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 4226165}
!197 = !{i64 2157764856}
!198 = !{i64 2157776666}
!199 = !{i64 4225747}
!200 = !{i64 2157788624}
