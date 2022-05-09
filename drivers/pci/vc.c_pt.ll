; ModuleID = '/llk/IR_all_yes/drivers/pci/vc.c_pt.bc'
source_filename = "../drivers/pci/vc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.72 = type { i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@vc_caps = internal constant { [3 x %struct.anon.72], [40 x i8] } { [3 x %struct.anon.72] [%struct.anon.72 { i16 8, ptr @.str.10 }, %struct.anon.72 { i16 2, ptr @.str.11 }, %struct.anon.72 { i16 9, ptr @.str.12 }], [40 x i8] zeroinitializer }, align 32
@pci_save_vc_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s buffer not found in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_save_vc_state\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drivers/pci/vc.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_save_vc_state._entry_ptr = internal global ptr @pci_save_vc_state._entry, section ".printk_index", align 4
@pci_save_vc_state._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s save unsuccessful %s\0A\00", [39 x i8] zeroinitializer }, align 32
@pci_save_vc_state._entry_ptr.7 = internal global ptr @pci_save_vc_state._entry.5, section ".printk_index", align 4
@pci_allocate_vc_save_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to preallocate %s save buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pci_allocate_vc_save_buffers\00", [35 x i8] zeroinitializer }, align 32
@pci_allocate_vc_save_buffers._entry_ptr = internal global ptr @pci_allocate_vc_save_buffers._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MFVC\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VC\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VC9\00", [28 x i8] zeroinitializer }, align 32
@pci_vc_do_save_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VC save buffer size does not match @0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_vc_do_save_buffer\00", [42 x i8] zeroinitializer }, align 32
@pci_vc_do_save_buffer._entry_ptr = internal global ptr @pci_vc_do_save_buffer._entry, section ".printk_index", align 4
@pci_vc_load_arb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VC arbitration table failed to load\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_vc_load_arb_table\00", [42 x i8] zeroinitializer }, align 32
@pci_vc_load_arb_table._entry_ptr = internal global ptr @pci_vc_load_arb_table._entry, section ".printk_index", align 4
@pci_vc_load_port_arb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"VC%d port arbitration table failed to load\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_vc_load_port_arb_table\00", [37 x i8] zeroinitializer }, align 32
@pci_vc_load_port_arb_table._entry_ptr = internal global ptr @pci_vc_load_port_arb_table._entry, section ".printk_index", align 4
@pci_vc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VC%d negotiation stuck pending\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_vc_enable\00", [18 x i8] zeroinitializer }, align 32
@pci_vc_enable._entry_ptr = internal global ptr @pci_vc_enable._entry, section ".printk_index", align 4
@pci_vc_enable._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_vc_enable._entry_ptr.22 = internal global ptr @pci_vc_enable._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"vc_caps\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 341, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 366, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 373, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 425, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 341, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 342, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 343, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 196, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 59, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 163, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private constant [20 x i8] c"../drivers/pci/vc.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 167, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @pci_allocate_vc_save_buffers._entry, ptr @pci_allocate_vc_save_buffers._entry_ptr, ptr @pci_save_vc_state._entry, ptr @pci_save_vc_state._entry.5, ptr @pci_save_vc_state._entry_ptr, ptr @pci_save_vc_state._entry_ptr.7, ptr @pci_vc_do_save_buffer._entry, ptr @pci_vc_do_save_buffer._entry_ptr, ptr @pci_vc_enable._entry, ptr @pci_vc_enable._entry.21, ptr @pci_vc_enable._entry_ptr, ptr @pci_vc_enable._entry_ptr.22, ptr @pci_vc_load_arb_table._entry, ptr @pci_vc_load_arb_table._entry_ptr, ptr @pci_vc_load_port_arb_table._entry, ptr @pci_vc_load_port_arb_table._entry_ptr, ptr @vc_caps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_save_vc_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_save_vc_state._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_allocate_vc_save_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_vc_do_save_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_vc_load_arb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_vc_load_port_arb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_vc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_vc_enable._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_save_vc_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 8) #4
  %conv1 = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 8) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup22.sink.split_crit_edge, label %if.end9

if.end.cleanup22.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1, ptr noundef nonnull %call4, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.for.inc_crit_edge, label %if.end9.cleanup22.sink.split_crit_edge

if.end9.cleanup22.sink.split_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call.1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 2) #4
  %conv1.1 = zext i16 %call.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.1)
  %tobool.not.1 = icmp eq i16 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call4.1 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 2) #4
  %tobool5.not.1 = icmp eq ptr %call4.1, null
  br i1 %tobool5.not.1, label %if.end.1.cleanup22.sink.split_crit_edge, label %if.end9.1

if.end.1.cleanup22.sink.split_crit_edge:          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9.1:                                        ; preds = %if.end.1
  %call10.1 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.1, ptr noundef nonnull %call4.1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %if.end9.1.for.inc.1_crit_edge, label %if.end9.1.cleanup22.sink.split_crit_edge

if.end9.1.cleanup22.sink.split_crit_edge:         ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call.2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 9) #4
  %conv1.2 = zext i16 %call.2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.2)
  %tobool.not.2 = icmp eq i16 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.cleanup22_crit_edge, label %if.end.2

for.inc.1.cleanup22_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

if.end.2:                                         ; preds = %for.inc.1
  %call4.2 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 9) #4
  %tobool5.not.2 = icmp eq ptr %call4.2, null
  br i1 %tobool5.not.2, label %if.end.2.cleanup22.sink.split_crit_edge, label %if.end9.2

if.end.2.cleanup22.sink.split_crit_edge:          ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9.2:                                        ; preds = %if.end.2
  %call10.2 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.2, ptr noundef nonnull %call4.2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %tobool11.not.2 = icmp eq i32 %call10.2, 0
  br i1 %tobool11.not.2, label %if.end9.2.cleanup22_crit_edge, label %if.end9.2.cleanup22.sink.split_crit_edge

if.end9.2.cleanup22.sink.split_crit_edge:         ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22.sink.split

