; ModuleID = '/llk/IR_all_yes/drivers/iio/humidity/dht11.c_pt.bc'
source_filename = "../drivers/iio/humidity/dht11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.44, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.44 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dht11 = type { ptr, ptr, i32, %struct.completion, %struct.mutex, i64, i32, i32, i32, [83 x %struct.anon.43] }
%struct.anon.43 = type { i64, i32 }

@__initcall__kmod_dht11__192_340_dht11_driver_init6 = internal global ptr @dht11_driver_init, section ".initcall6.init", align 4
@dht11_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dht11_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dht11_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dht11_driver_exit = internal global ptr @dht11_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author193 = internal constant [45 x i8] c"dht11.author=Harald Geyer <harald@ccbib.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [59 x i8] c"dht11.description=DHT11 humidity/temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [38 x i8] c"dht11.file=drivers/iio/humidity/dht11\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [21 x i8] c"dht11.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dht11\00", [26 x i8] zeroinitializer }, align 32
@dht11_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dht11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dht11_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dht11_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/humidity/dht11.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dht11_probe._entry_ptr = internal global ptr @dht11_probe._entry, section ".printk_index", align 4
@dht11_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GPIO %d has no interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@dht11_probe._entry_ptr.8 = internal global ptr @dht11_probe._entry.6, section ".printk_index", align 4
@dht11_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dht11->lock\00", [19 x i8] zeroinitializer }, align 32
@dht11_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @dht11_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dht11_chan_spec = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.44 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.44 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dht11_read_raw.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dht11_read_raw\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"current timeresolution: %dns\0A\00", [34 x i8] zeroinitializer }, align 32
@dht11_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeresolution %dns too low\0A\00", [35 x i8] zeroinitializer }, align 32
@dht11_read_raw._entry_ptr = internal global ptr @dht11_read_raw._entry, section ".printk_index", align 4
@dht11_read_raw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.3, i32 213, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timeresolution: %dns - decoding ambiguous\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dht11_read_raw._entry_ptr.17 = internal global ptr @dht11_read_raw._entry.14, section ".printk_index", align 4
@dht11_read_raw._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Only %d signal edges detected\0A\00", [33 x i8] zeroinitializer }, align 32
@dht11_read_raw._entry_ptr.20 = internal global ptr @dht11_read_raw._entry.18, section ".printk_index", align 4
@dht11_edges_print.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dht11_edges_print\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%d edges detected:\0A\00", [44 x i8] zeroinitializer }, align 32
@dht11_edges_print.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d: %lld ns %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@dht11_decode.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dht11_decode\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lost synchronisation at edge %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dht11_decode.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid checksum\0A\00", [46 x i8] zeroinitializer }, align 32
@dht11_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Don't know how to decode data: %d %d %d %d\0A\00", [52 x i8] zeroinitializer }, align 32
@dht11_decode._entry_ptr = internal global ptr @dht11_decode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"dht11_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 332, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 334, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"dht11_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 286, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 300, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 312, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 322, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"dht11_iio_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 275, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"dht11_chan_spec\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 279, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 199, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 201, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 211, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 243, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 99, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 101, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 132, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 147, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [32 x i8] c"../drivers/iio/humidity/dht11.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 160, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_dht11_driver_exit, ptr @__initcall__kmod_dht11__192_340_dht11_driver_init6, ptr @dht11_decode._entry, ptr @dht11_decode._entry_ptr, ptr @dht11_driver_exit, ptr @dht11_probe._entry, ptr @dht11_probe._entry.6, ptr @dht11_probe._entry_ptr, ptr @dht11_probe._entry_ptr.8, ptr @dht11_read_raw._entry, ptr @dht11_read_raw._entry.14, ptr @dht11_read_raw._entry.18, ptr @dht11_read_raw._entry_ptr, ptr @dht11_read_raw._entry_ptr.17, ptr @dht11_read_raw._entry_ptr.20, ptr @dht11_driver, ptr @.str, ptr @dht11_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @dht11_probe.__key, ptr @.str.9, ptr @dht11_iio_info, ptr @dht11_chan_spec, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_chan_spec to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_read_raw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_read_raw._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dht11_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dht11_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dht11_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dht11_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dht11_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dht11_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 1512) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %1, align 8
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #5
  %gpiod = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %gpiod, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @gpiod_to_irq(ptr noundef %call4) #5
  %irq = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod, align 4
  %call19 = tail call i32 @desc_to_gpio(ptr noundef %7) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call19) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %sub22 = add i64 %call.i.i, -2000000001
  %timestamp = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub22, ptr %timestamp, align 8
  %num_edges = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %num_edges to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %num_edges, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %driver_data.i.i, align 4
  %completion = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #5
  %lock = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @dht11_probe.__key) #5
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %name26 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name26, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dht11_iio_info, ptr %info, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dht11_chan_spec, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %num_channels, align 4
  %call27 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %if.then7, %do.end
  %retval.0 = phi i32 [ %4, %if.then7 ], [ -22, %do.end17 ], [ %call27, %if.end20 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dht11_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %timestamp = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  %add = add i64 %3, 2000000000
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call.i.i)
  %cmp = icmp ult i64 %add, %call.i.i
  br i1 %cmp, label %if.then, label %entry.if.end63_crit_edge

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @ktime_get_resolution_ns() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dht11_read_raw.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dht11_read_raw, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !84

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dht11_read_raw.__UNIQUE_ID_ddebug191, ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %call2) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 34000, i32 %call2)
  %cmp7 = icmp sgt i32 %call2, 34000
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %call2) #8
  br label %err

