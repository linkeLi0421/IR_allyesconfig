; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/ctl.c_pt.bc'
source_filename = "../drivers/thunderbolt/ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tb_cfg_request = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.work_struct, %struct.tb_cfg_result, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tb_cfg_result = type { i64, i32, i32, i32 }
%struct.tb_ctl = type { ptr, ptr, ptr, ptr, [10 x ptr], %struct.mutex, %struct.list_head, i8, i32, ptr, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.ctl_pkg = type { ptr, ptr, %struct.ring_frame }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }
%struct.tb_ring = type { %struct.spinlock, ptr, i32, i32, i32, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.work_struct, i8, i32, i8, i32, i32, i16, i16, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cfg_error_pkg = type { %struct.tb_cfg_header, i32 }
%struct.tb_cfg_header = type { i32, i32 }
%struct.cfg_reset_pkg = type { %struct.tb_cfg_header }
%struct.cfg_read_pkg = type { %struct.tb_cfg_header, %struct.tb_cfg_address }
%struct.tb_cfg_address = type { i32 }
%struct.cfg_write_pkg = type { %struct.tb_cfg_header, %struct.tb_cfg_address, [64 x i32] }

@tb_cfg_request_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tb_cfg_request_lock, i64 52), ptr getelementptr (i8, ptr @tb_cfg_request_lock, i64 52) }, ptr @tb_cfg_request_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tb_cfg_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&req->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/ctl.c\00", [38 x i8] zeroinitializer }, align 32
@tb_cfg_request_cancel_queue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @tb_cfg_request_cancel_queue, i64 44), ptr getelementptr (i8, ptr @tb_cfg_request_cancel_queue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@tb_ctl_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ctl->request_queue_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thunderbolt_ctl\00", [16 x i8] zeroinitializer }, align 32
@tb_ctl_alloc.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_ctl_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"control channel created\0A\00", [39 x i8] zeroinitializer }, align 32
@tb_ctl_start.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_ctl_start\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"control channel starting...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s: dangling request in request_queue\0A\00", [54 x i8] zeroinitializer }, align 32
@tb_ctl_stop.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.1, ptr @.str.11, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tb_ctl_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"control channel stopped\0A\00", [39 x i8] zeroinitializer }, align 32
@tb_cfg_ack_plug.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.1, ptr @.str.13, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tb_cfg_ack_plug\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"acking hot %splug event on %llx:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tb_cfg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 1025, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%llx: timeout reading config space %u from %#x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tb_cfg_read\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_cfg_read._entry_ptr = internal global ptr @tb_cfg_read._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tb_cfg_read: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@tb_cfg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.1, i32 1051, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%llx: timeout writing config space %u to %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_cfg_write\00", [19 x i8] zeroinitializer }, align 32
@tb_cfg_write._entry_ptr = internal global ptr @tb_cfg_write._entry, section ".printk_index", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tb_cfg_write: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tb_cfg_request_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tb_cfg_request_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: TX: invalid size: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s %s: TX: packet too large: %zu/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thunderbolt.h\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tb_cfg_request_cancel_queue.lock\00", [63 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tb_ctl_rx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.1, i32 442, ptr @.str.33, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RX: invalid size %#x, dropping packet\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_ctl_rx_callback\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tb_ctl_rx_callback._entry_ptr = internal global ptr @tb_ctl_rx_callback._entry, section ".printk_index", align 4
@tb_ctl_rx_callback._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.1, i32 458, ptr @.str.33, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RX: checksum mismatch, dropping packet\0A\00", [56 x i8] zeroinitializer }, align 32
@tb_ctl_rx_callback._entry_ptr.36 = internal global ptr @tb_ctl_rx_callback._entry.34, section ".printk_index", align 4
@tb_ctl_rx_callback._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.1, i32 473, ptr @.str.33, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@tb_ctl_rx_callback._entry_ptr.38 = internal global ptr @tb_ctl_rx_callback._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/ctl.h\00", [38 x i8] zeroinitializer }, align 32
@decode_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 244, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkg->zero1 is %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"decode_error\00", [19 x i8] zeroinitializer }, align 32
@decode_error._entry_ptr = internal global ptr @decode_error._entry, section ".printk_index", align 4
@decode_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.1, i32 246, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkg->zero2 is %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@decode_error._entry_ptr.44 = internal global ptr @decode_error._entry.42, section ".printk_index", align 4
@decode_error._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.1, i32 248, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkg->zero3 is %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@decode_error._entry_ptr.47 = internal global ptr @decode_error._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wrong framesize (expected %#x, got %#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wrong eof (expected %#x, got %#x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wrong sof (expected 0x0, got %#x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"header->unknown is %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wrong route (expected %llx, got %llx)\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"addr.zero is %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wrong space (expected %x, got %x\0A)\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wrong offset (expected %x, got %x\0A)\00", [60 x i8] zeroinitializer }, align 32
@tb_cfg_print_error.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.1, ptr @.str.57, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_cfg_print_error\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%llx:%x: invalid config space or offset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s %s: CFG_ERROR(%llx:%x): Invalid port\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s %s: CFG_ERROR(%llx:%x): Route contains a loop\0A\00", [46 x i8] zeroinitializer }, align 32
@tb_cfg_print_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.1, i32 304, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%llx:%x: downstream port is locked\0A\00", [60 x i8] zeroinitializer }, align 32
@tb_cfg_print_error._entry_ptr = internal global ptr @tb_cfg_print_error._entry, section ".printk_index", align 4
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s: CFG_ERROR(%llx:%x): Unknown error\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 12, i64 13]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 8, i64 15]
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"tb_cfg_request_lock\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 532, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 570, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"tb_cfg_request_cancel_queue\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 638, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 640, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 661, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 704, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 732, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 734, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 758, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1024, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1029, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1050, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1055, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 70, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 366, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 370, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"../include/linux/thunderbolt.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 639, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 68, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 87, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 441, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 457, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 472, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"../drivers/thunderbolt/ctl.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 121, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 244, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 246, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 248, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 187, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 191, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 194, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 199, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 202, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 213, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 215, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 218, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 286, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 295, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 299, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 303, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [29 x i8] c"../drivers/thunderbolt/ctl.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 308, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @decode_error._entry, ptr @decode_error._entry.42, ptr @decode_error._entry.45, ptr @decode_error._entry_ptr, ptr @decode_error._entry_ptr.44, ptr @decode_error._entry_ptr.47, ptr @tb_cfg_print_error._entry, ptr @tb_cfg_print_error._entry_ptr, ptr @tb_cfg_read._entry, ptr @tb_cfg_read._entry_ptr, ptr @tb_cfg_write._entry, ptr @tb_cfg_write._entry_ptr, ptr @tb_ctl_rx_callback._entry, ptr @tb_ctl_rx_callback._entry.34, ptr @tb_ctl_rx_callback._entry.37, ptr @tb_ctl_rx_callback._entry_ptr, ptr @tb_ctl_rx_callback._entry_ptr.36, ptr @tb_ctl_rx_callback._entry_ptr.38, ptr @tb_cfg_request_lock, ptr @tb_cfg_request.__key, ptr @.str, ptr @.str.1, ptr @tb_cfg_request_cancel_queue, ptr @tb_ctl_alloc.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @init_completion.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_request_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_request_cancel_queue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ctl_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ctl_rx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ctl_rx_callback._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ctl_rx_callback._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_error._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cfg_print_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_cfg_request_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_request_get(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tb_cfg_request_lock, i32 noundef 0) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %req, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req, ptr %req, i32 1, ptr elementtype(i32) %req) #9, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %req, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tb_cfg_request_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_request_put(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tb_cfg_request_lock, i32 noundef 0) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %req, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req, ptr %req, i32 1, ptr elementtype(i32) %req) #9, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !132

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %req, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @kfree(ptr noundef %req) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tb_cfg_request_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_cfg_request(ptr noundef %ctl, ptr noundef %req, ptr noundef %callback, ptr noundef %callback_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %callback1 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 11
  %1 = ptrtoint ptr %callback1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %callback, ptr %callback1, align 4
  %callback_data2 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %callback_data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %callback_data, ptr %callback_data2, align 8
  %work = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @tb_cfg_request.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry6 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tb_cfg_request_work, ptr %func, align 4
  %list = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 16
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 4
  %prev.i37 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i37, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tb_cfg_request_lock, i32 noundef 0) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %req, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req, ptr %req, i32 1, ptr elementtype(i32) %req) #9, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !131

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tb_cfg_request_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tb_cfg_request_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_request_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %req, i32 noundef %.sink.i.i.i.i.i) #9
  br label %tb_cfg_request_get.exit

tb_cfg_request_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tb_cfg_request_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tb_cfg_request_lock) #9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %tb_cfg_request_get.exit.if.end.i_crit_edge, label %do.end.i, !prof !132

tb_cfg_request_get.exit.if.end.i_crit_edge:       ; preds = %tb_cfg_request_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %tb_cfg_request_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %tb_cfg_request_get.exit.if.end.i_crit_edge
  %ctl21.i = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %ctl21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl21.i, align 4
  %tobool22.not.i = icmp eq ptr %14, null
  br i1 %tobool22.not.i, label %if.end.i.if.end44.i_crit_edge, label %do.end38.i, !prof !132

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

do.end38.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 9, ptr noundef null) #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end38.i, %if.end.i.if.end44.i_crit_edge
  %request_queue_lock.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %request_queue_lock.i, i32 noundef 0) #9
  %running.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 7
  %15 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %running.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool52.not.i = icmp eq i8 %16, 0
  br i1 %tobool52.not.i, label %tb_cfg_request_enqueue.exit, label %if.end55.i