if.end9.2.cleanup22_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

cleanup22.sink.split:                             ; preds = %if.end9.2.cleanup22.sink.split_crit_edge, %if.end.2.cleanup22.sink.split_crit_edge, %if.end9.1.cleanup22.sink.split_crit_edge, %if.end.1.cleanup22.sink.split_crit_edge, %if.end9.cleanup22.sink.split_crit_edge, %if.end.cleanup22.sink.split_crit_edge
  %i.039.lcssa.sink = phi i32 [ 0, %if.end.cleanup22.sink.split_crit_edge ], [ 1, %if.end.1.cleanup22.sink.split_crit_edge ], [ 2, %if.end.2.cleanup22.sink.split_crit_edge ], [ 0, %if.end9.cleanup22.sink.split_crit_edge ], [ 1, %if.end9.1.cleanup22.sink.split_crit_edge ], [ 2, %if.end9.2.cleanup22.sink.split_crit_edge ]
  %.str.sink = phi ptr [ @.str, %if.end.cleanup22.sink.split_crit_edge ], [ @.str, %if.end.1.cleanup22.sink.split_crit_edge ], [ @.str, %if.end.2.cleanup22.sink.split_crit_edge ], [ @.str.6, %if.end9.cleanup22.sink.split_crit_edge ], [ @.str.6, %if.end9.1.cleanup22.sink.split_crit_edge ], [ @.str.6, %if.end9.2.cleanup22.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ -12, %if.end.cleanup22.sink.split_crit_edge ], [ -12, %if.end.1.cleanup22.sink.split_crit_edge ], [ -12, %if.end.2.cleanup22.sink.split_crit_edge ], [ %call10, %if.end9.cleanup22.sink.split_crit_edge ], [ %call10.1, %if.end9.1.cleanup22.sink.split_crit_edge ], [ %call10.2, %if.end9.2.cleanup22.sink.split_crit_edge ]
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %name = getelementptr [3 x %struct.anon.72], ptr @vc_caps, i32 0, i32 %i.039.lcssa.sink, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull %.str.sink, ptr noundef %1, ptr noundef nonnull @.str.1) #7
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup22.sink.split, %if.end9.2.cleanup22_crit_edge, %for.inc.1.cleanup22_crit_edge
  %retval.2 = phi i32 [ 0, %if.end9.2.cleanup22_crit_edge ], [ 0, %for.inc.1.cleanup22_crit_edge ], [ %retval.2.ph, %cleanup22.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %pos, ptr noundef %save_state, i1 noundef zeroext %save) unnamed_addr #0 align 64 {
entry:
  %ctrl.i252 = alloca i32, align 4
  %header.i = alloca i32, align 4
  %cap1.i = alloca i32, align 4
  %ctrl2.i = alloca i32, align 4
  %ctrl.i244 = alloca i32, align 4
  %ctrl.i = alloca i16, align 2
  %cap1 = alloca i32, align 4
  %cap224 = alloca i32, align 4
  %cap69 = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap1) #4
  %0 = ptrtoint ptr %cap1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap1, align 4, !annotation !57
  %tobool.not = icmp eq ptr %save_state, null
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %save_state, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %data
  %tobool1.not = icmp eq ptr %spec.select, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.pci_cap_saved_state, ptr %save_state, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %call = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %pos, ptr noundef null, i1 noundef zeroext %save)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call)
  %cmp.not = icmp eq i32 %2, %call
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %pos) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add = add i32 %pos, 4
  %call5 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %cap1) #4
  %3 = ptrtoint ptr %cap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap1, align 4
  %conv = and i32 %4, 7
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 4
  %conv7 = and i8 %6, 7
  %and8 = lshr i32 %4, 10
  %shr9 = and i32 %and8, 3
  br i1 %tobool1.not, label %if.end.if.end20_crit_edge, label %if.then12

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then12:                                        ; preds = %if.end
  %add15 = add i32 %pos, 12
  br i1 %save, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add15, ptr noundef nonnull %spec.select) #4
  br label %if.end19

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %spec.select, align 2
  %call18 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add15, i16 noundef zeroext %8) #4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %add.ptr = getelementptr i8, ptr %spec.select, i32 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end.if.end20_crit_edge
  %buf.0 = phi ptr [ %add.ptr, %if.end19 ], [ null, %if.end.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %tobool22.not = icmp eq i8 %conv7, 0
  br i1 %tobool22.not, label %if.end20.if.end64_crit_edge, label %if.then23

if.end20.if.end64_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap224) #4
  %9 = ptrtoint ptr %cap224 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cap224, align 4, !annotation !57
  %add25 = add i32 %pos, 8
  %call26 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add25, ptr noundef nonnull %cap224) #4
  %10 = ptrtoint ptr %cap224 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap224, align 4
  %12 = lshr i32 %11, 20
  %mul = and i32 %12, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool29.not = icmp eq i32 %mul, 0
  br i1 %tobool29.not, label %if.then23.if.end63_crit_edge, label %if.then30

if.then23.if.end63_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then30:                                        ; preds = %if.then23
  %and32 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else35, label %if.then30.if.end45_crit_edge

if.then30.if.end45_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.else35:                                        ; preds = %if.then30
  %and36 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else39, label %if.else35.if.end45_crit_edge

if.else35.if.end45_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.else39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  %and40 = shl i32 %11, 4
  %13 = and i32 %and40, 32
  br label %if.end45

if.end45:                                         ; preds = %if.else39, %if.else35.if.end45_crit_edge, %if.then30.if.end45_crit_edge
  %vcarb_phases.0 = phi i32 [ 128, %if.then30.if.end45_crit_edge ], [ 64, %if.else35.if.end45_crit_edge ], [ %13, %if.else39 ]
  %narrow = add nuw nsw i8 %conv7, 1
  %add47 = zext i8 %narrow to i32
  %mul48 = mul nuw nsw i32 %vcarb_phases.0, %add47
  %div221 = lshr exact i32 %mul48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul48)
  %tobool50.not = icmp eq i32 %mul48, 0
  br i1 %tobool50.not, label %if.end45.if.end61_crit_edge, label %land.lhs.true51

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