if.end13:                                         ; preds = %do.end
  %8 = add i32 %call2, -23001
  call void @__sanitizer_cov_trace_const_cmp4(i32 6999, i32 %8)
  %9 = icmp ult i32 %8, 6999
  br i1 %9, label %do.end19, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %call2) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end13.if.end21_crit_edge
  %completion = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %completion, align 4
  %num_edges = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %num_edges to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_edges, align 8
  %gpiod = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod, align 4
  %call22 = tail call i32 @gpiod_direction_output(ptr noundef %15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end25:                                         ; preds = %if.end21
  tail call void @usleep_range_state(i32 noundef 18000, i32 noundef 20000, i32 noundef 2) #5
  %16 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiod, align 4
  %call27 = tail call i32 @gpiod_direction_input(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.err_crit_edge

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end30:                                         ; preds = %if.end25
  %irq = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 15
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @dht11_handle_irq, ptr noundef null, i32 noundef 3, ptr noundef %21, ptr noundef %iio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_crit_edge

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end34:                                         ; preds = %if.end30
  %call36 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %completion, i32 noundef 100) #5
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 8
  %call38 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %iio_dev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dht11_edges_print.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dht11_read_raw, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !84

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_edges, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dht11_edges_print.__UNIQUE_ID_ddebug187, ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %27) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end34
  %28 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_edges, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp45.i = icmp sgt i32 %29, 1
  br i1 %cmp45.i, label %do.end.i.do.body4.i_crit_edge, label %do.end.i.dht11_edges_print.exit_crit_edge

do.end.i.dht11_edges_print.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dht11_edges_print.exit

do.end.i.do.body4.i_crit_edge:                    ; preds = %do.end.i
  br label %do.body4.i

do.body4.i:                                       ; preds = %for.inc.i.do.body4.i_crit_edge, %do.end.i.do.body4.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %for.inc.i.do.body4.i_crit_edge ], [ 1, %do.end.i.do.body4.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dht11_edges_print.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dht11_read_raw, %if.then16.i)) #5
          to label %for.inc.i [label %if.then16.i], !srcloc !84

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr %struct.dht11, ptr %1, i32 0, i32 9, i32 %i.046.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i, align 8
  %sub.i = add nsw i32 %i.046.i, -1
  %arrayidx19.i = getelementptr %struct.dht11, ptr %1, i32 0, i32 9, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx19.i, align 8
  %sub21.i = sub i64 %33, %35
  %value.i = getelementptr %struct.dht11, ptr %1, i32 0, i32 9, i32 %sub.i, i32 1
  %36 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool25.not.i = icmp eq i32 %37, 0
  %cond.i = select i1 %tobool25.not.i, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dht11_edges_print.__UNIQUE_ID_ddebug188, ptr noundef %31, ptr noundef nonnull @.str.23, i32 noundef %i.046.i, i64 noundef %sub21.i, ptr noundef nonnull %cond.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %do.body4.i
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %38 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_edges, align 8
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.do.body4.i_crit_edge, label %for.inc.i.dht11_edges_print.exit_crit_edge