if.end55.i:                                       ; preds = %if.end44.i
  %17 = ptrtoint ptr %ctl21.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctl, ptr %ctl21.i, align 4
  %request_queue.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %request_queue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end55.i.if.end_crit_edge

if.end55.i.if.end_crit_edge:                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %request_queue.i, ptr %list, align 4
  %22 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i37, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %if.end

tb_cfg_request_enqueue.exit:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %request_queue_lock.i) #9
  br label %err_put

if.end:                                           ; preds = %if.end.i.i.i, %if.end55.i.if.end_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  tail call void @mutex_unlock(ptr noundef %request_queue_lock.i) #9
  %request = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %request, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 3
  %26 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 4
  %28 = ptrtoint ptr %request_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %request_type, align 8
  %call8 = tail call fastcc i32 @tb_ctl_tx(ptr noundef %ctl, ptr noundef %25, i32 noundef %27, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err_dequeue

if.end11:                                         ; preds = %if.end
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 5
  %30 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %response, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work) #9
  br label %cleanup

err_dequeue:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tb_cfg_request_dequeue(ptr noundef %req)
  br label %err_put

err_put:                                          ; preds = %err_dequeue, %tb_cfg_request_enqueue.exit
  %ret.0 = phi i32 [ -107, %tb_cfg_request_enqueue.exit ], [ %call8, %err_dequeue ]
  tail call void @tb_cfg_request_put(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.then13, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put ], [ 0, %if.then13 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_cfg_request_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %callback = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback, align 4
  %callback_data = getelementptr i8, ptr %work, i32 -8
  %5 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %callback_data, align 8
  tail call void %4(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  tail call fastcc void @tb_cfg_request_dequeue(ptr noundef %add.ptr)
  tail call void @tb_cfg_request_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_ctl_tx(ptr noundef %ctl, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end20, label %do.end

do.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 4
  %pdev6 = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev6, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 366, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call, ptr noundef %retval.0.i, i32 noundef %len) #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %len)
  %cmp21 = icmp ugt i32 %len, 252
  br i1 %cmp21, label %do.end35, label %if.end57

do.end35:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl, align 4
  %pdev37 = getelementptr inbounds %struct.tb_nhi, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call39 = tail call ptr @dev_driver_string(ptr noundef %dev38) #9
  %16 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl, align 4
  %pdev41 = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev41, align 4
  %init_name.i109 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i109 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i109, align 8
  %tobool.not.i110 = icmp eq ptr %21, null
  br i1 %tobool.not.i110, label %if.end.i111, label %do.end35.dev_name.exit113_crit_edge

do.end35.dev_name.exit113_crit_edge:              ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit113

if.end.i111:                                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  br label %dev_name.exit113

dev_name.exit113:                                 ; preds = %if.end.i111, %do.end35.dev_name.exit113_crit_edge
  %retval.0.i112 = phi ptr [ %23, %if.end.i111 ], [ %21, %do.end35.dev_name.exit113_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call39, ptr noundef %retval.0.i112, i32 noundef %len, i32 noundef 252) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not.i114 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i114, label %if.end57.cleanup_crit_edge, label %if.end.i115

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i115:                                      ; preds = %if.end57
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ctl, ptr %call7.i.i.i, align 8
  %frame_pool.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 3
  %26 = ptrtoint ptr %frame_pool.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %frame_pool.i, align 4
  %frame.i = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 2
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %27, i32 noundef 3264, ptr noundef %frame.i) #9
  %buffer.i = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2.i, ptr %buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end61

if.then5.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end61:                                         ; preds = %if.end.i115
  %callback = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tb_ctl_tx_callback, ptr %callback, align 4
  %size = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %size, align 8
  %add = shl nuw nsw i32 %len, 20
  %bf.shl = add nuw nsw i32 %add, 4194304
  %bf.clear = and i32 %bf.load, 1048320
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.value65 = and i32 %type, 15
  %bf.set67 = or i32 %bf.set, %bf.value65
  %bf.shl71 = shl nuw nsw i32 %bf.value65, 4
  %bf.set73 = or i32 %bf.set67, %bf.shl71
  store i32 %bf.set73, ptr %size, align 8
  %31 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer.i, align 4
  %div108 = lshr i32 %len, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp5.not.i = icmp ult i32 %len, 4
  br i1 %cmp5.not.i, label %if.end61.cpu_to_be32_array.exit_crit_edge, label %if.end61.for.body.i_crit_edge

if.end61.for.body.i_crit_edge:                    ; preds = %if.end61
  br label %for.body.i

if.end61.cpu_to_be32_array.exit_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_to_be32_array.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end61.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end61.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %data, i32 %i.06.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %32, i32 %i.06.i
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div108
  br i1 %exitcond.not.i, label %for.body.i.cpu_to_be32_array.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cpu_to_be32_array.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_to_be32_array.exit

cpu_to_be32_array.exit:                           ; preds = %for.body.i.cpu_to_be32_array.exit_crit_edge, %if.end61.cpu_to_be32_array.exit_crit_edge
  %36 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer.i, align 4
  %call.i = tail call i32 @__crc32c_le(i32 noundef -1, ptr noundef %37, i32 noundef %len) #13
  %neg.i = xor i32 %call.i, -1
  %add.ptr = getelementptr i8, ptr %37, i32 %len
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %neg.i, ptr %add.ptr, align 4
  %tx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 1
  %39 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx, align 4
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end.i, label %cpu_to_be32_array.exit.tb_ring_tx.exit_crit_edge, !prof !131

cpu_to_be32_array.exit.tb_ring_tx.exit_crit_edge: ; preds = %cpu_to_be32_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ring_tx.exit

do.end.i:                                         ; preds = %cpu_to_be32_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 639, i32 noundef 9, ptr noundef null) #9
  br label %tb_ring_tx.exit