land.lhs.true51:                                  ; preds = %if.end45
  %tobool52.not = icmp eq ptr %buf.0, null
  br i1 %tobool52.not, label %land.lhs.true51.if.end61_crit_edge, label %if.then53

land.lhs.true51.if.end61_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then53:                                        ; preds = %land.lhs.true51
  %add54 = add i32 %mul, %pos
  %div55222 = lshr exact i32 %mul48, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.then53
  %i.014.i = phi i32 [ 0, %if.then53 ], [ %i.014.i.be, %for.body.i.backedge ]
  %buf.addr.012.i = phi ptr [ %buf.0, %if.then53 ], [ %buf.addr.012.i.be, %for.body.i.backedge ]
  %mul.i = shl i32 %i.014.i, 2
  %add.i = add i32 %add54, %mul.i
  br i1 %save, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %for.body.i
  %call.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i, ptr noundef %buf.addr.012.i) #4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %div55222)
  %exitcond.not.i = icmp eq i32 %inc.i, %div55222
  br i1 %exitcond.not.i, label %for.inc.i.if.end59_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.backedge

for.inc.i.if.end59_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.014.i.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc.i261, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %buf.addr.012.i.be = getelementptr i32, ptr %buf.addr.012.i, i32 1
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %14 = ptrtoint ptr %buf.addr.012.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf.addr.012.i, align 4
  %call3.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add.i, i32 noundef %15) #4
  %inc.i261 = add nuw nsw i32 %i.014.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i261, i32 %div55222)
  %exitcond.not.i263 = icmp eq i32 %inc.i261, %div55222
  br i1 %exitcond.not.i263, label %if.then58, label %for.inc.i.thread.for.body.i.backedge_crit_edge

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.backedge

if.then58:                                        ; preds = %for.inc.i.thread
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #4
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !57
  %add.i226 = add i32 %pos, 12
  %call.i227 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i226, ptr noundef nonnull %ctrl.i) #4
  %17 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ctrl.i, align 2
  %19 = or i16 %18, 1
  %call3.i228 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add.i226, i16 noundef zeroext %19) #4
  %add4.i = add i32 %pos, 14
  %call5.i = call i32 @pci_wait_for_pending(ptr noundef %dev, i32 noundef %add4.i, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then58.pci_vc_load_arb_table.exit_crit_edge

if.then58.pci_vc_load_arb_table.exit_crit_edge:   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_load_arb_table.exit

do.end.i:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.15) #7
  br label %pci_vc_load_arb_table.exit

pci_vc_load_arb_table.exit:                       ; preds = %do.end.i, %if.then58.pci_vc_load_arb_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #4
  br label %if.end59

if.end59:                                         ; preds = %pci_vc_load_arb_table.exit, %for.inc.i.if.end59_crit_edge
  %add.ptr60 = getelementptr i8, ptr %buf.0, i32 %div221
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %land.lhs.true51.if.end61_crit_edge, %if.end45.if.end61_crit_edge
  %buf.1 = phi ptr [ %add.ptr60, %if.end59 ], [ null, %land.lhs.true51.if.end61_crit_edge ], [ %buf.0, %if.end45.if.end61_crit_edge ]
  %add62 = or i32 %div221, 4
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.then23.if.end63_crit_edge
  %len.0 = phi i32 [ %add62, %if.end61 ], [ 4, %if.then23.if.end63_crit_edge ]
  %buf.2 = phi ptr [ %buf.1, %if.end61 ], [ %buf.0, %if.then23.if.end63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap224) #4
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end20.if.end64_crit_edge
  %len.1 = phi i32 [ %len.0, %if.end63 ], [ 4, %if.end20.if.end64_crit_edge ]
  %buf.3 = phi ptr [ %buf.2, %if.end63 ], [ %buf.0, %if.end20.if.end64_crit_edge ]
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end136.for.body_crit_edge, %if.end64
  %buf.4273 = phi ptr [ %buf.3, %if.end64 ], [ %buf.7, %if.end136.for.body_crit_edge ]
  %len.2272 = phi i32 [ %len.1, %if.end64 ], [ %add137, %if.end136.for.body_crit_edge ]
  %i.0267 = phi i32 [ 0, %if.end64 ], [ %inc, %if.end136.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap69) #4
  %20 = ptrtoint ptr %cap69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %cap69, align 4, !annotation !57
  %mul71 = mul nuw nsw i32 %i.0267, 12
  %add70 = add i32 %mul71, %pos
  %add72 = add i32 %add70, 16
  %call73 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add72, ptr noundef nonnull %cap69) #4
  %21 = ptrtoint ptr %cap69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap69, align 4
  %23 = lshr i32 %22, 20
  %mul76 = and i32 %23, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul76)
  %tobool77.not = icmp eq i32 %mul76, 0
  br i1 %tobool77.not, label %for.body.if.end112_crit_edge, label %if.then78

for.body.if.end112_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.then78:                                        ; preds = %for.body
  %and80 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else83, label %if.then78.if.end98_crit_edge

if.then78.if.end98_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.else83:                                        ; preds = %if.then78
  %and84 = and i32 %22, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else87, label %if.else83.if.end98_crit_edge

if.else83.if.end98_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.else87:                                        ; preds = %if.else83
  %and88 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else91, label %if.else87.if.end98_crit_edge

if.else87.if.end98_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.else91:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #6
  %and92 = shl i32 %22, 4
  %24 = and i32 %and92, 32
  br label %if.end98