for.inc.i.dht11_edges_print.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dht11_edges_print.exit

for.inc.i.do.body4.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4.i

dht11_edges_print.exit:                           ; preds = %for.inc.i.dht11_edges_print.exit_crit_edge, %do.end.i.dht11_edges_print.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp39 = icmp eq i32 %call36, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.end49

land.lhs.true40:                                  ; preds = %dht11_edges_print.exit
  %40 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_edges, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %41)
  %cmp42 = icmp slt i32 %41, 82
  br i1 %cmp42, label %if.end49.thread, label %land.lhs.true40.if.end52_crit_edge

land.lhs.true40.if.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end49.thread:                                  ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %41) #8
  br label %err

if.end49:                                         ; preds = %dht11_edges_print.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp50 = icmp slt i32 %call36, 0
  br i1 %cmp50, label %if.end49.err_crit_edge, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end49.err_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end52:                                         ; preds = %if.end49.if.end52_crit_edge, %land.lhs.true40.if.end52_crit_edge
  %44 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_edges, align 8
  %sub = add i32 %45, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp55125 = icmp sgt i32 %sub, -1
  br i1 %cmp55125, label %if.end52.for.body_crit_edge, label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %offset.0126, -1
  %cmp55 = icmp sgt i32 %offset.0126, 0
  br i1 %cmp55, label %for.cond.for.body_crit_edge, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end52.for.body_crit_edge
  %offset.0126 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ %sub, %if.end52.for.body_crit_edge ]
  %call56 = tail call fastcc i32 @dht11_decode(ptr noundef %1, i32 noundef %offset.0126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.body.if.end63_crit_edge, label %for.cond

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

for.end:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool60.not = icmp eq i32 %call36, 0
  br i1 %tobool60.not, label %for.end.if.end63_crit_edge, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end63:                                         ; preds = %for.end.if.end63_crit_edge, %for.body.if.end63_crit_edge, %entry.if.end63_crit_edge
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %if.end63.err_crit_edge [
    i32 9, label %if.then65
    i32 18, label %if.then68
  ]

if.end63.err_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %temperature = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %temperature, align 8
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  br label %err

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %humidity = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %humidity, align 4
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %val, align 4
  br label %err

err:                                              ; preds = %if.then68, %if.then65, %if.end63.err_crit_edge, %for.end.err_crit_edge, %for.cond.err_crit_edge, %if.end49.err_crit_edge, %if.end49.thread, %if.end30.err_crit_edge, %if.end25.err_crit_edge, %if.end21.err_crit_edge, %do.end11
  %ret.3 = phi i32 [ -11, %do.end11 ], [ %call22, %if.end21.err_crit_edge ], [ %call27, %if.end25.err_crit_edge ], [ %call.i, %if.end30.err_crit_edge ], [ %call36, %if.end49.err_crit_edge ], [ %call36, %for.end.err_crit_edge ], [ 1, %if.then65 ], [ 1, %if.then68 ], [ -22, %if.end63.err_crit_edge ], [ -110, %if.end49.thread ], [ %call56, %for.cond.err_crit_edge ]
  %num_edges72 = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %num_edges72 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %num_edges72, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ktime_get_resolution_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dht11_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_edges = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_edges, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %3)
  %4 = icmp ult i32 %3, 83
  br i1 %4, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %entry
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %5 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_edges, align 8
  %arrayidx = getelementptr %struct.dht11, ptr %1, i32 0, i32 9, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i.i, ptr %arrayidx, align 8
  %gpiod = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod, align 4
  %call5 = tail call i32 @gpiod_get_value(ptr noundef %9) #5
  %10 = ptrtoint ptr %num_edges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_edges, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %num_edges, align 8
  %value = getelementptr %struct.dht11, ptr %1, i32 0, i32 9, i32 %11, i32 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call5, ptr %value, align 8
  %13 = load i32, ptr %num_edges, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %13)
  %cmp10 = icmp sgt i32 %13, 82
  br i1 %cmp10, label %if.then11, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %completion = getelementptr inbounds %struct.dht11, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dht11_decode(ptr nocapture noundef %dht11, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %bits = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bits) #5
  %0 = call ptr @memset(ptr %bits, i32 255, i32 40)
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %entry
  %i.0258 = phi i32 [ 0, %entry ], [ %inc, %if.end20.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0258, 1
  %add = add i32 %mul, %offset
  %add5 = add i32 %add, 1
  %value = getelementptr %struct.dht11, ptr %dht11, i32 0, i32 9, i32 %add5, i32 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end20

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dht11_decode.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dht11_decode, %if.then16)) #5
          to label %cleanup [label %if.then16], !srcloc !84

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dht11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dht11, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dht11_decode.__UNIQUE_ID_ddebug189, ptr noundef %4, ptr noundef nonnull @.str.27, i32 noundef %add5) #5
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.dht11, ptr %dht11, i32 0, i32 9, i32 %add5
  %add1 = add i32 %add, 2
  %arrayidx = getelementptr %struct.dht11, ptr %dht11, i32 0, i32 9, i32 %add1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx6, align 8
  %sub = sub i64 %6, %8
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 49000, i32 %conv)
  %cmp21 = icmp sgt i32 %conv, 49000
  %conv23 = zext i1 %cmp21 to i8
  %arrayidx24 = getelementptr [40 x i8], ptr %bits, i32 0, i32 %i.0258
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %arrayidx24, align 1
  %inc = add nuw nsw i32 %i.0258, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end20
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.not.i = icmp eq i8 %11, 0
  %shl.1.i = select i1 %tobool.not.not.i, i8 0, i8 2
  %arrayidx.1.i = getelementptr inbounds i8, ptr %bits, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1.i = icmp ne i8 %13, 0
  %inc.1.i = zext i1 %tobool.not.1.i to i8
  %spec.select.1.i = or i8 %shl.1.i, %inc.1.i
  %arrayidx.2.i = getelementptr inbounds i8, ptr %bits, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2.not.i = icmp eq i8 %15, 0
  %16 = shl nuw nsw i8 %spec.select.1.i, 2
  %17 = select i1 %tobool.not.2.not.i, i8 0, i8 2
  %shl.3.i = or i8 %16, %17
  %arrayidx.3.i = getelementptr inbounds i8, ptr %bits, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3.i = icmp ne i8 %19, 0
  %inc.3.i = zext i1 %tobool.not.3.i to i8
  %spec.select.3.i = or i8 %shl.3.i, %inc.3.i
  %arrayidx.4.i = getelementptr inbounds i8, ptr %bits, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.4.not.i = icmp eq i8 %21, 0
  %22 = shl nuw nsw i8 %spec.select.3.i, 2
  %23 = select i1 %tobool.not.4.not.i, i8 0, i8 2
  %shl.5.i = or i8 %22, %23
  %arrayidx.5.i = getelementptr inbounds i8, ptr %bits, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.5.i = icmp ne i8 %25, 0
  %inc.5.i = zext i1 %tobool.not.5.i to i8
  %spec.select.5.i = or i8 %shl.5.i, %inc.5.i
  %arrayidx.6.i = getelementptr inbounds i8, ptr %bits, i32 6
  %26 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.6.not.i = icmp eq i8 %27, 0
  %28 = shl i8 %spec.select.5.i, 2
  %29 = select i1 %tobool.not.6.not.i, i8 0, i8 2
  %shl.7.i = or i8 %28, %29
  %arrayidx.7.i = getelementptr inbounds i8, ptr %bits, i32 7
  %30 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.7.i = icmp ne i8 %31, 0
  %inc.7.i = zext i1 %tobool.not.7.i to i8
  %spec.select.7.i = or i8 %shl.7.i, %inc.7.i
  %arrayidx26 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.not.i148 = icmp eq i8 %33, 0
  %shl.1.i149 = select i1 %tobool.not.not.i148, i8 0, i8 2
  %arrayidx.1.i150 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 9
  %34 = ptrtoint ptr %arrayidx.1.i150 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.1.i150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.1.i151 = icmp ne i8 %35, 0
  %inc.1.i152 = zext i1 %tobool.not.1.i151 to i8
  %spec.select.1.i153 = or i8 %shl.1.i149, %inc.1.i152
  %arrayidx.2.i154 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 10
  %36 = ptrtoint ptr %arrayidx.2.i154 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.2.i154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.2.not.i155 = icmp eq i8 %37, 0
  %38 = shl nuw nsw i8 %spec.select.1.i153, 2
  %39 = select i1 %tobool.not.2.not.i155, i8 0, i8 2
  %shl.3.i156 = or i8 %38, %39
  %arrayidx.3.i157 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 11
  %40 = ptrtoint ptr %arrayidx.3.i157 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3.i157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.3.i158 = icmp ne i8 %41, 0
  %inc.3.i159 = zext i1 %tobool.not.3.i158 to i8
  %spec.select.3.i160 = or i8 %shl.3.i156, %inc.3.i159
  %arrayidx.4.i161 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 12
  %42 = ptrtoint ptr %arrayidx.4.i161 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.4.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.4.not.i162 = icmp eq i8 %43, 0
  %44 = shl nuw nsw i8 %spec.select.3.i160, 2
  %45 = select i1 %tobool.not.4.not.i162, i8 0, i8 2
  %shl.5.i163 = or i8 %44, %45
  %arrayidx.5.i164 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 13
  %46 = ptrtoint ptr %arrayidx.5.i164 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.5.i164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.5.i165 = icmp ne i8 %47, 0
  %inc.5.i166 = zext i1 %tobool.not.5.i165 to i8
  %spec.select.5.i167 = or i8 %shl.5.i163, %inc.5.i166
  %arrayidx.6.i168 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 14
  %48 = ptrtoint ptr %arrayidx.6.i168 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.6.i168, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.6.not.i169 = icmp eq i8 %49, 0
  %50 = shl i8 %spec.select.5.i167, 2
  %51 = select i1 %tobool.not.6.not.i169, i8 0, i8 2
  %shl.7.i170 = or i8 %50, %51
  %arrayidx.7.i171 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 15
  %52 = ptrtoint ptr %arrayidx.7.i171 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.7.i171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.7.i172 = icmp ne i8 %53, 0
  %inc.7.i173 = zext i1 %tobool.not.7.i172 to i8
  %spec.select.7.i174 = or i8 %shl.7.i170, %inc.7.i173
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 16
  %54 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.not.i175 = icmp eq i8 %55, 0
  %shl.1.i176 = select i1 %tobool.not.not.i175, i8 0, i8 2
  %arrayidx.1.i177 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 17
  %56 = ptrtoint ptr %arrayidx.1.i177 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.1.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.1.i178 = icmp ne i8 %57, 0
  %inc.1.i179 = zext i1 %tobool.not.1.i178 to i8
  %spec.select.1.i180 = or i8 %shl.1.i176, %inc.1.i179
  %arrayidx.2.i181 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 18
  %58 = ptrtoint ptr %arrayidx.2.i181 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.2.i181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.2.not.i182 = icmp eq i8 %59, 0
  %60 = shl nuw nsw i8 %spec.select.1.i180, 2
  %61 = select i1 %tobool.not.2.not.i182, i8 0, i8 2
  %shl.3.i183 = or i8 %60, %61
  %arrayidx.3.i184 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 19
  %62 = ptrtoint ptr %arrayidx.3.i184 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.3.i184, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.3.i185 = icmp ne i8 %63, 0
  %inc.3.i186 = zext i1 %tobool.not.3.i185 to i8
  %spec.select.3.i187 = or i8 %shl.3.i183, %inc.3.i186
  %arrayidx.4.i188 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 20
  %64 = ptrtoint ptr %arrayidx.4.i188 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.4.i188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.4.not.i189 = icmp eq i8 %65, 0
  %66 = shl nuw nsw i8 %spec.select.3.i187, 2
  %67 = select i1 %tobool.not.4.not.i189, i8 0, i8 2
  %shl.5.i190 = or i8 %66, %67
  %arrayidx.5.i191 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 21
  %68 = ptrtoint ptr %arrayidx.5.i191 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.5.i191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.5.i192 = icmp ne i8 %69, 0
  %inc.5.i193 = zext i1 %tobool.not.5.i192 to i8
  %spec.select.5.i194 = or i8 %shl.5.i190, %inc.5.i193
  %arrayidx.6.i195 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 22
  %70 = ptrtoint ptr %arrayidx.6.i195 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.6.i195, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.6.not.i196 = icmp eq i8 %71, 0
  %72 = shl i8 %spec.select.5.i194, 2
  %73 = select i1 %tobool.not.6.not.i196, i8 0, i8 2
  %shl.7.i197 = or i8 %72, %73
  %arrayidx.7.i198 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 23
  %74 = ptrtoint ptr %arrayidx.7.i198 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.7.i198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.7.i199 = icmp ne i8 %75, 0
  %inc.7.i200 = zext i1 %tobool.not.7.i199 to i8
  %spec.select.7.i201 = or i8 %shl.7.i197, %inc.7.i200
  %arrayidx30 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 24
  %76 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.not.i202 = icmp eq i8 %77, 0
  %shl.1.i203 = select i1 %tobool.not.not.i202, i8 0, i8 2
  %arrayidx.1.i204 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 25
  %78 = ptrtoint ptr %arrayidx.1.i204 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.1.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.1.i205 = icmp ne i8 %79, 0
  %inc.1.i206 = zext i1 %tobool.not.1.i205 to i8
  %spec.select.1.i207 = or i8 %shl.1.i203, %inc.1.i206
  %arrayidx.2.i208 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 26
  %80 = ptrtoint ptr %arrayidx.2.i208 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.2.i208, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.2.not.i209 = icmp eq i8 %81, 0
  %82 = shl nuw nsw i8 %spec.select.1.i207, 2
  %83 = select i1 %tobool.not.2.not.i209, i8 0, i8 2
  %shl.3.i210 = or i8 %82, %83
  %arrayidx.3.i211 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 27
  %84 = ptrtoint ptr %arrayidx.3.i211 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.3.i211, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.3.i212 = icmp ne i8 %85, 0
  %inc.3.i213 = zext i1 %tobool.not.3.i212 to i8
  %spec.select.3.i214 = or i8 %shl.3.i210, %inc.3.i213
  %arrayidx.4.i215 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 28
  %86 = ptrtoint ptr %arrayidx.4.i215 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.4.i215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.4.not.i216 = icmp eq i8 %87, 0
  %88 = shl nuw nsw i8 %spec.select.3.i214, 2
  %89 = select i1 %tobool.not.4.not.i216, i8 0, i8 2
  %shl.5.i217 = or i8 %88, %89
  %arrayidx.5.i218 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 29
  %90 = ptrtoint ptr %arrayidx.5.i218 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.5.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.5.i219 = icmp ne i8 %91, 0
  %inc.5.i220 = zext i1 %tobool.not.5.i219 to i8
  %spec.select.5.i221 = or i8 %shl.5.i217, %inc.5.i220
  %arrayidx.6.i222 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 30
  %92 = ptrtoint ptr %arrayidx.6.i222 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.6.i222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.6.not.i223 = icmp eq i8 %93, 0
  %94 = shl i8 %spec.select.5.i221, 2
  %95 = select i1 %tobool.not.6.not.i223, i8 0, i8 2
  %shl.7.i224 = or i8 %94, %95
  %arrayidx.7.i225 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 31
  %96 = ptrtoint ptr %arrayidx.7.i225 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.7.i225, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.7.i226 = icmp ne i8 %97, 0
  %inc.7.i227 = zext i1 %tobool.not.7.i226 to i8
  %spec.select.7.i228 = or i8 %shl.7.i224, %inc.7.i227
  %arrayidx32 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 32
  %98 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.not.i229 = icmp eq i8 %99, 0
  %shl.1.i230 = select i1 %tobool.not.not.i229, i8 0, i8 2
  %arrayidx.1.i231 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 33
  %100 = ptrtoint ptr %arrayidx.1.i231 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.1.i231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.1.i232 = icmp ne i8 %101, 0
  %inc.1.i233 = zext i1 %tobool.not.1.i232 to i8
  %spec.select.1.i234 = or i8 %shl.1.i230, %inc.1.i233
  %arrayidx.2.i235 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 34
  %102 = ptrtoint ptr %arrayidx.2.i235 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.2.i235, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.2.not.i236 = icmp eq i8 %103, 0
  %104 = shl nuw nsw i8 %spec.select.1.i234, 2
  %105 = select i1 %tobool.not.2.not.i236, i8 0, i8 2
  %shl.3.i237 = or i8 %104, %105
  %arrayidx.3.i238 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 35
  %106 = ptrtoint ptr %arrayidx.3.i238 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.3.i238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.3.i239 = icmp ne i8 %107, 0
  %inc.3.i240 = zext i1 %tobool.not.3.i239 to i8
  %spec.select.3.i241 = or i8 %shl.3.i237, %inc.3.i240
  %arrayidx.4.i242 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 36
  %108 = ptrtoint ptr %arrayidx.4.i242 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.4.i242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.4.not.i243 = icmp eq i8 %109, 0
  %110 = shl nuw nsw i8 %spec.select.3.i241, 2
  %111 = select i1 %tobool.not.4.not.i243, i8 0, i8 2
  %shl.5.i244 = or i8 %110, %111
  %arrayidx.5.i245 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 37
  %112 = ptrtoint ptr %arrayidx.5.i245 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.5.i245, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.5.i246 = icmp ne i8 %113, 0
  %inc.5.i247 = zext i1 %tobool.not.5.i246 to i8
  %spec.select.5.i248 = or i8 %shl.5.i244, %inc.5.i247
  %arrayidx.6.i249 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 38
  %114 = ptrtoint ptr %arrayidx.6.i249 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.6.i249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.6.not.i250 = icmp eq i8 %115, 0
  %116 = shl i8 %spec.select.5.i248, 2
  %117 = select i1 %tobool.not.6.not.i250, i8 0, i8 2
  %shl.7.i251 = or i8 %116, %117
  %arrayidx.7.i252 = getelementptr inbounds [40 x i8], ptr %bits, i32 0, i32 39
  %118 = ptrtoint ptr %arrayidx.7.i252 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.7.i252, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.7.i253 = icmp ne i8 %119, 0
  %inc.7.i254 = zext i1 %tobool.not.7.i253 to i8
  %spec.select.7.i255 = or i8 %shl.7.i251, %inc.7.i254
  %conv34 = zext i8 %spec.select.7.i to i32
  %conv35 = zext i8 %spec.select.7.i174 to i32
  %add36 = add i8 %spec.select.7.i174, %spec.select.7.i
  %conv37 = zext i8 %spec.select.7.i201 to i32
  %add38 = add i8 %add36, %spec.select.7.i201
  %conv39 = zext i8 %spec.select.7.i228 to i32
  %add40 = add i8 %add38, %spec.select.7.i228
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.7.i255, i8 %add40)
  %cmp42.not = icmp eq i8 %spec.select.7.i255, %add40
  br i1 %cmp42.not, label %if.end62, label %do.body45