tb_ring_tx.exit:                                  ; preds = %do.end.i, %cpu_to_be32_array.exit.tb_ring_tx.exit_crit_edge
  %call.i117 = tail call i32 @__tb_ring_enqueue(ptr noundef %40, ptr noundef %frame.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool79.not = icmp eq i32 %call.i117, 0
  br i1 %tobool79.not, label %tb_ring_tx.exit.cleanup_crit_edge, label %tb_ctl_pkg_free.exit

tb_ring_tx.exit.cleanup_crit_edge:                ; preds = %tb_ring_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tb_ctl_pkg_free.exit:                             ; preds = %tb_ring_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i.i, align 8
  %frame_pool.i120 = getelementptr inbounds %struct.tb_ctl, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %frame_pool.i120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %frame_pool.i120, align 4
  %46 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer.i, align 4
  %48 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame.i, align 8
  tail call void @dma_pool_free(ptr noundef %45, ptr noundef %47, i32 noundef %49) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %tb_ctl_pkg_free.exit, %tb_ring_tx.exit.cleanup_crit_edge, %if.then5.i, %if.end57.cleanup_crit_edge, %dev_name.exit113, %dev_name.exit
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ -22, %dev_name.exit113 ], [ %call.i117, %tb_ctl_pkg_free.exit ], [ 0, %tb_ring_tx.exit.cleanup_crit_edge ], [ -12, %if.then5.i ], [ -12, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_cfg_request_dequeue(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl1 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl1, align 4
  %request_queue_lock = getelementptr inbounds %struct.tb_ctl, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %request_queue_lock, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flags = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @tb_cfg_request_cancel_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %request_queue_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_request_cancel(ptr noundef %req, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  %work = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 570) #9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.do.end9_crit_edge, label %if.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call520 = call i32 @prepare_to_wait_event(ptr noundef nonnull @tb_cfg_request_cancel_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i.i1621 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1621)
  %tobool.i17.not22 = icmp eq i32 %and1.i.i1621, 0
  br i1 %tobool.i17.not22, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #9
  %call5 = call i32 @prepare_to_wait_event(ptr noundef nonnull @tb_cfg_request_cancel_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i.i16 = and i32 %7, 1
  %tobool.i17.not = icmp eq i32 %and1.i.i16, 0
  br i1 %tobool.i17.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @tb_cfg_request_cancel_queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  %err10 = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %err10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %err, ptr %err10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_request_sync(ptr noalias nocapture writeonly sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr noundef %req, i32 noundef %timeout_msec) local_unnamed_addr #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_msec) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #9
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #9
  %call1 = call i32 @tb_cfg_request(ptr noundef %ctl, ptr noundef %req, ptr noundef nonnull @tb_cfg_request_complete, ptr noundef nonnull %done)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = call ptr @memset(ptr %agg.result, i32 0, i32 12)
  %res.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 12
  %4 = ptrtoint ptr %res.sroa.4.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %res.sroa.4.0.agg.result.sroa_idx, align 4
  %res.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 16
  %5 = ptrtoint ptr %res.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %res.sroa.5.0.agg.result.sroa_idx, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @tb_cfg_request_cancel(ptr noundef %req, i32 noundef -110)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %work = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 14
  %call6 = call zeroext i1 @flush_work(ptr noundef %work) #9
  %result = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15
  %6 = call ptr @memcpy(ptr %agg.result, ptr %result, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_cfg_request_complete(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_ctl_alloc(ptr noundef %nhi, i32 noundef %timeout_msec, ptr noundef %cb, ptr noundef %cb_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %nhi, ptr %call7.i.i, align 8
  %timeout_msec2 = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %timeout_msec2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout_msec, ptr %timeout_msec2, align 8
  %callback = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %callback, align 4
  %callback_data = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb_data, ptr %callback_data, align 8
  %request_queue_lock = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %request_queue_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @tb_ctl_alloc.__key) #9
  %request_queue = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %request_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %request_queue, ptr %request_queue, align 4
  %prev.i = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %request_queue, ptr %prev.i, align 8
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call3 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.3, ptr noundef %dev, i32 noundef 256, i32 noundef 4, i32 noundef 0) #9
  %frame_pool = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %frame_pool to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %frame_pool, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @tb_ring_alloc_tx(ptr noundef %nhi, i32 noundef 0, i32 noundef 10, i32 noundef 1) #9
  %tx = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %tx, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end7.err_crit_edge, label %if.end12

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @tb_ring_alloc_rx(ptr noundef %nhi, i32 noundef 0, i32 noundef 10, i32 noundef 1, i32 noundef 0, i16 noundef zeroext -1, i16 noundef zeroext -1, ptr noundef null, ptr noundef null) #9
  %rx = getelementptr inbounds %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %rx, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.err_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.tb_ctl_pkg_alloc.exit.thread_crit_edge, label %if.end.i

for.body.tb_ctl_pkg_alloc.exit.thread_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ctl_pkg_alloc.exit.thread

if.end.i:                                         ; preds = %for.body
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %call7.i.i.i, align 8
  %14 = ptrtoint ptr %frame_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame_pool, align 4
  %frame.i = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 2
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %15, i32 noundef 3264, ptr noundef %frame.i) #9
  %buffer.i = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end23

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %tb_ctl_pkg_alloc.exit.thread

tb_ctl_pkg_alloc.exit.thread:                     ; preds = %if.then5.i, %for.body.tb_ctl_pkg_alloc.exit.thread_crit_edge
  %arrayidx68 = getelementptr %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 4, i32 %i.075
  %17 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx68, align 4
  br label %err

if.end23:                                         ; preds = %if.end.i
  %arrayidx = getelementptr %struct.tb_ctl, ptr %call7.i.i, i32 0, i32 4, i32 %i.075
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %callback26 = getelementptr inbounds %struct.ctl_pkg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %callback26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tb_ctl_rx_callback, ptr %callback26, align 4
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body27, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ctl_alloc.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ctl_alloc, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !137

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %pdev34 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ctl_alloc.__UNIQUE_ID_ddebug237, ptr noundef %dev35, ptr noundef nonnull @.str.6) #9
  br label %cleanup

err:                                              ; preds = %tb_ctl_pkg_alloc.exit.thread, %if.end12.err_crit_edge, %if.end7.err_crit_edge, %if.end.err_crit_edge
  tail call void @tb_ctl_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then32, %do.body27, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then32 ], [ %call7.i.i, %do.body27 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_tx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_rx(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_ctl_rx_callback(ptr nocapture noundef readnone %ring, ptr noundef %frame, i1 noundef zeroext %canceled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %frame, i32 -8
  br i1 %canceled, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr %struct.ring_frame, ptr %frame, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %bf.load)
  %cmp = icmp ugt i32 %bf.load, 4194303
  %1 = and i32 %bf.load, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  %or.cond = and i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %bf.lshr8 = lshr i32 %bf.load, 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %bf.lshr8) #14
  br label %rx

if.end9:                                          ; preds = %if.end
  %8 = add i32 %bf.load, -4194304
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size, align 4
  %buffer = getelementptr i8, ptr %frame, i32 -4
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %bf.lshr16 = lshr i32 %8, 20
  %call.i = tail call i32 @__crc32c_le(i32 noundef -1, ptr noundef %11, i32 noundef %bf.lshr16) #13
  %neg.i = xor i32 %call.i, -1
  %bf.lshr23 = lshr i32 %8, 4
  %bf.clear24 = and i32 %bf.lshr23, 15
  %12 = zext i32 %bf.clear24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear24, label %if.end9.sw.epilog_crit_edge [
    i32 1, label %if.end9.sw.bb_crit_edge
    i32 2, label %if.end9.sw.bb_crit_edge139
    i32 3, label %if.end9.sw.bb_crit_edge140
    i32 8, label %if.end9.sw.bb_crit_edge141
    i32 9, label %if.end9.sw.bb_crit_edge142
    i32 5, label %if.end9.sw.bb53_crit_edge
    i32 7, label %if.end9.sw.bb53_crit_edge143
    i32 6, label %if.end9.sw.bb53_crit_edge144
    i32 10, label %be32_to_cpu_array.exit.sw.bb69_crit_edge
  ]

if.end9.sw.bb53_crit_edge144:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53

if.end9.sw.bb53_crit_edge143:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53

if.end9.sw.bb53_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53

if.end9.sw.bb_crit_edge142:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end9.sw.bb_crit_edge141:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end9.sw.bb_crit_edge140:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end9.sw.bb_crit_edge139:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

be32_to_cpu_array.exit.sw.bb69_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = lshr i32 %8, 20
  br label %sw.bb69

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge139, %if.end9.sw.bb_crit_edge140, %if.end9.sw.bb_crit_edge141, %if.end9.sw.bb_crit_edge142
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %bf.lshr28 = lshr i32 %8, 20
  %add.ptr29 = getelementptr i8, ptr %14, i32 %bf.lshr28
  %15 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %neg.i)
  %cmp30.not = icmp eq i32 %16, %neg.i
  br i1 %cmp30.not, label %if.end39, label %do.end34

do.end34:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %pdev37 = getelementptr inbounds %struct.tb_nhi, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.35) #14
  br label %rx

if.end39:                                         ; preds = %sw.bb
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %size, align 4
  %24 = and i32 %bf.load.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 48
  br i1 %cmp.not.i, label %if.end.i, label %if.end39.sw.epilog_crit_edge

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end39
  %25 = ptrtoint ptr %frame to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load2.i = load i32, ptr %frame, align 1
  %bf.lshr3.i = lshr i32 %bf.load2.i, 28
  %26 = zext i32 %bf.lshr3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %bf.lshr3.i, label %if.end.i.sw.epilog_crit_edge [
    i32 1, label %if.end.i.if.then42_crit_edge
    i32 12, label %if.end.i.if.then42_crit_edge145
    i32 13, label %if.end.i.if.then42_crit_edge146
  ]

if.end.i.if.then42_crit_edge146:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i.if.then42_crit_edge145:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i.if.then42_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then42:                                        ; preds = %if.end.i.if.then42_crit_edge, %if.end.i.if.then42_crit_edge145, %if.end.i.if.then42_crit_edge146
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %callback.i = getelementptr inbounds %struct.tb_ctl, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback.i, align 4
  %callback_data.i = getelementptr inbounds %struct.tb_ctl, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback_data.i, align 4
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %call.i127 = tail call zeroext i1 %30(ptr noundef %32, i32 noundef %bf.clear24, ptr noundef %34, i32 noundef %bf.lshr28) #9
  br label %rx

sw.bb53:                                          ; preds = %if.end9.sw.bb53_crit_edge, %if.end9.sw.bb53_crit_edge143, %if.end9.sw.bb53_crit_edge144
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %bf.lshr57 = lshr i32 %8, 20
  %add.ptr58 = getelementptr i8, ptr %36, i32 %bf.lshr57
  %37 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %neg.i)
  %cmp59.not = icmp eq i32 %38, %neg.i
  br i1 %cmp59.not, label %sw.bb53.sw.bb69_crit_edge, label %do.end63

sw.bb53.sw.bb69_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

do.end63:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %pdev66 = getelementptr inbounds %struct.tb_nhi, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pdev66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev66, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.35) #14
  br label %rx

sw.bb69:                                          ; preds = %sw.bb53.sw.bb69_crit_edge, %be32_to_cpu_array.exit.sw.bb69_crit_edge
  %bf.lshr77.pre-phi = phi i32 [ %.pre, %be32_to_cpu_array.exit.sw.bb69_crit_edge ], [ %bf.lshr57, %sw.bb53.sw.bb69_crit_edge ]
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %callback.i128 = getelementptr inbounds %struct.tb_ctl, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %callback.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %callback.i128, align 4
  %callback_data.i129 = getelementptr inbounds %struct.tb_ctl, ptr %46, i32 0, i32 10
  %49 = ptrtoint ptr %callback_data.i129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %callback_data.i129, align 4
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %call.i131 = tail call zeroext i1 %48(ptr noundef %50, i32 noundef %bf.clear24, ptr noundef %52, i32 noundef %bf.lshr77.pre-phi) #9
  br i1 %call.i131, label %sw.bb69.rx_crit_edge, label %sw.bb69.sw.epilog_crit_edge

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb69.rx_crit_edge:                             ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx

sw.epilog:                                        ; preds = %sw.bb69.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.end39.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %request_queue_lock.i = getelementptr inbounds %struct.tb_ctl, ptr %54, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %request_queue_lock.i, i32 noundef 0) #9
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %request_queue.i = getelementptr inbounds %struct.tb_ctl, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn1.i = load ptr, ptr %request_queue.i, align 4
  %cmp.not4.i = icmp eq ptr %.pn1.i, %request_queue.i
  br i1 %cmp.not4.i, label %sw.epilog.tb_cfg_request_find.exit_crit_edge, label %sw.epilog.for.body.i132_crit_edge

sw.epilog.for.body.i132_crit_edge:                ; preds = %sw.epilog
  br label %for.body.i132

sw.epilog.tb_cfg_request_find.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_request_find.exit

for.body.i132:                                    ; preds = %if.end.i135.for.body.i132_crit_edge, %sw.epilog.for.body.i132_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %if.end.i135.for.body.i132_crit_edge ], [ %.pn1.i, %sw.epilog.for.body.i132_crit_edge ]
  %req.06.i = getelementptr i8, ptr %.pn5.i, i32 -128
  tail call void @mutex_lock_nested(ptr noundef nonnull @tb_cfg_request_lock, i32 noundef 0) #9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req.06.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %req.06.i, i32 1, i32 3, i32 1) #9
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req.06.i, ptr %req.06.i, i32 1, ptr elementtype(i32) %req.06.i) #9, !srcloc !130
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.body.i132.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !131