if.end98:                                         ; preds = %if.else91, %if.else87.if.end98_crit_edge, %if.else83.if.end98_crit_edge, %if.then78.if.end98_crit_edge
  %parb_phases.0 = phi i32 [ 256, %if.then78.if.end98_crit_edge ], [ 128, %if.else83.if.end98_crit_edge ], [ 64, %if.else87.if.end98_crit_edge ], [ %24, %if.else91 ]
  %mul100 = shl i32 %parb_phases.0, %shr9
  %div101219 = lshr exact i32 %mul100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul100)
  %tobool102.not = icmp eq i32 %mul100, 0
  br i1 %tobool102.not, label %if.end98.if.end110_crit_edge, label %land.lhs.true103

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

land.lhs.true103:                                 ; preds = %if.end98
  %tobool104.not = icmp eq ptr %buf.4273, null
  br i1 %tobool104.not, label %land.lhs.true103.if.end110_crit_edge, label %if.then105

land.lhs.true103.if.end110_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

if.then105:                                       ; preds = %land.lhs.true103
  %add106 = add i32 %mul76, %pos
  %div107220 = lshr exact i32 %mul100, 5
  br label %for.body.i234

for.body.i234:                                    ; preds = %for.inc.i242.for.body.i234_crit_edge, %if.then105
  %i.014.i230 = phi i32 [ %inc.i239, %for.inc.i242.for.body.i234_crit_edge ], [ 0, %if.then105 ]
  %buf.addr.012.i231 = phi ptr [ %incdec.ptr.i240, %for.inc.i242.for.body.i234_crit_edge ], [ %buf.4273, %if.then105 ]
  %mul.i232 = shl i32 %i.014.i230, 2
  %add.i233 = add i32 %add106, %mul.i232
  br i1 %save, label %if.then.i236, label %if.else.i238

if.then.i236:                                     ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #6
  %call.i235 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i233, ptr noundef %buf.addr.012.i231) #4
  br label %for.inc.i242

if.else.i238:                                     ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %buf.addr.012.i231 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf.addr.012.i231, align 4
  %call3.i237 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add.i233, i32 noundef %26) #4
  br label %for.inc.i242

for.inc.i242:                                     ; preds = %if.else.i238, %if.then.i236
  %inc.i239 = add nuw nsw i32 %i.014.i230, 1
  %incdec.ptr.i240 = getelementptr i32, ptr %buf.addr.012.i231, i32 1
  %exitcond.not.i241 = icmp eq i32 %inc.i239, %div107220
  br i1 %exitcond.not.i241, label %pci_vc_save_restore_dwords.exit243, label %for.inc.i242.for.body.i234_crit_edge

for.inc.i242.for.body.i234_crit_edge:             ; preds = %for.inc.i242
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i234

pci_vc_save_restore_dwords.exit243:               ; preds = %for.inc.i242
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr109 = getelementptr i8, ptr %buf.4273, i32 %div101219
  br label %if.end110

if.end110:                                        ; preds = %pci_vc_save_restore_dwords.exit243, %land.lhs.true103.if.end110_crit_edge, %if.end98.if.end110_crit_edge
  %buf.5 = phi ptr [ %add.ptr109, %pci_vc_save_restore_dwords.exit243 ], [ null, %land.lhs.true103.if.end110_crit_edge ], [ %buf.4273, %if.end98.if.end110_crit_edge ]
  %add111 = add i32 %div101219, %len.2272
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %for.body.if.end112_crit_edge
  %len.3 = phi i32 [ %add111, %if.end110 ], [ %len.2272, %for.body.if.end112_crit_edge ]
  %buf.6 = phi ptr [ %buf.5, %if.end110 ], [ %buf.4273, %for.body.if.end112_crit_edge ]
  %tobool113.not = icmp eq ptr %buf.6, null
  br i1 %tobool113.not, label %if.end112.if.end136_crit_edge, label %if.then114

if.end112.if.end136_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

if.then114:                                       ; preds = %if.end112
  %add117 = add i32 %add70, 20
  br i1 %save, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  %call120 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add117, ptr noundef nonnull %buf.6) #4
  br label %if.end134

if.else121:                                       ; preds = %if.then114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %27 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tmp, align 4, !annotation !57
  %28 = ptrtoint ptr %buf.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf.6, align 4
  %call122 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add117, ptr noundef nonnull %tmp) #4
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp, align 4
  %and123 = and i32 %31, -2147483648
  %and124 = and i32 %29, 2147483647
  %or = or i32 %and123, %and124
  store i32 %or, ptr %tmp, align 4
  %call125 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add117, i32 noundef %or) #4
  %and126 = and i32 %29, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else121.if.end129_crit_edge, label %if.then128

if.else121.if.end129_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end129

if.then128:                                       ; preds = %if.else121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i244) #4
  %32 = ptrtoint ptr %ctrl.i244 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %ctrl.i244, align 4, !annotation !57
  %add4.i247 = add i32 %add70, 26
  %call.i248 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add117, ptr noundef nonnull %ctrl.i244) #4
  %33 = ptrtoint ptr %ctrl.i244 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl.i244, align 4
  %or.i = or i32 %34, 65536
  %call5.i249 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add117, i32 noundef %or.i) #4
  %call6.i = call i32 @pci_wait_for_pending(ptr noundef %dev, i32 noundef %add4.i247, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i250 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i250, label %do.end.i251, label %if.then128.pci_vc_load_port_arb_table.exit_crit_edge

if.then128.pci_vc_load_port_arb_table.exit_crit_edge: ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_load_port_arb_table.exit

do.end.i251:                                      ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.17, i32 noundef %i.0267) #7
  br label %pci_vc_load_port_arb_table.exit

pci_vc_load_port_arb_table.exit:                  ; preds = %do.end.i251, %if.then128.pci_vc_load_port_arb_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i244) #4
  br label %if.end129

if.end129:                                        ; preds = %pci_vc_load_port_arb_table.exit, %if.else121.if.end129_crit_edge
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp, align 4
  %xor = xor i32 %36, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor)
  %tobool131.not = icmp sgt i32 %xor, -1
  br i1 %tobool131.not, label %if.end129.if.end133_crit_edge, label %if.then132