do.body45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dht11_decode.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dht11_decode, %if.then57)) #5
          to label %cleanup [label %if.then57], !srcloc !84

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %dht11 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dht11, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dht11_decode.__UNIQUE_ID_ddebug190, ptr noundef %121, ptr noundef nonnull @.str.28) #5
  br label %cleanup

if.end62:                                         ; preds = %for.end
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %timestamp = getelementptr inbounds %struct.dht11, ptr %dht11, i32 0, i32 5
  %122 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call.i.i, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %spec.select.7.i)
  %cmp65 = icmp ult i8 %spec.select.7.i, 4
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %and69 = shl nuw nsw i32 %conv37, 8
  %shl = and i32 %and69, 32512
  %add71 = or i32 %shl, %conv39
  %and73 = and i32 %conv37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %cond = select i1 %tobool74.not, i32 100, i32 -100
  %mul75 = mul nsw i32 %add71, %cond
  %temperature = getelementptr inbounds %struct.dht11, ptr %dht11, i32 0, i32 6
  %123 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul75, ptr %temperature, align 8
  %shl77 = shl nuw nsw i32 %conv34, 8
  %add79 = or i32 %shl77, %conv35
  %mul80 = mul nuw nsw i32 %add79, 100
  %humidity = getelementptr inbounds %struct.dht11, ptr %dht11, i32 0, i32 7
  %124 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul80, ptr %humidity, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.7.i228)
  %cmp82 = icmp eq i8 %spec.select.7.i228, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.7.i174)
  %cmp85 = icmp eq i8 %spec.select.7.i174, 0
  %or.cond = select i1 %cmp82, i1 %cmp85, i1 false
  br i1 %or.cond, label %if.then87, label %do.end97