for.body.i132.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.body.i132
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %59 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %.not.i.i.i.i.i.i = icmp sgt i32 %59, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.tb_cfg_request_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.tb_cfg_request_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_request_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.body.i132.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.body.i132.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %req.06.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %tb_cfg_request_get.exit.i

tb_cfg_request_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.tb_cfg_request_get.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tb_cfg_request_lock) #9
  %match.i = getelementptr i8, ptr %.pn5.i, i32 -92
  %60 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %match.i, align 4
  %call.i133 = tail call zeroext i1 %61(ptr noundef %req.06.i, ptr noundef %add.ptr) #9
  br i1 %call.i133, label %tb_cfg_request_get.exit.i.tb_cfg_request_find.exit_crit_edge, label %if.end.i135

tb_cfg_request_get.exit.i.tb_cfg_request_find.exit_crit_edge: ; preds = %tb_cfg_request_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_request_find.exit

if.end.i135:                                      ; preds = %tb_cfg_request_get.exit.i
  tail call void @tb_cfg_request_put(ptr noundef %req.06.i) #9
  %62 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  %request_queue4.i = getelementptr inbounds %struct.tb_ctl, ptr %64, i32 0, i32 6
  %cmp.not.i134 = icmp eq ptr %.pn.i, %request_queue4.i
  br i1 %cmp.not.i134, label %if.end.i135.tb_cfg_request_find.exit_crit_edge, label %if.end.i135.for.body.i132_crit_edge

if.end.i135.for.body.i132_crit_edge:              ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i132

if.end.i135.tb_cfg_request_find.exit_crit_edge:   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_request_find.exit

tb_cfg_request_find.exit:                         ; preds = %if.end.i135.tb_cfg_request_find.exit_crit_edge, %tb_cfg_request_get.exit.i.tb_cfg_request_find.exit_crit_edge, %sw.epilog.tb_cfg_request_find.exit_crit_edge
  %spec.select.i = phi ptr [ null, %sw.epilog.tb_cfg_request_find.exit_crit_edge ], [ null, %if.end.i135.tb_cfg_request_find.exit_crit_edge ], [ %req.06.i, %tb_cfg_request_get.exit.i.tb_cfg_request_find.exit_crit_edge ]
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 4
  %request_queue_lock11.i = getelementptr inbounds %struct.tb_ctl, ptr %66, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %request_queue_lock11.i) #9
  %tobool83.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool83.not, label %tb_cfg_request_find.exit.rx_crit_edge, label %if.then84

tb_cfg_request_find.exit.rx_crit_edge:            ; preds = %tb_cfg_request_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx

if.then84:                                        ; preds = %tb_cfg_request_find.exit
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %spec.select.i, i32 0, i32 10
  %67 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %copy, align 8
  %call85 = tail call zeroext i1 %68(ptr noundef nonnull %spec.select.i, ptr noundef %add.ptr) #9
  br i1 %call85, label %if.then86, label %if.then84.if.end88_crit_edge

if.then84.if.end88_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.tb_cfg_request, ptr %spec.select.i, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %69, ptr noundef %work) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then84.if.end88_crit_edge
  tail call void @tb_cfg_request_put(ptr noundef nonnull %spec.select.i)
  br label %rx

rx:                                               ; preds = %if.end88, %tb_cfg_request_find.exit.rx_crit_edge, %sw.bb69.rx_crit_edge, %do.end63, %if.then42, %do.end34, %do.end
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  %rx.i = getelementptr inbounds %struct.tb_ctl, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx.i, align 4
  %is_tx.i.i = getelementptr inbounds %struct.tb_ring, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %is_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i = load i8, ptr %is_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %rx.tb_ctl_rx_submit.exit_crit_edge, label %do.end.i.i, !prof !132

rx.tb_ctl_rx_submit.exit_crit_edge:               ; preds = %rx
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ctl_rx_submit.exit

do.end.i.i:                                       ; preds = %rx
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 618, i32 noundef 9, ptr noundef null) #9
  br label %tb_ctl_rx_submit.exit

tb_ctl_rx_submit.exit:                            ; preds = %do.end.i.i, %rx.tb_ctl_rx_submit.exit_crit_edge
  %call.i.i136 = tail call i32 @__tb_ring_enqueue(ptr noundef %73, ptr noundef %frame) #9
  br label %cleanup

cleanup:                                          ; preds = %tb_ctl_rx_submit.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ctl_free(ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 2
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tb_ring_free(ptr noundef nonnull %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 1
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.for.body.preheader_crit_edge, label %if.then6

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tb_ring_free(ptr noundef nonnull %3) #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then6, %if.end4.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %tb_ctl_pkg_free.exit.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %inc, %tb_ctl_pkg_free.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.tb_ctl, ptr %ctl, i32 0, i32 4, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.tb_ctl_pkg_free.exit_crit_edge, label %if.then.i

for.body.tb_ctl_pkg_free.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ctl_pkg_free.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %frame_pool.i = getelementptr inbounds %struct.tb_ctl, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %frame_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frame_pool.i, align 4
  %buffer.i = getelementptr inbounds %struct.ctl_pkg, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.i, align 4
  %frame.i = getelementptr inbounds %struct.ctl_pkg, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame.i, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %tb_ctl_pkg_free.exit

tb_ctl_pkg_free.exit:                             ; preds = %if.then.i, %for.body.tb_ctl_pkg_free.exit_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %tb_ctl_pkg_free.exit.for.body_crit_edge

tb_ctl_pkg_free.exit.for.body_crit_edge:          ; preds = %tb_ctl_pkg_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tb_ctl_pkg_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  %frame_pool = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 3
  %14 = ptrtoint ptr %frame_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %15) #9
  tail call void @kfree(ptr noundef nonnull %ctl) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ctl_start(ptr nocapture noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ctl_start.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ctl_start, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ctl_start.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 1
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  tail call void @tb_ring_start(ptr noundef %5) #9
  %rx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 2
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  tail call void @tb_ring_start(ptr noundef %7) #9
  br label %for.body

for.body:                                         ; preds = %tb_ctl_rx_submit.exit.for.body_crit_edge, %do.end
  %i.010 = phi i32 [ 0, %do.end ], [ %inc, %tb_ctl_rx_submit.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tb_ctl, ptr %ctl, i32 0, i32 4, i32 %i.010
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %rx.i = getelementptr inbounds %struct.tb_ctl, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx.i, align 4
  %is_tx.i.i = getelementptr inbounds %struct.tb_ring, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %is_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %is_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %for.body.tb_ctl_rx_submit.exit_crit_edge, label %do.end.i.i, !prof !132

for.body.tb_ctl_rx_submit.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ctl_rx_submit.exit

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 618, i32 noundef 9, ptr noundef null) #9
  br label %tb_ctl_rx_submit.exit

tb_ctl_rx_submit.exit:                            ; preds = %do.end.i.i, %for.body.tb_ctl_rx_submit.exit_crit_edge
  %frame.i = getelementptr inbounds %struct.ctl_pkg, ptr %9, i32 0, i32 2
  %call.i.i = tail call i32 @__tb_ring_enqueue(ptr noundef %13, ptr noundef %frame.i) #9
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %tb_ctl_rx_submit.exit.for.body_crit_edge

tb_ctl_rx_submit.exit.for.body_crit_edge:         ; preds = %tb_ctl_rx_submit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tb_ctl_rx_submit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %running = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 7
  %15 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %running, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ctl_stop(ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue_lock = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %request_queue_lock, i32 noundef 0) #9
  %running = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %running, align 4
  tail call void @mutex_unlock(ptr noundef %request_queue_lock) #9
  %rx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 2
  %1 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx, align 4
  tail call void @tb_ring_stop(ptr noundef %2) #9
  %tx = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 1
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx, align 4
  tail call void @tb_ring_stop(ptr noundef %4) #9
  %request_queue = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 6
  %5 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i.not = icmp eq ptr %6, %request_queue
  br i1 %cmp.i.not, label %entry.if.end23_crit_edge, label %do.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call7 = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %11 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl, align 4
  %pdev9 = getelementptr inbounds %struct.tb_nhi, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev9, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i52 = phi ptr [ %18, %if.end.i ], [ %16, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call7, ptr noundef %retval.0.i52) #9
  br label %if.end23

if.end23:                                         ; preds = %dev_name.exit, %entry.if.end23_crit_edge
  %19 = ptrtoint ptr %request_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %request_queue, ptr %request_queue, align 4
  %prev.i = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %request_queue, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ctl_stop.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ctl_stop, %if.then35)) #9
          to label %do.end41 [label %if.then35], !srcloc !137

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl, align 4
  %pdev37 = getelementptr inbounds %struct.tb_nhi, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ctl_stop.__UNIQUE_ID_ddebug239, ptr noundef %dev38, ptr noundef nonnull @.str.11) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %if.end23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_cfg_ack_plug(ptr noundef %ctl, i64 noundef %route, i32 noundef %port, i1 noundef zeroext %unplug) local_unnamed_addr #0 align 64 {