if.end129.if.end133_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then132:                                       ; preds = %if.end129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i252) #4
  %37 = ptrtoint ptr %ctrl.i252 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %ctrl.i252, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i) #4
  %38 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %header.i, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap1.i) #4
  %39 = ptrtoint ptr %cap1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %cap1.i, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2.i) #4
  %40 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %ctrl2.i, align 4, !annotation !57
  %41 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i.not.i = icmp eq i8 %42, 0
  br i1 %tobool.i.not.i, label %if.then132.pci_vc_enable.exit_crit_edge, label %lor.lhs.false.i

if.then132.pci_vc_enable.exit_crit_edge:          ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_enable.exit

lor.lhs.false.i:                                  ; preds = %if.then132
  %43 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %45 = lshr i16 %44, 4
  %46 = and i16 %45, 15
  %47 = zext i16 %46 to i32
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %lor.lhs.false.i.pci_vc_enable.exit_crit_edge [
    i32 4, label %lor.lhs.false.i.if.end.i_crit_edge
    i32 6, label %lor.lhs.false.i.if.end.i_crit_edge286
    i32 8, label %lor.lhs.false.i.if.end.i_crit_edge287
  ]

lor.lhs.false.i.if.end.i_crit_edge287:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge286:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lor.lhs.false.i.pci_vc_enable.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_enable.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge286, %lor.lhs.false.i.if.end.i_crit_edge287
  %add5.i = add i32 %add70, 26
  %call6.i255 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add117, ptr noundef nonnull %ctrl.i252) #4
  %49 = ptrtoint ptr %ctrl.i252 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl.i252, align 4
  %and.i = and i32 %50, 117440512
  %call7.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos, ptr noundef nonnull %header.i) #4
  %51 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %header.i, align 4
  %and8.i = and i32 %52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and8.i)
  %cmp.i = icmp eq i32 %and8.i, 9
  br i1 %cmp.i, label %if.end.i.enable.i_crit_edge, label %lor.lhs.false9.i

if.end.i.enable.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %lor.lhs.false9.i.enable.i_crit_edge, label %if.end12.i

lor.lhs.false9.i.enable.i_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

if.end12.i:                                       ; preds = %lor.lhs.false9.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %self.i, align 4
  %call14.i = call zeroext i16 @pci_find_ext_capability(ptr noundef %58, i32 noundef 2) #4
  %conv.i = zext i16 %call14.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call14.i)
  %tobool.not.i256 = icmp eq i16 %call14.i, 0
  br i1 %tobool.not.i256, label %if.end12.i.enable.i_crit_edge, label %if.end16.i

if.end12.i.enable.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

if.end16.i:                                       ; preds = %if.end12.i
  %59 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i, align 8
  %self18.i = getelementptr inbounds %struct.pci_bus, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %self18.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %self18.i, align 4
  %add19.i = add nuw nsw i32 %conv.i, 4
  %call20.i = call i32 @pci_read_config_dword(ptr noundef %62, i32 noundef %add19.i, ptr noundef nonnull %cap1.i) #4
  %63 = ptrtoint ptr %cap1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cap1.i, align 4
  %and21.i = and i32 %64, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp23.not115.i = icmp eq i32 %and21.i, 0
  br i1 %cmp23.not115.i, label %if.end16.i.enable.i_crit_edge, label %for.body.preheader.i

if.end16.i.enable.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.preheader.i:                             ; preds = %if.end16.i
  %65 = mul nuw nsw i32 %and21.i, 12
  %66 = add nuw nsw i32 %conv.i, 26
  %67 = add nuw nsw i32 %66, %65
  %add25.i = add nuw nsw i32 %conv.i, 12
  %add27.i = add nuw nsw i32 %conv.i, 32
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 8
  %self32.i = getelementptr inbounds %struct.pci_bus, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %self32.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %self32.i, align 4
  %call33.i = call i32 @pci_read_config_dword(ptr noundef %71, i32 noundef %add27.i, ptr noundef nonnull %ctrl2.i) #4
  %72 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ctrl2.i, align 4
  %and34.i = and i32 %73, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i, i32 %and.i)
  %cmp35.i = icmp eq i32 %and34.i, %and.i
  br i1 %cmp35.i, label %for.body.preheader.i.for.end.i_crit_edge, label %for.cond.i

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and21.i)
  %exitcond.i = icmp eq i32 %and21.i, 1
  br i1 %exitcond.i, label %for.cond.i.enable.i_crit_edge, label %for.body.i258.1

for.cond.i.enable.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.1:                                  ; preds = %for.cond.i
  %add25.i.1 = add nuw nsw i32 %conv.i, 24
  %add27.i.1 = add nuw nsw i32 %conv.i, 44
  %74 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i, align 8
  %self32.i.1 = getelementptr inbounds %struct.pci_bus, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %self32.i.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %self32.i.1, align 4
  %call33.i.1 = call i32 @pci_read_config_dword(ptr noundef %77, i32 noundef %add27.i.1, ptr noundef nonnull %ctrl2.i) #4
  %78 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ctrl2.i, align 4
  %and34.i.1 = and i32 %79, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.1, i32 %and.i)
  %cmp35.i.1 = icmp eq i32 %and34.i.1, %and.i
  br i1 %cmp35.i.1, label %for.body.i258.1.for.end.i_crit_edge, label %for.cond.i.1

for.body.i258.1.for.end.i_crit_edge:              ; preds = %for.body.i258.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i.1:                                     ; preds = %for.body.i258.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i)
  %exitcond.i.1 = icmp eq i32 %and21.i, 2
  br i1 %exitcond.i.1, label %for.cond.i.1.enable.i_crit_edge, label %for.body.i258.2

