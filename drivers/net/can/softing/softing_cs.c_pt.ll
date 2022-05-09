; ModuleID = '/llk/IR_all_yes/drivers/net/can/softing/softing_cs.c_pt.bc'
source_filename = "../drivers/net/can/softing/softing_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.softing_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon.72, %struct.anon.72, %struct.anon.72, ptr, ptr }
%struct.anon.72 = type { i32, i32, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
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
%struct.dev = type { %struct.platform_device, [2 x %struct.resource] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_firmware236 = internal constant [42 x i8] c"softing_cs.firmware=softing-4.6/bcard.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware237 = internal constant [43 x i8] c"softing_cs.firmware=softing-4.6/ldcard.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware238 = internal constant [44 x i8] c"softing_cs.firmware=softing-4.6/cancard.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware239 = internal constant [43 x i8] c"softing_cs.firmware=softing-4.6/cansja.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware240 = internal constant [43 x i8] c"softing_cs.firmware=softing-4.6/bcard2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware241 = internal constant [44 x i8] c"softing_cs.firmware=softing-4.6/ldcard2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware242 = internal constant [44 x i8] c"softing_cs.firmware=softing-4.6/cancrd2.bin\00", section ".modinfo", align 1
@__initcall__kmod_softing_cs__245_331_softingcs_driver_init6 = internal global ptr @softingcs_driver_init, section ".initcall6.init", align 4
@softingcs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @softingcs_probe, ptr @softingcs_remove, ptr null, ptr null, ptr null, ptr @softingcs_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_softingcs_driver_exit = internal global ptr @softingcs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [83 x i8] c"softing_cs.description=softing CANcard driver, links PCMCIA card to softing driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [51 x i8] c"softing_cs.file=drivers/net/can/softing/softing_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [26 x i8] c"softing_cs.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"softingcs\00", [22 x i8] zeroinitializer }, align 32
@softingcs_ids = internal constant { [10 x %struct.pcmcia_device_id], [152 x i8] } { [10 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 360, i16 1, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 2, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 4, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 5, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 129, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 132, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 133, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 258, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 360, i16 261, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [152 x i8] zeroinitializer }, align 32
@softingcs_index_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@softingcs_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softing\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"softingcs.%i\00", [19 x i8] zeroinitializer }, align 32
@softingcs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 292, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"created %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"softingcs_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/can/softing/softing_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@softingcs_probe._entry_ptr = internal global ptr @softingcs_probe._entry, section ".printk_index", align 4
@softingcs_platform_data = internal constant { [10 x %struct.softing_platform_data], [192 x i8] } { [10 x %struct.softing_platform_data] [%struct.softing_platform_data { i32 360, i32 1, i32 1, i32 2, i32 16000000, i32 32, i32 4, i32 2048, ptr @.str.8, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.11 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 2, i32 1, i32 2, i32 16000000, i32 32, i32 4, i32 2048, ptr @.str.12, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.11 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 4, i32 1, i32 2, i32 20000000, i32 32, i32 4, i32 2048, ptr @.str.13, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.14 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 5, i32 2, i32 2, i32 24000000, i32 64, i32 4, i32 4096, ptr @.str.15, %struct.anon.72 { i32 0, i32 0, ptr @.str.16 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.17 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.18 }, ptr @softingcs_reset, ptr null }, %struct.softing_platform_data { i32 360, i32 129, i32 1, i32 2, i32 16000000, i32 64, i32 4, i32 2048, ptr @.str.19, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.11 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 132, i32 1, i32 2, i32 20000000, i32 32, i32 4, i32 2048, ptr @.str.20, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.14 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 133, i32 2, i32 2, i32 24000000, i32 64, i32 4, i32 4096, ptr @.str.21, %struct.anon.72 { i32 0, i32 0, ptr @.str.16 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.17 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.18 }, ptr @softingcs_reset, ptr null }, %struct.softing_platform_data { i32 360, i32 258, i32 1, i32 2, i32 16000000, i32 64, i32 4, i32 2048, ptr @.str.22, %struct.anon.72 { i32 0, i32 0, ptr @.str.9 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.10 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.11 }, ptr @softingcs_reset, ptr @softingcs_enable_irq }, %struct.softing_platform_data { i32 360, i32 261, i32 2, i32 2, i32 24000000, i32 64, i32 4, i32 4096, ptr @.str.23, %struct.anon.72 { i32 0, i32 0, ptr @.str.16 }, %struct.anon.72 { i32 288, i32 62976, ptr @.str.17 }, %struct.anon.72 { i32 16, i32 851968, ptr @.str.18 }, ptr @softingcs_reset, ptr null }, %struct.softing_platform_data zeroinitializer], [192 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CANcard\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"softing-4.6/bcard.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"softing-4.6/ldcard.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"softing-4.6/cancard.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CANcard-NEC\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CANcard-SJA\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"softing-4.6/cansja.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CANcard-2\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"softing-4.6/bcard2.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"softing-4.6/ldcard2.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"softing-4.6/cancrd2.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Vector-CANcard\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vector-CANcard-SJA\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Vector-CANcard-2\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EDICcard-NEC\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EDICcard-2\00", [21 x i8] zeroinitializer }, align 32
@softingcs_reset.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"softing_cs\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"softingcs_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmcia config [2] %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@softingcs_enable_irq.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"softingcs_enable_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmcia config [0] %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"softingcs_index_lock\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 4, i64 5, i64 129, i64 132, i64 133, i64 258, i64 261]
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"softingcs_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 323, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 325, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"softingcs_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 305, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"softingcs_index_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"softingcs_index\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 17, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 286, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 287, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 292, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"softingcs_platform_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 27, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 29, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 35, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 36, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 37, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 41, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 53, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 61, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 65, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 71, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 72, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 73, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 77, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 89, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 101, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 113, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 125, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 169, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 177, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [40 x i8] c"../drivers/net/can/softing/softing_cs.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 18, i32 8 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_firmware236, ptr @__UNIQUE_ID_firmware237, ptr @__UNIQUE_ID_firmware238, ptr @__UNIQUE_ID_firmware239, ptr @__UNIQUE_ID_firmware240, ptr @__UNIQUE_ID_firmware241, ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_license248, ptr @__exitcall_softingcs_driver_exit, ptr @__initcall__kmod_softing_cs__245_331_softingcs_driver_init6, ptr @softingcs_driver_exit, ptr @softingcs_probe._entry, ptr @softingcs_probe._entry_ptr, ptr @softingcs_driver, ptr @.str, ptr @softingcs_ids, ptr @softingcs_index_lock, ptr @softingcs_index, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @softingcs_platform_data, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_ids to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_index_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softingcs_platform_data to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @softingcs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @softingcs_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @softingcs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @softingcs_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softingcs_probe(ptr noundef %pcmcia) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 17
  %0 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %manf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 360, i16 %1)
  %cmp.i = icmp eq i16 %1, 360
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 18
  %2 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %card_id, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %land.lhs.true.i.cleanup_crit_edge [
    i16 1, label %land.lhs.true.i.if.end_crit_edge
    i16 2, label %cleanup.fold.split.i
    i16 4, label %cleanup.fold.split11.i
    i16 5, label %cleanup.fold.split12.i
    i16 129, label %cleanup.fold.split13.i
    i16 132, label %cleanup.fold.split14.i
    i16 133, label %cleanup.fold.split15.i
    i16 258, label %cleanup.fold.split16.i
    i16 261, label %cleanup.fold.split17.i
  ]

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split11.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split12.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split13.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split14.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split15.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split16.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.fold.split17.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split.i, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 8), %cleanup.fold.split17.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 7), %cleanup.fold.split16.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 6), %cleanup.fold.split15.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 5), %cleanup.fold.split14.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 4), %cleanup.fold.split13.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 3), %cleanup.fold.split12.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 2), %cleanup.fold.split11.i ], [ getelementptr inbounds ([10 x %struct.softing_platform_data], ptr @softingcs_platform_data, i32 0, i32 1), %cleanup.fold.split.i ], [ @softingcs_platform_data, %land.lhs.true.i.if.end_crit_edge ]
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 10
  %5 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config_flags, align 4
  %or = or i32 %6, 4865
  store i32 %or, ptr %config_flags, align 4
  %call2 = tail call i32 @pcmcia_loop_config(ptr noundef %pcmcia, ptr noundef nonnull @softingcs_probe_config, ptr noundef nonnull %retval.0.i.ph) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.pcmcia_failed_crit_edge