entry:
  %pkg = alloca %struct.cfg_error_pkg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkg) #9
  %0 = getelementptr inbounds %struct.tb_cfg_header, ptr %pkg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cfg_error_pkg, ptr %pkg, i32 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %2 = ptrtoint ptr %pkg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.shl.i, ptr %pkg, align 4, !alias.scope !138
  %conv4.i = trunc i64 %route to i32
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv4.i, ptr %0, align 4, !alias.scope !138
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !132

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 121, i32 noundef 9, ptr noundef null) #9, !noalias !138
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %bf.value = shl i32 %port, 18
  %bf.shl = and i32 %bf.value, 16515072
  %bf.set7 = select i1 %unplug, i32 1879048195, i32 1879048194
  %bf.set17 = or i32 %bf.set7, %bf.shl
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set17, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_cfg_ack_plug.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_cfg_ack_plug, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %cond23 = select i1 %unplug, ptr @.str.14, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_cfg_ack_plug.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond23, i64 noundef %route, i32 noundef %port) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %tb_cfg_make_header.exit
  %call24 = call fastcc i32 @tb_ctl_tx(ptr noundef %ctl, ptr noundef nonnull %pkg, i32 noundef 12, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkg) #9
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_reset(ptr noalias nocapture writeonly sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, i64 noundef %route) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.cfg_reset_pkg, align 4
  %reply = alloca %struct.tb_cfg_header, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request) #9
  %0 = getelementptr inbounds %struct.tb_cfg_header, ptr %request, i32 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.shl.i, ptr %request, align 4, !alias.scope !141
  %conv4.i = trunc i64 %route to i32
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv4.i, ptr %0, align 4, !alias.scope !141
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !132

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 121, i32 noundef 9, ptr noundef null) #9, !noalias !141
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %3 = call ptr @memset(ptr %agg.result, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #9
  %4 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reply, align 4, !annotation !144
  %5 = getelementptr inbounds %struct.tb_cfg_header, ptr %reply, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  %err = getelementptr inbounds %struct.tb_cfg_result, ptr %agg.result, i32 0, i32 2
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -12, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tb_cfg_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tb_cfg_copy, ptr %copy, align 8
  %request1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %request1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %request, ptr %request1, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reply, ptr %response, align 4
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9, ptr %response_type, align 4
  %timeout_msec = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 8
  %18 = ptrtoint ptr %timeout_msec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout_msec, align 4
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr noundef nonnull %call7.i.i.i, i32 noundef %19)
  call void @tb_cfg_request_put(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tb_cfg_match(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %pkg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %1, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 10
  %conv.i = zext i32 %bf.lshr.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %route_lo.i = getelementptr inbounds %struct.tb_cfg_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %route_lo.i, align 1
  %conv1.i = zext i32 %4 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %eof = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %eof, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear)
  %cmp = icmp eq i32 %bf.clear, 3
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end:                                           ; preds = %entry
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %response_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %response_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %7)
  %cmp6.not = icmp eq i32 %bf.clear, %7
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup46_crit_edge

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end8:                                          ; preds = %if.end
  %request = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i57 = load i32, ptr %9, align 1
  %bf.lshr.i58 = lshr i32 %bf.load.i57, 10
  %conv.i59 = zext i32 %bf.lshr.i58 to i64
  %shl.i60 = shl nuw nsw i64 %conv.i59, 32
  %route_lo.i61 = getelementptr inbounds %struct.tb_cfg_header, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %route_lo.i61 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %route_lo.i61, align 1
  %conv1.i62 = zext i32 %12 to i64
  %or.i63 = or i64 %shl.i60, %conv1.i62
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or.i63)
  %cmp10.not = icmp eq i64 %or.i, %or.i63
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup46_crit_edge

if.end8.cleanup46_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end12:                                         ; preds = %if.end8
  %bf.lshr15 = lshr i32 %bf.load, 20
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 6
  %13 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %response_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr15, i32 %14)
  %cmp16.not = icmp eq i32 %bf.lshr15, %14
  br i1 %cmp16.not, label %if.end18, label %if.end12.cleanup46_crit_edge

if.end12.cleanup46_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end18:                                         ; preds = %if.end12
  %bf.clear23.off = add nsw i32 %bf.clear, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear23.off)
  %switch = icmp ult i32 %bf.clear23.off, 2
  br i1 %switch, label %if.then31, label %if.end18.if.end45_crit_edge

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then31:                                        ; preds = %if.end18
  %addr = getelementptr inbounds %struct.cfg_read_pkg, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load34 = load i32, ptr %addr, align 1
  %addr37 = getelementptr inbounds %struct.cfg_read_pkg, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %addr37 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %bf.load38 = load i32, ptr %addr37, align 1
  %bf.lshr3556 = xor i32 %bf.load38, %bf.load34
  %17 = and i32 %bf.lshr3556, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp41.not = icmp eq i32 %17, 0
  br i1 %cmp41.not, label %if.then31.if.end45_crit_edge, label %if.then31.cleanup46_crit_edge

if.then31.cleanup46_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.then31.if.end45_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %if.then31.if.end45_crit_edge, %if.end18.if.end45_crit_edge
  br label %cleanup46

cleanup46:                                        ; preds = %if.end45, %if.then31.cleanup46_crit_edge, %if.end12.cleanup46_crit_edge, %if.end8.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.1 = phi i1 [ true, %if.end45 ], [ false, %if.then31.cleanup46_crit_edge ], [ true, %entry.cleanup46_crit_edge ], [ false, %if.end.cleanup46_crit_edge ], [ false, %if.end8.cleanup46_crit_edge ], [ false, %if.end12.cleanup46_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tb_cfg_copy(ptr nocapture noundef %req, ptr nocapture noundef readonly %pkg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 6
  %buffer.i = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %0 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer.i, align 4, !noalias !145
  %eof.i = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %eof.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i10 = load i32, ptr %eof.i, align 4, !noalias !145
  %3 = and i32 %bf.load.i10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp.i = icmp eq i32 %3, 48
  br i1 %cmp.i, label %if.then.i, label %parse_header.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkg, align 4, !noalias !148
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i.i.i = load i32, ptr %1, align 1, !noalias !148
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 10
  %conv.i.i.i = zext i32 %bf.lshr.i.i.i to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 32
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_cfg_header, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %route_lo.i.i.i, align 1, !noalias !148
  %conv1.i.i.i = zext i32 %8 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv1.i.i.i
  %call4.i.i = tail call fastcc i32 @check_header(ptr noundef %pkg, i32 noundef 12, i32 noundef 3, i64 noundef %or.i.i.i) #9, !noalias !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then.i
  %zero1.i.i = getelementptr inbounds %struct.cfg_error_pkg, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %zero1.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load.i.i = load i32, ptr %zero1.i.i, align 1, !noalias !148
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 24
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i)
  %tobool6.not.i.i = icmp eq i32 %bf.clear.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %do.end.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4, !noalias !148
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i.i, align 4, !noalias !148
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.40, i32 noundef %bf.clear.i.i) #14, !noalias !148
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %do.end.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  %14 = ptrtoint ptr %zero1.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load13.i.i = load i32, ptr %zero1.i.i, align 1, !noalias !148
  %bf.lshr14.i.i = lshr i32 %bf.load13.i.i, 16
  %bf.clear15.i.i = and i32 %bf.lshr14.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear15.i.i)
  %tobool16.not.i.i = icmp eq i32 %bf.clear15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end12.i.i.if.end28.i.i_crit_edge, label %do.end20.i.i

if.end12.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i

do.end20.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4, !noalias !148
  %pdev22.i.i = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pdev22.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev22.i.i, align 4, !noalias !148
  %dev23.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23.i.i, ptr noundef nonnull @.str.43, i32 noundef %bf.clear15.i.i) #14, !noalias !148
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %do.end20.i.i, %if.end12.i.i.if.end28.i.i_crit_edge
  %19 = ptrtoint ptr %zero1.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load29.i.i = load i32, ptr %zero1.i.i, align 1, !noalias !148
  %bf.lshr30.i.i = lshr i32 %bf.load29.i.i, 2
  %bf.clear31.i.i = and i32 %bf.lshr30.i.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear31.i.i)
  %tobool32.not.i.i = icmp eq i32 %bf.clear31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end28.i.i.if.end44.i.i_crit_edge, label %do.end36.i.i

if.end28.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

do.end36.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4, !noalias !148
  %pdev38.i.i = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev38.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev38.i.i, align 4, !noalias !148
  %dev39.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39.i.i, ptr noundef nonnull @.str.46, i32 noundef %bf.clear31.i.i) #14, !noalias !148
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end36.i.i, %if.end28.i.i.if.end44.i.i_crit_edge
  %24 = ptrtoint ptr %zero1.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load46.i.i = load i32, ptr %zero1.i.i, align 1, !noalias !148
  %bf.lshr47.i.i = lshr i32 %bf.load46.i.i, 28
  %tmp.sroa.12.16.insert.ext = zext i32 %bf.lshr47.i.i to i64
  %tmp.sroa.12.16.insert.shift = shl nuw nsw i64 %tmp.sroa.12.16.insert.ext, 32
  %bf.lshr49.i.i = lshr i32 %bf.load46.i.i, 18
  %bf.clear50.i.i = and i32 %bf.lshr49.i.i, 63
  br label %if.end

parse_header.exit:                                ; preds = %entry
  %request = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %request, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load.i = load i32, ptr %26, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 10
  %conv.i = zext i32 %bf.lshr.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %route_lo.i = getelementptr inbounds %struct.tb_cfg_header, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %route_lo.i, align 1
  %conv1.i = zext i32 %29 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 7
  %30 = ptrtoint ptr %response_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %response_type, align 4
  %32 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %response_size, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load.i6.i = load i32, ptr %1, align 1, !noalias !145
  %bf.lshr.i7.i = lshr i32 %bf.load.i6.i, 10
  %conv.i.i = zext i32 %bf.lshr.i7.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %route_lo.i.i = getelementptr inbounds %struct.tb_cfg_header, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %route_lo.i.i, align 1, !noalias !145
  %conv1.i.i = zext i32 %36 to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %call1.i = tail call fastcc i32 @check_header(ptr noundef %pkg, i32 noundef %33, i32 noundef %31, i64 noundef %or.i) #9, !noalias !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then, label %parse_header.exit.if.end_crit_edge