for.cond.i.1.enable.i_crit_edge:                  ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.2:                                  ; preds = %for.cond.i.1
  %add25.i.2 = add nuw nsw i32 %conv.i, 36
  %add27.i.2 = add nuw nsw i32 %conv.i, 56
  %80 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i, align 8
  %self32.i.2 = getelementptr inbounds %struct.pci_bus, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %self32.i.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %self32.i.2, align 4
  %call33.i.2 = call i32 @pci_read_config_dword(ptr noundef %83, i32 noundef %add27.i.2, ptr noundef nonnull %ctrl2.i) #4
  %84 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ctrl2.i, align 4
  %and34.i.2 = and i32 %85, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.2, i32 %and.i)
  %cmp35.i.2 = icmp eq i32 %and34.i.2, %and.i
  br i1 %cmp35.i.2, label %for.body.i258.2.for.end.i_crit_edge, label %for.cond.i.2

for.body.i258.2.for.end.i_crit_edge:              ; preds = %for.body.i258.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i.2:                                     ; preds = %for.body.i258.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and21.i)
  %exitcond.i.2 = icmp eq i32 %and21.i, 3
  br i1 %exitcond.i.2, label %for.cond.i.2.enable.i_crit_edge, label %for.body.i258.3

for.cond.i.2.enable.i_crit_edge:                  ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.3:                                  ; preds = %for.cond.i.2
  %add25.i.3 = add nuw nsw i32 %conv.i, 48
  %add27.i.3 = add nuw nsw i32 %conv.i, 68
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %self32.i.3 = getelementptr inbounds %struct.pci_bus, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %self32.i.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %self32.i.3, align 4
  %call33.i.3 = call i32 @pci_read_config_dword(ptr noundef %89, i32 noundef %add27.i.3, ptr noundef nonnull %ctrl2.i) #4
  %90 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ctrl2.i, align 4
  %and34.i.3 = and i32 %91, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.3, i32 %and.i)
  %cmp35.i.3 = icmp eq i32 %and34.i.3, %and.i
  br i1 %cmp35.i.3, label %for.body.i258.3.for.end.i_crit_edge, label %for.cond.i.3

for.body.i258.3.for.end.i_crit_edge:              ; preds = %for.body.i258.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i.3:                                     ; preds = %for.body.i258.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and21.i)
  %exitcond.i.3 = icmp eq i32 %and21.i, 4
  br i1 %exitcond.i.3, label %for.cond.i.3.enable.i_crit_edge, label %for.body.i258.4

for.cond.i.3.enable.i_crit_edge:                  ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.4:                                  ; preds = %for.cond.i.3
  %add25.i.4 = add nuw nsw i32 %conv.i, 60
  %add27.i.4 = add nuw nsw i32 %conv.i, 80
  %92 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i, align 8
  %self32.i.4 = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %self32.i.4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %self32.i.4, align 4
  %call33.i.4 = call i32 @pci_read_config_dword(ptr noundef %95, i32 noundef %add27.i.4, ptr noundef nonnull %ctrl2.i) #4
  %96 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ctrl2.i, align 4
  %and34.i.4 = and i32 %97, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.4, i32 %and.i)
  %cmp35.i.4 = icmp eq i32 %and34.i.4, %and.i
  br i1 %cmp35.i.4, label %for.body.i258.4.for.end.i_crit_edge, label %for.cond.i.4

for.body.i258.4.for.end.i_crit_edge:              ; preds = %for.body.i258.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i.4:                                     ; preds = %for.body.i258.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and21.i)
  %exitcond.i.4 = icmp eq i32 %and21.i, 5
  br i1 %exitcond.i.4, label %for.cond.i.4.enable.i_crit_edge, label %for.body.i258.5

for.cond.i.4.enable.i_crit_edge:                  ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.5:                                  ; preds = %for.cond.i.4
  %add25.i.5 = add nuw nsw i32 %conv.i, 72
  %add27.i.5 = add nuw nsw i32 %conv.i, 92
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 8
  %self32.i.5 = getelementptr inbounds %struct.pci_bus, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %self32.i.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %self32.i.5, align 4
  %call33.i.5 = call i32 @pci_read_config_dword(ptr noundef %101, i32 noundef %add27.i.5, ptr noundef nonnull %ctrl2.i) #4
  %102 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctrl2.i, align 4
  %and34.i.5 = and i32 %103, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.5, i32 %and.i)
  %cmp35.i.5 = icmp eq i32 %and34.i.5, %and.i
  br i1 %cmp35.i.5, label %for.body.i258.5.for.end.i_crit_edge, label %for.cond.i.5

for.body.i258.5.for.end.i_crit_edge:              ; preds = %for.body.i258.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.i.5:                                     ; preds = %for.body.i258.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and21.i)
  %exitcond.i.5 = icmp eq i32 %and21.i, 6
  br i1 %exitcond.i.5, label %for.cond.i.5.enable.i_crit_edge, label %for.body.i258.6

for.cond.i.5.enable.i_crit_edge:                  ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.6:                                  ; preds = %for.cond.i.5
  %add25.i.6 = add nuw nsw i32 %conv.i, 84
  %add27.i.6 = add nuw nsw i32 %conv.i, 104
  %104 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i, align 8
  %self32.i.6 = getelementptr inbounds %struct.pci_bus, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %self32.i.6 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %self32.i.6, align 4
  %call33.i.6 = call i32 @pci_read_config_dword(ptr noundef %107, i32 noundef %add27.i.6, ptr noundef nonnull %ctrl2.i) #4
  %108 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ctrl2.i, align 4
  %and34.i.6 = and i32 %109, 117440512
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i.6, i32 %and.i)
  %cmp35.i.6 = icmp eq i32 %and34.i.6, %and.i
  br i1 %cmp35.i.6, label %for.body.i258.6.for.end.i_crit_edge, label %for.body.i258.6.enable.i_crit_edge

for.body.i258.6.enable.i_crit_edge:               ; preds = %for.body.i258.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