if.end.pcmcia_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcmcia_failed

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pcmcia_enable_device(ptr noundef %pcmcia) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.pcmcia_failed_crit_edge, label %if.end9

if.end5.pcmcia_failed_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcmcia_failed

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end9.pcmcia_failed_crit_edge, label %if.end12

if.end9.pcmcia_failed_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcmcia_failed

if.end12:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1056) #8
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.pcmcia_failed_crit_edge, label %if.end16

if.end12.pcmcia_failed_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcmcia_failed

if.end16:                                         ; preds = %if.end12
  %res = getelementptr inbounds %struct.dev, ptr %call7.i.i, i32 0, i32 1
  %resource18 = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %resource18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %res, ptr %resource18, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %num_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %num_resources, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 3
  %release = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 3, i32 35
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @softingcs_pdev_release, ptr %release, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i.ph, ptr %platform_data, align 8
  %dev24 = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 21
  %parent = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev24, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 22
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %priv, align 8
  %flags = getelementptr inbounds %struct.dev, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %flags, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %19 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %res, align 8
  %end = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  %end33 = getelementptr inbounds %struct.dev, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %end33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %end33, align 4
  %flags36 = getelementptr %struct.dev, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %23 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %flags36, align 4
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 8
  %arrayidx38 = getelementptr %struct.dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx38, align 8
  %end45 = getelementptr %struct.dev, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %end45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %end45, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @softingcs_index_lock) #5
  %28 = load i32, ptr @softingcs_index, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr @softingcs_index, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %id, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @softingcs_index_lock) #5
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.1, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %call48 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev21, ptr noundef nonnull @.str.2, i32 noundef %32) #5
  %call49 = tail call i32 @platform_device_register(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %platform_failed, label %do.end

do.end:                                           ; preds = %if.end16
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call7.i.i, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev21, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i101 = phi ptr [ %36, %if.end.i ], [ %34, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i101) #9
  br label %cleanup

platform_failed:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_device_put(ptr noundef nonnull %call7.i.i) #5
  br label %pcmcia_failed

pcmcia_failed:                                    ; preds = %platform_failed, %if.end12.pcmcia_failed_crit_edge, %if.end9.pcmcia_failed_crit_edge, %if.end5.pcmcia_failed_crit_edge, %if.end.pcmcia_failed_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.pcmcia_failed_crit_edge ], [ %call6, %if.end5.pcmcia_failed_crit_edge ], [ %call49, %platform_failed ], [ -9, %if.end9.pcmcia_failed_crit_edge ], [ -12, %if.end12.pcmcia_failed_crit_edge ]
  tail call void @pcmcia_disable_device(ptr noundef %pcmcia) #5
  %priv57 = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 22
  %37 = ptrtoint ptr %priv57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %priv57, align 8
  br label %cleanup