parse_header.exit.if.end_crit_edge:               ; preds = %parse_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %parse_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 5
  %37 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %response, align 4
  %39 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer.i, align 4
  %41 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %response_size, align 8
  %43 = call ptr @memcpy(ptr %38, ptr %40, i32 %42)
  br label %if.end

if.end:                                           ; preds = %if.then, %parse_header.exit.if.end_crit_edge, %if.end44.i.i, %if.then.i.if.end_crit_edge
  %tmp.sroa.0.021 = phi i64 [ %or.i.i, %if.then ], [ %or.i.i, %parse_header.exit.if.end_crit_edge ], [ %or.i.i.i, %if.end44.i.i ], [ %or.i.i.i, %if.then.i.if.end_crit_edge ]
  %tmp.sroa.5.020 = phi i32 [ 0, %if.then ], [ 0, %parse_header.exit.if.end_crit_edge ], [ %bf.clear50.i.i, %if.end44.i.i ], [ 0, %if.then.i.if.end_crit_edge ]
  %tmp.sroa.8.019 = phi i32 [ 0, %if.then ], [ %call1.i, %parse_header.exit.if.end_crit_edge ], [ 1, %if.end44.i.i ], [ %call4.i.i, %if.then.i.if.end_crit_edge ]
  %tmp.sroa.12.018 = phi i64 [ 0, %if.then ], [ 0, %parse_header.exit.if.end_crit_edge ], [ %tmp.sroa.12.16.insert.shift, %if.end44.i.i ], [ 0, %if.then.i.if.end_crit_edge ]
  %result = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15
  %44 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %tmp.sroa.0.021, ptr %result, align 8
  %res.sroa.0.sroa.5.0.result.sroa_idx = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15, i32 1
  %45 = ptrtoint ptr %res.sroa.0.sroa.5.0.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %tmp.sroa.5.020, ptr %res.sroa.0.sroa.5.0.result.sroa_idx, align 8
  %res.sroa.5.0.result.sroa_idx = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15, i32 2
  %46 = ptrtoint ptr %res.sroa.5.0.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %tmp.sroa.8.019, ptr %res.sroa.5.0.result.sroa_idx, align 4
  %res.sroa.6.0.result.sroa_idx = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 15, i32 3
  %47 = ptrtoint ptr %res.sroa.6.0.result.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %tmp.sroa.12.018, ptr %res.sroa.6.0.result.sroa_idx, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_read_raw(ptr noalias nocapture sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr nocapture noundef writeonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length, i32 noundef %timeout_msec) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.cfg_read_pkg, align 4
  %reply = alloca %struct.cfg_write_pkg, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request) #9
  %1 = getelementptr inbounds %struct.tb_cfg_header, ptr %request, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cfg_read_pkg, ptr %request, i32 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.shl.i, ptr %request, align 4, !alias.scope !151
  %conv4.i = trunc i64 %route to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %1, align 4, !alias.scope !151
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !132

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 121, i32 noundef 9, ptr noundef null) #9, !noalias !151
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %bf.shl = shl i32 %offset, 19
  %bf.value2 = shl i32 %length, 13
  %bf.shl3 = and i32 %bf.value2, 516096
  %bf.set5 = or i32 %bf.shl3, %bf.shl
  %bf.value7 = shl i32 %port, 7
  %bf.shl8 = and i32 %bf.value7, 8064
  %bf.set10 = or i32 %bf.set5, %bf.shl8
  %bf.value12 = shl i32 %space, 5
  %bf.shl13 = and i32 %bf.value12, 96
  %bf.set15 = or i32 %bf.set10, %bf.shl13
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.set15, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %reply) #9
  %6 = call ptr @memset(ptr %reply, i32 255, i32 268)
  %mul = shl i32 %length, 2
  %add = add i32 %mul, 12
  %err29 = getelementptr inbounds %struct.tb_cfg_result, ptr %agg.result, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %tb_cfg_make_header.exit
  %retries.072 = phi i32 [ 0, %tb_cfg_make_header.exit ], [ %inc, %cleanup.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %err29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -12, ptr %err29, align 4
  br label %cleanup48

if.end:                                           ; preds = %while.body
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load23 = load i32, ptr %2, align 4
  %bf.value24 = shl i32 %retries.072, 3
  %bf.clear26 = and i32 %bf.load23, -25
  %bf.set27 = or i32 %bf.clear26, %bf.value24
  store i32 %bf.set27, ptr %2, align 4
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tb_cfg_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tb_cfg_copy, ptr %copy, align 8
  %request28 = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %request28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %request, ptr %request28, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reply, ptr %response, align 4
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %response_type, align 4
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr noundef nonnull %call7.i.i.i, i32 noundef %timeout_msec)
  call void @tb_cfg_request_put(ptr noundef nonnull %call7.i.i.i)
  %19 = ptrtoint ptr %err29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %20)
  %cmp30.not = icmp eq i32 %20, -110
  br i1 %cmp30.not, label %cleanup, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %retries.072, 1
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #9
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %while.endthread-pre-split, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.endthread-pre-split:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %err29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %err29, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end.while.end_crit_edge
  %22 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %20, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %if.end36, label %while.end.cleanup48_crit_edge

while.end.cleanup48_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end36:                                         ; preds = %while.end
  %addr37 = getelementptr inbounds %struct.cfg_write_pkg, ptr %reply, i32 0, i32 1
  %23 = ptrtoint ptr %addr37 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load38 = load i32, ptr %addr37, align 1
  %bf.lshr = lshr i32 %bf.load38, 7
  %bf.clear39 = and i32 %bf.lshr, 63
  %response_port = getelementptr inbounds %struct.tb_cfg_result, ptr %agg.result, i32 0, i32 1
  %24 = ptrtoint ptr %response_port to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.clear39, ptr %response_port, align 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.load38, 0
  %call41 = call fastcc i32 @check_config_address([1 x i32] %.fca.0.insert, i32 noundef %space, i32 noundef %offset, i32 noundef %length)
  %25 = ptrtoint ptr %err29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41, ptr %err29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool44.not = icmp eq i32 %call41, 0
  br i1 %tobool44.not, label %if.then45, label %if.end36.cleanup48_crit_edge

if.end36.cleanup48_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.cfg_write_pkg, ptr %reply, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %buffer, ptr %data, i32 %mul)
  br label %cleanup48

cleanup48:                                        ; preds = %if.then45, %if.end36.cleanup48_crit_edge, %while.end.cleanup48_crit_edge, %cleanup.thread
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %reply) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_config_address([1 x i32] %addr.coerce, i32 noundef %space, i32 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.coerce.fca.0.extract = extractvalue [1 x i32] %addr.coerce, 0
  %bf.clear = and i32 %addr.coerce.fca.0.extract, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool.not = icmp eq i32 %bf.clear, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !132

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.53, i32 noundef %bf.clear) #9
  br label %return

if.end24:                                         ; preds = %entry
  %bf.lshr = lshr i32 %addr.coerce.fca.0.extract, 5
  %bf.clear27 = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear27, i32 %space)
  %cmp.not = icmp eq i32 %bf.clear27, %space
  br i1 %cmp.not, label %if.end62, label %do.end43, !prof !132

do.end43:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.54, i32 noundef %space, i32 noundef %bf.clear27) #9
  br label %return

if.end62:                                         ; preds = %if.end24
  %bf.lshr65 = lshr i32 %addr.coerce.fca.0.extract, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr65, i32 %offset)
  %cmp66.not = icmp eq i32 %bf.lshr65, %offset
  br i1 %cmp66.not, label %if.end100, label %do.end82, !prof !132

do.end82:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.55, i32 noundef %offset, i32 noundef %bf.lshr65) #9
  br label %return

if.end100:                                        ; preds = %if.end62
  %bf.lshr103 = lshr i32 %addr.coerce.fca.0.extract, 13
  %bf.clear104 = and i32 %bf.lshr103, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear104, i32 %length)
  %cmp105.not = icmp eq i32 %bf.clear104, %length
  br i1 %cmp105.not, label %if.end100.return_crit_edge, label %do.end121, !prof !132

if.end100.return_crit_edge:                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end121:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.54, i32 noundef %length, i32 noundef %bf.clear104) #9
  br label %return