for.body.i258.6.for.end.i_crit_edge:              ; preds = %for.body.i258.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i258.6.for.end.i_crit_edge, %for.body.i258.5.for.end.i_crit_edge, %for.body.i258.4.for.end.i_crit_edge, %for.body.i258.3.for.end.i_crit_edge, %for.body.i258.2.for.end.i_crit_edge, %for.body.i258.1.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %add25.i.lcssa = phi i32 [ %add25.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %add25.i.1, %for.body.i258.1.for.end.i_crit_edge ], [ %add25.i.2, %for.body.i258.2.for.end.i_crit_edge ], [ %add25.i.3, %for.body.i258.3.for.end.i_crit_edge ], [ %add25.i.4, %for.body.i258.4.for.end.i_crit_edge ], [ %add25.i.5, %for.body.i258.5.for.end.i_crit_edge ], [ %add25.i.6, %for.body.i258.6.for.end.i_crit_edge ]
  %add27.i.lcssa = phi i32 [ %add27.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %add27.i.1, %for.body.i258.1.for.end.i_crit_edge ], [ %add27.i.2, %for.body.i258.2.for.end.i_crit_edge ], [ %add27.i.3, %for.body.i258.3.for.end.i_crit_edge ], [ %add27.i.4, %for.body.i258.4.for.end.i_crit_edge ], [ %add27.i.5, %for.body.i258.5.for.end.i_crit_edge ], [ %add27.i.6, %for.body.i258.6.for.end.i_crit_edge ]
  %.lcssa = phi i32 [ %73, %for.body.preheader.i.for.end.i_crit_edge ], [ %79, %for.body.i258.1.for.end.i_crit_edge ], [ %85, %for.body.i258.2.for.end.i_crit_edge ], [ %91, %for.body.i258.3.for.end.i_crit_edge ], [ %97, %for.body.i258.4.for.end.i_crit_edge ], [ %103, %for.body.i258.5.for.end.i_crit_edge ], [ %109, %for.body.i258.6.for.end.i_crit_edge ]
  %add30.le.i = add nuw nsw i32 %add25.i.lcssa, 26
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 8
  %self39.i = getelementptr inbounds %struct.pci_bus, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %self39.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %self39.i, align 4
  %tobool41.not.i = icmp eq ptr %113, null
  br i1 %tobool41.not.i, label %for.end.i.enable.i_crit_edge, label %if.end43.i

for.end.i.enable.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable.i

if.end43.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.lcssa)
  %tobool45.not.i = icmp sgt i32 %.lcssa, -1
  br i1 %tobool45.not.i, label %if.end43.i.if.end49.i_crit_edge, label %if.then46.i

if.end43.i.if.end49.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %and47.i = and i32 %.lcssa, 2147483647
  %114 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and47.i, ptr %ctrl2.i, align 4
  %call48.i = call i32 @pci_write_config_dword(ptr noundef nonnull %113, i32 noundef %add27.i.lcssa, i32 noundef %and47.i) #4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end49.i_crit_edge
  %115 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ctrl2.i, align 4
  %or.i259 = or i32 %116, -2147483648
  store i32 %or.i259, ptr %ctrl2.i, align 4
  %call50.i = call i32 @pci_write_config_dword(ptr noundef nonnull %113, i32 noundef %add27.i.lcssa, i32 noundef %or.i259) #4
  br label %enable.i

enable.i:                                         ; preds = %if.end49.i, %for.end.i.enable.i_crit_edge, %for.body.i258.6.enable.i_crit_edge, %for.cond.i.5.enable.i_crit_edge, %for.cond.i.4.enable.i_crit_edge, %for.cond.i.3.enable.i_crit_edge, %for.cond.i.2.enable.i_crit_edge, %for.cond.i.1.enable.i_crit_edge, %for.cond.i.enable.i_crit_edge, %if.end16.i.enable.i_crit_edge, %if.end12.i.enable.i_crit_edge, %lor.lhs.false9.i.enable.i_crit_edge, %if.end.i.enable.i_crit_edge
  %status_pos2.2.i = phi i32 [ -1, %if.end.i.enable.i_crit_edge ], [ -1, %lor.lhs.false9.i.enable.i_crit_edge ], [ %add30.le.i, %if.end49.i ], [ %add30.le.i, %for.end.i.enable.i_crit_edge ], [ -1, %if.end12.i.enable.i_crit_edge ], [ -1, %if.end16.i.enable.i_crit_edge ], [ %67, %for.body.i258.6.enable.i_crit_edge ], [ %67, %for.cond.i.5.enable.i_crit_edge ], [ %67, %for.cond.i.4.enable.i_crit_edge ], [ %67, %for.cond.i.3.enable.i_crit_edge ], [ %67, %for.cond.i.2.enable.i_crit_edge ], [ %67, %for.cond.i.1.enable.i_crit_edge ], [ %67, %for.cond.i.enable.i_crit_edge ]
  %link.1.i = phi ptr [ null, %if.end.i.enable.i_crit_edge ], [ null, %lor.lhs.false9.i.enable.i_crit_edge ], [ %113, %if.end49.i ], [ null, %for.end.i.enable.i_crit_edge ], [ null, %if.end12.i.enable.i_crit_edge ], [ null, %if.end16.i.enable.i_crit_edge ], [ null, %for.body.i258.6.enable.i_crit_edge ], [ null, %for.cond.i.5.enable.i_crit_edge ], [ null, %for.cond.i.4.enable.i_crit_edge ], [ null, %for.cond.i.3.enable.i_crit_edge ], [ null, %for.cond.i.2.enable.i_crit_edge ], [ null, %for.cond.i.1.enable.i_crit_edge ], [ null, %for.cond.i.enable.i_crit_edge ]
  %117 = ptrtoint ptr %ctrl.i252 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ctrl.i252, align 4
  %or51.i = or i32 %118, -2147483648
  store i32 %or51.i, ptr %ctrl.i252, align 4
  %call52.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add117, i32 noundef %or51.i) #4
  %call53.i = call i32 @pci_wait_for_pending(ptr noundef %dev, i32 noundef %add5.i, i16 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %do.end.i260, label %enable.i.if.end57.i_crit_edge

enable.i.if.end57.i_crit_edge:                    ; preds = %enable.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

do.end.i260:                                      ; preds = %enable.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.19, i32 noundef %and.i) #7
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end.i260, %enable.i.if.end57.i_crit_edge
  %tobool58.not.i = icmp eq ptr %link.1.i, null
  br i1 %tobool58.not.i, label %if.end57.i.pci_vc_enable.exit_crit_edge, label %land.lhs.true.i