cleanup:                                          ; preds = %pcmcia_failed, %dev_name.exit, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %pcmcia_failed ], [ 0, %dev_name.exit ], [ -25, %entry.cleanup_crit_edge ], [ -25, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @softingcs_remove(ptr noundef %pcmcia) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @platform_device_unregister(ptr noundef %1) #5
  tail call void @pcmcia_disable_device(ptr noundef %pcmcia) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softingcs_probe_config(ptr noundef %pcmcia, ptr noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv_data, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 190, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %pcmcia, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %flags, align 4
  %generation = getelementptr inbounds %struct.softing_platform_data, ptr %priv_data, i32 0, i32 2
  %8 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp23 = icmp slt i32 %9, 2
  %storemerge.v = select i1 %cmp23, i32 65, i32 3
  %storemerge = or i32 %storemerge.v, %7
  %memspeed.0 = select i1 %cmp23, i32 3, i32 0
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %flags, align 4
  %call30 = tail call i32 @pcmcia_request_window(ptr noundef %pcmcia, ptr noundef %1, i32 noundef %memspeed.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end22 ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @softingcs_pdev_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softingcs_reset(ptr noundef %pdev, i32 noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @softingcs_reset.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@softingcs_reset, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool6.not = icmp eq i32 %v, 0
  %cond = select i1 %tobool6.not, i32 32, i32 0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @softingcs_reset.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool7.not = icmp eq i32 %v, 0
  %conv = select i1 %tobool7.not, i8 32, i8 0
  %call9 = tail call i32 @pcmcia_write_config_byte(ptr noundef %add.ptr, i32 noundef 2, i8 noundef zeroext %conv) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softingcs_enable_irq(ptr noundef %pdev, i32 noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @softingcs_enable_irq.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@softingcs_enable_irq, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool6.not = icmp eq i32 %v, 0
  %cond = select i1 %tobool6.not, i32 0, i32 96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @softingcs_enable_irq.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool7.not = icmp eq i32 %v, 0
  %conv = select i1 %tobool7.not, i8 0, i8 96
  %call9 = tail call i32 @pcmcia_write_config_byte(ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext %conv) #5
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__UNIQUE_ID_firmware236, !1, !"__UNIQUE_ID_firmware236", i1 false, i1 false}
!1 = !{!"../drivers/net/can/softing/softing_cs.c", i32 141, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware237, !3, !"__UNIQUE_ID_firmware237", i1 false, i1 false}
!3 = !{!"../drivers/net/can/softing/softing_cs.c", i32 142, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware238, !5, !"__UNIQUE_ID_firmware238", i1 false, i1 false}
!5 = !{!"../drivers/net/can/softing/softing_cs.c", i32 143, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware239, !7, !"__UNIQUE_ID_firmware239", i1 false, i1 false}
!7 = !{!"../drivers/net/can/softing/softing_cs.c", i32 144, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware240, !9, !"__UNIQUE_ID_firmware240", i1 false, i1 false}
!9 = !{!"../drivers/net/can/softing/softing_cs.c", i32 146, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware241, !11, !"__UNIQUE_ID_firmware241", i1 false, i1 false}
!11 = !{!"../drivers/net/can/softing/softing_cs.c", i32 147, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware242, !13, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!13 = !{!"../drivers/net/can/softing/softing_cs.c", i32 148, i32 1}
!14 = !{ptr @__initcall__kmod_softing_cs__245_331_softingcs_driver_init6, !15, !"__initcall__kmod_softing_cs__245_331_softingcs_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/net/can/softing/softing_cs.c", i32 331, i32 1}
!16 = !{ptr @__exitcall_softingcs_driver_exit, !15, !"__exitcall_softingcs_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description246, !18, !"__UNIQUE_ID_description246", i1 false, i1 false}
!18 = !{!"../drivers/net/can/softing/softing_cs.c", i32 333, i32 1}
!19 = !{ptr @__UNIQUE_ID_file247, !20, !"__UNIQUE_ID_file247", i1 false, i1 false}
!20 = !{!"../drivers/net/can/softing/softing_cs.c", i32 335, i32 1}
!21 = !{ptr @__UNIQUE_ID_license248, !20, !"__UNIQUE_ID_license248", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/softing/softing_cs.c", i32 325, i32 11}
!24 = !{ptr @softingcs_driver, !25, !"softingcs_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/can/softing/softing_cs.c", i32 323, i32 29}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/softing/softing_cs.c", i32 286, i32 15}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/softing/softing_cs.c", i32 287, i32 27}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/softing/softing_cs.c", i32 292, i32 2}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @softingcs_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @softingcs_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/softing/softing_cs.c", i32 29, i32 10}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/softing/softing_cs.c", i32 35, i32 29}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/softing/softing_cs.c", i32 36, i32 29}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/softing/softing_cs.c", i32 37, i32 28}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/softing/softing_cs.c", i32 41, i32 10}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/softing/softing_cs.c", i32 53, i32 10}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/softing/softing_cs.c", i32 61, i32 28}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/softing/softing_cs.c", i32 65, i32 10}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/softing/softing_cs.c", i32 71, i32 29}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/softing/softing_cs.c", i32 72, i32 29}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/softing/softing_cs.c", i32 73, i32 28}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/softing/softing_cs.c", i32 77, i32 10}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/softing/softing_cs.c", i32 89, i32 10}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/softing/softing_cs.c", i32 101, i32 10}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/softing/softing_cs.c", i32 113, i32 10}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/softing/softing_cs.c", i32 125, i32 10}
!70 = !{ptr @softingcs_platform_data, !71, !"softingcs_platform_data", i1 false, i1 false}
!71 = !{!"../drivers/net/can/softing/softing_cs.c", i32 27, i32 43}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/softing/softing_cs.c", i32 169, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @softingcs_reset.__UNIQUE_ID_ddebug243, !73, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/softing/softing_cs.c", i32 177, i32 2}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @softingcs_enable_irq.__UNIQUE_ID_ddebug244, !78, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/softing/softing_cs.c", i32 18, i32 8}
!83 = !{ptr @softingcs_index_lock, !82, !"softingcs_index_lock", i1 false, i1 false}
!84 = !{ptr @softingcs_index, !85, !"softingcs_index", i1 false, i1 false}
!85 = !{!"../drivers/net/can/softing/softing_cs.c", i32 17, i32 12}
!86 = !{ptr @softingcs_ids, !87, !"softingcs_ids", i1 false, i1 false}
!87 = !{!"../drivers/net/can/softing/softing_cs.c", i32 305, i32 38}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2148960488, i64 2148960493, i64 2148960506, i64 2148960550, i64 2148960584, i64 2148960605}