if.then87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mul89 = mul nuw nsw i32 %conv37, 1000
  %temperature90 = getelementptr inbounds %struct.dht11, ptr %dht11, i32 0, i32 6
  %125 = ptrtoint ptr %temperature90 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul89, ptr %temperature90, align 8
  %mul92 = mul nuw nsw i32 %conv34, 1000
  %humidity93 = getelementptr inbounds %struct.dht11, ptr %dht11, i32 0, i32 7
  %126 = ptrtoint ptr %humidity93 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul92, ptr %humidity93, align 4
  br label %cleanup

do.end97:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %dht11 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dht11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.29, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then87, %if.then67, %if.then57, %do.body45, %if.then16, %do.body
  %retval.0 = phi i32 [ -5, %do.end97 ], [ -5, %if.then16 ], [ -5, %if.then57 ], [ 0, %if.then87 ], [ 0, %if.then67 ], [ -5, %do.body ], [ -5, %do.body45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bits) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_dht11__192_340_dht11_driver_init6, !1, !"__initcall__kmod_dht11__192_340_dht11_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/humidity/dht11.c", i32 340, i32 1}
!2 = !{ptr @__exitcall_dht11_driver_exit, !1, !"__exitcall_dht11_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author193, !4, !"__UNIQUE_ID_author193", i1 false, i1 false}
!4 = !{!"../drivers/iio/humidity/dht11.c", i32 342, i32 1}
!5 = !{ptr @__UNIQUE_ID_description194, !6, !"__UNIQUE_ID_description194", i1 false, i1 false}
!6 = !{!"../drivers/iio/humidity/dht11.c", i32 343, i32 1}
!7 = !{ptr @__UNIQUE_ID_file195, !8, !"__UNIQUE_ID_file195", i1 false, i1 false}
!8 = !{!"../drivers/iio/humidity/dht11.c", i32 344, i32 1}
!9 = !{ptr @__UNIQUE_ID_license196, !8, !"__UNIQUE_ID_license196", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/humidity/dht11.c", i32 334, i32 11}
!12 = !{ptr @dht11_driver, !13, !"dht11_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/humidity/dht11.c", i32 332, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/humidity/dht11.c", i32 300, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dht11_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dht11_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/humidity/dht11.c", i32 312, i32 3}
!24 = !{ptr @dht11_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dht11_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @dht11_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/humidity/dht11.c", i32 322, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dht11_iio_info, !33, !"dht11_iio_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/humidity/dht11.c", i32 275, i32 30}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/humidity/dht11.c", i32 199, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dht11_read_raw.__UNIQUE_ID_ddebug191, !35, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/humidity/dht11.c", i32 201, i32 4}
!40 = !{ptr @dht11_read_raw._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dht11_read_raw._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/humidity/dht11.c", i32 211, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dht11_read_raw._entry.14, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dht11_read_raw._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/humidity/dht11.c", i32 243, i32 4}
!49 = !{ptr @dht11_read_raw._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dht11_read_raw._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/humidity/dht11.c", i32 99, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dht11_edges_print.__UNIQUE_ID_ddebug187, !52, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/humidity/dht11.c", i32 101, i32 3}
!57 = !{ptr @dht11_edges_print.__UNIQUE_ID_ddebug188, !56, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!58 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/humidity/dht11.c", i32 132, i32 4}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dht11_decode.__UNIQUE_ID_ddebug189, !61, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/humidity/dht11.c", i32 147, i32 3}
!66 = !{ptr @dht11_decode.__UNIQUE_ID_ddebug190, !65, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/humidity/dht11.c", i32 160, i32 3}
!69 = !{ptr @dht11_decode._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dht11_decode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @dht11_chan_spec, !72, !"dht11_chan_spec", i1 false, i1 false}
!72 = !{!"../drivers/iio/humidity/dht11.c", i32 279, i32 35}
!73 = !{ptr @dht11_dt_ids, !74, !"dht11_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/iio/humidity/dht11.c", i32 286, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148724445, i64 2148724450, i64 2148724463, i64 2148724507, i64 2148724541, i64 2148724562}