if.end57.i.pci_vc_enable.exit_crit_edge:          ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_enable.exit

land.lhs.true.i:                                  ; preds = %if.end57.i
  %call59.i = call i32 @pci_wait_for_pending(ptr noundef nonnull %link.1.i, i32 noundef %status_pos2.2.i, i16 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %do.end64.i, label %land.lhs.true.i.pci_vc_enable.exit_crit_edge

land.lhs.true.i.pci_vc_enable.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_vc_enable.exit

do.end64.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %link.1.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65.i, ptr noundef nonnull @.str.19, i32 noundef %and.i) #7
  br label %pci_vc_enable.exit

pci_vc_enable.exit:                               ; preds = %do.end64.i, %land.lhs.true.i.pci_vc_enable.exit_crit_edge, %if.end57.i.pci_vc_enable.exit_crit_edge, %lor.lhs.false.i.pci_vc_enable.exit_crit_edge, %if.then132.pci_vc_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap1.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i252) #4
  br label %if.end133

if.end133:                                        ; preds = %pci_vc_enable.exit, %if.end129.if.end133_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then119
  %add.ptr135 = getelementptr i8, ptr %buf.6, i32 4
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.end112.if.end136_crit_edge
  %buf.7 = phi ptr [ %add.ptr135, %if.end134 ], [ null, %if.end112.if.end136_crit_edge ]
  %add137 = add i32 %len.3, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap69) #4
  %inc = add nuw nsw i32 %i.0267, 1
  %exitcond = icmp eq i32 %i.0267, %conv
  br i1 %exitcond, label %for.end, label %if.end136.for.body_crit_edge

if.end136.for.body_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %tobool138.not = icmp eq ptr %buf.7, null
  %spec.select225 = select i1 %tobool138.not, i32 %add137, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %spec.select225, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap1) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_vc_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 8) #4
  %call4 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 8) #4
  %tobool.not = icmp eq ptr %call4, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool5.not = icmp eq i16 %call, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i16 %call to i32
  %call6 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1, ptr noundef nonnull %call4, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %call.1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 2) #4
  %call4.1 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 2) #4
  %tobool.not.1 = icmp eq ptr %call4.1, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.1)
  %tobool5.not.1 = icmp eq i16 %call.1, 0
  %or.cond.1 = select i1 %tobool.not.1, i1 true, i1 %tobool5.not.1
  br i1 %or.cond.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.1 = zext i16 %call.1 to i32
  %call6.1 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.1, ptr noundef nonnull %call4.1, i1 noundef zeroext false)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %call.2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 9) #4
  %call4.2 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 9) #4
  %tobool.not.2 = icmp eq ptr %call4.2, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.2)
  %tobool5.not.2 = icmp eq i16 %call.2, 0
  %or.cond.2 = select i1 %tobool.not.2, i1 true, i1 %tobool5.not.2
  br i1 %or.cond.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.2 = zext i16 %call.2 to i32
  %call6.2 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.2, ptr noundef nonnull %call4.2, i1 noundef zeroext false)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_allocate_vc_save_buffers(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i16 %call to i32
  %call2 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false)
  %call5 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call.1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.1)
  %tobool.not.1 = icmp eq i16 %call.1, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %conv1.1 = zext i16 %call.1 to i32
  %call2.1 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.1, ptr noundef null, i1 noundef zeroext false)
  %call5.1 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef %call2.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %if.end.1.cleanup.1_crit_edge, label %do.end.1

if.end.1.cleanup.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1

do.end.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #7
  br label %cleanup.1

cleanup.1:                                        ; preds = %do.end.1, %if.end.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %call.2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 9) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.2)
  %tobool.not.2 = icmp eq i16 %call.2, 0
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %conv1.2 = zext i16 %call.2 to i32
  %call2.2 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %conv1.2, ptr noundef null, i1 noundef zeroext false)
  %call5.2 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %dev, i16 noundef zeroext 9, i32 noundef %call2.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %if.end.2.cleanup.2_crit_edge, label %do.end.2

if.end.2.cleanup.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2

do.end.2:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12) #7
  br label %cleanup.2

cleanup.2:                                        ; preds = %do.end.2, %if.end.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wait_for_pending(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/vc.c", i32 366, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pci_save_vc_state._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pci_save_vc_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/vc.c", i32 373, i32 4}
!10 = !{ptr @pci_save_vc_state._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pci_save_vc_state._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/vc.c", i32 425, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pci_allocate_vc_save_buffers._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pci_allocate_vc_save_buffers._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/vc.c", i32 341, i32 40}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/vc.c", i32 342, i32 24}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/vc.c", i32 343, i32 25}
!23 = !{ptr @vc_caps, !24, !"vc_caps", i1 false, i1 false}
!24 = !{!"../drivers/pci/vc.c", i32 341, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/vc.c", i32 196, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pci_vc_do_save_buffer._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @pci_vc_do_save_buffer._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/vc.c", i32 59, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pci_vc_load_arb_table._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pci_vc_load_arb_table._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/vc.c", i32 87, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pci_vc_load_port_arb_table._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pci_vc_load_port_arb_table._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/vc.c", i32 163, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pci_vc_enable._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pci_vc_enable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @pci_vc_enable._entry.21, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/pci/vc.c", i32 167, i32 3}
!47 = !{ptr @pci_vc_enable._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