return:                                           ; preds = %do.end121, %if.end100.return_crit_edge, %do.end82, %do.end43, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end43 ], [ -5, %do.end82 ], [ -5, %do.end121 ], [ 0, %if.end100.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_cfg_write_raw(ptr noalias nocapture sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr nocapture noundef readonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length, i32 noundef %timeout_msec) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.cfg_write_pkg, align 4
  %reply = alloca %struct.cfg_read_pkg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %request) #9
  %1 = getelementptr inbounds i8, ptr %request, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %3 = getelementptr inbounds %struct.tb_cfg_header, ptr %request, i32 0, i32 1
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.shl.i, ptr %request, align 4, !alias.scope !154
  %conv4.i = trunc i64 %route to i32
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4.i, ptr %3, align 4, !alias.scope !154
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !132

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 121, i32 noundef 9, ptr noundef null) #9, !noalias !154
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %addr = getelementptr inbounds %struct.cfg_write_pkg, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %addr, align 4
  %bf.shl = shl i32 %offset, 19
  %bf.clear = and i32 %bf.load, 31
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.value2 = shl i32 %length, 13
  %bf.shl3 = and i32 %bf.value2, 516096
  %bf.set5 = or i32 %bf.set, %bf.shl3
  %bf.value7 = shl i32 %port, 7
  %bf.shl8 = and i32 %bf.value7, 8064
  %bf.set10 = or i32 %bf.set5, %bf.shl8
  %bf.value12 = shl i32 %space, 5
  %bf.shl13 = and i32 %bf.value12, 96
  %bf.set15 = or i32 %bf.set10, %bf.shl13
  store i32 %bf.set15, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #9
  %7 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reply, align 4, !annotation !144
  %8 = getelementptr inbounds %struct.tb_cfg_header, ptr %reply, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !144
  %10 = getelementptr inbounds %struct.cfg_read_pkg, ptr %reply, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !144
  %data = getelementptr inbounds %struct.cfg_write_pkg, ptr %request, i32 0, i32 2
  %mul = shl i32 %length, 2
  %12 = call ptr @memcpy(ptr %data, ptr %buffer, i32 %mul)
  %add = add i32 %mul, 12
  %err24 = getelementptr inbounds %struct.tb_cfg_result, ptr %agg.result, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %tb_cfg_make_header.exit
  %retries.062 = phi i32 [ 0, %tb_cfg_make_header.exit ], [ %inc, %cleanup.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %while.body.cleanup38.sink.split_crit_edge, label %if.end

while.body.cleanup38.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38.sink.split

if.end:                                           ; preds = %while.body
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load17 = load i32, ptr %addr, align 4
  %bf.value18 = shl i32 %retries.062, 3
  %bf.clear20 = and i32 %bf.load17, -25
  %bf.set21 = or i32 %bf.clear20, %bf.value18
  store i32 %bf.set21, ptr %addr, align 4
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tb_cfg_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tb_cfg_copy, ptr %copy, align 8
  %request22 = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %request22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %request, ptr %request22, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %reply, ptr %response, align 4
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call7.i.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %response_type, align 4
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %agg.result, ptr noundef %ctl, ptr noundef nonnull %call7.i.i.i, i32 noundef %timeout_msec)
  call void @tb_cfg_request_put(ptr noundef nonnull %call7.i.i.i)
  %24 = ptrtoint ptr %err24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %25)
  %cmp25.not = icmp eq i32 %25, -110
  br i1 %cmp25.not, label %cleanup, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %retries.062, 1
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #9
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %while.endthread-pre-split, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.endthread-pre-split:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %err24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %err24, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end.while.end_crit_edge
  %27 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %25, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %if.end31, label %while.end.cleanup38_crit_edge

while.end.cleanup38_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end31:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load33 = load i32, ptr %10, align 4
  %bf.lshr = lshr i32 %bf.load33, 7
  %bf.clear34 = and i32 %bf.lshr, 63
  %response_port = getelementptr inbounds %struct.tb_cfg_result, ptr %agg.result, i32 0, i32 1
  %29 = ptrtoint ptr %response_port to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.clear34, ptr %response_port, align 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.load33, 0
  %call36 = call fastcc i32 @check_config_address([1 x i32] %.fca.0.insert, i32 noundef %space, i32 noundef %offset, i32 noundef %length)
  br label %cleanup38.sink.split

cleanup38.sink.split:                             ; preds = %if.end31, %while.body.cleanup38.sink.split_crit_edge
  %.sink = phi i32 [ %call36, %if.end31 ], [ -12, %while.body.cleanup38.sink.split_crit_edge ]
  %30 = ptrtoint ptr %err24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %err24, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.sink.split, %while.end.cleanup38_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #9
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %request) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_cfg_read(ptr noundef %ctl, ptr nocapture noundef writeonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res) #9
  %0 = call ptr @memset(ptr %res, i32 255, i32 24)
  %timeout_msec = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 8
  %1 = ptrtoint ptr %timeout_msec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout_msec, align 4
  call void @tb_cfg_read_raw(ptr nonnull sret(%struct.tb_cfg_result) align 8 %res, ptr noundef %ctl, ptr noundef %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length, i32 noundef %2)
  %err = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 2
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %4, label %do.end7 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 -110, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %space)
  %cmp.i = icmp eq i32 %space, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %tb_error.i = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %tb_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tb_error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i = icmp eq i32 %7, 2
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  call fastcc void @tb_cfg_print_error(ptr noundef %ctl, ptr noundef nonnull %res) #9
  %tb_error2.i = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 3
  %8 = ptrtoint ptr %tb_error2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tb_error2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -107, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %switch.selectcmp13.i = icmp eq i32 %9, 15
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 -13, i32 %switch.select.i
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16, i64 noundef %route, i32 noundef %space, i32 noundef %offset) #14
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1029, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.i.cleanup_crit_edge ], [ %switch.select14.i, %if.end.i ], [ %4, %do.end7 ], [ -110, %do.end ], [ %4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_cfg_write(ptr noundef %ctl, ptr nocapture noundef readonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res) #9
  %0 = call ptr @memset(ptr %res, i32 255, i32 24)
  %timeout_msec = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 8
  %1 = ptrtoint ptr %timeout_msec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout_msec, align 4
  call void @tb_cfg_write_raw(ptr nonnull sret(%struct.tb_cfg_result) align 8 %res, ptr noundef %ctl, ptr noundef %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %space, i32 noundef %offset, i32 noundef %length, i32 noundef %2)
  %err = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 2
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %4, label %do.end7 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 -110, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %space)
  %cmp.i = icmp eq i32 %space, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %tb_error.i = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %tb_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tb_error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i = icmp eq i32 %7, 2
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  call fastcc void @tb_cfg_print_error(ptr noundef %ctl, ptr noundef nonnull %res) #9
  %tb_error2.i = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 3
  %8 = ptrtoint ptr %tb_error2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tb_error2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -107, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %switch.selectcmp13.i = icmp eq i32 %9, 15
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 -13, i32 %switch.select.i
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i64 noundef %route, i32 noundef %space, i32 noundef %offset) #14
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1055, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.i.cleanup_crit_edge ], [ %switch.select14.i, %if.end.i ], [ %4, %do.end7 ], [ -110, %do.end ], [ %4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_cfg_get_upstream_port(ptr noundef %ctl, i64 noundef %route) local_unnamed_addr #0 align 64 {
entry:
  %dummy = alloca i32, align 4
  %res = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res) #9
  %0 = call ptr @memset(ptr %res, i32 255, i32 24)
  %timeout_msec = getelementptr inbounds %struct.tb_ctl, ptr %ctl, i32 0, i32 8
  %1 = ptrtoint ptr %timeout_msec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout_msec, align 4
  call void @tb_cfg_read_raw(ptr nonnull sret(%struct.tb_cfg_result) align 8 %res, ptr noundef %ctl, ptr noundef nonnull %dummy, i64 noundef %route, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef %2)
  %err = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 2
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %4, label %if.then2 [
    i32 1, label %entry.cleanup_crit_edge
    i32 0, label %if.end4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %response_port = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %6 = ptrtoint ptr %response_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %response_port, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %7, %if.end4 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_ctl_tx_callback(ptr nocapture noundef readnone %ring, ptr noundef %frame, i1 noundef zeroext %canceled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %frame, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.tb_ctl_pkg_free.exit_crit_edge, label %if.then.i

entry.tb_ctl_pkg_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_ctl_pkg_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %frame_pool.i = getelementptr inbounds %struct.tb_ctl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frame_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame_pool.i, align 4
  %buffer.i = getelementptr i8, ptr %frame, i32 -4
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #9
  tail call void @kfree(ptr noundef nonnull %add.ptr) #9
  br label %tb_ctl_pkg_free.exit

tb_ctl_pkg_free.exit:                             ; preds = %if.then.i, %entry.tb_ctl_pkg_free.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tb_ring_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_header(ptr nocapture noundef readonly %pkg, i32 noundef %len, i32 noundef %type, i64 noundef %route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %size, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %len)
  %cmp.not = icmp eq i32 %bf.lshr, %len
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !132

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %len, i32 noundef %bf.lshr) #9
  br label %cleanup

if.end25:                                         ; preds = %entry
  %bf.lshr29 = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr29, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %type)
  %cmp30.not = icmp eq i32 %bf.clear, %type
  br i1 %cmp30.not, label %if.end67, label %do.end46, !prof !132

do.end46:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 192, i32 noundef 9, ptr noundef nonnull @.str.49, i32 noundef %type, i32 noundef %bf.clear) #9
  br label %cleanup

if.end67:                                         ; preds = %if.end25
  %bf.clear71 = and i32 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear71)
  %tobool72.not = icmp eq i32 %bf.clear71, 0
  br i1 %tobool72.not, label %if.end108, label %do.end88, !prof !132

do.end88:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 195, i32 noundef 9, ptr noundef nonnull @.str.50, i32 noundef %bf.clear71) #9
  br label %cleanup

if.end108:                                        ; preds = %if.end67
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load110 = load i32, ptr %1, align 1
  %bf.clear111 = and i32 %bf.load110, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %bf.clear111)
  %cmp112.not = icmp eq i32 %bf.clear111, 512
  br i1 %cmp112.not, label %if.end146, label %do.end128, !prof !132

do.end128:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %bf.clear111) #9
  br label %cleanup

if.end146:                                        ; preds = %if.end108
  %bf.lshr.i = lshr i32 %bf.load110, 10
  %conv.i = zext i32 %bf.lshr.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %route_lo.i = getelementptr inbounds %struct.tb_cfg_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %route_lo.i, align 1
  %conv1.i = zext i32 %5 to i64
  %or.i = or i64 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %route)
  %cmp148.not = icmp eq i64 %or.i, %route
  br i1 %cmp148.not, label %if.end146.cleanup_crit_edge, label %do.end164, !prof !132

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end164:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.52, i64 noundef %route, i64 noundef %or.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end164, %if.end146.cleanup_crit_edge, %do.end128, %do.end88, %do.end46, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end46 ], [ -5, %do.end88 ], [ -5, %do.end128 ], [ -5, %do.end164 ], [ 0, %if.end146.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_cfg_print_error(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %err = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tb_error = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %tb_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tb_error, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %do.end128 [
    i32 0, label %if.end.return_crit_edge
    i32 2, label %do.body20
    i32 4, label %do.end46
    i32 8, label %do.end83
    i32 15, label %do.end110
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_cfg_print_error.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_cfg_print_error, %if.then29)) #9
          to label %return [label %if.then29], !srcloc !137

if.then29:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %res, align 8
  %response_port = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %11 = ptrtoint ptr %response_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %response_port, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_cfg_print_error.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.57, i64 noundef %10, i32 noundef %12) #9
  br label %return

do.end46:                                         ; preds = %if.end
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl, align 4
  %pdev48 = getelementptr inbounds %struct.tb_nhi, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call50 = tail call ptr @dev_driver_string(ptr noundef %dev49) #9
  %17 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl, align 4
  %pdev52 = getelementptr inbounds %struct.tb_nhi, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev52, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end46.dev_name.exit_crit_edge

do.end46.dev_name.exit_crit_edge:                 ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev53, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end46.dev_name.exit_crit_edge
  %retval.0.i174 = phi ptr [ %24, %if.end.i ], [ %22, %do.end46.dev_name.exit_crit_edge ]
  %25 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %res, align 8
  %response_port56 = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %27 = ptrtoint ptr %response_port56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %response_port56, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call50, ptr noundef %retval.0.i174, i64 noundef %26, i32 noundef %28) #9
  br label %return

do.end83:                                         ; preds = %if.end
  %29 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctl, align 4
  %pdev85 = getelementptr inbounds %struct.tb_nhi, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pdev85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev85, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call87 = tail call ptr @dev_driver_string(ptr noundef %dev86) #9
  %33 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl, align 4
  %pdev89 = getelementptr inbounds %struct.tb_nhi, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev89, align 4
  %init_name.i175 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i175 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i175, align 8
  %tobool.not.i176 = icmp eq ptr %38, null
  br i1 %tobool.not.i176, label %if.end.i177, label %do.end83.dev_name.exit179_crit_edge

do.end83.dev_name.exit179_crit_edge:              ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit179

if.end.i177:                                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %39 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev90, align 4
  br label %dev_name.exit179

dev_name.exit179:                                 ; preds = %if.end.i177, %do.end83.dev_name.exit179_crit_edge
  %retval.0.i178 = phi ptr [ %40, %if.end.i177 ], [ %38, %do.end83.dev_name.exit179_crit_edge ]
  %41 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %res, align 8
  %response_port93 = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %43 = ptrtoint ptr %response_port93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %response_port93, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call87, ptr noundef %retval.0.i178, i64 noundef %42, i32 noundef %44) #9
  br label %return

do.end110:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctl, align 4
  %pdev112 = getelementptr inbounds %struct.tb_nhi, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pdev112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev112, align 4
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %res, align 8
  %response_port115 = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %51 = ptrtoint ptr %response_port115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %response_port115, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev113, ptr noundef nonnull @.str.60, i64 noundef %50, i32 noundef %52) #14
  br label %return

do.end128:                                        ; preds = %if.end
  %53 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctl, align 4
  %pdev130 = getelementptr inbounds %struct.tb_nhi, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %pdev130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev130, align 4
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %call132 = tail call ptr @dev_driver_string(ptr noundef %dev131) #9
  %57 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctl, align 4
  %pdev134 = getelementptr inbounds %struct.tb_nhi, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pdev134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev134, align 4
  %init_name.i180 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44, i32 3
  %61 = ptrtoint ptr %init_name.i180 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i180, align 8
  %tobool.not.i181 = icmp eq ptr %62, null
  br i1 %tobool.not.i181, label %if.end.i182, label %do.end128.dev_name.exit184_crit_edge

do.end128.dev_name.exit184_crit_edge:             ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit184

if.end.i182:                                      ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #11
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %63 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev135, align 4
  br label %dev_name.exit184

dev_name.exit184:                                 ; preds = %if.end.i182, %do.end128.dev_name.exit184_crit_edge
  %retval.0.i183 = phi ptr [ %64, %if.end.i182 ], [ %62, %do.end128.dev_name.exit184_crit_edge ]
  %65 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %res, align 8
  %response_port138 = getelementptr inbounds %struct.tb_cfg_result, ptr %res, i32 0, i32 1
  %67 = ptrtoint ptr %response_port138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %response_port138, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef %call132, ptr noundef %retval.0.i183, i64 noundef %66, i32 noundef %68) #9
  br label %return

return:                                           ; preds = %dev_name.exit184, %do.end110, %dev_name.exit179, %dev_name.exit, %if.then29, %do.body20, %if.end.return_crit_edge
  ret void
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !60, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !115, !117, !118, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @tb_cfg_request.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/ctl.c", i32 532, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/thunderbolt/ctl.c", i32 570, i32 2}
!5 = !{ptr @tb_ctl_alloc.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/thunderbolt/ctl.c", i32 638, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/ctl.c", i32 640, i32 36}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/ctl.c", i32 661, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tb_ctl_alloc.__UNIQUE_ID_ddebug237, !11, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/ctl.c", i32 704, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tb_ctl_start.__UNIQUE_ID_ddebug238, !16, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thunderbolt/ctl.c", i32 732, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/ctl.c", i32 734, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tb_ctl_stop.__UNIQUE_ID_ddebug239, !22, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thunderbolt/ctl.c", i32 758, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tb_cfg_ack_plug.__UNIQUE_ID_ddebug240, !26, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!29 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thunderbolt/ctl.c", i32 1024, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tb_cfg_read._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @tb_cfg_read._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thunderbolt/ctl.c", i32 1029, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thunderbolt/ctl.c", i32 1050, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tb_cfg_write._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tb_cfg_write._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/ctl.c", i32 1055, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/ctl.c", i32 70, i32 8}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tb_cfg_request_lock, !48, !"tb_cfg_request_lock", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thunderbolt/ctl.c", i32 366, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thunderbolt/ctl.c", i32 370, i32 3}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thunderbolt.h", i32 639, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thunderbolt/ctl.c", i32 68, i32 8}
!59 = !{ptr @tb_cfg_request_cancel_queue, !58, !"tb_cfg_request_cancel_queue", i1 false, i1 false}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thunderbolt/ctl.c", i32 441, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tb_ctl_rx_callback._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @tb_ctl_rx_callback._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/thunderbolt/ctl.c", i32 457, i32 4}
!71 = !{ptr @tb_ctl_rx_callback._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tb_ctl_rx_callback._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @tb_ctl_rx_callback._entry.37, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/thunderbolt/ctl.c", i32 472, i32 4}
!75 = !{ptr @tb_ctl_rx_callback._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thunderbolt/ctl.h", i32 121, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thunderbolt/ctl.c", i32 244, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @decode_error._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @decode_error._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thunderbolt/ctl.c", i32 246, i32 3}
!85 = !{ptr @decode_error._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @decode_error._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thunderbolt/ctl.c", i32 248, i32 3}
!89 = !{ptr @decode_error._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @decode_error._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/thunderbolt/ctl.c", i32 187, i32 6}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/thunderbolt/ctl.c", i32 191, i32 6}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/thunderbolt/ctl.c", i32 194, i32 6}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/thunderbolt/ctl.c", i32 199, i32 6}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/thunderbolt/ctl.c", i32 202, i32 6}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/thunderbolt/ctl.c", i32 213, i32 6}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thunderbolt/ctl.c", i32 215, i32 6}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/thunderbolt/ctl.c", i32 218, i32 6}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/thunderbolt/ctl.c", i32 286, i32 3}
!109 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tb_cfg_print_error.__UNIQUE_ID_ddebug236, !108, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/thunderbolt/ctl.c", i32 295, i32 3}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/thunderbolt/ctl.c", i32 299, i32 3}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/thunderbolt/ctl.c", i32 303, i32 3}
!117 = !{ptr @tb_cfg_print_error._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tb_cfg_print_error._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thunderbolt/ctl.c", i32 308, i32 3}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148222977, i64 2148223009, i64 2148223038, i64 2148223072, i64 2148223103, i64 2148223126}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2148310978}
!134 = !{i64 2148225442, i64 2148225474, i64 2148225503, i64 2148225537, i64 2148225568, i64 2148225591}
!135 = !{i64 2149589696}
!136 = !{i8 0, i8 2}
!137 = !{i64 2148789112, i64 2148789117, i64 2148789130, i64 2148789174, i64 2148789208, i64 2148789229}
!138 = !{!139}
!139 = distinct !{!139, !140, !"tb_cfg_make_header: %agg.result"}
!140 = distinct !{!140, !"tb_cfg_make_header"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"tb_cfg_make_header: %agg.result"}
!143 = distinct !{!143, !"tb_cfg_make_header"}
!144 = !{!"auto-init"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"parse_header: %agg.result"}
!147 = distinct !{!147, !"parse_header"}
!148 = !{!149, !146}
!149 = distinct !{!149, !150, !"decode_error: %agg.result"}
!150 = distinct !{!150, !"decode_error"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"tb_cfg_make_header: %agg.result"}
!153 = distinct !{!153, !"tb_cfg_make_header"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"tb_cfg_make_header: %agg.result"}
!156 = distinct !{!156, !"tb_cfg_make_header"}
